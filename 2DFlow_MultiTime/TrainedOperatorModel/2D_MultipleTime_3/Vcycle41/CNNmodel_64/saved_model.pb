шн
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
 "serve*2.6.22v2.6.1-9-gc2363d6d0258

conv3d_226/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameconv3d_226/kernel

%conv3d_226/kernel/Read/ReadVariableOpReadVariableOpconv3d_226/kernel**
_output_shapes
: *
dtype0
v
conv3d_226/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv3d_226/bias
o
#conv3d_226/bias/Read/ReadVariableOpReadVariableOpconv3d_226/bias*
_output_shapes
: *
dtype0

conv3d_227/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameconv3d_227/kernel

%conv3d_227/kernel/Read/ReadVariableOpReadVariableOpconv3d_227/kernel**
_output_shapes
: *
dtype0
v
conv3d_227/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_227/bias
o
#conv3d_227/bias/Read/ReadVariableOpReadVariableOpconv3d_227/bias*
_output_shapes
:*
dtype0

conv3d_228/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_228/kernel

%conv3d_228/kernel/Read/ReadVariableOpReadVariableOpconv3d_228/kernel**
_output_shapes
:*
dtype0
v
conv3d_228/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_228/bias
o
#conv3d_228/bias/Read/ReadVariableOpReadVariableOpconv3d_228/bias*
_output_shapes
:*
dtype0

conv3d_229/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_229/kernel

%conv3d_229/kernel/Read/ReadVariableOpReadVariableOpconv3d_229/kernel**
_output_shapes
:*
dtype0
v
conv3d_229/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_229/bias
o
#conv3d_229/bias/Read/ReadVariableOpReadVariableOpconv3d_229/bias*
_output_shapes
:*
dtype0
z
dense_50/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@* 
shared_namedense_50/kernel
s
#dense_50/kernel/Read/ReadVariableOpReadVariableOpdense_50/kernel*
_output_shapes

:@@*
dtype0
r
dense_50/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_50/bias
k
!dense_50/bias/Read/ReadVariableOpReadVariableOpdense_50/bias*
_output_shapes
:@*
dtype0

conv3d_230/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_230/kernel

%conv3d_230/kernel/Read/ReadVariableOpReadVariableOpconv3d_230/kernel**
_output_shapes
:*
dtype0
v
conv3d_230/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_230/bias
o
#conv3d_230/bias/Read/ReadVariableOpReadVariableOpconv3d_230/bias*
_output_shapes
:*
dtype0

conv3d_231/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_231/kernel

%conv3d_231/kernel/Read/ReadVariableOpReadVariableOpconv3d_231/kernel**
_output_shapes
:*
dtype0
v
conv3d_231/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_231/bias
o
#conv3d_231/bias/Read/ReadVariableOpReadVariableOpconv3d_231/bias*
_output_shapes
:*
dtype0

conv3d_232/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv3d_232/kernel

%conv3d_232/kernel/Read/ReadVariableOpReadVariableOpconv3d_232/kernel**
_output_shapes
:*
dtype0
v
conv3d_232/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_232/bias
o
#conv3d_232/bias/Read/ReadVariableOpReadVariableOpconv3d_232/bias*
_output_shapes
:*
dtype0

conv3d_233/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:0 *"
shared_nameconv3d_233/kernel

%conv3d_233/kernel/Read/ReadVariableOpReadVariableOpconv3d_233/kernel**
_output_shapes
:0 *
dtype0
v
conv3d_233/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv3d_233/bias
o
#conv3d_233/bias/Read/ReadVariableOpReadVariableOpconv3d_233/bias*
_output_shapes
: *
dtype0

conv3d_234/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameconv3d_234/kernel

%conv3d_234/kernel/Read/ReadVariableOpReadVariableOpconv3d_234/kernel**
_output_shapes
: *
dtype0
v
conv3d_234/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_234/bias
o
#conv3d_234/bias/Read/ReadVariableOpReadVariableOpconv3d_234/bias*
_output_shapes
:*
dtype0

NoOpNoOp
бH
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*H
valueHBџG BјG
т
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
layer_with_weights-3
layer-11
layer-12
layer-13
layer_with_weights-4
layer-14
layer-15
layer-16
layer-17
layer-18
layer-19
layer_with_weights-5
layer-20
layer-21
layer-22
layer-23
layer-24
layer_with_weights-6
layer-25
layer-26
layer-27
layer-28
layer-29
layer_with_weights-7
layer-30
 layer-31
!layer-32
"layer-33
#layer-34
$layer_with_weights-8
$layer-35
%layer_with_weights-9
%layer-36
&regularization_losses
'	variables
(trainable_variables
)	keras_api
*
signatures
 

+	keras_api
R
,regularization_losses
-	variables
.trainable_variables
/	keras_api

0	keras_api

1	keras_api
h

2kernel
3bias
4regularization_losses
5	variables
6trainable_variables
7	keras_api
R
8regularization_losses
9	variables
:trainable_variables
;	keras_api
h

<kernel
=bias
>regularization_losses
?	variables
@trainable_variables
A	keras_api
R
Bregularization_losses
C	variables
Dtrainable_variables
E	keras_api
h

Fkernel
Gbias
Hregularization_losses
I	variables
Jtrainable_variables
K	keras_api
R
Lregularization_losses
M	variables
Ntrainable_variables
O	keras_api
h

Pkernel
Qbias
Rregularization_losses
S	variables
Ttrainable_variables
U	keras_api
R
Vregularization_losses
W	variables
Xtrainable_variables
Y	keras_api
R
Zregularization_losses
[	variables
\trainable_variables
]	keras_api
h

^kernel
_bias
`regularization_losses
a	variables
btrainable_variables
c	keras_api
R
dregularization_losses
e	variables
ftrainable_variables
g	keras_api

h	keras_api

i	keras_api

j	keras_api

k	keras_api
h

lkernel
mbias
nregularization_losses
o	variables
ptrainable_variables
q	keras_api

r	keras_api

s	keras_api

t	keras_api

u	keras_api
h

vkernel
wbias
xregularization_losses
y	variables
ztrainable_variables
{	keras_api

|	keras_api

}	keras_api

~	keras_api

	keras_api
n
kernel
	bias
regularization_losses
	variables
trainable_variables
	keras_api

	keras_api

	keras_api

	keras_api

	keras_api
n
kernel
	bias
regularization_losses
	variables
trainable_variables
	keras_api
n
kernel
	bias
regularization_losses
	variables
trainable_variables
	keras_api
 

20
31
<2
=3
F4
G5
P6
Q7
^8
_9
l10
m11
v12
w13
14
15
16
17
18
19

20
31
<2
=3
F4
G5
P6
Q7
^8
_9
l10
m11
v12
w13
14
15
16
17
18
19
В
 layer_regularization_losses
layers
&regularization_losses
layer_metrics
'	variables
non_trainable_variables
(trainable_variables
metrics
 
 
 
 
 
В
 layer_regularization_losses
layers
,regularization_losses
layer_metrics
-	variables
non_trainable_variables
.trainable_variables
metrics
 
 
][
VARIABLE_VALUEconv3d_226/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_226/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 

20
31

20
31
В
  layer_regularization_losses
Ёlayers
4regularization_losses
Ђlayer_metrics
5	variables
Ѓnon_trainable_variables
6trainable_variables
Єmetrics
 
 
 
В
 Ѕlayer_regularization_losses
Іlayers
8regularization_losses
Їlayer_metrics
9	variables
Јnon_trainable_variables
:trainable_variables
Љmetrics
][
VARIABLE_VALUEconv3d_227/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_227/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

<0
=1

<0
=1
В
 Њlayer_regularization_losses
Ћlayers
>regularization_losses
Ќlayer_metrics
?	variables
­non_trainable_variables
@trainable_variables
Ўmetrics
 
 
 
В
 Џlayer_regularization_losses
Аlayers
Bregularization_losses
Бlayer_metrics
C	variables
Вnon_trainable_variables
Dtrainable_variables
Гmetrics
][
VARIABLE_VALUEconv3d_228/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_228/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

F0
G1

F0
G1
В
 Дlayer_regularization_losses
Еlayers
Hregularization_losses
Жlayer_metrics
I	variables
Зnon_trainable_variables
Jtrainable_variables
Иmetrics
 
 
 
В
 Йlayer_regularization_losses
Кlayers
Lregularization_losses
Лlayer_metrics
M	variables
Мnon_trainable_variables
Ntrainable_variables
Нmetrics
][
VARIABLE_VALUEconv3d_229/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_229/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
 

P0
Q1

P0
Q1
В
 Оlayer_regularization_losses
Пlayers
Rregularization_losses
Рlayer_metrics
S	variables
Сnon_trainable_variables
Ttrainable_variables
Тmetrics
 
 
 
В
 Уlayer_regularization_losses
Фlayers
Vregularization_losses
Хlayer_metrics
W	variables
Цnon_trainable_variables
Xtrainable_variables
Чmetrics
 
 
 
В
 Шlayer_regularization_losses
Щlayers
Zregularization_losses
Ъlayer_metrics
[	variables
Ыnon_trainable_variables
\trainable_variables
Ьmetrics
[Y
VARIABLE_VALUEdense_50/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_50/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
 

^0
_1

^0
_1
В
 Эlayer_regularization_losses
Юlayers
`regularization_losses
Яlayer_metrics
a	variables
аnon_trainable_variables
btrainable_variables
бmetrics
 
 
 
В
 вlayer_regularization_losses
гlayers
dregularization_losses
дlayer_metrics
e	variables
еnon_trainable_variables
ftrainable_variables
жmetrics
 
 
 
 
][
VARIABLE_VALUEconv3d_230/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_230/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE
 

l0
m1

l0
m1
В
 зlayer_regularization_losses
иlayers
nregularization_losses
йlayer_metrics
o	variables
кnon_trainable_variables
ptrainable_variables
лmetrics
 
 
 
 
][
VARIABLE_VALUEconv3d_231/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_231/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE
 

v0
w1

v0
w1
В
 мlayer_regularization_losses
нlayers
xregularization_losses
оlayer_metrics
y	variables
пnon_trainable_variables
ztrainable_variables
рmetrics
 
 
 
 
][
VARIABLE_VALUEconv3d_232/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_232/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
Е
 сlayer_regularization_losses
тlayers
regularization_losses
уlayer_metrics
	variables
фnon_trainable_variables
trainable_variables
хmetrics
 
 
 
 
][
VARIABLE_VALUEconv3d_233/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_233/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
Е
 цlayer_regularization_losses
чlayers
regularization_losses
шlayer_metrics
	variables
щnon_trainable_variables
trainable_variables
ъmetrics
][
VARIABLE_VALUEconv3d_234/kernel6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_234/bias4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
Е
 ыlayer_regularization_losses
ьlayers
regularization_losses
эlayer_metrics
	variables
юnon_trainable_variables
trainable_variables
яmetrics
 

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
30
 31
!32
"33
#34
$35
%36
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
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
:џџџџџџџџџ@@*
dtype0*(
shape:џџџџџџџџџ@@
е
StatefulPartitionedCallStatefulPartitionedCallserving_default_inputconv3d_226/kernelconv3d_226/biasconv3d_227/kernelconv3d_227/biasconv3d_228/kernelconv3d_228/biasconv3d_229/kernelconv3d_229/biasdense_50/kerneldense_50/biasconv3d_230/kernelconv3d_230/biasconv3d_231/kernelconv3d_231/biasconv3d_232/kernelconv3d_232/biasconv3d_233/kernelconv3d_233/biasconv3d_234/kernelconv3d_234/bias* 
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ@@*6
_read_only_resource_inputs
	
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 */
f*R(
&__inference_signature_wrapper_12219393
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
А
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%conv3d_226/kernel/Read/ReadVariableOp#conv3d_226/bias/Read/ReadVariableOp%conv3d_227/kernel/Read/ReadVariableOp#conv3d_227/bias/Read/ReadVariableOp%conv3d_228/kernel/Read/ReadVariableOp#conv3d_228/bias/Read/ReadVariableOp%conv3d_229/kernel/Read/ReadVariableOp#conv3d_229/bias/Read/ReadVariableOp#dense_50/kernel/Read/ReadVariableOp!dense_50/bias/Read/ReadVariableOp%conv3d_230/kernel/Read/ReadVariableOp#conv3d_230/bias/Read/ReadVariableOp%conv3d_231/kernel/Read/ReadVariableOp#conv3d_231/bias/Read/ReadVariableOp%conv3d_232/kernel/Read/ReadVariableOp#conv3d_232/bias/Read/ReadVariableOp%conv3d_233/kernel/Read/ReadVariableOp#conv3d_233/bias/Read/ReadVariableOp%conv3d_234/kernel/Read/ReadVariableOp#conv3d_234/bias/Read/ReadVariableOpConst*!
Tin
2*
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
!__inference__traced_save_12220255

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv3d_226/kernelconv3d_226/biasconv3d_227/kernelconv3d_227/biasconv3d_228/kernelconv3d_228/biasconv3d_229/kernelconv3d_229/biasdense_50/kerneldense_50/biasconv3d_230/kernelconv3d_230/biasconv3d_231/kernelconv3d_231/biasconv3d_232/kernelconv3d_232/biasconv3d_233/kernelconv3d_233/biasconv3d_234/kernelconv3d_234/bias* 
Tin
2*
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
$__inference__traced_restore_12220325ъ
С
І
-__inference_conv3d_234_layer_call_fn_12220162

inputs%
unknown: 
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
:џџџџџџџџџ@@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *Q
fLRJ
H__inference_conv3d_234_layer_call_and_return_conditional_losses_122187142
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџ@@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:џџџџџџџџџ @@: : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:џџџџџџџџџ @@
 
_user_specified_nameinputs
Ю

H__inference_conv3d_229_layer_call_and_return_conditional_losses_12219988

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
е3
О
!__inference__traced_save_12220255
file_prefix0
,savev2_conv3d_226_kernel_read_readvariableop.
*savev2_conv3d_226_bias_read_readvariableop0
,savev2_conv3d_227_kernel_read_readvariableop.
*savev2_conv3d_227_bias_read_readvariableop0
,savev2_conv3d_228_kernel_read_readvariableop.
*savev2_conv3d_228_bias_read_readvariableop0
,savev2_conv3d_229_kernel_read_readvariableop.
*savev2_conv3d_229_bias_read_readvariableop.
*savev2_dense_50_kernel_read_readvariableop,
(savev2_dense_50_bias_read_readvariableop0
,savev2_conv3d_230_kernel_read_readvariableop.
*savev2_conv3d_230_bias_read_readvariableop0
,savev2_conv3d_231_kernel_read_readvariableop.
*savev2_conv3d_231_bias_read_readvariableop0
,savev2_conv3d_232_kernel_read_readvariableop.
*savev2_conv3d_232_bias_read_readvariableop0
,savev2_conv3d_233_kernel_read_readvariableop.
*savev2_conv3d_233_bias_read_readvariableop0
,savev2_conv3d_234_kernel_read_readvariableop.
*savev2_conv3d_234_bias_read_readvariableop
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
ShardedFilenameэ	
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*џ
valueѕBђB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesВ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*=
value4B2B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesЮ
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_conv3d_226_kernel_read_readvariableop*savev2_conv3d_226_bias_read_readvariableop,savev2_conv3d_227_kernel_read_readvariableop*savev2_conv3d_227_bias_read_readvariableop,savev2_conv3d_228_kernel_read_readvariableop*savev2_conv3d_228_bias_read_readvariableop,savev2_conv3d_229_kernel_read_readvariableop*savev2_conv3d_229_bias_read_readvariableop*savev2_dense_50_kernel_read_readvariableop(savev2_dense_50_bias_read_readvariableop,savev2_conv3d_230_kernel_read_readvariableop*savev2_conv3d_230_bias_read_readvariableop,savev2_conv3d_231_kernel_read_readvariableop*savev2_conv3d_231_bias_read_readvariableop,savev2_conv3d_232_kernel_read_readvariableop*savev2_conv3d_232_bias_read_readvariableop,savev2_conv3d_233_kernel_read_readvariableop*savev2_conv3d_233_bias_read_readvariableop,savev2_conv3d_234_kernel_read_readvariableop*savev2_conv3d_234_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *#
dtypes
22
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

identity_1Identity_1:output:0*Ѕ
_input_shapes
: : : : ::::::@@:@:::::::0 : : :: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:0,
*
_output_shapes
: : 

_output_shapes
: :0,
*
_output_shapes
: : 

_output_shapes
::0,
*
_output_shapes
:: 

_output_shapes
::0,
*
_output_shapes
:: 

_output_shapes
::$	 

_output_shapes

:@@: 


_output_shapes
:@:0,
*
_output_shapes
:: 

_output_shapes
::0,
*
_output_shapes
:: 

_output_shapes
::0,
*
_output_shapes
:: 

_output_shapes
::0,
*
_output_shapes
:0 : 

_output_shapes
: :0,
*
_output_shapes
: : 

_output_shapes
::

_output_shapes
: 

e
I__inference_reshape_100_layer_call_and_return_conditional_losses_12220033

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

S
7__inference_average_pooling3d_89_layer_call_fn_12219902

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
R__inference_average_pooling3d_89_layer_call_and_return_conditional_losses_122185002
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
Є
S
7__inference_average_pooling3d_91_layer_call_fn_12219993

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
R__inference_average_pooling3d_91_layer_call_and_return_conditional_losses_122184002
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

e
I__inference_reshape_101_layer_call_and_return_conditional_losses_12218602

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
ё
Ё

F__inference_model_50_layer_call_and_return_conditional_losses_12219052

inputs1
conv3d_226_12218963: !
conv3d_226_12218965: 1
conv3d_227_12218969: !
conv3d_227_12218971:1
conv3d_228_12218975:!
conv3d_228_12218977:1
conv3d_229_12218981:!
conv3d_229_12218983:#
dense_50_12218988:@@
dense_50_12218990:@1
conv3d_230_12219002:!
conv3d_230_12219004:1
conv3d_231_12219015:!
conv3d_231_12219017:1
conv3d_232_12219028:!
conv3d_232_12219030:1
conv3d_233_12219041:0 !
conv3d_233_12219043: 1
conv3d_234_12219046: !
conv3d_234_12219048:
identityЂ"conv3d_226/StatefulPartitionedCallЂ"conv3d_227/StatefulPartitionedCallЂ"conv3d_228/StatefulPartitionedCallЂ"conv3d_229/StatefulPartitionedCallЂ"conv3d_230/StatefulPartitionedCallЂ"conv3d_231/StatefulPartitionedCallЂ"conv3d_232/StatefulPartitionedCallЂ"conv3d_233/StatefulPartitionedCallЂ"conv3d_234/StatefulPartitionedCallЂ dense_50/StatefulPartitionedCallЕ
0tf.__operators__.getitem_246/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_246/strided_slice/stackЙ
2tf.__operators__.getitem_246/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_246/strided_slice/stack_1Й
2tf.__operators__.getitem_246/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_246/strided_slice/stack_2
*tf.__operators__.getitem_246/strided_sliceStridedSliceinputs9tf.__operators__.getitem_246/strided_slice/stack:output:0;tf.__operators__.getitem_246/strided_slice/stack_1:output:0;tf.__operators__.getitem_246/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:џџџџџџџџџ@@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_246/strided_sliceЛ
#range_conversion_50/PartitionedCallPartitionedCall3tf.__operators__.getitem_246/strided_slice:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ@@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *Z
fURS
Q__inference_range_conversion_50_layer_call_and_return_conditional_losses_122184402%
#range_conversion_50/PartitionedCallЕ
0tf.__operators__.getitem_247/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_247/strided_slice/stackЙ
2tf.__operators__.getitem_247/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_247/strided_slice/stack_1Й
2tf.__operators__.getitem_247/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_247/strided_slice/stack_2
*tf.__operators__.getitem_247/strided_sliceStridedSliceinputs9tf.__operators__.getitem_247/strided_slice/stack:output:0;tf.__operators__.getitem_247/strided_slice/stack_1:output:0;tf.__operators__.getitem_247/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:џџџџџџџџџ@@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_247/strided_slicex
tf.concat_295/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_295/concat/axis
tf.concat_295/concatConcatV2,range_conversion_50/PartitionedCall:output:03tf.__operators__.getitem_247/strided_slice:output:0"tf.concat_295/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ@@2
tf.concat_295/concatв
"conv3d_226/StatefulPartitionedCallStatefulPartitionedCalltf.concat_295/concat:output:0conv3d_226_12218963conv3d_226_12218965*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ @@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *Q
fLRJ
H__inference_conv3d_226_layer_call_and_return_conditional_losses_122184592$
"conv3d_226/StatefulPartitionedCallЖ
$average_pooling3d_88/PartitionedCallPartitionedCall+conv3d_226/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ   * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *[
fVRT
R__inference_average_pooling3d_88_layer_call_and_return_conditional_losses_122184732&
$average_pooling3d_88/PartitionedCallт
"conv3d_227/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_88/PartitionedCall:output:0conv3d_227_12218969conv3d_227_12218971*
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
H__inference_conv3d_227_layer_call_and_return_conditional_losses_122184862$
"conv3d_227/StatefulPartitionedCallЖ
$average_pooling3d_89/PartitionedCallPartitionedCall+conv3d_227/StatefulPartitionedCall:output:0*
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
R__inference_average_pooling3d_89_layer_call_and_return_conditional_losses_122185002&
$average_pooling3d_89/PartitionedCallт
"conv3d_228/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_89/PartitionedCall:output:0conv3d_228_12218975conv3d_228_12218977*
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
H__inference_conv3d_228_layer_call_and_return_conditional_losses_122185132$
"conv3d_228/StatefulPartitionedCallЖ
$average_pooling3d_90/PartitionedCallPartitionedCall+conv3d_228/StatefulPartitionedCall:output:0*
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
R__inference_average_pooling3d_90_layer_call_and_return_conditional_losses_122185272&
$average_pooling3d_90/PartitionedCallт
"conv3d_229/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_90/PartitionedCall:output:0conv3d_229_12218981conv3d_229_12218983*
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
H__inference_conv3d_229_layer_call_and_return_conditional_losses_122185402$
"conv3d_229/StatefulPartitionedCallЖ
$average_pooling3d_91/PartitionedCallPartitionedCall+conv3d_229/StatefulPartitionedCall:output:0*
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
R__inference_average_pooling3d_91_layer_call_and_return_conditional_losses_122185542&
$average_pooling3d_91/PartitionedCall
reshape_100/PartitionedCallPartitionedCall-average_pooling3d_91/PartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8 *R
fMRK
I__inference_reshape_100_layer_call_and_return_conditional_losses_122185682
reshape_100/PartitionedCallУ
 dense_50/StatefulPartitionedCallStatefulPartitionedCall$reshape_100/PartitionedCall:output:0dense_50_12218988dense_50_12218990*
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
F__inference_dense_50_layer_call_and_return_conditional_losses_122185812"
 dense_50/StatefulPartitionedCall
reshape_101/PartitionedCallPartitionedCall)dense_50/StatefulPartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8 *R
fMRK
I__inference_reshape_101_layer_call_and_return_conditional_losses_122186022
reshape_101/PartitionedCallЅ
tf.reshape_344/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                     2
tf.reshape_344/Reshape/shapeв
tf.reshape_344/ReshapeReshape$reshape_101/PartitionedCall:output:0%tf.reshape_344/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.reshape_344/ReshapeЁ
tf.tile_172/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_172/Tile/multiplesМ
tf.tile_172/TileTiletf.reshape_344/Reshape:output:0#tf.tile_172/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.tile_172/Tile
tf.reshape_345/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ            2
tf.reshape_345/Reshape/shapeЛ
tf.reshape_345/ReshapeReshapetf.tile_172/Tile:output:0%tf.reshape_345/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.reshape_345/Reshapex
tf.concat_296/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_296/concat/axisё
tf.concat_296/concatConcatV2tf.reshape_345/Reshape:output:0+conv3d_229/StatefulPartitionedCall:output:0"tf.concat_296/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.concat_296/concatв
"conv3d_230/StatefulPartitionedCallStatefulPartitionedCalltf.concat_296/concat:output:0conv3d_230_12219002conv3d_230_12219004*
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
H__inference_conv3d_230_layer_call_and_return_conditional_losses_122186232$
"conv3d_230/StatefulPartitionedCallЅ
tf.reshape_346/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                     2
tf.reshape_346/Reshape/shapeй
tf.reshape_346/ReshapeReshape+conv3d_230/StatefulPartitionedCall:output:0%tf.reshape_346/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.reshape_346/ReshapeЁ
tf.tile_173/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_173/Tile/multiplesМ
tf.tile_173/TileTiletf.reshape_346/Reshape:output:0#tf.tile_173/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.tile_173/Tile
tf.reshape_347/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ            2
tf.reshape_347/Reshape/shapeЛ
tf.reshape_347/ReshapeReshapetf.tile_173/Tile:output:0%tf.reshape_347/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.reshape_347/Reshapex
tf.concat_297/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_297/concat/axisё
tf.concat_297/concatConcatV2tf.reshape_347/Reshape:output:0+conv3d_228/StatefulPartitionedCall:output:0"tf.concat_297/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.concat_297/concatв
"conv3d_231/StatefulPartitionedCallStatefulPartitionedCalltf.concat_297/concat:output:0conv3d_231_12219015conv3d_231_12219017*
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
H__inference_conv3d_231_layer_call_and_return_conditional_losses_122186482$
"conv3d_231/StatefulPartitionedCallЅ
tf.reshape_348/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                     2
tf.reshape_348/Reshape/shapeй
tf.reshape_348/ReshapeReshape+conv3d_231/StatefulPartitionedCall:output:0%tf.reshape_348/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.reshape_348/ReshapeЁ
tf.tile_174/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_174/Tile/multiplesМ
tf.tile_174/TileTiletf.reshape_348/Reshape:output:0#tf.tile_174/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.tile_174/Tile
tf.reshape_349/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ              2
tf.reshape_349/Reshape/shapeЛ
tf.reshape_349/ReshapeReshapetf.tile_174/Tile:output:0%tf.reshape_349/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ  2
tf.reshape_349/Reshapex
tf.concat_298/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_298/concat/axisё
tf.concat_298/concatConcatV2tf.reshape_349/Reshape:output:0+conv3d_227/StatefulPartitionedCall:output:0"tf.concat_298/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ  2
tf.concat_298/concatв
"conv3d_232/StatefulPartitionedCallStatefulPartitionedCalltf.concat_298/concat:output:0conv3d_232_12219028conv3d_232_12219030*
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
H__inference_conv3d_232_layer_call_and_return_conditional_losses_122186732$
"conv3d_232/StatefulPartitionedCallЅ
tf.reshape_350/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                       2
tf.reshape_350/Reshape/shapeй
tf.reshape_350/ReshapeReshape+conv3d_232/StatefulPartitionedCall:output:0%tf.reshape_350/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ  2
tf.reshape_350/ReshapeЁ
tf.tile_175/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_175/Tile/multiplesМ
tf.tile_175/TileTiletf.reshape_350/Reshape:output:0#tf.tile_175/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ  2
tf.tile_175/Tile
tf.reshape_351/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ      @   @   2
tf.reshape_351/Reshape/shapeЛ
tf.reshape_351/ReshapeReshapetf.tile_175/Tile:output:0%tf.reshape_351/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@2
tf.reshape_351/Reshapex
tf.concat_299/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_299/concat/axisё
tf.concat_299/concatConcatV2tf.reshape_351/Reshape:output:0+conv3d_226/StatefulPartitionedCall:output:0"tf.concat_299/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ0@@2
tf.concat_299/concatв
"conv3d_233/StatefulPartitionedCallStatefulPartitionedCalltf.concat_299/concat:output:0conv3d_233_12219041conv3d_233_12219043*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ @@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *Q
fLRJ
H__inference_conv3d_233_layer_call_and_return_conditional_losses_122186982$
"conv3d_233/StatefulPartitionedCallр
"conv3d_234/StatefulPartitionedCallStatefulPartitionedCall+conv3d_233/StatefulPartitionedCall:output:0conv3d_234_12219046conv3d_234_12219048*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ@@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *Q
fLRJ
H__inference_conv3d_234_layer_call_and_return_conditional_losses_122187142$
"conv3d_234/StatefulPartitionedCall
IdentityIdentity+conv3d_234/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџ@@2

IdentityО
NoOpNoOp#^conv3d_226/StatefulPartitionedCall#^conv3d_227/StatefulPartitionedCall#^conv3d_228/StatefulPartitionedCall#^conv3d_229/StatefulPartitionedCall#^conv3d_230/StatefulPartitionedCall#^conv3d_231/StatefulPartitionedCall#^conv3d_232/StatefulPartitionedCall#^conv3d_233/StatefulPartitionedCall#^conv3d_234/StatefulPartitionedCall!^dense_50/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:џџџџџџџџџ@@: : : : : : : : : : : : : : : : : : : : 2H
"conv3d_226/StatefulPartitionedCall"conv3d_226/StatefulPartitionedCall2H
"conv3d_227/StatefulPartitionedCall"conv3d_227/StatefulPartitionedCall2H
"conv3d_228/StatefulPartitionedCall"conv3d_228/StatefulPartitionedCall2H
"conv3d_229/StatefulPartitionedCall"conv3d_229/StatefulPartitionedCall2H
"conv3d_230/StatefulPartitionedCall"conv3d_230/StatefulPartitionedCall2H
"conv3d_231/StatefulPartitionedCall"conv3d_231/StatefulPartitionedCall2H
"conv3d_232/StatefulPartitionedCall"conv3d_232/StatefulPartitionedCall2H
"conv3d_233/StatefulPartitionedCall"conv3d_233/StatefulPartitionedCall2H
"conv3d_234/StatefulPartitionedCall"conv3d_234/StatefulPartitionedCall2D
 dense_50/StatefulPartitionedCall dense_50/StatefulPartitionedCall:[ W
3
_output_shapes!
:џџџџџџџџџ@@
 
_user_specified_nameinputs
С
І
-__inference_conv3d_226_layer_call_fn_12219833

inputs%
unknown: 
	unknown_0: 
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ @@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *Q
fLRJ
H__inference_conv3d_226_layer_call_and_return_conditional_losses_122184592
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџ @@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:џџџџџџџџџ@@: : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:џџџџџџџџџ@@
 
_user_specified_nameinputs
	
n
R__inference_average_pooling3d_91_layer_call_and_return_conditional_losses_12220016

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
ЊX

$__inference__traced_restore_12220325
file_prefix@
"assignvariableop_conv3d_226_kernel: 0
"assignvariableop_1_conv3d_226_bias: B
$assignvariableop_2_conv3d_227_kernel: 0
"assignvariableop_3_conv3d_227_bias:B
$assignvariableop_4_conv3d_228_kernel:0
"assignvariableop_5_conv3d_228_bias:B
$assignvariableop_6_conv3d_229_kernel:0
"assignvariableop_7_conv3d_229_bias:4
"assignvariableop_8_dense_50_kernel:@@.
 assignvariableop_9_dense_50_bias:@C
%assignvariableop_10_conv3d_230_kernel:1
#assignvariableop_11_conv3d_230_bias:C
%assignvariableop_12_conv3d_231_kernel:1
#assignvariableop_13_conv3d_231_bias:C
%assignvariableop_14_conv3d_232_kernel:1
#assignvariableop_15_conv3d_232_bias:C
%assignvariableop_16_conv3d_233_kernel:0 1
#assignvariableop_17_conv3d_233_bias: C
%assignvariableop_18_conv3d_234_kernel: 1
#assignvariableop_19_conv3d_234_bias:
identity_21ЂAssignVariableOpЂAssignVariableOp_1ЂAssignVariableOp_10ЂAssignVariableOp_11ЂAssignVariableOp_12ЂAssignVariableOp_13ЂAssignVariableOp_14ЂAssignVariableOp_15ЂAssignVariableOp_16ЂAssignVariableOp_17ЂAssignVariableOp_18ЂAssignVariableOp_19ЂAssignVariableOp_2ЂAssignVariableOp_3ЂAssignVariableOp_4ЂAssignVariableOp_5ЂAssignVariableOp_6ЂAssignVariableOp_7ЂAssignVariableOp_8ЂAssignVariableOp_9ѓ	
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*џ
valueѕBђB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesИ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*=
value4B2B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*h
_output_shapesV
T:::::::::::::::::::::*#
dtypes
22
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

IdentityЁ
AssignVariableOpAssignVariableOp"assignvariableop_conv3d_226_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1Ї
AssignVariableOp_1AssignVariableOp"assignvariableop_1_conv3d_226_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2Љ
AssignVariableOp_2AssignVariableOp$assignvariableop_2_conv3d_227_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3Ї
AssignVariableOp_3AssignVariableOp"assignvariableop_3_conv3d_227_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4Љ
AssignVariableOp_4AssignVariableOp$assignvariableop_4_conv3d_228_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5Ї
AssignVariableOp_5AssignVariableOp"assignvariableop_5_conv3d_228_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6Љ
AssignVariableOp_6AssignVariableOp$assignvariableop_6_conv3d_229_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7Ї
AssignVariableOp_7AssignVariableOp"assignvariableop_7_conv3d_229_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8Ї
AssignVariableOp_8AssignVariableOp"assignvariableop_8_dense_50_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9Ѕ
AssignVariableOp_9AssignVariableOp assignvariableop_9_dense_50_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10­
AssignVariableOp_10AssignVariableOp%assignvariableop_10_conv3d_230_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11Ћ
AssignVariableOp_11AssignVariableOp#assignvariableop_11_conv3d_230_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12­
AssignVariableOp_12AssignVariableOp%assignvariableop_12_conv3d_231_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13Ћ
AssignVariableOp_13AssignVariableOp#assignvariableop_13_conv3d_231_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14­
AssignVariableOp_14AssignVariableOp%assignvariableop_14_conv3d_232_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15Ћ
AssignVariableOp_15AssignVariableOp#assignvariableop_15_conv3d_232_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16­
AssignVariableOp_16AssignVariableOp%assignvariableop_16_conv3d_233_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17Ћ
AssignVariableOp_17AssignVariableOp#assignvariableop_17_conv3d_233_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18­
AssignVariableOp_18AssignVariableOp%assignvariableop_18_conv3d_234_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19Ћ
AssignVariableOp_19AssignVariableOp#assignvariableop_19_conv3d_234_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_199
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp
Identity_20Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_20f
Identity_21IdentityIdentity_20:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_21ў
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_21Identity_21:output:0*=
_input_shapes,
*: : : : : : : : : : : : : : : : : : : : : 2$
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

ї
F__inference_dense_50_layer_call_and_return_conditional_losses_12218581

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
ж

H__inference_conv3d_234_layer_call_and_return_conditional_losses_12218714

inputs<
conv3d_readvariableop_resource: -
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂConv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
: *
dtype02
Conv3D/ReadVariableOpР
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@*
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
:џџџџџџџџџ@@*
data_formatNCHW2	
BiasAddw
IdentityIdentityBiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџ@@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:џџџџџџџџџ @@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:џџџџџџџџџ @@
 
_user_specified_nameinputs
ё
Е
F__inference_model_50_layer_call_and_return_conditional_losses_12219807

inputsG
)conv3d_226_conv3d_readvariableop_resource: 8
*conv3d_226_biasadd_readvariableop_resource: G
)conv3d_227_conv3d_readvariableop_resource: 8
*conv3d_227_biasadd_readvariableop_resource:G
)conv3d_228_conv3d_readvariableop_resource:8
*conv3d_228_biasadd_readvariableop_resource:G
)conv3d_229_conv3d_readvariableop_resource:8
*conv3d_229_biasadd_readvariableop_resource:9
'dense_50_matmul_readvariableop_resource:@@6
(dense_50_biasadd_readvariableop_resource:@G
)conv3d_230_conv3d_readvariableop_resource:8
*conv3d_230_biasadd_readvariableop_resource:G
)conv3d_231_conv3d_readvariableop_resource:8
*conv3d_231_biasadd_readvariableop_resource:G
)conv3d_232_conv3d_readvariableop_resource:8
*conv3d_232_biasadd_readvariableop_resource:G
)conv3d_233_conv3d_readvariableop_resource:0 8
*conv3d_233_biasadd_readvariableop_resource: G
)conv3d_234_conv3d_readvariableop_resource: 8
*conv3d_234_biasadd_readvariableop_resource:
identityЂ!conv3d_226/BiasAdd/ReadVariableOpЂ conv3d_226/Conv3D/ReadVariableOpЂ!conv3d_227/BiasAdd/ReadVariableOpЂ conv3d_227/Conv3D/ReadVariableOpЂ!conv3d_228/BiasAdd/ReadVariableOpЂ conv3d_228/Conv3D/ReadVariableOpЂ!conv3d_229/BiasAdd/ReadVariableOpЂ conv3d_229/Conv3D/ReadVariableOpЂ!conv3d_230/BiasAdd/ReadVariableOpЂ conv3d_230/Conv3D/ReadVariableOpЂ!conv3d_231/BiasAdd/ReadVariableOpЂ conv3d_231/Conv3D/ReadVariableOpЂ!conv3d_232/BiasAdd/ReadVariableOpЂ conv3d_232/Conv3D/ReadVariableOpЂ!conv3d_233/BiasAdd/ReadVariableOpЂ conv3d_233/Conv3D/ReadVariableOpЂ!conv3d_234/BiasAdd/ReadVariableOpЂ conv3d_234/Conv3D/ReadVariableOpЂdense_50/BiasAdd/ReadVariableOpЂdense_50/MatMul/ReadVariableOpЕ
0tf.__operators__.getitem_246/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_246/strided_slice/stackЙ
2tf.__operators__.getitem_246/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_246/strided_slice/stack_1Й
2tf.__operators__.getitem_246/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_246/strided_slice/stack_2
*tf.__operators__.getitem_246/strided_sliceStridedSliceinputs9tf.__operators__.getitem_246/strided_slice/stack:output:0;tf.__operators__.getitem_246/strided_slice/stack_1:output:0;tf.__operators__.getitem_246/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:џџџџџџџџџ@@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_246/strided_slice{
range_conversion_50/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_conversion_50/sub/yа
range_conversion_50/subSub3tf.__operators__.getitem_246/strided_slice:output:0"range_conversion_50/sub/y:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@2
range_conversion_50/sub
range_conversion_50/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2
range_conversion_50/truediv/yШ
range_conversion_50/truedivRealDivrange_conversion_50/sub:z:0&range_conversion_50/truediv/y:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@2
range_conversion_50/truediv{
range_conversion_50/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
range_conversion_50/mul/yМ
range_conversion_50/mulMulrange_conversion_50/truediv:z:0"range_conversion_50/mul/y:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@2
range_conversion_50/mul{
range_conversion_50/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  П2
range_conversion_50/add/yК
range_conversion_50/addAddV2range_conversion_50/mul:z:0"range_conversion_50/add/y:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@2
range_conversion_50/addЕ
0tf.__operators__.getitem_247/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_247/strided_slice/stackЙ
2tf.__operators__.getitem_247/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_247/strided_slice/stack_1Й
2tf.__operators__.getitem_247/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_247/strided_slice/stack_2
*tf.__operators__.getitem_247/strided_sliceStridedSliceinputs9tf.__operators__.getitem_247/strided_slice/stack:output:0;tf.__operators__.getitem_247/strided_slice/stack_1:output:0;tf.__operators__.getitem_247/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:џџџџџџџџџ@@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_247/strided_slicex
tf.concat_295/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_295/concat/axisѕ
tf.concat_295/concatConcatV2range_conversion_50/add:z:03tf.__operators__.getitem_247/strided_slice:output:0"tf.concat_295/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ@@2
tf.concat_295/concatК
 conv3d_226/Conv3D/ReadVariableOpReadVariableOp)conv3d_226_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02"
 conv3d_226/Conv3D/ReadVariableOpј
conv3d_226/Conv3DConv3Dtf.concat_295/concat:output:0(conv3d_226/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ @@*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_226/Conv3D­
!conv3d_226/BiasAdd/ReadVariableOpReadVariableOp*conv3d_226_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv3d_226/BiasAdd/ReadVariableOpЯ
conv3d_226/BiasAddBiasAddconv3d_226/Conv3D:output:0)conv3d_226/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ @@*
data_formatNCHW2
conv3d_226/BiasAdd
conv3d_226/SoftplusSoftplusconv3d_226/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ @@2
conv3d_226/SoftplusЇ
#average_pooling3d_88/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2%
#average_pooling3d_88/transpose/permм
average_pooling3d_88/transpose	Transpose!conv3d_226/Softplus:activations:0,average_pooling3d_88/transpose/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@ 2 
average_pooling3d_88/transposeэ
average_pooling3d_88/AvgPool3D	AvgPool3D"average_pooling3d_88/transpose:y:0*
T0*3
_output_shapes!
:џџџџџџџџџ   *
ksize	
*
paddingVALID*
strides	
2 
average_pooling3d_88/AvgPool3DЋ
%average_pooling3d_88/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2'
%average_pooling3d_88/transpose_1/permш
 average_pooling3d_88/transpose_1	Transpose'average_pooling3d_88/AvgPool3D:output:0.average_pooling3d_88/transpose_1/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ   2"
 average_pooling3d_88/transpose_1К
 conv3d_227/Conv3D/ReadVariableOpReadVariableOp)conv3d_227_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02"
 conv3d_227/Conv3D/ReadVariableOpџ
conv3d_227/Conv3DConv3D$average_pooling3d_88/transpose_1:y:0(conv3d_227/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ  *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_227/Conv3D­
!conv3d_227/BiasAdd/ReadVariableOpReadVariableOp*conv3d_227_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_227/BiasAdd/ReadVariableOpЯ
conv3d_227/BiasAddBiasAddconv3d_227/Conv3D:output:0)conv3d_227/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ  *
data_formatNCHW2
conv3d_227/BiasAdd
conv3d_227/SoftplusSoftplusconv3d_227/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ  2
conv3d_227/SoftplusЇ
#average_pooling3d_89/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2%
#average_pooling3d_89/transpose/permм
average_pooling3d_89/transpose	Transpose!conv3d_227/Softplus:activations:0,average_pooling3d_89/transpose/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ  2 
average_pooling3d_89/transposeэ
average_pooling3d_89/AvgPool3D	AvgPool3D"average_pooling3d_89/transpose:y:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
ksize	
*
paddingVALID*
strides	
2 
average_pooling3d_89/AvgPool3DЋ
%average_pooling3d_89/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2'
%average_pooling3d_89/transpose_1/permш
 average_pooling3d_89/transpose_1	Transpose'average_pooling3d_89/AvgPool3D:output:0.average_pooling3d_89/transpose_1/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2"
 average_pooling3d_89/transpose_1К
 conv3d_228/Conv3D/ReadVariableOpReadVariableOp)conv3d_228_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_228/Conv3D/ReadVariableOpџ
conv3d_228/Conv3DConv3D$average_pooling3d_89/transpose_1:y:0(conv3d_228/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_228/Conv3D­
!conv3d_228/BiasAdd/ReadVariableOpReadVariableOp*conv3d_228_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_228/BiasAdd/ReadVariableOpЯ
conv3d_228/BiasAddBiasAddconv3d_228/Conv3D:output:0)conv3d_228/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCHW2
conv3d_228/BiasAdd
conv3d_228/SoftplusSoftplusconv3d_228/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
conv3d_228/SoftplusЇ
#average_pooling3d_90/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2%
#average_pooling3d_90/transpose/permм
average_pooling3d_90/transpose	Transpose!conv3d_228/Softplus:activations:0,average_pooling3d_90/transpose/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2 
average_pooling3d_90/transposeэ
average_pooling3d_90/AvgPool3D	AvgPool3D"average_pooling3d_90/transpose:y:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
ksize	
*
paddingVALID*
strides	
2 
average_pooling3d_90/AvgPool3DЋ
%average_pooling3d_90/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2'
%average_pooling3d_90/transpose_1/permш
 average_pooling3d_90/transpose_1	Transpose'average_pooling3d_90/AvgPool3D:output:0.average_pooling3d_90/transpose_1/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2"
 average_pooling3d_90/transpose_1К
 conv3d_229/Conv3D/ReadVariableOpReadVariableOp)conv3d_229_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_229/Conv3D/ReadVariableOpџ
conv3d_229/Conv3DConv3D$average_pooling3d_90/transpose_1:y:0(conv3d_229/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_229/Conv3D­
!conv3d_229/BiasAdd/ReadVariableOpReadVariableOp*conv3d_229_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_229/BiasAdd/ReadVariableOpЯ
conv3d_229/BiasAddBiasAddconv3d_229/Conv3D:output:0)conv3d_229/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCHW2
conv3d_229/BiasAdd
conv3d_229/SoftplusSoftplusconv3d_229/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
conv3d_229/SoftplusЇ
#average_pooling3d_91/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2%
#average_pooling3d_91/transpose/permм
average_pooling3d_91/transpose	Transpose!conv3d_229/Softplus:activations:0,average_pooling3d_91/transpose/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2 
average_pooling3d_91/transposeэ
average_pooling3d_91/AvgPool3D	AvgPool3D"average_pooling3d_91/transpose:y:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
ksize	
*
paddingVALID*
strides	
2 
average_pooling3d_91/AvgPool3DЋ
%average_pooling3d_91/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2'
%average_pooling3d_91/transpose_1/permш
 average_pooling3d_91/transpose_1	Transpose'average_pooling3d_91/AvgPool3D:output:0.average_pooling3d_91/transpose_1/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2"
 average_pooling3d_91/transpose_1z
reshape_100/ShapeShape$average_pooling3d_91/transpose_1:y:0*
T0*
_output_shapes
:2
reshape_100/Shape
reshape_100/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_100/strided_slice/stack
!reshape_100/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_100/strided_slice/stack_1
!reshape_100/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_100/strided_slice/stack_2Њ
reshape_100/strided_sliceStridedSlicereshape_100/Shape:output:0(reshape_100/strided_slice/stack:output:0*reshape_100/strided_slice/stack_1:output:0*reshape_100/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_100/strided_slice|
reshape_100/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2
reshape_100/Reshape/shape/1Ж
reshape_100/Reshape/shapePack"reshape_100/strided_slice:output:0$reshape_100/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape_100/Reshape/shapeБ
reshape_100/ReshapeReshape$average_pooling3d_91/transpose_1:y:0"reshape_100/Reshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
reshape_100/ReshapeЈ
dense_50/MatMul/ReadVariableOpReadVariableOp'dense_50_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02 
dense_50/MatMul/ReadVariableOpЄ
dense_50/MatMulMatMulreshape_100/Reshape:output:0&dense_50/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dense_50/MatMulЇ
dense_50/BiasAdd/ReadVariableOpReadVariableOp(dense_50_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_50/BiasAdd/ReadVariableOpЅ
dense_50/BiasAddBiasAdddense_50/MatMul:product:0'dense_50/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dense_50/BiasAdd
dense_50/SoftplusSoftplusdense_50/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dense_50/Softplusu
reshape_101/ShapeShapedense_50/Softplus:activations:0*
T0*
_output_shapes
:2
reshape_101/Shape
reshape_101/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_101/strided_slice/stack
!reshape_101/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_101/strided_slice/stack_1
!reshape_101/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_101/strided_slice/stack_2Њ
reshape_101/strided_sliceStridedSlicereshape_101/Shape:output:0(reshape_101/strided_slice/stack:output:0*reshape_101/strided_slice/stack_1:output:0*reshape_101/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_101/strided_slice|
reshape_101/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_101/Reshape/shape/1|
reshape_101/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_101/Reshape/shape/2|
reshape_101/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_101/Reshape/shape/3|
reshape_101/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_101/Reshape/shape/4Ј
reshape_101/Reshape/shapePack"reshape_101/strided_slice:output:0$reshape_101/Reshape/shape/1:output:0$reshape_101/Reshape/shape/2:output:0$reshape_101/Reshape/shape/3:output:0$reshape_101/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
reshape_101/Reshape/shapeИ
reshape_101/ReshapeReshapedense_50/Softplus:activations:0"reshape_101/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
reshape_101/ReshapeЅ
tf.reshape_344/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                     2
tf.reshape_344/Reshape/shapeЪ
tf.reshape_344/ReshapeReshapereshape_101/Reshape:output:0%tf.reshape_344/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.reshape_344/ReshapeЁ
tf.tile_172/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_172/Tile/multiplesМ
tf.tile_172/TileTiletf.reshape_344/Reshape:output:0#tf.tile_172/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.tile_172/Tile
tf.reshape_345/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ            2
tf.reshape_345/Reshape/shapeЛ
tf.reshape_345/ReshapeReshapetf.tile_172/Tile:output:0%tf.reshape_345/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.reshape_345/Reshapex
tf.concat_296/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_296/concat/axisч
tf.concat_296/concatConcatV2tf.reshape_345/Reshape:output:0!conv3d_229/Softplus:activations:0"tf.concat_296/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.concat_296/concatК
 conv3d_230/Conv3D/ReadVariableOpReadVariableOp)conv3d_230_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_230/Conv3D/ReadVariableOpј
conv3d_230/Conv3DConv3Dtf.concat_296/concat:output:0(conv3d_230/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_230/Conv3D­
!conv3d_230/BiasAdd/ReadVariableOpReadVariableOp*conv3d_230_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_230/BiasAdd/ReadVariableOpЯ
conv3d_230/BiasAddBiasAddconv3d_230/Conv3D:output:0)conv3d_230/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCHW2
conv3d_230/BiasAdd
conv3d_230/SoftplusSoftplusconv3d_230/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
conv3d_230/SoftplusЅ
tf.reshape_346/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                     2
tf.reshape_346/Reshape/shapeЯ
tf.reshape_346/ReshapeReshape!conv3d_230/Softplus:activations:0%tf.reshape_346/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.reshape_346/ReshapeЁ
tf.tile_173/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_173/Tile/multiplesМ
tf.tile_173/TileTiletf.reshape_346/Reshape:output:0#tf.tile_173/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.tile_173/Tile
tf.reshape_347/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ            2
tf.reshape_347/Reshape/shapeЛ
tf.reshape_347/ReshapeReshapetf.tile_173/Tile:output:0%tf.reshape_347/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.reshape_347/Reshapex
tf.concat_297/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_297/concat/axisч
tf.concat_297/concatConcatV2tf.reshape_347/Reshape:output:0!conv3d_228/Softplus:activations:0"tf.concat_297/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.concat_297/concatК
 conv3d_231/Conv3D/ReadVariableOpReadVariableOp)conv3d_231_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_231/Conv3D/ReadVariableOpј
conv3d_231/Conv3DConv3Dtf.concat_297/concat:output:0(conv3d_231/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_231/Conv3D­
!conv3d_231/BiasAdd/ReadVariableOpReadVariableOp*conv3d_231_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_231/BiasAdd/ReadVariableOpЯ
conv3d_231/BiasAddBiasAddconv3d_231/Conv3D:output:0)conv3d_231/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCHW2
conv3d_231/BiasAdd
conv3d_231/SoftplusSoftplusconv3d_231/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
conv3d_231/SoftplusЅ
tf.reshape_348/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                     2
tf.reshape_348/Reshape/shapeЯ
tf.reshape_348/ReshapeReshape!conv3d_231/Softplus:activations:0%tf.reshape_348/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.reshape_348/ReshapeЁ
tf.tile_174/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_174/Tile/multiplesМ
tf.tile_174/TileTiletf.reshape_348/Reshape:output:0#tf.tile_174/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.tile_174/Tile
tf.reshape_349/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ              2
tf.reshape_349/Reshape/shapeЛ
tf.reshape_349/ReshapeReshapetf.tile_174/Tile:output:0%tf.reshape_349/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ  2
tf.reshape_349/Reshapex
tf.concat_298/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_298/concat/axisч
tf.concat_298/concatConcatV2tf.reshape_349/Reshape:output:0!conv3d_227/Softplus:activations:0"tf.concat_298/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ  2
tf.concat_298/concatК
 conv3d_232/Conv3D/ReadVariableOpReadVariableOp)conv3d_232_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_232/Conv3D/ReadVariableOpј
conv3d_232/Conv3DConv3Dtf.concat_298/concat:output:0(conv3d_232/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ  *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_232/Conv3D­
!conv3d_232/BiasAdd/ReadVariableOpReadVariableOp*conv3d_232_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_232/BiasAdd/ReadVariableOpЯ
conv3d_232/BiasAddBiasAddconv3d_232/Conv3D:output:0)conv3d_232/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ  *
data_formatNCHW2
conv3d_232/BiasAdd
conv3d_232/SoftplusSoftplusconv3d_232/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ  2
conv3d_232/SoftplusЅ
tf.reshape_350/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                       2
tf.reshape_350/Reshape/shapeЯ
tf.reshape_350/ReshapeReshape!conv3d_232/Softplus:activations:0%tf.reshape_350/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ  2
tf.reshape_350/ReshapeЁ
tf.tile_175/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_175/Tile/multiplesМ
tf.tile_175/TileTiletf.reshape_350/Reshape:output:0#tf.tile_175/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ  2
tf.tile_175/Tile
tf.reshape_351/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ      @   @   2
tf.reshape_351/Reshape/shapeЛ
tf.reshape_351/ReshapeReshapetf.tile_175/Tile:output:0%tf.reshape_351/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@2
tf.reshape_351/Reshapex
tf.concat_299/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_299/concat/axisч
tf.concat_299/concatConcatV2tf.reshape_351/Reshape:output:0!conv3d_226/Softplus:activations:0"tf.concat_299/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ0@@2
tf.concat_299/concatК
 conv3d_233/Conv3D/ReadVariableOpReadVariableOp)conv3d_233_conv3d_readvariableop_resource**
_output_shapes
:0 *
dtype02"
 conv3d_233/Conv3D/ReadVariableOpј
conv3d_233/Conv3DConv3Dtf.concat_299/concat:output:0(conv3d_233/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ @@*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_233/Conv3D­
!conv3d_233/BiasAdd/ReadVariableOpReadVariableOp*conv3d_233_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv3d_233/BiasAdd/ReadVariableOpЯ
conv3d_233/BiasAddBiasAddconv3d_233/Conv3D:output:0)conv3d_233/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ @@*
data_formatNCHW2
conv3d_233/BiasAdd
conv3d_233/SoftplusSoftplusconv3d_233/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ @@2
conv3d_233/SoftplusК
 conv3d_234/Conv3D/ReadVariableOpReadVariableOp)conv3d_234_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02"
 conv3d_234/Conv3D/ReadVariableOpќ
conv3d_234/Conv3DConv3D!conv3d_233/Softplus:activations:0(conv3d_234/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_234/Conv3D­
!conv3d_234/BiasAdd/ReadVariableOpReadVariableOp*conv3d_234_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_234/BiasAdd/ReadVariableOpЯ
conv3d_234/BiasAddBiasAddconv3d_234/Conv3D:output:0)conv3d_234/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@*
data_formatNCHW2
conv3d_234/BiasAdd
IdentityIdentityconv3d_234/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџ@@2

Identity
NoOpNoOp"^conv3d_226/BiasAdd/ReadVariableOp!^conv3d_226/Conv3D/ReadVariableOp"^conv3d_227/BiasAdd/ReadVariableOp!^conv3d_227/Conv3D/ReadVariableOp"^conv3d_228/BiasAdd/ReadVariableOp!^conv3d_228/Conv3D/ReadVariableOp"^conv3d_229/BiasAdd/ReadVariableOp!^conv3d_229/Conv3D/ReadVariableOp"^conv3d_230/BiasAdd/ReadVariableOp!^conv3d_230/Conv3D/ReadVariableOp"^conv3d_231/BiasAdd/ReadVariableOp!^conv3d_231/Conv3D/ReadVariableOp"^conv3d_232/BiasAdd/ReadVariableOp!^conv3d_232/Conv3D/ReadVariableOp"^conv3d_233/BiasAdd/ReadVariableOp!^conv3d_233/Conv3D/ReadVariableOp"^conv3d_234/BiasAdd/ReadVariableOp!^conv3d_234/Conv3D/ReadVariableOp ^dense_50/BiasAdd/ReadVariableOp^dense_50/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:џџџџџџџџџ@@: : : : : : : : : : : : : : : : : : : : 2F
!conv3d_226/BiasAdd/ReadVariableOp!conv3d_226/BiasAdd/ReadVariableOp2D
 conv3d_226/Conv3D/ReadVariableOp conv3d_226/Conv3D/ReadVariableOp2F
!conv3d_227/BiasAdd/ReadVariableOp!conv3d_227/BiasAdd/ReadVariableOp2D
 conv3d_227/Conv3D/ReadVariableOp conv3d_227/Conv3D/ReadVariableOp2F
!conv3d_228/BiasAdd/ReadVariableOp!conv3d_228/BiasAdd/ReadVariableOp2D
 conv3d_228/Conv3D/ReadVariableOp conv3d_228/Conv3D/ReadVariableOp2F
!conv3d_229/BiasAdd/ReadVariableOp!conv3d_229/BiasAdd/ReadVariableOp2D
 conv3d_229/Conv3D/ReadVariableOp conv3d_229/Conv3D/ReadVariableOp2F
!conv3d_230/BiasAdd/ReadVariableOp!conv3d_230/BiasAdd/ReadVariableOp2D
 conv3d_230/Conv3D/ReadVariableOp conv3d_230/Conv3D/ReadVariableOp2F
!conv3d_231/BiasAdd/ReadVariableOp!conv3d_231/BiasAdd/ReadVariableOp2D
 conv3d_231/Conv3D/ReadVariableOp conv3d_231/Conv3D/ReadVariableOp2F
!conv3d_232/BiasAdd/ReadVariableOp!conv3d_232/BiasAdd/ReadVariableOp2D
 conv3d_232/Conv3D/ReadVariableOp conv3d_232/Conv3D/ReadVariableOp2F
!conv3d_233/BiasAdd/ReadVariableOp!conv3d_233/BiasAdd/ReadVariableOp2D
 conv3d_233/Conv3D/ReadVariableOp conv3d_233/Conv3D/ReadVariableOp2F
!conv3d_234/BiasAdd/ReadVariableOp!conv3d_234/BiasAdd/ReadVariableOp2D
 conv3d_234/Conv3D/ReadVariableOp conv3d_234/Conv3D/ReadVariableOp2B
dense_50/BiasAdd/ReadVariableOpdense_50/BiasAdd/ReadVariableOp2@
dense_50/MatMul/ReadVariableOpdense_50/MatMul/ReadVariableOp:[ W
3
_output_shapes!
:џџџџџџџџџ@@
 
_user_specified_nameinputs
э
 

F__inference_model_50_layer_call_and_return_conditional_losses_12219346	
input1
conv3d_226_12219257: !
conv3d_226_12219259: 1
conv3d_227_12219263: !
conv3d_227_12219265:1
conv3d_228_12219269:!
conv3d_228_12219271:1
conv3d_229_12219275:!
conv3d_229_12219277:#
dense_50_12219282:@@
dense_50_12219284:@1
conv3d_230_12219296:!
conv3d_230_12219298:1
conv3d_231_12219309:!
conv3d_231_12219311:1
conv3d_232_12219322:!
conv3d_232_12219324:1
conv3d_233_12219335:0 !
conv3d_233_12219337: 1
conv3d_234_12219340: !
conv3d_234_12219342:
identityЂ"conv3d_226/StatefulPartitionedCallЂ"conv3d_227/StatefulPartitionedCallЂ"conv3d_228/StatefulPartitionedCallЂ"conv3d_229/StatefulPartitionedCallЂ"conv3d_230/StatefulPartitionedCallЂ"conv3d_231/StatefulPartitionedCallЂ"conv3d_232/StatefulPartitionedCallЂ"conv3d_233/StatefulPartitionedCallЂ"conv3d_234/StatefulPartitionedCallЂ dense_50/StatefulPartitionedCallЕ
0tf.__operators__.getitem_246/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_246/strided_slice/stackЙ
2tf.__operators__.getitem_246/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_246/strided_slice/stack_1Й
2tf.__operators__.getitem_246/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_246/strided_slice/stack_2
*tf.__operators__.getitem_246/strided_sliceStridedSliceinput9tf.__operators__.getitem_246/strided_slice/stack:output:0;tf.__operators__.getitem_246/strided_slice/stack_1:output:0;tf.__operators__.getitem_246/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:џџџџџџџџџ@@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_246/strided_sliceЛ
#range_conversion_50/PartitionedCallPartitionedCall3tf.__operators__.getitem_246/strided_slice:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ@@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *Z
fURS
Q__inference_range_conversion_50_layer_call_and_return_conditional_losses_122184402%
#range_conversion_50/PartitionedCallЕ
0tf.__operators__.getitem_247/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_247/strided_slice/stackЙ
2tf.__operators__.getitem_247/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_247/strided_slice/stack_1Й
2tf.__operators__.getitem_247/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_247/strided_slice/stack_2
*tf.__operators__.getitem_247/strided_sliceStridedSliceinput9tf.__operators__.getitem_247/strided_slice/stack:output:0;tf.__operators__.getitem_247/strided_slice/stack_1:output:0;tf.__operators__.getitem_247/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:џџџџџџџџџ@@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_247/strided_slicex
tf.concat_295/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_295/concat/axis
tf.concat_295/concatConcatV2,range_conversion_50/PartitionedCall:output:03tf.__operators__.getitem_247/strided_slice:output:0"tf.concat_295/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ@@2
tf.concat_295/concatв
"conv3d_226/StatefulPartitionedCallStatefulPartitionedCalltf.concat_295/concat:output:0conv3d_226_12219257conv3d_226_12219259*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ @@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *Q
fLRJ
H__inference_conv3d_226_layer_call_and_return_conditional_losses_122184592$
"conv3d_226/StatefulPartitionedCallЖ
$average_pooling3d_88/PartitionedCallPartitionedCall+conv3d_226/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ   * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *[
fVRT
R__inference_average_pooling3d_88_layer_call_and_return_conditional_losses_122184732&
$average_pooling3d_88/PartitionedCallт
"conv3d_227/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_88/PartitionedCall:output:0conv3d_227_12219263conv3d_227_12219265*
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
H__inference_conv3d_227_layer_call_and_return_conditional_losses_122184862$
"conv3d_227/StatefulPartitionedCallЖ
$average_pooling3d_89/PartitionedCallPartitionedCall+conv3d_227/StatefulPartitionedCall:output:0*
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
R__inference_average_pooling3d_89_layer_call_and_return_conditional_losses_122185002&
$average_pooling3d_89/PartitionedCallт
"conv3d_228/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_89/PartitionedCall:output:0conv3d_228_12219269conv3d_228_12219271*
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
H__inference_conv3d_228_layer_call_and_return_conditional_losses_122185132$
"conv3d_228/StatefulPartitionedCallЖ
$average_pooling3d_90/PartitionedCallPartitionedCall+conv3d_228/StatefulPartitionedCall:output:0*
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
R__inference_average_pooling3d_90_layer_call_and_return_conditional_losses_122185272&
$average_pooling3d_90/PartitionedCallт
"conv3d_229/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_90/PartitionedCall:output:0conv3d_229_12219275conv3d_229_12219277*
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
H__inference_conv3d_229_layer_call_and_return_conditional_losses_122185402$
"conv3d_229/StatefulPartitionedCallЖ
$average_pooling3d_91/PartitionedCallPartitionedCall+conv3d_229/StatefulPartitionedCall:output:0*
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
R__inference_average_pooling3d_91_layer_call_and_return_conditional_losses_122185542&
$average_pooling3d_91/PartitionedCall
reshape_100/PartitionedCallPartitionedCall-average_pooling3d_91/PartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8 *R
fMRK
I__inference_reshape_100_layer_call_and_return_conditional_losses_122185682
reshape_100/PartitionedCallУ
 dense_50/StatefulPartitionedCallStatefulPartitionedCall$reshape_100/PartitionedCall:output:0dense_50_12219282dense_50_12219284*
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
F__inference_dense_50_layer_call_and_return_conditional_losses_122185812"
 dense_50/StatefulPartitionedCall
reshape_101/PartitionedCallPartitionedCall)dense_50/StatefulPartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8 *R
fMRK
I__inference_reshape_101_layer_call_and_return_conditional_losses_122186022
reshape_101/PartitionedCallЅ
tf.reshape_344/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                     2
tf.reshape_344/Reshape/shapeв
tf.reshape_344/ReshapeReshape$reshape_101/PartitionedCall:output:0%tf.reshape_344/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.reshape_344/ReshapeЁ
tf.tile_172/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_172/Tile/multiplesМ
tf.tile_172/TileTiletf.reshape_344/Reshape:output:0#tf.tile_172/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.tile_172/Tile
tf.reshape_345/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ            2
tf.reshape_345/Reshape/shapeЛ
tf.reshape_345/ReshapeReshapetf.tile_172/Tile:output:0%tf.reshape_345/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.reshape_345/Reshapex
tf.concat_296/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_296/concat/axisё
tf.concat_296/concatConcatV2tf.reshape_345/Reshape:output:0+conv3d_229/StatefulPartitionedCall:output:0"tf.concat_296/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.concat_296/concatв
"conv3d_230/StatefulPartitionedCallStatefulPartitionedCalltf.concat_296/concat:output:0conv3d_230_12219296conv3d_230_12219298*
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
H__inference_conv3d_230_layer_call_and_return_conditional_losses_122186232$
"conv3d_230/StatefulPartitionedCallЅ
tf.reshape_346/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                     2
tf.reshape_346/Reshape/shapeй
tf.reshape_346/ReshapeReshape+conv3d_230/StatefulPartitionedCall:output:0%tf.reshape_346/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.reshape_346/ReshapeЁ
tf.tile_173/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_173/Tile/multiplesМ
tf.tile_173/TileTiletf.reshape_346/Reshape:output:0#tf.tile_173/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.tile_173/Tile
tf.reshape_347/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ            2
tf.reshape_347/Reshape/shapeЛ
tf.reshape_347/ReshapeReshapetf.tile_173/Tile:output:0%tf.reshape_347/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.reshape_347/Reshapex
tf.concat_297/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_297/concat/axisё
tf.concat_297/concatConcatV2tf.reshape_347/Reshape:output:0+conv3d_228/StatefulPartitionedCall:output:0"tf.concat_297/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.concat_297/concatв
"conv3d_231/StatefulPartitionedCallStatefulPartitionedCalltf.concat_297/concat:output:0conv3d_231_12219309conv3d_231_12219311*
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
H__inference_conv3d_231_layer_call_and_return_conditional_losses_122186482$
"conv3d_231/StatefulPartitionedCallЅ
tf.reshape_348/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                     2
tf.reshape_348/Reshape/shapeй
tf.reshape_348/ReshapeReshape+conv3d_231/StatefulPartitionedCall:output:0%tf.reshape_348/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.reshape_348/ReshapeЁ
tf.tile_174/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_174/Tile/multiplesМ
tf.tile_174/TileTiletf.reshape_348/Reshape:output:0#tf.tile_174/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.tile_174/Tile
tf.reshape_349/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ              2
tf.reshape_349/Reshape/shapeЛ
tf.reshape_349/ReshapeReshapetf.tile_174/Tile:output:0%tf.reshape_349/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ  2
tf.reshape_349/Reshapex
tf.concat_298/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_298/concat/axisё
tf.concat_298/concatConcatV2tf.reshape_349/Reshape:output:0+conv3d_227/StatefulPartitionedCall:output:0"tf.concat_298/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ  2
tf.concat_298/concatв
"conv3d_232/StatefulPartitionedCallStatefulPartitionedCalltf.concat_298/concat:output:0conv3d_232_12219322conv3d_232_12219324*
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
H__inference_conv3d_232_layer_call_and_return_conditional_losses_122186732$
"conv3d_232/StatefulPartitionedCallЅ
tf.reshape_350/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                       2
tf.reshape_350/Reshape/shapeй
tf.reshape_350/ReshapeReshape+conv3d_232/StatefulPartitionedCall:output:0%tf.reshape_350/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ  2
tf.reshape_350/ReshapeЁ
tf.tile_175/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_175/Tile/multiplesМ
tf.tile_175/TileTiletf.reshape_350/Reshape:output:0#tf.tile_175/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ  2
tf.tile_175/Tile
tf.reshape_351/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ      @   @   2
tf.reshape_351/Reshape/shapeЛ
tf.reshape_351/ReshapeReshapetf.tile_175/Tile:output:0%tf.reshape_351/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@2
tf.reshape_351/Reshapex
tf.concat_299/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_299/concat/axisё
tf.concat_299/concatConcatV2tf.reshape_351/Reshape:output:0+conv3d_226/StatefulPartitionedCall:output:0"tf.concat_299/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ0@@2
tf.concat_299/concatв
"conv3d_233/StatefulPartitionedCallStatefulPartitionedCalltf.concat_299/concat:output:0conv3d_233_12219335conv3d_233_12219337*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ @@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *Q
fLRJ
H__inference_conv3d_233_layer_call_and_return_conditional_losses_122186982$
"conv3d_233/StatefulPartitionedCallр
"conv3d_234/StatefulPartitionedCallStatefulPartitionedCall+conv3d_233/StatefulPartitionedCall:output:0conv3d_234_12219340conv3d_234_12219342*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ@@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *Q
fLRJ
H__inference_conv3d_234_layer_call_and_return_conditional_losses_122187142$
"conv3d_234/StatefulPartitionedCall
IdentityIdentity+conv3d_234/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџ@@2

IdentityО
NoOpNoOp#^conv3d_226/StatefulPartitionedCall#^conv3d_227/StatefulPartitionedCall#^conv3d_228/StatefulPartitionedCall#^conv3d_229/StatefulPartitionedCall#^conv3d_230/StatefulPartitionedCall#^conv3d_231/StatefulPartitionedCall#^conv3d_232/StatefulPartitionedCall#^conv3d_233/StatefulPartitionedCall#^conv3d_234/StatefulPartitionedCall!^dense_50/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:џџџџџџџџџ@@: : : : : : : : : : : : : : : : : : : : 2H
"conv3d_226/StatefulPartitionedCall"conv3d_226/StatefulPartitionedCall2H
"conv3d_227/StatefulPartitionedCall"conv3d_227/StatefulPartitionedCall2H
"conv3d_228/StatefulPartitionedCall"conv3d_228/StatefulPartitionedCall2H
"conv3d_229/StatefulPartitionedCall"conv3d_229/StatefulPartitionedCall2H
"conv3d_230/StatefulPartitionedCall"conv3d_230/StatefulPartitionedCall2H
"conv3d_231/StatefulPartitionedCall"conv3d_231/StatefulPartitionedCall2H
"conv3d_232/StatefulPartitionedCall"conv3d_232/StatefulPartitionedCall2H
"conv3d_233/StatefulPartitionedCall"conv3d_233/StatefulPartitionedCall2H
"conv3d_234/StatefulPartitionedCall"conv3d_234/StatefulPartitionedCall2D
 dense_50/StatefulPartitionedCall dense_50/StatefulPartitionedCall:Z V
3
_output_shapes!
:џџџџџџџџџ@@

_user_specified_nameinput

e
I__inference_reshape_101_layer_call_and_return_conditional_losses_12220073

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
ф

n
R__inference_average_pooling3d_88_layer_call_and_return_conditional_losses_12219863

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
H__inference_conv3d_232_layer_call_and_return_conditional_losses_12220133

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
	
n
R__inference_average_pooling3d_89_layer_call_and_return_conditional_losses_12218500

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

V
6__inference_range_conversion_50_layer_call_fn_12219812

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
:џџџџџџџџџ@@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *Z
fURS
Q__inference_range_conversion_50_layer_call_and_return_conditional_losses_122184402
PartitionedCallx
IdentityIdentityPartitionedCall:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ@@:_ [
3
_output_shapes!
:џџџџџџџџџ@@
$
_user_specified_name
parameters
	
n
R__inference_average_pooling3d_88_layer_call_and_return_conditional_losses_12219872

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
:џџџџџџџџџ@@ 2
	transposeЎ
	AvgPool3D	AvgPool3Dtranspose:y:0*
T0*3
_output_shapes!
:џџџџџџџџџ   *
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
:џџџџџџџџџ   2
transpose_1o
IdentityIdentitytranspose_1:y:0*
T0*3
_output_shapes!
:џџџџџџџџџ   2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ @@:[ W
3
_output_shapes!
:џџџџџџџџџ @@
 
_user_specified_nameinputs
Ю

H__inference_conv3d_233_layer_call_and_return_conditional_losses_12218698

inputs<
conv3d_readvariableop_resource:0 -
biasadd_readvariableop_resource: 
identityЂBiasAdd/ReadVariableOpЂConv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:0 *
dtype02
Conv3D/ReadVariableOpР
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ @@*
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpЃ
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ @@*
data_formatNCHW2	
BiasAddp
SoftplusSoftplusBiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ @@2

Softplus}
IdentityIdentitySoftplus:activations:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџ @@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:џџџџџџџџџ0@@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:џџџџџџџџџ0@@
 
_user_specified_nameinputs
Ю

H__inference_conv3d_233_layer_call_and_return_conditional_losses_12220153

inputs<
conv3d_readvariableop_resource:0 -
biasadd_readvariableop_resource: 
identityЂBiasAdd/ReadVariableOpЂConv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:0 *
dtype02
Conv3D/ReadVariableOpР
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ @@*
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpЃ
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ @@*
data_formatNCHW2	
BiasAddp
SoftplusSoftplusBiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ @@2

Softplus}
IdentityIdentitySoftplus:activations:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџ @@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:џџџџџџџџџ0@@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:џџџџџџџџџ0@@
 
_user_specified_nameinputs
С
І
-__inference_conv3d_230_layer_call_fn_12220082

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
H__inference_conv3d_230_layer_call_and_return_conditional_losses_122186232
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
R__inference_average_pooling3d_91_layer_call_and_return_conditional_losses_12220007

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
R__inference_average_pooling3d_89_layer_call_and_return_conditional_losses_12219920

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
щ
J
.__inference_reshape_101_layer_call_fn_12220058

inputs
identityо
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
GPU2 *0,1,2,3J 8 *R
fMRK
I__inference_reshape_101_layer_call_and_return_conditional_losses_122186022
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
ф

n
R__inference_average_pooling3d_89_layer_call_and_return_conditional_losses_12219911

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
-__inference_conv3d_233_layer_call_fn_12220142

inputs%
unknown:0 
	unknown_0: 
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ @@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *Q
fLRJ
H__inference_conv3d_233_layer_call_and_return_conditional_losses_122186982
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџ @@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:џџџџџџџџџ0@@: : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:џџџџџџџџџ0@@
 
_user_specified_nameinputs
ф

n
R__inference_average_pooling3d_90_layer_call_and_return_conditional_losses_12219959

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
ё
Е
F__inference_model_50_layer_call_and_return_conditional_losses_12219645

inputsG
)conv3d_226_conv3d_readvariableop_resource: 8
*conv3d_226_biasadd_readvariableop_resource: G
)conv3d_227_conv3d_readvariableop_resource: 8
*conv3d_227_biasadd_readvariableop_resource:G
)conv3d_228_conv3d_readvariableop_resource:8
*conv3d_228_biasadd_readvariableop_resource:G
)conv3d_229_conv3d_readvariableop_resource:8
*conv3d_229_biasadd_readvariableop_resource:9
'dense_50_matmul_readvariableop_resource:@@6
(dense_50_biasadd_readvariableop_resource:@G
)conv3d_230_conv3d_readvariableop_resource:8
*conv3d_230_biasadd_readvariableop_resource:G
)conv3d_231_conv3d_readvariableop_resource:8
*conv3d_231_biasadd_readvariableop_resource:G
)conv3d_232_conv3d_readvariableop_resource:8
*conv3d_232_biasadd_readvariableop_resource:G
)conv3d_233_conv3d_readvariableop_resource:0 8
*conv3d_233_biasadd_readvariableop_resource: G
)conv3d_234_conv3d_readvariableop_resource: 8
*conv3d_234_biasadd_readvariableop_resource:
identityЂ!conv3d_226/BiasAdd/ReadVariableOpЂ conv3d_226/Conv3D/ReadVariableOpЂ!conv3d_227/BiasAdd/ReadVariableOpЂ conv3d_227/Conv3D/ReadVariableOpЂ!conv3d_228/BiasAdd/ReadVariableOpЂ conv3d_228/Conv3D/ReadVariableOpЂ!conv3d_229/BiasAdd/ReadVariableOpЂ conv3d_229/Conv3D/ReadVariableOpЂ!conv3d_230/BiasAdd/ReadVariableOpЂ conv3d_230/Conv3D/ReadVariableOpЂ!conv3d_231/BiasAdd/ReadVariableOpЂ conv3d_231/Conv3D/ReadVariableOpЂ!conv3d_232/BiasAdd/ReadVariableOpЂ conv3d_232/Conv3D/ReadVariableOpЂ!conv3d_233/BiasAdd/ReadVariableOpЂ conv3d_233/Conv3D/ReadVariableOpЂ!conv3d_234/BiasAdd/ReadVariableOpЂ conv3d_234/Conv3D/ReadVariableOpЂdense_50/BiasAdd/ReadVariableOpЂdense_50/MatMul/ReadVariableOpЕ
0tf.__operators__.getitem_246/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_246/strided_slice/stackЙ
2tf.__operators__.getitem_246/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_246/strided_slice/stack_1Й
2tf.__operators__.getitem_246/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_246/strided_slice/stack_2
*tf.__operators__.getitem_246/strided_sliceStridedSliceinputs9tf.__operators__.getitem_246/strided_slice/stack:output:0;tf.__operators__.getitem_246/strided_slice/stack_1:output:0;tf.__operators__.getitem_246/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:џџџџџџџџџ@@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_246/strided_slice{
range_conversion_50/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
range_conversion_50/sub/yа
range_conversion_50/subSub3tf.__operators__.getitem_246/strided_slice:output:0"range_conversion_50/sub/y:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@2
range_conversion_50/sub
range_conversion_50/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2
range_conversion_50/truediv/yШ
range_conversion_50/truedivRealDivrange_conversion_50/sub:z:0&range_conversion_50/truediv/y:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@2
range_conversion_50/truediv{
range_conversion_50/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
range_conversion_50/mul/yМ
range_conversion_50/mulMulrange_conversion_50/truediv:z:0"range_conversion_50/mul/y:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@2
range_conversion_50/mul{
range_conversion_50/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  П2
range_conversion_50/add/yК
range_conversion_50/addAddV2range_conversion_50/mul:z:0"range_conversion_50/add/y:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@2
range_conversion_50/addЕ
0tf.__operators__.getitem_247/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_247/strided_slice/stackЙ
2tf.__operators__.getitem_247/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_247/strided_slice/stack_1Й
2tf.__operators__.getitem_247/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_247/strided_slice/stack_2
*tf.__operators__.getitem_247/strided_sliceStridedSliceinputs9tf.__operators__.getitem_247/strided_slice/stack:output:0;tf.__operators__.getitem_247/strided_slice/stack_1:output:0;tf.__operators__.getitem_247/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:џџџџџџџџџ@@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_247/strided_slicex
tf.concat_295/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_295/concat/axisѕ
tf.concat_295/concatConcatV2range_conversion_50/add:z:03tf.__operators__.getitem_247/strided_slice:output:0"tf.concat_295/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ@@2
tf.concat_295/concatК
 conv3d_226/Conv3D/ReadVariableOpReadVariableOp)conv3d_226_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02"
 conv3d_226/Conv3D/ReadVariableOpј
conv3d_226/Conv3DConv3Dtf.concat_295/concat:output:0(conv3d_226/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ @@*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_226/Conv3D­
!conv3d_226/BiasAdd/ReadVariableOpReadVariableOp*conv3d_226_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv3d_226/BiasAdd/ReadVariableOpЯ
conv3d_226/BiasAddBiasAddconv3d_226/Conv3D:output:0)conv3d_226/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ @@*
data_formatNCHW2
conv3d_226/BiasAdd
conv3d_226/SoftplusSoftplusconv3d_226/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ @@2
conv3d_226/SoftplusЇ
#average_pooling3d_88/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2%
#average_pooling3d_88/transpose/permм
average_pooling3d_88/transpose	Transpose!conv3d_226/Softplus:activations:0,average_pooling3d_88/transpose/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@ 2 
average_pooling3d_88/transposeэ
average_pooling3d_88/AvgPool3D	AvgPool3D"average_pooling3d_88/transpose:y:0*
T0*3
_output_shapes!
:џџџџџџџџџ   *
ksize	
*
paddingVALID*
strides	
2 
average_pooling3d_88/AvgPool3DЋ
%average_pooling3d_88/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2'
%average_pooling3d_88/transpose_1/permш
 average_pooling3d_88/transpose_1	Transpose'average_pooling3d_88/AvgPool3D:output:0.average_pooling3d_88/transpose_1/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ   2"
 average_pooling3d_88/transpose_1К
 conv3d_227/Conv3D/ReadVariableOpReadVariableOp)conv3d_227_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02"
 conv3d_227/Conv3D/ReadVariableOpџ
conv3d_227/Conv3DConv3D$average_pooling3d_88/transpose_1:y:0(conv3d_227/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ  *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_227/Conv3D­
!conv3d_227/BiasAdd/ReadVariableOpReadVariableOp*conv3d_227_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_227/BiasAdd/ReadVariableOpЯ
conv3d_227/BiasAddBiasAddconv3d_227/Conv3D:output:0)conv3d_227/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ  *
data_formatNCHW2
conv3d_227/BiasAdd
conv3d_227/SoftplusSoftplusconv3d_227/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ  2
conv3d_227/SoftplusЇ
#average_pooling3d_89/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2%
#average_pooling3d_89/transpose/permм
average_pooling3d_89/transpose	Transpose!conv3d_227/Softplus:activations:0,average_pooling3d_89/transpose/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ  2 
average_pooling3d_89/transposeэ
average_pooling3d_89/AvgPool3D	AvgPool3D"average_pooling3d_89/transpose:y:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
ksize	
*
paddingVALID*
strides	
2 
average_pooling3d_89/AvgPool3DЋ
%average_pooling3d_89/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2'
%average_pooling3d_89/transpose_1/permш
 average_pooling3d_89/transpose_1	Transpose'average_pooling3d_89/AvgPool3D:output:0.average_pooling3d_89/transpose_1/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2"
 average_pooling3d_89/transpose_1К
 conv3d_228/Conv3D/ReadVariableOpReadVariableOp)conv3d_228_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_228/Conv3D/ReadVariableOpџ
conv3d_228/Conv3DConv3D$average_pooling3d_89/transpose_1:y:0(conv3d_228/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_228/Conv3D­
!conv3d_228/BiasAdd/ReadVariableOpReadVariableOp*conv3d_228_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_228/BiasAdd/ReadVariableOpЯ
conv3d_228/BiasAddBiasAddconv3d_228/Conv3D:output:0)conv3d_228/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCHW2
conv3d_228/BiasAdd
conv3d_228/SoftplusSoftplusconv3d_228/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
conv3d_228/SoftplusЇ
#average_pooling3d_90/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2%
#average_pooling3d_90/transpose/permм
average_pooling3d_90/transpose	Transpose!conv3d_228/Softplus:activations:0,average_pooling3d_90/transpose/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2 
average_pooling3d_90/transposeэ
average_pooling3d_90/AvgPool3D	AvgPool3D"average_pooling3d_90/transpose:y:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
ksize	
*
paddingVALID*
strides	
2 
average_pooling3d_90/AvgPool3DЋ
%average_pooling3d_90/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2'
%average_pooling3d_90/transpose_1/permш
 average_pooling3d_90/transpose_1	Transpose'average_pooling3d_90/AvgPool3D:output:0.average_pooling3d_90/transpose_1/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2"
 average_pooling3d_90/transpose_1К
 conv3d_229/Conv3D/ReadVariableOpReadVariableOp)conv3d_229_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_229/Conv3D/ReadVariableOpџ
conv3d_229/Conv3DConv3D$average_pooling3d_90/transpose_1:y:0(conv3d_229/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_229/Conv3D­
!conv3d_229/BiasAdd/ReadVariableOpReadVariableOp*conv3d_229_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_229/BiasAdd/ReadVariableOpЯ
conv3d_229/BiasAddBiasAddconv3d_229/Conv3D:output:0)conv3d_229/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCHW2
conv3d_229/BiasAdd
conv3d_229/SoftplusSoftplusconv3d_229/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
conv3d_229/SoftplusЇ
#average_pooling3d_91/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2%
#average_pooling3d_91/transpose/permм
average_pooling3d_91/transpose	Transpose!conv3d_229/Softplus:activations:0,average_pooling3d_91/transpose/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2 
average_pooling3d_91/transposeэ
average_pooling3d_91/AvgPool3D	AvgPool3D"average_pooling3d_91/transpose:y:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
ksize	
*
paddingVALID*
strides	
2 
average_pooling3d_91/AvgPool3DЋ
%average_pooling3d_91/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2'
%average_pooling3d_91/transpose_1/permш
 average_pooling3d_91/transpose_1	Transpose'average_pooling3d_91/AvgPool3D:output:0.average_pooling3d_91/transpose_1/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2"
 average_pooling3d_91/transpose_1z
reshape_100/ShapeShape$average_pooling3d_91/transpose_1:y:0*
T0*
_output_shapes
:2
reshape_100/Shape
reshape_100/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_100/strided_slice/stack
!reshape_100/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_100/strided_slice/stack_1
!reshape_100/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_100/strided_slice/stack_2Њ
reshape_100/strided_sliceStridedSlicereshape_100/Shape:output:0(reshape_100/strided_slice/stack:output:0*reshape_100/strided_slice/stack_1:output:0*reshape_100/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_100/strided_slice|
reshape_100/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2
reshape_100/Reshape/shape/1Ж
reshape_100/Reshape/shapePack"reshape_100/strided_slice:output:0$reshape_100/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape_100/Reshape/shapeБ
reshape_100/ReshapeReshape$average_pooling3d_91/transpose_1:y:0"reshape_100/Reshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
reshape_100/ReshapeЈ
dense_50/MatMul/ReadVariableOpReadVariableOp'dense_50_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02 
dense_50/MatMul/ReadVariableOpЄ
dense_50/MatMulMatMulreshape_100/Reshape:output:0&dense_50/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dense_50/MatMulЇ
dense_50/BiasAdd/ReadVariableOpReadVariableOp(dense_50_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_50/BiasAdd/ReadVariableOpЅ
dense_50/BiasAddBiasAdddense_50/MatMul:product:0'dense_50/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dense_50/BiasAdd
dense_50/SoftplusSoftplusdense_50/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dense_50/Softplusu
reshape_101/ShapeShapedense_50/Softplus:activations:0*
T0*
_output_shapes
:2
reshape_101/Shape
reshape_101/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_101/strided_slice/stack
!reshape_101/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_101/strided_slice/stack_1
!reshape_101/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_101/strided_slice/stack_2Њ
reshape_101/strided_sliceStridedSlicereshape_101/Shape:output:0(reshape_101/strided_slice/stack:output:0*reshape_101/strided_slice/stack_1:output:0*reshape_101/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_101/strided_slice|
reshape_101/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_101/Reshape/shape/1|
reshape_101/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_101/Reshape/shape/2|
reshape_101/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_101/Reshape/shape/3|
reshape_101/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_101/Reshape/shape/4Ј
reshape_101/Reshape/shapePack"reshape_101/strided_slice:output:0$reshape_101/Reshape/shape/1:output:0$reshape_101/Reshape/shape/2:output:0$reshape_101/Reshape/shape/3:output:0$reshape_101/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2
reshape_101/Reshape/shapeИ
reshape_101/ReshapeReshapedense_50/Softplus:activations:0"reshape_101/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
reshape_101/ReshapeЅ
tf.reshape_344/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                     2
tf.reshape_344/Reshape/shapeЪ
tf.reshape_344/ReshapeReshapereshape_101/Reshape:output:0%tf.reshape_344/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.reshape_344/ReshapeЁ
tf.tile_172/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_172/Tile/multiplesМ
tf.tile_172/TileTiletf.reshape_344/Reshape:output:0#tf.tile_172/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.tile_172/Tile
tf.reshape_345/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ            2
tf.reshape_345/Reshape/shapeЛ
tf.reshape_345/ReshapeReshapetf.tile_172/Tile:output:0%tf.reshape_345/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.reshape_345/Reshapex
tf.concat_296/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_296/concat/axisч
tf.concat_296/concatConcatV2tf.reshape_345/Reshape:output:0!conv3d_229/Softplus:activations:0"tf.concat_296/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.concat_296/concatК
 conv3d_230/Conv3D/ReadVariableOpReadVariableOp)conv3d_230_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_230/Conv3D/ReadVariableOpј
conv3d_230/Conv3DConv3Dtf.concat_296/concat:output:0(conv3d_230/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_230/Conv3D­
!conv3d_230/BiasAdd/ReadVariableOpReadVariableOp*conv3d_230_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_230/BiasAdd/ReadVariableOpЯ
conv3d_230/BiasAddBiasAddconv3d_230/Conv3D:output:0)conv3d_230/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCHW2
conv3d_230/BiasAdd
conv3d_230/SoftplusSoftplusconv3d_230/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
conv3d_230/SoftplusЅ
tf.reshape_346/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                     2
tf.reshape_346/Reshape/shapeЯ
tf.reshape_346/ReshapeReshape!conv3d_230/Softplus:activations:0%tf.reshape_346/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.reshape_346/ReshapeЁ
tf.tile_173/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_173/Tile/multiplesМ
tf.tile_173/TileTiletf.reshape_346/Reshape:output:0#tf.tile_173/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.tile_173/Tile
tf.reshape_347/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ            2
tf.reshape_347/Reshape/shapeЛ
tf.reshape_347/ReshapeReshapetf.tile_173/Tile:output:0%tf.reshape_347/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.reshape_347/Reshapex
tf.concat_297/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_297/concat/axisч
tf.concat_297/concatConcatV2tf.reshape_347/Reshape:output:0!conv3d_228/Softplus:activations:0"tf.concat_297/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.concat_297/concatК
 conv3d_231/Conv3D/ReadVariableOpReadVariableOp)conv3d_231_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_231/Conv3D/ReadVariableOpј
conv3d_231/Conv3DConv3Dtf.concat_297/concat:output:0(conv3d_231/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_231/Conv3D­
!conv3d_231/BiasAdd/ReadVariableOpReadVariableOp*conv3d_231_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_231/BiasAdd/ReadVariableOpЯ
conv3d_231/BiasAddBiasAddconv3d_231/Conv3D:output:0)conv3d_231/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCHW2
conv3d_231/BiasAdd
conv3d_231/SoftplusSoftplusconv3d_231/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
conv3d_231/SoftplusЅ
tf.reshape_348/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                     2
tf.reshape_348/Reshape/shapeЯ
tf.reshape_348/ReshapeReshape!conv3d_231/Softplus:activations:0%tf.reshape_348/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.reshape_348/ReshapeЁ
tf.tile_174/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_174/Tile/multiplesМ
tf.tile_174/TileTiletf.reshape_348/Reshape:output:0#tf.tile_174/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.tile_174/Tile
tf.reshape_349/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ              2
tf.reshape_349/Reshape/shapeЛ
tf.reshape_349/ReshapeReshapetf.tile_174/Tile:output:0%tf.reshape_349/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ  2
tf.reshape_349/Reshapex
tf.concat_298/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_298/concat/axisч
tf.concat_298/concatConcatV2tf.reshape_349/Reshape:output:0!conv3d_227/Softplus:activations:0"tf.concat_298/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ  2
tf.concat_298/concatК
 conv3d_232/Conv3D/ReadVariableOpReadVariableOp)conv3d_232_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02"
 conv3d_232/Conv3D/ReadVariableOpј
conv3d_232/Conv3DConv3Dtf.concat_298/concat:output:0(conv3d_232/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ  *
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_232/Conv3D­
!conv3d_232/BiasAdd/ReadVariableOpReadVariableOp*conv3d_232_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_232/BiasAdd/ReadVariableOpЯ
conv3d_232/BiasAddBiasAddconv3d_232/Conv3D:output:0)conv3d_232/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ  *
data_formatNCHW2
conv3d_232/BiasAdd
conv3d_232/SoftplusSoftplusconv3d_232/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ  2
conv3d_232/SoftplusЅ
tf.reshape_350/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                       2
tf.reshape_350/Reshape/shapeЯ
tf.reshape_350/ReshapeReshape!conv3d_232/Softplus:activations:0%tf.reshape_350/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ  2
tf.reshape_350/ReshapeЁ
tf.tile_175/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_175/Tile/multiplesМ
tf.tile_175/TileTiletf.reshape_350/Reshape:output:0#tf.tile_175/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ  2
tf.tile_175/Tile
tf.reshape_351/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ      @   @   2
tf.reshape_351/Reshape/shapeЛ
tf.reshape_351/ReshapeReshapetf.tile_175/Tile:output:0%tf.reshape_351/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@2
tf.reshape_351/Reshapex
tf.concat_299/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_299/concat/axisч
tf.concat_299/concatConcatV2tf.reshape_351/Reshape:output:0!conv3d_226/Softplus:activations:0"tf.concat_299/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ0@@2
tf.concat_299/concatК
 conv3d_233/Conv3D/ReadVariableOpReadVariableOp)conv3d_233_conv3d_readvariableop_resource**
_output_shapes
:0 *
dtype02"
 conv3d_233/Conv3D/ReadVariableOpј
conv3d_233/Conv3DConv3Dtf.concat_299/concat:output:0(conv3d_233/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ @@*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_233/Conv3D­
!conv3d_233/BiasAdd/ReadVariableOpReadVariableOp*conv3d_233_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv3d_233/BiasAdd/ReadVariableOpЯ
conv3d_233/BiasAddBiasAddconv3d_233/Conv3D:output:0)conv3d_233/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ @@*
data_formatNCHW2
conv3d_233/BiasAdd
conv3d_233/SoftplusSoftplusconv3d_233/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ @@2
conv3d_233/SoftplusК
 conv3d_234/Conv3D/ReadVariableOpReadVariableOp)conv3d_234_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02"
 conv3d_234/Conv3D/ReadVariableOpќ
conv3d_234/Conv3DConv3D!conv3d_233/Softplus:activations:0(conv3d_234/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@*
data_formatNCDHW*
paddingSAME*
strides	
2
conv3d_234/Conv3D­
!conv3d_234/BiasAdd/ReadVariableOpReadVariableOp*conv3d_234_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv3d_234/BiasAdd/ReadVariableOpЯ
conv3d_234/BiasAddBiasAddconv3d_234/Conv3D:output:0)conv3d_234/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@*
data_formatNCHW2
conv3d_234/BiasAdd
IdentityIdentityconv3d_234/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџ@@2

Identity
NoOpNoOp"^conv3d_226/BiasAdd/ReadVariableOp!^conv3d_226/Conv3D/ReadVariableOp"^conv3d_227/BiasAdd/ReadVariableOp!^conv3d_227/Conv3D/ReadVariableOp"^conv3d_228/BiasAdd/ReadVariableOp!^conv3d_228/Conv3D/ReadVariableOp"^conv3d_229/BiasAdd/ReadVariableOp!^conv3d_229/Conv3D/ReadVariableOp"^conv3d_230/BiasAdd/ReadVariableOp!^conv3d_230/Conv3D/ReadVariableOp"^conv3d_231/BiasAdd/ReadVariableOp!^conv3d_231/Conv3D/ReadVariableOp"^conv3d_232/BiasAdd/ReadVariableOp!^conv3d_232/Conv3D/ReadVariableOp"^conv3d_233/BiasAdd/ReadVariableOp!^conv3d_233/Conv3D/ReadVariableOp"^conv3d_234/BiasAdd/ReadVariableOp!^conv3d_234/Conv3D/ReadVariableOp ^dense_50/BiasAdd/ReadVariableOp^dense_50/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:џџџџџџџџџ@@: : : : : : : : : : : : : : : : : : : : 2F
!conv3d_226/BiasAdd/ReadVariableOp!conv3d_226/BiasAdd/ReadVariableOp2D
 conv3d_226/Conv3D/ReadVariableOp conv3d_226/Conv3D/ReadVariableOp2F
!conv3d_227/BiasAdd/ReadVariableOp!conv3d_227/BiasAdd/ReadVariableOp2D
 conv3d_227/Conv3D/ReadVariableOp conv3d_227/Conv3D/ReadVariableOp2F
!conv3d_228/BiasAdd/ReadVariableOp!conv3d_228/BiasAdd/ReadVariableOp2D
 conv3d_228/Conv3D/ReadVariableOp conv3d_228/Conv3D/ReadVariableOp2F
!conv3d_229/BiasAdd/ReadVariableOp!conv3d_229/BiasAdd/ReadVariableOp2D
 conv3d_229/Conv3D/ReadVariableOp conv3d_229/Conv3D/ReadVariableOp2F
!conv3d_230/BiasAdd/ReadVariableOp!conv3d_230/BiasAdd/ReadVariableOp2D
 conv3d_230/Conv3D/ReadVariableOp conv3d_230/Conv3D/ReadVariableOp2F
!conv3d_231/BiasAdd/ReadVariableOp!conv3d_231/BiasAdd/ReadVariableOp2D
 conv3d_231/Conv3D/ReadVariableOp conv3d_231/Conv3D/ReadVariableOp2F
!conv3d_232/BiasAdd/ReadVariableOp!conv3d_232/BiasAdd/ReadVariableOp2D
 conv3d_232/Conv3D/ReadVariableOp conv3d_232/Conv3D/ReadVariableOp2F
!conv3d_233/BiasAdd/ReadVariableOp!conv3d_233/BiasAdd/ReadVariableOp2D
 conv3d_233/Conv3D/ReadVariableOp conv3d_233/Conv3D/ReadVariableOp2F
!conv3d_234/BiasAdd/ReadVariableOp!conv3d_234/BiasAdd/ReadVariableOp2D
 conv3d_234/Conv3D/ReadVariableOp conv3d_234/Conv3D/ReadVariableOp2B
dense_50/BiasAdd/ReadVariableOpdense_50/BiasAdd/ReadVariableOp2@
dense_50/MatMul/ReadVariableOpdense_50/MatMul/ReadVariableOp:[ W
3
_output_shapes!
:џџџџџџџџџ@@
 
_user_specified_nameinputs
Ю

H__inference_conv3d_230_layer_call_and_return_conditional_losses_12220093

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
 
ђ
+__inference_model_50_layer_call_fn_12218764	
input%
unknown: 
	unknown_0: '
	unknown_1: 
	unknown_2:'
	unknown_3:
	unknown_4:'
	unknown_5:
	unknown_6:
	unknown_7:@@
	unknown_8:@'
	unknown_9:

unknown_10:(

unknown_11:

unknown_12:(

unknown_13:

unknown_14:(

unknown_15:0 

unknown_16: (

unknown_17: 

unknown_18:
identityЂStatefulPartitionedCallџ
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ@@*6
_read_only_resource_inputs
	
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *O
fJRH
F__inference_model_50_layer_call_and_return_conditional_losses_122187212
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџ@@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:џџџџџџџџџ@@: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
3
_output_shapes!
:џџџџџџџџџ@@

_user_specified_nameinput
э
 

F__inference_model_50_layer_call_and_return_conditional_losses_12219243	
input1
conv3d_226_12219154: !
conv3d_226_12219156: 1
conv3d_227_12219160: !
conv3d_227_12219162:1
conv3d_228_12219166:!
conv3d_228_12219168:1
conv3d_229_12219172:!
conv3d_229_12219174:#
dense_50_12219179:@@
dense_50_12219181:@1
conv3d_230_12219193:!
conv3d_230_12219195:1
conv3d_231_12219206:!
conv3d_231_12219208:1
conv3d_232_12219219:!
conv3d_232_12219221:1
conv3d_233_12219232:0 !
conv3d_233_12219234: 1
conv3d_234_12219237: !
conv3d_234_12219239:
identityЂ"conv3d_226/StatefulPartitionedCallЂ"conv3d_227/StatefulPartitionedCallЂ"conv3d_228/StatefulPartitionedCallЂ"conv3d_229/StatefulPartitionedCallЂ"conv3d_230/StatefulPartitionedCallЂ"conv3d_231/StatefulPartitionedCallЂ"conv3d_232/StatefulPartitionedCallЂ"conv3d_233/StatefulPartitionedCallЂ"conv3d_234/StatefulPartitionedCallЂ dense_50/StatefulPartitionedCallЕ
0tf.__operators__.getitem_246/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_246/strided_slice/stackЙ
2tf.__operators__.getitem_246/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_246/strided_slice/stack_1Й
2tf.__operators__.getitem_246/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_246/strided_slice/stack_2
*tf.__operators__.getitem_246/strided_sliceStridedSliceinput9tf.__operators__.getitem_246/strided_slice/stack:output:0;tf.__operators__.getitem_246/strided_slice/stack_1:output:0;tf.__operators__.getitem_246/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:џџџџџџџџџ@@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_246/strided_sliceЛ
#range_conversion_50/PartitionedCallPartitionedCall3tf.__operators__.getitem_246/strided_slice:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ@@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *Z
fURS
Q__inference_range_conversion_50_layer_call_and_return_conditional_losses_122184402%
#range_conversion_50/PartitionedCallЕ
0tf.__operators__.getitem_247/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_247/strided_slice/stackЙ
2tf.__operators__.getitem_247/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_247/strided_slice/stack_1Й
2tf.__operators__.getitem_247/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_247/strided_slice/stack_2
*tf.__operators__.getitem_247/strided_sliceStridedSliceinput9tf.__operators__.getitem_247/strided_slice/stack:output:0;tf.__operators__.getitem_247/strided_slice/stack_1:output:0;tf.__operators__.getitem_247/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:џџџџџџџџџ@@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_247/strided_slicex
tf.concat_295/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_295/concat/axis
tf.concat_295/concatConcatV2,range_conversion_50/PartitionedCall:output:03tf.__operators__.getitem_247/strided_slice:output:0"tf.concat_295/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ@@2
tf.concat_295/concatв
"conv3d_226/StatefulPartitionedCallStatefulPartitionedCalltf.concat_295/concat:output:0conv3d_226_12219154conv3d_226_12219156*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ @@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *Q
fLRJ
H__inference_conv3d_226_layer_call_and_return_conditional_losses_122184592$
"conv3d_226/StatefulPartitionedCallЖ
$average_pooling3d_88/PartitionedCallPartitionedCall+conv3d_226/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ   * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *[
fVRT
R__inference_average_pooling3d_88_layer_call_and_return_conditional_losses_122184732&
$average_pooling3d_88/PartitionedCallт
"conv3d_227/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_88/PartitionedCall:output:0conv3d_227_12219160conv3d_227_12219162*
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
H__inference_conv3d_227_layer_call_and_return_conditional_losses_122184862$
"conv3d_227/StatefulPartitionedCallЖ
$average_pooling3d_89/PartitionedCallPartitionedCall+conv3d_227/StatefulPartitionedCall:output:0*
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
R__inference_average_pooling3d_89_layer_call_and_return_conditional_losses_122185002&
$average_pooling3d_89/PartitionedCallт
"conv3d_228/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_89/PartitionedCall:output:0conv3d_228_12219166conv3d_228_12219168*
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
H__inference_conv3d_228_layer_call_and_return_conditional_losses_122185132$
"conv3d_228/StatefulPartitionedCallЖ
$average_pooling3d_90/PartitionedCallPartitionedCall+conv3d_228/StatefulPartitionedCall:output:0*
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
R__inference_average_pooling3d_90_layer_call_and_return_conditional_losses_122185272&
$average_pooling3d_90/PartitionedCallт
"conv3d_229/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_90/PartitionedCall:output:0conv3d_229_12219172conv3d_229_12219174*
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
H__inference_conv3d_229_layer_call_and_return_conditional_losses_122185402$
"conv3d_229/StatefulPartitionedCallЖ
$average_pooling3d_91/PartitionedCallPartitionedCall+conv3d_229/StatefulPartitionedCall:output:0*
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
R__inference_average_pooling3d_91_layer_call_and_return_conditional_losses_122185542&
$average_pooling3d_91/PartitionedCall
reshape_100/PartitionedCallPartitionedCall-average_pooling3d_91/PartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8 *R
fMRK
I__inference_reshape_100_layer_call_and_return_conditional_losses_122185682
reshape_100/PartitionedCallУ
 dense_50/StatefulPartitionedCallStatefulPartitionedCall$reshape_100/PartitionedCall:output:0dense_50_12219179dense_50_12219181*
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
F__inference_dense_50_layer_call_and_return_conditional_losses_122185812"
 dense_50/StatefulPartitionedCall
reshape_101/PartitionedCallPartitionedCall)dense_50/StatefulPartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8 *R
fMRK
I__inference_reshape_101_layer_call_and_return_conditional_losses_122186022
reshape_101/PartitionedCallЅ
tf.reshape_344/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                     2
tf.reshape_344/Reshape/shapeв
tf.reshape_344/ReshapeReshape$reshape_101/PartitionedCall:output:0%tf.reshape_344/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.reshape_344/ReshapeЁ
tf.tile_172/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_172/Tile/multiplesМ
tf.tile_172/TileTiletf.reshape_344/Reshape:output:0#tf.tile_172/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.tile_172/Tile
tf.reshape_345/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ            2
tf.reshape_345/Reshape/shapeЛ
tf.reshape_345/ReshapeReshapetf.tile_172/Tile:output:0%tf.reshape_345/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.reshape_345/Reshapex
tf.concat_296/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_296/concat/axisё
tf.concat_296/concatConcatV2tf.reshape_345/Reshape:output:0+conv3d_229/StatefulPartitionedCall:output:0"tf.concat_296/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.concat_296/concatв
"conv3d_230/StatefulPartitionedCallStatefulPartitionedCalltf.concat_296/concat:output:0conv3d_230_12219193conv3d_230_12219195*
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
H__inference_conv3d_230_layer_call_and_return_conditional_losses_122186232$
"conv3d_230/StatefulPartitionedCallЅ
tf.reshape_346/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                     2
tf.reshape_346/Reshape/shapeй
tf.reshape_346/ReshapeReshape+conv3d_230/StatefulPartitionedCall:output:0%tf.reshape_346/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.reshape_346/ReshapeЁ
tf.tile_173/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_173/Tile/multiplesМ
tf.tile_173/TileTiletf.reshape_346/Reshape:output:0#tf.tile_173/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.tile_173/Tile
tf.reshape_347/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ            2
tf.reshape_347/Reshape/shapeЛ
tf.reshape_347/ReshapeReshapetf.tile_173/Tile:output:0%tf.reshape_347/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.reshape_347/Reshapex
tf.concat_297/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_297/concat/axisё
tf.concat_297/concatConcatV2tf.reshape_347/Reshape:output:0+conv3d_228/StatefulPartitionedCall:output:0"tf.concat_297/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.concat_297/concatв
"conv3d_231/StatefulPartitionedCallStatefulPartitionedCalltf.concat_297/concat:output:0conv3d_231_12219206conv3d_231_12219208*
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
H__inference_conv3d_231_layer_call_and_return_conditional_losses_122186482$
"conv3d_231/StatefulPartitionedCallЅ
tf.reshape_348/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                     2
tf.reshape_348/Reshape/shapeй
tf.reshape_348/ReshapeReshape+conv3d_231/StatefulPartitionedCall:output:0%tf.reshape_348/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.reshape_348/ReshapeЁ
tf.tile_174/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_174/Tile/multiplesМ
tf.tile_174/TileTiletf.reshape_348/Reshape:output:0#tf.tile_174/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.tile_174/Tile
tf.reshape_349/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ              2
tf.reshape_349/Reshape/shapeЛ
tf.reshape_349/ReshapeReshapetf.tile_174/Tile:output:0%tf.reshape_349/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ  2
tf.reshape_349/Reshapex
tf.concat_298/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_298/concat/axisё
tf.concat_298/concatConcatV2tf.reshape_349/Reshape:output:0+conv3d_227/StatefulPartitionedCall:output:0"tf.concat_298/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ  2
tf.concat_298/concatв
"conv3d_232/StatefulPartitionedCallStatefulPartitionedCalltf.concat_298/concat:output:0conv3d_232_12219219conv3d_232_12219221*
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
H__inference_conv3d_232_layer_call_and_return_conditional_losses_122186732$
"conv3d_232/StatefulPartitionedCallЅ
tf.reshape_350/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                       2
tf.reshape_350/Reshape/shapeй
tf.reshape_350/ReshapeReshape+conv3d_232/StatefulPartitionedCall:output:0%tf.reshape_350/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ  2
tf.reshape_350/ReshapeЁ
tf.tile_175/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_175/Tile/multiplesМ
tf.tile_175/TileTiletf.reshape_350/Reshape:output:0#tf.tile_175/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ  2
tf.tile_175/Tile
tf.reshape_351/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ      @   @   2
tf.reshape_351/Reshape/shapeЛ
tf.reshape_351/ReshapeReshapetf.tile_175/Tile:output:0%tf.reshape_351/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@2
tf.reshape_351/Reshapex
tf.concat_299/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_299/concat/axisё
tf.concat_299/concatConcatV2tf.reshape_351/Reshape:output:0+conv3d_226/StatefulPartitionedCall:output:0"tf.concat_299/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ0@@2
tf.concat_299/concatв
"conv3d_233/StatefulPartitionedCallStatefulPartitionedCalltf.concat_299/concat:output:0conv3d_233_12219232conv3d_233_12219234*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ @@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *Q
fLRJ
H__inference_conv3d_233_layer_call_and_return_conditional_losses_122186982$
"conv3d_233/StatefulPartitionedCallр
"conv3d_234/StatefulPartitionedCallStatefulPartitionedCall+conv3d_233/StatefulPartitionedCall:output:0conv3d_234_12219237conv3d_234_12219239*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ@@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *Q
fLRJ
H__inference_conv3d_234_layer_call_and_return_conditional_losses_122187142$
"conv3d_234/StatefulPartitionedCall
IdentityIdentity+conv3d_234/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџ@@2

IdentityО
NoOpNoOp#^conv3d_226/StatefulPartitionedCall#^conv3d_227/StatefulPartitionedCall#^conv3d_228/StatefulPartitionedCall#^conv3d_229/StatefulPartitionedCall#^conv3d_230/StatefulPartitionedCall#^conv3d_231/StatefulPartitionedCall#^conv3d_232/StatefulPartitionedCall#^conv3d_233/StatefulPartitionedCall#^conv3d_234/StatefulPartitionedCall!^dense_50/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:џџџџџџџџџ@@: : : : : : : : : : : : : : : : : : : : 2H
"conv3d_226/StatefulPartitionedCall"conv3d_226/StatefulPartitionedCall2H
"conv3d_227/StatefulPartitionedCall"conv3d_227/StatefulPartitionedCall2H
"conv3d_228/StatefulPartitionedCall"conv3d_228/StatefulPartitionedCall2H
"conv3d_229/StatefulPartitionedCall"conv3d_229/StatefulPartitionedCall2H
"conv3d_230/StatefulPartitionedCall"conv3d_230/StatefulPartitionedCall2H
"conv3d_231/StatefulPartitionedCall"conv3d_231/StatefulPartitionedCall2H
"conv3d_232/StatefulPartitionedCall"conv3d_232/StatefulPartitionedCall2H
"conv3d_233/StatefulPartitionedCall"conv3d_233/StatefulPartitionedCall2H
"conv3d_234/StatefulPartitionedCall"conv3d_234/StatefulPartitionedCall2D
 dense_50/StatefulPartitionedCall dense_50/StatefulPartitionedCall:Z V
3
_output_shapes!
:џџџџџџџџџ@@

_user_specified_nameinput

ї
F__inference_dense_50_layer_call_and_return_conditional_losses_12220053

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
R__inference_average_pooling3d_90_layer_call_and_return_conditional_losses_12219968

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
ф

n
R__inference_average_pooling3d_88_layer_call_and_return_conditional_losses_12218310

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
R__inference_average_pooling3d_91_layer_call_and_return_conditional_losses_12218554

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
H__inference_conv3d_230_layer_call_and_return_conditional_losses_12218623

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
Ю

H__inference_conv3d_226_layer_call_and_return_conditional_losses_12218459

inputs<
conv3d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityЂBiasAdd/ReadVariableOpЂConv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
: *
dtype02
Conv3D/ReadVariableOpР
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ @@*
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpЃ
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ @@*
data_formatNCHW2	
BiasAddp
SoftplusSoftplusBiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ @@2

Softplus}
IdentityIdentitySoftplus:activations:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџ @@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:џџџџџџџџџ@@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:џџџџџџџџџ@@
 
_user_specified_nameinputs
ф

n
R__inference_average_pooling3d_89_layer_call_and_return_conditional_losses_12218340

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
H__inference_conv3d_228_layer_call_and_return_conditional_losses_12218513

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
-__inference_conv3d_229_layer_call_fn_12219977

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
H__inference_conv3d_229_layer_call_and_return_conditional_losses_122185402
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
С
І
-__inference_conv3d_232_layer_call_fn_12220122

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
H__inference_conv3d_232_layer_call_and_return_conditional_losses_122186732
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
ё
Ё

F__inference_model_50_layer_call_and_return_conditional_losses_12218721

inputs1
conv3d_226_12218460: !
conv3d_226_12218462: 1
conv3d_227_12218487: !
conv3d_227_12218489:1
conv3d_228_12218514:!
conv3d_228_12218516:1
conv3d_229_12218541:!
conv3d_229_12218543:#
dense_50_12218582:@@
dense_50_12218584:@1
conv3d_230_12218624:!
conv3d_230_12218626:1
conv3d_231_12218649:!
conv3d_231_12218651:1
conv3d_232_12218674:!
conv3d_232_12218676:1
conv3d_233_12218699:0 !
conv3d_233_12218701: 1
conv3d_234_12218715: !
conv3d_234_12218717:
identityЂ"conv3d_226/StatefulPartitionedCallЂ"conv3d_227/StatefulPartitionedCallЂ"conv3d_228/StatefulPartitionedCallЂ"conv3d_229/StatefulPartitionedCallЂ"conv3d_230/StatefulPartitionedCallЂ"conv3d_231/StatefulPartitionedCallЂ"conv3d_232/StatefulPartitionedCallЂ"conv3d_233/StatefulPartitionedCallЂ"conv3d_234/StatefulPartitionedCallЂ dense_50/StatefulPartitionedCallЕ
0tf.__operators__.getitem_246/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0tf.__operators__.getitem_246/strided_slice/stackЙ
2tf.__operators__.getitem_246/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_246/strided_slice/stack_1Й
2tf.__operators__.getitem_246/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_246/strided_slice/stack_2
*tf.__operators__.getitem_246/strided_sliceStridedSliceinputs9tf.__operators__.getitem_246/strided_slice/stack:output:0;tf.__operators__.getitem_246/strided_slice/stack_1:output:0;tf.__operators__.getitem_246/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:џџџџџџџџџ@@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_246/strided_sliceЛ
#range_conversion_50/PartitionedCallPartitionedCall3tf.__operators__.getitem_246/strided_slice:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ@@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *Z
fURS
Q__inference_range_conversion_50_layer_call_and_return_conditional_losses_122184402%
#range_conversion_50/PartitionedCallЕ
0tf.__operators__.getitem_247/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0tf.__operators__.getitem_247/strided_slice/stackЙ
2tf.__operators__.getitem_247/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2tf.__operators__.getitem_247/strided_slice/stack_1Й
2tf.__operators__.getitem_247/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2tf.__operators__.getitem_247/strided_slice/stack_2
*tf.__operators__.getitem_247/strided_sliceStridedSliceinputs9tf.__operators__.getitem_247/strided_slice/stack:output:0;tf.__operators__.getitem_247/strided_slice/stack_1:output:0;tf.__operators__.getitem_247/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:џџџџџџџџџ@@*

begin_mask*
end_mask2,
*tf.__operators__.getitem_247/strided_slicex
tf.concat_295/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_295/concat/axis
tf.concat_295/concatConcatV2,range_conversion_50/PartitionedCall:output:03tf.__operators__.getitem_247/strided_slice:output:0"tf.concat_295/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ@@2
tf.concat_295/concatв
"conv3d_226/StatefulPartitionedCallStatefulPartitionedCalltf.concat_295/concat:output:0conv3d_226_12218460conv3d_226_12218462*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ @@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *Q
fLRJ
H__inference_conv3d_226_layer_call_and_return_conditional_losses_122184592$
"conv3d_226/StatefulPartitionedCallЖ
$average_pooling3d_88/PartitionedCallPartitionedCall+conv3d_226/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ   * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *[
fVRT
R__inference_average_pooling3d_88_layer_call_and_return_conditional_losses_122184732&
$average_pooling3d_88/PartitionedCallт
"conv3d_227/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_88/PartitionedCall:output:0conv3d_227_12218487conv3d_227_12218489*
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
H__inference_conv3d_227_layer_call_and_return_conditional_losses_122184862$
"conv3d_227/StatefulPartitionedCallЖ
$average_pooling3d_89/PartitionedCallPartitionedCall+conv3d_227/StatefulPartitionedCall:output:0*
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
R__inference_average_pooling3d_89_layer_call_and_return_conditional_losses_122185002&
$average_pooling3d_89/PartitionedCallт
"conv3d_228/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_89/PartitionedCall:output:0conv3d_228_12218514conv3d_228_12218516*
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
H__inference_conv3d_228_layer_call_and_return_conditional_losses_122185132$
"conv3d_228/StatefulPartitionedCallЖ
$average_pooling3d_90/PartitionedCallPartitionedCall+conv3d_228/StatefulPartitionedCall:output:0*
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
R__inference_average_pooling3d_90_layer_call_and_return_conditional_losses_122185272&
$average_pooling3d_90/PartitionedCallт
"conv3d_229/StatefulPartitionedCallStatefulPartitionedCall-average_pooling3d_90/PartitionedCall:output:0conv3d_229_12218541conv3d_229_12218543*
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
H__inference_conv3d_229_layer_call_and_return_conditional_losses_122185402$
"conv3d_229/StatefulPartitionedCallЖ
$average_pooling3d_91/PartitionedCallPartitionedCall+conv3d_229/StatefulPartitionedCall:output:0*
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
R__inference_average_pooling3d_91_layer_call_and_return_conditional_losses_122185542&
$average_pooling3d_91/PartitionedCall
reshape_100/PartitionedCallPartitionedCall-average_pooling3d_91/PartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8 *R
fMRK
I__inference_reshape_100_layer_call_and_return_conditional_losses_122185682
reshape_100/PartitionedCallУ
 dense_50/StatefulPartitionedCallStatefulPartitionedCall$reshape_100/PartitionedCall:output:0dense_50_12218582dense_50_12218584*
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
F__inference_dense_50_layer_call_and_return_conditional_losses_122185812"
 dense_50/StatefulPartitionedCall
reshape_101/PartitionedCallPartitionedCall)dense_50/StatefulPartitionedCall:output:0*
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
GPU2 *0,1,2,3J 8 *R
fMRK
I__inference_reshape_101_layer_call_and_return_conditional_losses_122186022
reshape_101/PartitionedCallЅ
tf.reshape_344/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                     2
tf.reshape_344/Reshape/shapeв
tf.reshape_344/ReshapeReshape$reshape_101/PartitionedCall:output:0%tf.reshape_344/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.reshape_344/ReshapeЁ
tf.tile_172/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_172/Tile/multiplesМ
tf.tile_172/TileTiletf.reshape_344/Reshape:output:0#tf.tile_172/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.tile_172/Tile
tf.reshape_345/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ            2
tf.reshape_345/Reshape/shapeЛ
tf.reshape_345/ReshapeReshapetf.tile_172/Tile:output:0%tf.reshape_345/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.reshape_345/Reshapex
tf.concat_296/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_296/concat/axisё
tf.concat_296/concatConcatV2tf.reshape_345/Reshape:output:0+conv3d_229/StatefulPartitionedCall:output:0"tf.concat_296/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.concat_296/concatв
"conv3d_230/StatefulPartitionedCallStatefulPartitionedCalltf.concat_296/concat:output:0conv3d_230_12218624conv3d_230_12218626*
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
H__inference_conv3d_230_layer_call_and_return_conditional_losses_122186232$
"conv3d_230/StatefulPartitionedCallЅ
tf.reshape_346/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                     2
tf.reshape_346/Reshape/shapeй
tf.reshape_346/ReshapeReshape+conv3d_230/StatefulPartitionedCall:output:0%tf.reshape_346/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.reshape_346/ReshapeЁ
tf.tile_173/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_173/Tile/multiplesМ
tf.tile_173/TileTiletf.reshape_346/Reshape:output:0#tf.tile_173/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.tile_173/Tile
tf.reshape_347/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ            2
tf.reshape_347/Reshape/shapeЛ
tf.reshape_347/ReshapeReshapetf.tile_173/Tile:output:0%tf.reshape_347/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.reshape_347/Reshapex
tf.concat_297/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_297/concat/axisё
tf.concat_297/concatConcatV2tf.reshape_347/Reshape:output:0+conv3d_228/StatefulPartitionedCall:output:0"tf.concat_297/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ2
tf.concat_297/concatв
"conv3d_231/StatefulPartitionedCallStatefulPartitionedCalltf.concat_297/concat:output:0conv3d_231_12218649conv3d_231_12218651*
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
H__inference_conv3d_231_layer_call_and_return_conditional_losses_122186482$
"conv3d_231/StatefulPartitionedCallЅ
tf.reshape_348/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                     2
tf.reshape_348/Reshape/shapeй
tf.reshape_348/ReshapeReshape+conv3d_231/StatefulPartitionedCall:output:0%tf.reshape_348/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.reshape_348/ReshapeЁ
tf.tile_174/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_174/Tile/multiplesМ
tf.tile_174/TileTiletf.reshape_348/Reshape:output:0#tf.tile_174/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
tf.tile_174/Tile
tf.reshape_349/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ              2
tf.reshape_349/Reshape/shapeЛ
tf.reshape_349/ReshapeReshapetf.tile_174/Tile:output:0%tf.reshape_349/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ  2
tf.reshape_349/Reshapex
tf.concat_298/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_298/concat/axisё
tf.concat_298/concatConcatV2tf.reshape_349/Reshape:output:0+conv3d_227/StatefulPartitionedCall:output:0"tf.concat_298/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ  2
tf.concat_298/concatв
"conv3d_232/StatefulPartitionedCallStatefulPartitionedCalltf.concat_298/concat:output:0conv3d_232_12218674conv3d_232_12218676*
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
H__inference_conv3d_232_layer_call_and_return_conditional_losses_122186732$
"conv3d_232/StatefulPartitionedCallЅ
tf.reshape_350/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                       2
tf.reshape_350/Reshape/shapeй
tf.reshape_350/ReshapeReshape+conv3d_232/StatefulPartitionedCall:output:0%tf.reshape_350/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ  2
tf.reshape_350/ReshapeЁ
tf.tile_175/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2
tf.tile_175/Tile/multiplesМ
tf.tile_175/TileTiletf.reshape_350/Reshape:output:0#tf.tile_175/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ  2
tf.tile_175/Tile
tf.reshape_351/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ      @   @   2
tf.reshape_351/Reshape/shapeЛ
tf.reshape_351/ReshapeReshapetf.tile_175/Tile:output:0%tf.reshape_351/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@2
tf.reshape_351/Reshapex
tf.concat_299/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_299/concat/axisё
tf.concat_299/concatConcatV2tf.reshape_351/Reshape:output:0+conv3d_226/StatefulPartitionedCall:output:0"tf.concat_299/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ0@@2
tf.concat_299/concatв
"conv3d_233/StatefulPartitionedCallStatefulPartitionedCalltf.concat_299/concat:output:0conv3d_233_12218699conv3d_233_12218701*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ @@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *Q
fLRJ
H__inference_conv3d_233_layer_call_and_return_conditional_losses_122186982$
"conv3d_233/StatefulPartitionedCallр
"conv3d_234/StatefulPartitionedCallStatefulPartitionedCall+conv3d_233/StatefulPartitionedCall:output:0conv3d_234_12218715conv3d_234_12218717*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ@@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *Q
fLRJ
H__inference_conv3d_234_layer_call_and_return_conditional_losses_122187142$
"conv3d_234/StatefulPartitionedCall
IdentityIdentity+conv3d_234/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџ@@2

IdentityО
NoOpNoOp#^conv3d_226/StatefulPartitionedCall#^conv3d_227/StatefulPartitionedCall#^conv3d_228/StatefulPartitionedCall#^conv3d_229/StatefulPartitionedCall#^conv3d_230/StatefulPartitionedCall#^conv3d_231/StatefulPartitionedCall#^conv3d_232/StatefulPartitionedCall#^conv3d_233/StatefulPartitionedCall#^conv3d_234/StatefulPartitionedCall!^dense_50/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:џџџџџџџџџ@@: : : : : : : : : : : : : : : : : : : : 2H
"conv3d_226/StatefulPartitionedCall"conv3d_226/StatefulPartitionedCall2H
"conv3d_227/StatefulPartitionedCall"conv3d_227/StatefulPartitionedCall2H
"conv3d_228/StatefulPartitionedCall"conv3d_228/StatefulPartitionedCall2H
"conv3d_229/StatefulPartitionedCall"conv3d_229/StatefulPartitionedCall2H
"conv3d_230/StatefulPartitionedCall"conv3d_230/StatefulPartitionedCall2H
"conv3d_231/StatefulPartitionedCall"conv3d_231/StatefulPartitionedCall2H
"conv3d_232/StatefulPartitionedCall"conv3d_232/StatefulPartitionedCall2H
"conv3d_233/StatefulPartitionedCall"conv3d_233/StatefulPartitionedCall2H
"conv3d_234/StatefulPartitionedCall"conv3d_234/StatefulPartitionedCall2D
 dense_50/StatefulPartitionedCall dense_50/StatefulPartitionedCall:[ W
3
_output_shapes!
:џџџџџџџџџ@@
 
_user_specified_nameinputs
Є
S
7__inference_average_pooling3d_88_layer_call_fn_12219849

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
R__inference_average_pooling3d_88_layer_call_and_return_conditional_losses_122183102
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
С
І
-__inference_conv3d_231_layer_call_fn_12220102

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
H__inference_conv3d_231_layer_call_and_return_conditional_losses_122186482
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
Ю

H__inference_conv3d_226_layer_call_and_return_conditional_losses_12219844

inputs<
conv3d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityЂBiasAdd/ReadVariableOpЂConv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
: *
dtype02
Conv3D/ReadVariableOpР
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ @@*
data_formatNCDHW*
paddingSAME*
strides	
2
Conv3D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpЃ
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ @@*
data_formatNCHW2	
BiasAddp
SoftplusSoftplusBiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ @@2

Softplus}
IdentityIdentitySoftplus:activations:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџ @@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:џџџџџџџџџ@@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:џџџџџџџџџ@@
 
_user_specified_nameinputs


+__inference_dense_50_layer_call_fn_12220042

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
F__inference_dense_50_layer_call_and_return_conditional_losses_122185812
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
Ю

H__inference_conv3d_228_layer_call_and_return_conditional_losses_12219940

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
з	
q
Q__inference_range_conversion_50_layer_call_and_return_conditional_losses_12219824

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
:џџџџџџџџџ@@2
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
:џџџџџџџџџ@@2	
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
:џџџџџџџџџ@@2
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
:џџџџџџџџџ@@2
addg
IdentityIdentityadd:z:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ@@:_ [
3
_output_shapes!
:џџџџџџџџџ@@
$
_user_specified_name
parameters
Ю

H__inference_conv3d_227_layer_call_and_return_conditional_losses_12218486

inputs<
conv3d_readvariableop_resource: -
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂConv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
: *
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
#:џџџџџџџџџ   : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:џџџџџџџџџ   
 
_user_specified_nameinputs

S
7__inference_average_pooling3d_88_layer_call_fn_12219854

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
:џџџџџџџџџ   * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *[
fVRT
R__inference_average_pooling3d_88_layer_call_and_return_conditional_losses_122184732
PartitionedCallx
IdentityIdentityPartitionedCall:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ   2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ @@:[ W
3
_output_shapes!
:џџџџџџџџџ @@
 
_user_specified_nameinputs
	
n
R__inference_average_pooling3d_88_layer_call_and_return_conditional_losses_12218473

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
:џџџџџџџџџ@@ 2
	transposeЎ
	AvgPool3D	AvgPool3Dtranspose:y:0*
T0*3
_output_shapes!
:џџџџџџџџџ   *
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
:џџџџџџџџџ   2
transpose_1o
IdentityIdentitytranspose_1:y:0*
T0*3
_output_shapes!
:џџџџџџџџџ   2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ @@:[ W
3
_output_shapes!
:џџџџџџџџџ @@
 
_user_specified_nameinputs
Ю

H__inference_conv3d_231_layer_call_and_return_conditional_losses_12218648

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
H__inference_conv3d_234_layer_call_and_return_conditional_losses_12220172

inputs<
conv3d_readvariableop_resource: -
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂConv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
: *
dtype02
Conv3D/ReadVariableOpР
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@*
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
:џџџџџџџџџ@@*
data_formatNCHW2	
BiasAddw
IdentityIdentityBiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџ@@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:џџџџџџџџџ @@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:џџџџџџџџџ @@
 
_user_specified_nameinputs
Ѓ
ѓ
+__inference_model_50_layer_call_fn_12219483

inputs%
unknown: 
	unknown_0: '
	unknown_1: 
	unknown_2:'
	unknown_3:
	unknown_4:'
	unknown_5:
	unknown_6:
	unknown_7:@@
	unknown_8:@'
	unknown_9:

unknown_10:(

unknown_11:

unknown_12:(

unknown_13:

unknown_14:(

unknown_15:0 

unknown_16: (

unknown_17: 

unknown_18:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ@@*6
_read_only_resource_inputs
	
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *O
fJRH
F__inference_model_50_layer_call_and_return_conditional_losses_122190522
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџ@@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:џџџџџџџџџ@@: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:џџџџџџџџџ@@
 
_user_specified_nameinputs
Є
S
7__inference_average_pooling3d_90_layer_call_fn_12219945

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
R__inference_average_pooling3d_90_layer_call_and_return_conditional_losses_122183702
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
ј
э
&__inference_signature_wrapper_12219393	
input%
unknown: 
	unknown_0: '
	unknown_1: 
	unknown_2:'
	unknown_3:
	unknown_4:'
	unknown_5:
	unknown_6:
	unknown_7:@@
	unknown_8:@'
	unknown_9:

unknown_10:(

unknown_11:

unknown_12:(

unknown_13:

unknown_14:(

unknown_15:0 

unknown_16: (

unknown_17: 

unknown_18:
identityЂStatefulPartitionedCallм
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ@@*6
_read_only_resource_inputs
	
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *,
f'R%
#__inference__wrapped_model_122182972
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџ@@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:џџџџџџџџџ@@: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
3
_output_shapes!
:џџџџџџџџџ@@

_user_specified_nameinput

S
7__inference_average_pooling3d_90_layer_call_fn_12219950

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
R__inference_average_pooling3d_90_layer_call_and_return_conditional_losses_122185272
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
х
љ
#__inference__wrapped_model_12218297	
inputP
2model_50_conv3d_226_conv3d_readvariableop_resource: A
3model_50_conv3d_226_biasadd_readvariableop_resource: P
2model_50_conv3d_227_conv3d_readvariableop_resource: A
3model_50_conv3d_227_biasadd_readvariableop_resource:P
2model_50_conv3d_228_conv3d_readvariableop_resource:A
3model_50_conv3d_228_biasadd_readvariableop_resource:P
2model_50_conv3d_229_conv3d_readvariableop_resource:A
3model_50_conv3d_229_biasadd_readvariableop_resource:B
0model_50_dense_50_matmul_readvariableop_resource:@@?
1model_50_dense_50_biasadd_readvariableop_resource:@P
2model_50_conv3d_230_conv3d_readvariableop_resource:A
3model_50_conv3d_230_biasadd_readvariableop_resource:P
2model_50_conv3d_231_conv3d_readvariableop_resource:A
3model_50_conv3d_231_biasadd_readvariableop_resource:P
2model_50_conv3d_232_conv3d_readvariableop_resource:A
3model_50_conv3d_232_biasadd_readvariableop_resource:P
2model_50_conv3d_233_conv3d_readvariableop_resource:0 A
3model_50_conv3d_233_biasadd_readvariableop_resource: P
2model_50_conv3d_234_conv3d_readvariableop_resource: A
3model_50_conv3d_234_biasadd_readvariableop_resource:
identityЂ*model_50/conv3d_226/BiasAdd/ReadVariableOpЂ)model_50/conv3d_226/Conv3D/ReadVariableOpЂ*model_50/conv3d_227/BiasAdd/ReadVariableOpЂ)model_50/conv3d_227/Conv3D/ReadVariableOpЂ*model_50/conv3d_228/BiasAdd/ReadVariableOpЂ)model_50/conv3d_228/Conv3D/ReadVariableOpЂ*model_50/conv3d_229/BiasAdd/ReadVariableOpЂ)model_50/conv3d_229/Conv3D/ReadVariableOpЂ*model_50/conv3d_230/BiasAdd/ReadVariableOpЂ)model_50/conv3d_230/Conv3D/ReadVariableOpЂ*model_50/conv3d_231/BiasAdd/ReadVariableOpЂ)model_50/conv3d_231/Conv3D/ReadVariableOpЂ*model_50/conv3d_232/BiasAdd/ReadVariableOpЂ)model_50/conv3d_232/Conv3D/ReadVariableOpЂ*model_50/conv3d_233/BiasAdd/ReadVariableOpЂ)model_50/conv3d_233/Conv3D/ReadVariableOpЂ*model_50/conv3d_234/BiasAdd/ReadVariableOpЂ)model_50/conv3d_234/Conv3D/ReadVariableOpЂ(model_50/dense_50/BiasAdd/ReadVariableOpЂ'model_50/dense_50/MatMul/ReadVariableOpЧ
9model_50/tf.__operators__.getitem_246/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2;
9model_50/tf.__operators__.getitem_246/strided_slice/stackЫ
;model_50/tf.__operators__.getitem_246/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2=
;model_50/tf.__operators__.getitem_246/strided_slice/stack_1Ы
;model_50/tf.__operators__.getitem_246/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2=
;model_50/tf.__operators__.getitem_246/strided_slice/stack_2О
3model_50/tf.__operators__.getitem_246/strided_sliceStridedSliceinputBmodel_50/tf.__operators__.getitem_246/strided_slice/stack:output:0Dmodel_50/tf.__operators__.getitem_246/strided_slice/stack_1:output:0Dmodel_50/tf.__operators__.getitem_246/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:џџџџџџџџџ@@*

begin_mask*
end_mask25
3model_50/tf.__operators__.getitem_246/strided_slice
"model_50/range_conversion_50/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"model_50/range_conversion_50/sub/yє
 model_50/range_conversion_50/subSub<model_50/tf.__operators__.getitem_246/strided_slice:output:0+model_50/range_conversion_50/sub/y:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@2"
 model_50/range_conversion_50/sub
&model_50/range_conversion_50/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  zE2(
&model_50/range_conversion_50/truediv/yь
$model_50/range_conversion_50/truedivRealDiv$model_50/range_conversion_50/sub:z:0/model_50/range_conversion_50/truediv/y:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@2&
$model_50/range_conversion_50/truediv
"model_50/range_conversion_50/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2$
"model_50/range_conversion_50/mul/yр
 model_50/range_conversion_50/mulMul(model_50/range_conversion_50/truediv:z:0+model_50/range_conversion_50/mul/y:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@2"
 model_50/range_conversion_50/mul
"model_50/range_conversion_50/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  П2$
"model_50/range_conversion_50/add/yо
 model_50/range_conversion_50/addAddV2$model_50/range_conversion_50/mul:z:0+model_50/range_conversion_50/add/y:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@2"
 model_50/range_conversion_50/addЧ
9model_50/tf.__operators__.getitem_247/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       2;
9model_50/tf.__operators__.getitem_247/strided_slice/stackЫ
;model_50/tf.__operators__.getitem_247/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2=
;model_50/tf.__operators__.getitem_247/strided_slice/stack_1Ы
;model_50/tf.__operators__.getitem_247/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2=
;model_50/tf.__operators__.getitem_247/strided_slice/stack_2О
3model_50/tf.__operators__.getitem_247/strided_sliceStridedSliceinputBmodel_50/tf.__operators__.getitem_247/strided_slice/stack:output:0Dmodel_50/tf.__operators__.getitem_247/strided_slice/stack_1:output:0Dmodel_50/tf.__operators__.getitem_247/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:џџџџџџџџџ@@*

begin_mask*
end_mask25
3model_50/tf.__operators__.getitem_247/strided_slice
"model_50/tf.concat_295/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_50/tf.concat_295/concat/axisЂ
model_50/tf.concat_295/concatConcatV2$model_50/range_conversion_50/add:z:0<model_50/tf.__operators__.getitem_247/strided_slice:output:0+model_50/tf.concat_295/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ@@2
model_50/tf.concat_295/concatе
)model_50/conv3d_226/Conv3D/ReadVariableOpReadVariableOp2model_50_conv3d_226_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02+
)model_50/conv3d_226/Conv3D/ReadVariableOp
model_50/conv3d_226/Conv3DConv3D&model_50/tf.concat_295/concat:output:01model_50/conv3d_226/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ @@*
data_formatNCDHW*
paddingSAME*
strides	
2
model_50/conv3d_226/Conv3DШ
*model_50/conv3d_226/BiasAdd/ReadVariableOpReadVariableOp3model_50_conv3d_226_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02,
*model_50/conv3d_226/BiasAdd/ReadVariableOpѓ
model_50/conv3d_226/BiasAddBiasAdd#model_50/conv3d_226/Conv3D:output:02model_50/conv3d_226/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ @@*
data_formatNCHW2
model_50/conv3d_226/BiasAddЌ
model_50/conv3d_226/SoftplusSoftplus$model_50/conv3d_226/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ @@2
model_50/conv3d_226/SoftplusЙ
,model_50/average_pooling3d_88/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2.
,model_50/average_pooling3d_88/transpose/perm
'model_50/average_pooling3d_88/transpose	Transpose*model_50/conv3d_226/Softplus:activations:05model_50/average_pooling3d_88/transpose/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@ 2)
'model_50/average_pooling3d_88/transpose
'model_50/average_pooling3d_88/AvgPool3D	AvgPool3D+model_50/average_pooling3d_88/transpose:y:0*
T0*3
_output_shapes!
:џџџџџџџџџ   *
ksize	
*
paddingVALID*
strides	
2)
'model_50/average_pooling3d_88/AvgPool3DН
.model_50/average_pooling3d_88/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                20
.model_50/average_pooling3d_88/transpose_1/perm
)model_50/average_pooling3d_88/transpose_1	Transpose0model_50/average_pooling3d_88/AvgPool3D:output:07model_50/average_pooling3d_88/transpose_1/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ   2+
)model_50/average_pooling3d_88/transpose_1е
)model_50/conv3d_227/Conv3D/ReadVariableOpReadVariableOp2model_50_conv3d_227_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02+
)model_50/conv3d_227/Conv3D/ReadVariableOpЃ
model_50/conv3d_227/Conv3DConv3D-model_50/average_pooling3d_88/transpose_1:y:01model_50/conv3d_227/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ  *
data_formatNCDHW*
paddingSAME*
strides	
2
model_50/conv3d_227/Conv3DШ
*model_50/conv3d_227/BiasAdd/ReadVariableOpReadVariableOp3model_50_conv3d_227_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_50/conv3d_227/BiasAdd/ReadVariableOpѓ
model_50/conv3d_227/BiasAddBiasAdd#model_50/conv3d_227/Conv3D:output:02model_50/conv3d_227/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ  *
data_formatNCHW2
model_50/conv3d_227/BiasAddЌ
model_50/conv3d_227/SoftplusSoftplus$model_50/conv3d_227/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ  2
model_50/conv3d_227/SoftplusЙ
,model_50/average_pooling3d_89/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2.
,model_50/average_pooling3d_89/transpose/perm
'model_50/average_pooling3d_89/transpose	Transpose*model_50/conv3d_227/Softplus:activations:05model_50/average_pooling3d_89/transpose/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ  2)
'model_50/average_pooling3d_89/transpose
'model_50/average_pooling3d_89/AvgPool3D	AvgPool3D+model_50/average_pooling3d_89/transpose:y:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
ksize	
*
paddingVALID*
strides	
2)
'model_50/average_pooling3d_89/AvgPool3DН
.model_50/average_pooling3d_89/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                20
.model_50/average_pooling3d_89/transpose_1/perm
)model_50/average_pooling3d_89/transpose_1	Transpose0model_50/average_pooling3d_89/AvgPool3D:output:07model_50/average_pooling3d_89/transpose_1/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2+
)model_50/average_pooling3d_89/transpose_1е
)model_50/conv3d_228/Conv3D/ReadVariableOpReadVariableOp2model_50_conv3d_228_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_50/conv3d_228/Conv3D/ReadVariableOpЃ
model_50/conv3d_228/Conv3DConv3D-model_50/average_pooling3d_89/transpose_1:y:01model_50/conv3d_228/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCDHW*
paddingSAME*
strides	
2
model_50/conv3d_228/Conv3DШ
*model_50/conv3d_228/BiasAdd/ReadVariableOpReadVariableOp3model_50_conv3d_228_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_50/conv3d_228/BiasAdd/ReadVariableOpѓ
model_50/conv3d_228/BiasAddBiasAdd#model_50/conv3d_228/Conv3D:output:02model_50/conv3d_228/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCHW2
model_50/conv3d_228/BiasAddЌ
model_50/conv3d_228/SoftplusSoftplus$model_50/conv3d_228/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
model_50/conv3d_228/SoftplusЙ
,model_50/average_pooling3d_90/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2.
,model_50/average_pooling3d_90/transpose/perm
'model_50/average_pooling3d_90/transpose	Transpose*model_50/conv3d_228/Softplus:activations:05model_50/average_pooling3d_90/transpose/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2)
'model_50/average_pooling3d_90/transpose
'model_50/average_pooling3d_90/AvgPool3D	AvgPool3D+model_50/average_pooling3d_90/transpose:y:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
ksize	
*
paddingVALID*
strides	
2)
'model_50/average_pooling3d_90/AvgPool3DН
.model_50/average_pooling3d_90/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                20
.model_50/average_pooling3d_90/transpose_1/perm
)model_50/average_pooling3d_90/transpose_1	Transpose0model_50/average_pooling3d_90/AvgPool3D:output:07model_50/average_pooling3d_90/transpose_1/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2+
)model_50/average_pooling3d_90/transpose_1е
)model_50/conv3d_229/Conv3D/ReadVariableOpReadVariableOp2model_50_conv3d_229_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_50/conv3d_229/Conv3D/ReadVariableOpЃ
model_50/conv3d_229/Conv3DConv3D-model_50/average_pooling3d_90/transpose_1:y:01model_50/conv3d_229/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCDHW*
paddingSAME*
strides	
2
model_50/conv3d_229/Conv3DШ
*model_50/conv3d_229/BiasAdd/ReadVariableOpReadVariableOp3model_50_conv3d_229_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_50/conv3d_229/BiasAdd/ReadVariableOpѓ
model_50/conv3d_229/BiasAddBiasAdd#model_50/conv3d_229/Conv3D:output:02model_50/conv3d_229/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCHW2
model_50/conv3d_229/BiasAddЌ
model_50/conv3d_229/SoftplusSoftplus$model_50/conv3d_229/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
model_50/conv3d_229/SoftplusЙ
,model_50/average_pooling3d_91/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2.
,model_50/average_pooling3d_91/transpose/perm
'model_50/average_pooling3d_91/transpose	Transpose*model_50/conv3d_229/Softplus:activations:05model_50/average_pooling3d_91/transpose/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2)
'model_50/average_pooling3d_91/transpose
'model_50/average_pooling3d_91/AvgPool3D	AvgPool3D+model_50/average_pooling3d_91/transpose:y:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
ksize	
*
paddingVALID*
strides	
2)
'model_50/average_pooling3d_91/AvgPool3DН
.model_50/average_pooling3d_91/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                20
.model_50/average_pooling3d_91/transpose_1/perm
)model_50/average_pooling3d_91/transpose_1	Transpose0model_50/average_pooling3d_91/AvgPool3D:output:07model_50/average_pooling3d_91/transpose_1/perm:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2+
)model_50/average_pooling3d_91/transpose_1
model_50/reshape_100/ShapeShape-model_50/average_pooling3d_91/transpose_1:y:0*
T0*
_output_shapes
:2
model_50/reshape_100/Shape
(model_50/reshape_100/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(model_50/reshape_100/strided_slice/stackЂ
*model_50/reshape_100/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*model_50/reshape_100/strided_slice/stack_1Ђ
*model_50/reshape_100/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*model_50/reshape_100/strided_slice/stack_2р
"model_50/reshape_100/strided_sliceStridedSlice#model_50/reshape_100/Shape:output:01model_50/reshape_100/strided_slice/stack:output:03model_50/reshape_100/strided_slice/stack_1:output:03model_50/reshape_100/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"model_50/reshape_100/strided_slice
$model_50/reshape_100/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@2&
$model_50/reshape_100/Reshape/shape/1к
"model_50/reshape_100/Reshape/shapePack+model_50/reshape_100/strided_slice:output:0-model_50/reshape_100/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2$
"model_50/reshape_100/Reshape/shapeе
model_50/reshape_100/ReshapeReshape-model_50/average_pooling3d_91/transpose_1:y:0+model_50/reshape_100/Reshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
model_50/reshape_100/ReshapeУ
'model_50/dense_50/MatMul/ReadVariableOpReadVariableOp0model_50_dense_50_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02)
'model_50/dense_50/MatMul/ReadVariableOpШ
model_50/dense_50/MatMulMatMul%model_50/reshape_100/Reshape:output:0/model_50/dense_50/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
model_50/dense_50/MatMulТ
(model_50/dense_50/BiasAdd/ReadVariableOpReadVariableOp1model_50_dense_50_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02*
(model_50/dense_50/BiasAdd/ReadVariableOpЩ
model_50/dense_50/BiasAddBiasAdd"model_50/dense_50/MatMul:product:00model_50/dense_50/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
model_50/dense_50/BiasAdd
model_50/dense_50/SoftplusSoftplus"model_50/dense_50/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
model_50/dense_50/Softplus
model_50/reshape_101/ShapeShape(model_50/dense_50/Softplus:activations:0*
T0*
_output_shapes
:2
model_50/reshape_101/Shape
(model_50/reshape_101/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(model_50/reshape_101/strided_slice/stackЂ
*model_50/reshape_101/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*model_50/reshape_101/strided_slice/stack_1Ђ
*model_50/reshape_101/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*model_50/reshape_101/strided_slice/stack_2р
"model_50/reshape_101/strided_sliceStridedSlice#model_50/reshape_101/Shape:output:01model_50/reshape_101/strided_slice/stack:output:03model_50/reshape_101/strided_slice/stack_1:output:03model_50/reshape_101/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"model_50/reshape_101/strided_slice
$model_50/reshape_101/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2&
$model_50/reshape_101/Reshape/shape/1
$model_50/reshape_101/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2&
$model_50/reshape_101/Reshape/shape/2
$model_50/reshape_101/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2&
$model_50/reshape_101/Reshape/shape/3
$model_50/reshape_101/Reshape/shape/4Const*
_output_shapes
: *
dtype0*
value	B :2&
$model_50/reshape_101/Reshape/shape/4ч
"model_50/reshape_101/Reshape/shapePack+model_50/reshape_101/strided_slice:output:0-model_50/reshape_101/Reshape/shape/1:output:0-model_50/reshape_101/Reshape/shape/2:output:0-model_50/reshape_101/Reshape/shape/3:output:0-model_50/reshape_101/Reshape/shape/4:output:0*
N*
T0*
_output_shapes
:2$
"model_50/reshape_101/Reshape/shapeм
model_50/reshape_101/ReshapeReshape(model_50/dense_50/Softplus:activations:0+model_50/reshape_101/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
model_50/reshape_101/ReshapeЗ
%model_50/tf.reshape_344/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                     2'
%model_50/tf.reshape_344/Reshape/shapeю
model_50/tf.reshape_344/ReshapeReshape%model_50/reshape_101/Reshape:output:0.model_50/tf.reshape_344/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2!
model_50/tf.reshape_344/ReshapeГ
#model_50/tf.tile_172/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2%
#model_50/tf.tile_172/Tile/multiplesр
model_50/tf.tile_172/TileTile(model_50/tf.reshape_344/Reshape:output:0,model_50/tf.tile_172/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
model_50/tf.tile_172/TileЋ
%model_50/tf.reshape_345/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ            2'
%model_50/tf.reshape_345/Reshape/shapeп
model_50/tf.reshape_345/ReshapeReshape"model_50/tf.tile_172/Tile:output:0.model_50/tf.reshape_345/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2!
model_50/tf.reshape_345/Reshape
"model_50/tf.concat_296/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_50/tf.concat_296/concat/axis
model_50/tf.concat_296/concatConcatV2(model_50/tf.reshape_345/Reshape:output:0*model_50/conv3d_229/Softplus:activations:0+model_50/tf.concat_296/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ2
model_50/tf.concat_296/concatе
)model_50/conv3d_230/Conv3D/ReadVariableOpReadVariableOp2model_50_conv3d_230_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_50/conv3d_230/Conv3D/ReadVariableOp
model_50/conv3d_230/Conv3DConv3D&model_50/tf.concat_296/concat:output:01model_50/conv3d_230/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCDHW*
paddingSAME*
strides	
2
model_50/conv3d_230/Conv3DШ
*model_50/conv3d_230/BiasAdd/ReadVariableOpReadVariableOp3model_50_conv3d_230_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_50/conv3d_230/BiasAdd/ReadVariableOpѓ
model_50/conv3d_230/BiasAddBiasAdd#model_50/conv3d_230/Conv3D:output:02model_50/conv3d_230/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCHW2
model_50/conv3d_230/BiasAddЌ
model_50/conv3d_230/SoftplusSoftplus$model_50/conv3d_230/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
model_50/conv3d_230/SoftplusЗ
%model_50/tf.reshape_346/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                     2'
%model_50/tf.reshape_346/Reshape/shapeѓ
model_50/tf.reshape_346/ReshapeReshape*model_50/conv3d_230/Softplus:activations:0.model_50/tf.reshape_346/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2!
model_50/tf.reshape_346/ReshapeГ
#model_50/tf.tile_173/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2%
#model_50/tf.tile_173/Tile/multiplesр
model_50/tf.tile_173/TileTile(model_50/tf.reshape_346/Reshape:output:0,model_50/tf.tile_173/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
model_50/tf.tile_173/TileЋ
%model_50/tf.reshape_347/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ            2'
%model_50/tf.reshape_347/Reshape/shapeп
model_50/tf.reshape_347/ReshapeReshape"model_50/tf.tile_173/Tile:output:0.model_50/tf.reshape_347/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2!
model_50/tf.reshape_347/Reshape
"model_50/tf.concat_297/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_50/tf.concat_297/concat/axis
model_50/tf.concat_297/concatConcatV2(model_50/tf.reshape_347/Reshape:output:0*model_50/conv3d_228/Softplus:activations:0+model_50/tf.concat_297/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ2
model_50/tf.concat_297/concatе
)model_50/conv3d_231/Conv3D/ReadVariableOpReadVariableOp2model_50_conv3d_231_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_50/conv3d_231/Conv3D/ReadVariableOp
model_50/conv3d_231/Conv3DConv3D&model_50/tf.concat_297/concat:output:01model_50/conv3d_231/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCDHW*
paddingSAME*
strides	
2
model_50/conv3d_231/Conv3DШ
*model_50/conv3d_231/BiasAdd/ReadVariableOpReadVariableOp3model_50_conv3d_231_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_50/conv3d_231/BiasAdd/ReadVariableOpѓ
model_50/conv3d_231/BiasAddBiasAdd#model_50/conv3d_231/Conv3D:output:02model_50/conv3d_231/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ*
data_formatNCHW2
model_50/conv3d_231/BiasAddЌ
model_50/conv3d_231/SoftplusSoftplus$model_50/conv3d_231/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ2
model_50/conv3d_231/SoftplusЗ
%model_50/tf.reshape_348/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                     2'
%model_50/tf.reshape_348/Reshape/shapeѓ
model_50/tf.reshape_348/ReshapeReshape*model_50/conv3d_231/Softplus:activations:0.model_50/tf.reshape_348/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2!
model_50/tf.reshape_348/ReshapeГ
#model_50/tf.tile_174/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2%
#model_50/tf.tile_174/Tile/multiplesр
model_50/tf.tile_174/TileTile(model_50/tf.reshape_348/Reshape:output:0,model_50/tf.tile_174/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ2
model_50/tf.tile_174/TileЋ
%model_50/tf.reshape_349/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ              2'
%model_50/tf.reshape_349/Reshape/shapeп
model_50/tf.reshape_349/ReshapeReshape"model_50/tf.tile_174/Tile:output:0.model_50/tf.reshape_349/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ  2!
model_50/tf.reshape_349/Reshape
"model_50/tf.concat_298/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_50/tf.concat_298/concat/axis
model_50/tf.concat_298/concatConcatV2(model_50/tf.reshape_349/Reshape:output:0*model_50/conv3d_227/Softplus:activations:0+model_50/tf.concat_298/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ  2
model_50/tf.concat_298/concatе
)model_50/conv3d_232/Conv3D/ReadVariableOpReadVariableOp2model_50_conv3d_232_conv3d_readvariableop_resource**
_output_shapes
:*
dtype02+
)model_50/conv3d_232/Conv3D/ReadVariableOp
model_50/conv3d_232/Conv3DConv3D&model_50/tf.concat_298/concat:output:01model_50/conv3d_232/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ  *
data_formatNCDHW*
paddingSAME*
strides	
2
model_50/conv3d_232/Conv3DШ
*model_50/conv3d_232/BiasAdd/ReadVariableOpReadVariableOp3model_50_conv3d_232_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_50/conv3d_232/BiasAdd/ReadVariableOpѓ
model_50/conv3d_232/BiasAddBiasAdd#model_50/conv3d_232/Conv3D:output:02model_50/conv3d_232/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ  *
data_formatNCHW2
model_50/conv3d_232/BiasAddЌ
model_50/conv3d_232/SoftplusSoftplus$model_50/conv3d_232/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ  2
model_50/conv3d_232/SoftplusЗ
%model_50/tf.reshape_350/Reshape/shapeConst*
_output_shapes
:*
dtype0*5
value,B*" џџџџ                       2'
%model_50/tf.reshape_350/Reshape/shapeѓ
model_50/tf.reshape_350/ReshapeReshape*model_50/conv3d_232/Softplus:activations:0.model_50/tf.reshape_350/Reshape/shape:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ  2!
model_50/tf.reshape_350/ReshapeГ
#model_50/tf.tile_175/Tile/multiplesConst*
_output_shapes
:*
dtype0*5
value,B*"                         2%
#model_50/tf.tile_175/Tile/multiplesр
model_50/tf.tile_175/TileTile(model_50/tf.reshape_350/Reshape:output:0,model_50/tf.tile_175/Tile/multiples:output:0*
T0*?
_output_shapes-
+:)џџџџџџџџџ  2
model_50/tf.tile_175/TileЋ
%model_50/tf.reshape_351/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"џџџџ      @   @   2'
%model_50/tf.reshape_351/Reshape/shapeп
model_50/tf.reshape_351/ReshapeReshape"model_50/tf.tile_175/Tile:output:0.model_50/tf.reshape_351/Reshape/shape:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@2!
model_50/tf.reshape_351/Reshape
"model_50/tf.concat_299/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_50/tf.concat_299/concat/axis
model_50/tf.concat_299/concatConcatV2(model_50/tf.reshape_351/Reshape:output:0*model_50/conv3d_226/Softplus:activations:0+model_50/tf.concat_299/concat/axis:output:0*
N*
T0*3
_output_shapes!
:џџџџџџџџџ0@@2
model_50/tf.concat_299/concatе
)model_50/conv3d_233/Conv3D/ReadVariableOpReadVariableOp2model_50_conv3d_233_conv3d_readvariableop_resource**
_output_shapes
:0 *
dtype02+
)model_50/conv3d_233/Conv3D/ReadVariableOp
model_50/conv3d_233/Conv3DConv3D&model_50/tf.concat_299/concat:output:01model_50/conv3d_233/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ @@*
data_formatNCDHW*
paddingSAME*
strides	
2
model_50/conv3d_233/Conv3DШ
*model_50/conv3d_233/BiasAdd/ReadVariableOpReadVariableOp3model_50_conv3d_233_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02,
*model_50/conv3d_233/BiasAdd/ReadVariableOpѓ
model_50/conv3d_233/BiasAddBiasAdd#model_50/conv3d_233/Conv3D:output:02model_50/conv3d_233/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ @@*
data_formatNCHW2
model_50/conv3d_233/BiasAddЌ
model_50/conv3d_233/SoftplusSoftplus$model_50/conv3d_233/BiasAdd:output:0*
T0*3
_output_shapes!
:џџџџџџџџџ @@2
model_50/conv3d_233/Softplusе
)model_50/conv3d_234/Conv3D/ReadVariableOpReadVariableOp2model_50_conv3d_234_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02+
)model_50/conv3d_234/Conv3D/ReadVariableOp 
model_50/conv3d_234/Conv3DConv3D*model_50/conv3d_233/Softplus:activations:01model_50/conv3d_234/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@*
data_formatNCDHW*
paddingSAME*
strides	
2
model_50/conv3d_234/Conv3DШ
*model_50/conv3d_234/BiasAdd/ReadVariableOpReadVariableOp3model_50_conv3d_234_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_50/conv3d_234/BiasAdd/ReadVariableOpѓ
model_50/conv3d_234/BiasAddBiasAdd#model_50/conv3d_234/Conv3D:output:02model_50/conv3d_234/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@*
data_formatNCHW2
model_50/conv3d_234/BiasAdd
IdentityIdentity$model_50/conv3d_234/BiasAdd:output:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџ@@2

IdentityФ
NoOpNoOp+^model_50/conv3d_226/BiasAdd/ReadVariableOp*^model_50/conv3d_226/Conv3D/ReadVariableOp+^model_50/conv3d_227/BiasAdd/ReadVariableOp*^model_50/conv3d_227/Conv3D/ReadVariableOp+^model_50/conv3d_228/BiasAdd/ReadVariableOp*^model_50/conv3d_228/Conv3D/ReadVariableOp+^model_50/conv3d_229/BiasAdd/ReadVariableOp*^model_50/conv3d_229/Conv3D/ReadVariableOp+^model_50/conv3d_230/BiasAdd/ReadVariableOp*^model_50/conv3d_230/Conv3D/ReadVariableOp+^model_50/conv3d_231/BiasAdd/ReadVariableOp*^model_50/conv3d_231/Conv3D/ReadVariableOp+^model_50/conv3d_232/BiasAdd/ReadVariableOp*^model_50/conv3d_232/Conv3D/ReadVariableOp+^model_50/conv3d_233/BiasAdd/ReadVariableOp*^model_50/conv3d_233/Conv3D/ReadVariableOp+^model_50/conv3d_234/BiasAdd/ReadVariableOp*^model_50/conv3d_234/Conv3D/ReadVariableOp)^model_50/dense_50/BiasAdd/ReadVariableOp(^model_50/dense_50/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:џџџџџџџџџ@@: : : : : : : : : : : : : : : : : : : : 2X
*model_50/conv3d_226/BiasAdd/ReadVariableOp*model_50/conv3d_226/BiasAdd/ReadVariableOp2V
)model_50/conv3d_226/Conv3D/ReadVariableOp)model_50/conv3d_226/Conv3D/ReadVariableOp2X
*model_50/conv3d_227/BiasAdd/ReadVariableOp*model_50/conv3d_227/BiasAdd/ReadVariableOp2V
)model_50/conv3d_227/Conv3D/ReadVariableOp)model_50/conv3d_227/Conv3D/ReadVariableOp2X
*model_50/conv3d_228/BiasAdd/ReadVariableOp*model_50/conv3d_228/BiasAdd/ReadVariableOp2V
)model_50/conv3d_228/Conv3D/ReadVariableOp)model_50/conv3d_228/Conv3D/ReadVariableOp2X
*model_50/conv3d_229/BiasAdd/ReadVariableOp*model_50/conv3d_229/BiasAdd/ReadVariableOp2V
)model_50/conv3d_229/Conv3D/ReadVariableOp)model_50/conv3d_229/Conv3D/ReadVariableOp2X
*model_50/conv3d_230/BiasAdd/ReadVariableOp*model_50/conv3d_230/BiasAdd/ReadVariableOp2V
)model_50/conv3d_230/Conv3D/ReadVariableOp)model_50/conv3d_230/Conv3D/ReadVariableOp2X
*model_50/conv3d_231/BiasAdd/ReadVariableOp*model_50/conv3d_231/BiasAdd/ReadVariableOp2V
)model_50/conv3d_231/Conv3D/ReadVariableOp)model_50/conv3d_231/Conv3D/ReadVariableOp2X
*model_50/conv3d_232/BiasAdd/ReadVariableOp*model_50/conv3d_232/BiasAdd/ReadVariableOp2V
)model_50/conv3d_232/Conv3D/ReadVariableOp)model_50/conv3d_232/Conv3D/ReadVariableOp2X
*model_50/conv3d_233/BiasAdd/ReadVariableOp*model_50/conv3d_233/BiasAdd/ReadVariableOp2V
)model_50/conv3d_233/Conv3D/ReadVariableOp)model_50/conv3d_233/Conv3D/ReadVariableOp2X
*model_50/conv3d_234/BiasAdd/ReadVariableOp*model_50/conv3d_234/BiasAdd/ReadVariableOp2V
)model_50/conv3d_234/Conv3D/ReadVariableOp)model_50/conv3d_234/Conv3D/ReadVariableOp2T
(model_50/dense_50/BiasAdd/ReadVariableOp(model_50/dense_50/BiasAdd/ReadVariableOp2R
'model_50/dense_50/MatMul/ReadVariableOp'model_50/dense_50/MatMul/ReadVariableOp:Z V
3
_output_shapes!
:џџџџџџџџџ@@

_user_specified_nameinput

e
I__inference_reshape_100_layer_call_and_return_conditional_losses_12218568

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
Ю

H__inference_conv3d_232_layer_call_and_return_conditional_losses_12218673

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
7__inference_average_pooling3d_89_layer_call_fn_12219897

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
R__inference_average_pooling3d_89_layer_call_and_return_conditional_losses_122183402
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
Ю

H__inference_conv3d_231_layer_call_and_return_conditional_losses_12220113

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
Ѓ
ѓ
+__inference_model_50_layer_call_fn_12219438

inputs%
unknown: 
	unknown_0: '
	unknown_1: 
	unknown_2:'
	unknown_3:
	unknown_4:'
	unknown_5:
	unknown_6:
	unknown_7:@@
	unknown_8:@'
	unknown_9:

unknown_10:(

unknown_11:

unknown_12:(

unknown_13:

unknown_14:(

unknown_15:0 

unknown_16: (

unknown_17: 

unknown_18:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ@@*6
_read_only_resource_inputs
	
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *O
fJRH
F__inference_model_50_layer_call_and_return_conditional_losses_122187212
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџ@@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:џџџџџџџџџ@@: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:џџџџџџџџџ@@
 
_user_specified_nameinputs
 
ђ
+__inference_model_50_layer_call_fn_12219140	
input%
unknown: 
	unknown_0: '
	unknown_1: 
	unknown_2:'
	unknown_3:
	unknown_4:'
	unknown_5:
	unknown_6:
	unknown_7:@@
	unknown_8:@'
	unknown_9:

unknown_10:(

unknown_11:

unknown_12:(

unknown_13:

unknown_14:(

unknown_15:0 

unknown_16: (

unknown_17: 

unknown_18:
identityЂStatefulPartitionedCallџ
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:џџџџџџџџџ@@*6
_read_only_resource_inputs
	
*8
config_proto(&

CPU

GPU2 *0,1,2,3J 8 *O
fJRH
F__inference_model_50_layer_call_and_return_conditional_losses_122190522
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:џџџџџџџџџ@@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:џџџџџџџџџ@@: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
3
_output_shapes!
:џџџџџџџџџ@@

_user_specified_nameinput
щ
J
.__inference_reshape_100_layer_call_fn_12220021

inputs
identityв
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
GPU2 *0,1,2,3J 8 *R
fMRK
I__inference_reshape_100_layer_call_and_return_conditional_losses_122185682
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
С
І
-__inference_conv3d_228_layer_call_fn_12219929

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
H__inference_conv3d_228_layer_call_and_return_conditional_losses_122185132
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
	
n
R__inference_average_pooling3d_90_layer_call_and_return_conditional_losses_12218527

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
з	
q
Q__inference_range_conversion_50_layer_call_and_return_conditional_losses_12218440

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
:џџџџџџџџџ@@2
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
:џџџџџџџџџ@@2	
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
:џџџџџџџџџ@@2
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
:џџџџџџџџџ@@2
addg
IdentityIdentityadd:z:0*
T0*3
_output_shapes!
:џџџџџџџџџ@@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ@@:_ [
3
_output_shapes!
:џџџџџџџџџ@@
$
_user_specified_name
parameters
Ю

H__inference_conv3d_227_layer_call_and_return_conditional_losses_12219892

inputs<
conv3d_readvariableop_resource: -
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂConv3D/ReadVariableOp
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
: *
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
#:џџџџџџџџџ   : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:џџџџџџџџџ   
 
_user_specified_nameinputs
Ю

H__inference_conv3d_229_layer_call_and_return_conditional_losses_12218540

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
-__inference_conv3d_227_layer_call_fn_12219881

inputs%
unknown: 
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
H__inference_conv3d_227_layer_call_and_return_conditional_losses_122184862
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
#:џџџџџџџџџ   : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:џџџџџџџџџ   
 
_user_specified_nameinputs
ф

n
R__inference_average_pooling3d_90_layer_call_and_return_conditional_losses_12218370

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
ф

n
R__inference_average_pooling3d_91_layer_call_and_return_conditional_losses_12218400

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

S
7__inference_average_pooling3d_91_layer_call_fn_12219998

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
R__inference_average_pooling3d_91_layer_call_and_return_conditional_losses_122185542
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
serving_default_input:0џџџџџџџџџ@@J

conv3d_234<
StatefulPartitionedCall:0џџџџџџџџџ@@tensorflow/serving/predict:УІ
з
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
layer_with_weights-3
layer-11
layer-12
layer-13
layer_with_weights-4
layer-14
layer-15
layer-16
layer-17
layer-18
layer-19
layer_with_weights-5
layer-20
layer-21
layer-22
layer-23
layer-24
layer_with_weights-6
layer-25
layer-26
layer-27
layer-28
layer-29
layer_with_weights-7
layer-30
 layer-31
!layer-32
"layer-33
#layer-34
$layer_with_weights-8
$layer-35
%layer_with_weights-9
%layer-36
&regularization_losses
'	variables
(trainable_variables
)	keras_api
*
signatures
№__call__
+ё&call_and_return_all_conditional_losses
ђ_default_save_signature"
_tf_keras_network
"
_tf_keras_input_layer
(
+	keras_api"
_tf_keras_layer
Ї
,regularization_losses
-	variables
.trainable_variables
/	keras_api
ѓ__call__
+є&call_and_return_all_conditional_losses"
_tf_keras_layer
(
0	keras_api"
_tf_keras_layer
(
1	keras_api"
_tf_keras_layer
Н

2kernel
3bias
4regularization_losses
5	variables
6trainable_variables
7	keras_api
ѕ__call__
+і&call_and_return_all_conditional_losses"
_tf_keras_layer
Ї
8regularization_losses
9	variables
:trainable_variables
;	keras_api
ї__call__
+ј&call_and_return_all_conditional_losses"
_tf_keras_layer
Н

<kernel
=bias
>regularization_losses
?	variables
@trainable_variables
A	keras_api
љ__call__
+њ&call_and_return_all_conditional_losses"
_tf_keras_layer
Ї
Bregularization_losses
C	variables
Dtrainable_variables
E	keras_api
ћ__call__
+ќ&call_and_return_all_conditional_losses"
_tf_keras_layer
Н

Fkernel
Gbias
Hregularization_losses
I	variables
Jtrainable_variables
K	keras_api
§__call__
+ў&call_and_return_all_conditional_losses"
_tf_keras_layer
Ї
Lregularization_losses
M	variables
Ntrainable_variables
O	keras_api
џ__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
Н

Pkernel
Qbias
Rregularization_losses
S	variables
Ttrainable_variables
U	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
Ї
Vregularization_losses
W	variables
Xtrainable_variables
Y	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
Ї
Zregularization_losses
[	variables
\trainable_variables
]	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
Н

^kernel
_bias
`regularization_losses
a	variables
btrainable_variables
c	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
Ї
dregularization_losses
e	variables
ftrainable_variables
g	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
(
h	keras_api"
_tf_keras_layer
(
i	keras_api"
_tf_keras_layer
(
j	keras_api"
_tf_keras_layer
(
k	keras_api"
_tf_keras_layer
Н

lkernel
mbias
nregularization_losses
o	variables
ptrainable_variables
q	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
(
r	keras_api"
_tf_keras_layer
(
s	keras_api"
_tf_keras_layer
(
t	keras_api"
_tf_keras_layer
(
u	keras_api"
_tf_keras_layer
Н

vkernel
wbias
xregularization_losses
y	variables
ztrainable_variables
{	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
(
|	keras_api"
_tf_keras_layer
(
}	keras_api"
_tf_keras_layer
(
~	keras_api"
_tf_keras_layer
(
	keras_api"
_tf_keras_layer
У
kernel
	bias
regularization_losses
	variables
trainable_variables
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
)
	keras_api"
_tf_keras_layer
)
	keras_api"
_tf_keras_layer
)
	keras_api"
_tf_keras_layer
)
	keras_api"
_tf_keras_layer
У
kernel
	bias
regularization_losses
	variables
trainable_variables
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
У
kernel
	bias
regularization_losses
	variables
trainable_variables
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
М
20
31
<2
=3
F4
G5
P6
Q7
^8
_9
l10
m11
v12
w13
14
15
16
17
18
19"
trackable_list_wrapper
М
20
31
<2
=3
F4
G5
P6
Q7
^8
_9
l10
m11
v12
w13
14
15
16
17
18
19"
trackable_list_wrapper
г
 layer_regularization_losses
layers
&regularization_losses
layer_metrics
'	variables
non_trainable_variables
(trainable_variables
metrics
№__call__
ђ_default_save_signature
+ё&call_and_return_all_conditional_losses
'ё"call_and_return_conditional_losses"
_generic_user_object
-
serving_default"
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
 layer_regularization_losses
layers
,regularization_losses
layer_metrics
-	variables
non_trainable_variables
.trainable_variables
metrics
ѓ__call__
+є&call_and_return_all_conditional_losses
'є"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
1:/  2conv3d_226/kernel
:  2conv3d_226/bias
 "
trackable_list_wrapper
.
20
31"
trackable_list_wrapper
.
20
31"
trackable_list_wrapper
Е
  layer_regularization_losses
Ёlayers
4regularization_losses
Ђlayer_metrics
5	variables
Ѓnon_trainable_variables
6trainable_variables
Єmetrics
ѕ__call__
+і&call_and_return_all_conditional_losses
'і"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Е
 Ѕlayer_regularization_losses
Іlayers
8regularization_losses
Їlayer_metrics
9	variables
Јnon_trainable_variables
:trainable_variables
Љmetrics
ї__call__
+ј&call_and_return_all_conditional_losses
'ј"call_and_return_conditional_losses"
_generic_user_object
1:/  2conv3d_227/kernel
: 2conv3d_227/bias
 "
trackable_list_wrapper
.
<0
=1"
trackable_list_wrapper
.
<0
=1"
trackable_list_wrapper
Е
 Њlayer_regularization_losses
Ћlayers
>regularization_losses
Ќlayer_metrics
?	variables
­non_trainable_variables
@trainable_variables
Ўmetrics
љ__call__
+њ&call_and_return_all_conditional_losses
'њ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Е
 Џlayer_regularization_losses
Аlayers
Bregularization_losses
Бlayer_metrics
C	variables
Вnon_trainable_variables
Dtrainable_variables
Гmetrics
ћ__call__
+ќ&call_and_return_all_conditional_losses
'ќ"call_and_return_conditional_losses"
_generic_user_object
1:/ 2conv3d_228/kernel
: 2conv3d_228/bias
 "
trackable_list_wrapper
.
F0
G1"
trackable_list_wrapper
.
F0
G1"
trackable_list_wrapper
Е
 Дlayer_regularization_losses
Еlayers
Hregularization_losses
Жlayer_metrics
I	variables
Зnon_trainable_variables
Jtrainable_variables
Иmetrics
§__call__
+ў&call_and_return_all_conditional_losses
'ў"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Е
 Йlayer_regularization_losses
Кlayers
Lregularization_losses
Лlayer_metrics
M	variables
Мnon_trainable_variables
Ntrainable_variables
Нmetrics
џ__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
1:/ 2conv3d_229/kernel
: 2conv3d_229/bias
 "
trackable_list_wrapper
.
P0
Q1"
trackable_list_wrapper
.
P0
Q1"
trackable_list_wrapper
Е
 Оlayer_regularization_losses
Пlayers
Rregularization_losses
Рlayer_metrics
S	variables
Сnon_trainable_variables
Ttrainable_variables
Тmetrics
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Е
 Уlayer_regularization_losses
Фlayers
Vregularization_losses
Хlayer_metrics
W	variables
Цnon_trainable_variables
Xtrainable_variables
Чmetrics
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Е
 Шlayer_regularization_losses
Щlayers
Zregularization_losses
Ъlayer_metrics
[	variables
Ыnon_trainable_variables
\trainable_variables
Ьmetrics
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
#:!@@ 2dense_50/kernel
:@ 2dense_50/bias
 "
trackable_list_wrapper
.
^0
_1"
trackable_list_wrapper
.
^0
_1"
trackable_list_wrapper
Е
 Эlayer_regularization_losses
Юlayers
`regularization_losses
Яlayer_metrics
a	variables
аnon_trainable_variables
btrainable_variables
бmetrics
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Е
 вlayer_regularization_losses
гlayers
dregularization_losses
дlayer_metrics
e	variables
еnon_trainable_variables
ftrainable_variables
жmetrics
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
1:/ 2conv3d_230/kernel
: 2conv3d_230/bias
 "
trackable_list_wrapper
.
l0
m1"
trackable_list_wrapper
.
l0
m1"
trackable_list_wrapper
Е
 зlayer_regularization_losses
иlayers
nregularization_losses
йlayer_metrics
o	variables
кnon_trainable_variables
ptrainable_variables
лmetrics
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
1:/ 2conv3d_231/kernel
: 2conv3d_231/bias
 "
trackable_list_wrapper
.
v0
w1"
trackable_list_wrapper
.
v0
w1"
trackable_list_wrapper
Е
 мlayer_regularization_losses
нlayers
xregularization_losses
оlayer_metrics
y	variables
пnon_trainable_variables
ztrainable_variables
рmetrics
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
1:/ 2conv3d_232/kernel
: 2conv3d_232/bias
 "
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
И
 сlayer_regularization_losses
тlayers
regularization_losses
уlayer_metrics
	variables
фnon_trainable_variables
trainable_variables
хmetrics
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
1:/0  2conv3d_233/kernel
:  2conv3d_233/bias
 "
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
И
 цlayer_regularization_losses
чlayers
regularization_losses
шlayer_metrics
	variables
щnon_trainable_variables
trainable_variables
ъmetrics
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
1:/  2conv3d_234/kernel
: 2conv3d_234/bias
 "
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
И
 ыlayer_regularization_losses
ьlayers
regularization_losses
эlayer_metrics
	variables
юnon_trainable_variables
trainable_variables
яmetrics
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
О
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
30
 31
!32
"33
#34
$35
%36"
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
њ2ї
+__inference_model_50_layer_call_fn_12218764
+__inference_model_50_layer_call_fn_12219438
+__inference_model_50_layer_call_fn_12219483
+__inference_model_50_layer_call_fn_12219140Р
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
F__inference_model_50_layer_call_and_return_conditional_losses_12219645
F__inference_model_50_layer_call_and_return_conditional_losses_12219807
F__inference_model_50_layer_call_and_return_conditional_losses_12219243
F__inference_model_50_layer_call_and_return_conditional_losses_12219346Р
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
#__inference__wrapped_model_12218297input"
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
6__inference_range_conversion_50_layer_call_fn_12219812І
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
Q__inference_range_conversion_50_layer_call_and_return_conditional_losses_12219824І
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
-__inference_conv3d_226_layer_call_fn_12219833Ђ
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
H__inference_conv3d_226_layer_call_and_return_conditional_losses_12219844Ђ
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
7__inference_average_pooling3d_88_layer_call_fn_12219849
7__inference_average_pooling3d_88_layer_call_fn_12219854Ђ
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
R__inference_average_pooling3d_88_layer_call_and_return_conditional_losses_12219863
R__inference_average_pooling3d_88_layer_call_and_return_conditional_losses_12219872Ђ
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
-__inference_conv3d_227_layer_call_fn_12219881Ђ
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
H__inference_conv3d_227_layer_call_and_return_conditional_losses_12219892Ђ
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
7__inference_average_pooling3d_89_layer_call_fn_12219897
7__inference_average_pooling3d_89_layer_call_fn_12219902Ђ
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
R__inference_average_pooling3d_89_layer_call_and_return_conditional_losses_12219911
R__inference_average_pooling3d_89_layer_call_and_return_conditional_losses_12219920Ђ
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
-__inference_conv3d_228_layer_call_fn_12219929Ђ
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
H__inference_conv3d_228_layer_call_and_return_conditional_losses_12219940Ђ
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
7__inference_average_pooling3d_90_layer_call_fn_12219945
7__inference_average_pooling3d_90_layer_call_fn_12219950Ђ
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
R__inference_average_pooling3d_90_layer_call_and_return_conditional_losses_12219959
R__inference_average_pooling3d_90_layer_call_and_return_conditional_losses_12219968Ђ
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
-__inference_conv3d_229_layer_call_fn_12219977Ђ
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
H__inference_conv3d_229_layer_call_and_return_conditional_losses_12219988Ђ
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
7__inference_average_pooling3d_91_layer_call_fn_12219993
7__inference_average_pooling3d_91_layer_call_fn_12219998Ђ
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
R__inference_average_pooling3d_91_layer_call_and_return_conditional_losses_12220007
R__inference_average_pooling3d_91_layer_call_and_return_conditional_losses_12220016Ђ
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
.__inference_reshape_100_layer_call_fn_12220021Ђ
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
I__inference_reshape_100_layer_call_and_return_conditional_losses_12220033Ђ
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
+__inference_dense_50_layer_call_fn_12220042Ђ
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
F__inference_dense_50_layer_call_and_return_conditional_losses_12220053Ђ
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
.__inference_reshape_101_layer_call_fn_12220058Ђ
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
I__inference_reshape_101_layer_call_and_return_conditional_losses_12220073Ђ
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
-__inference_conv3d_230_layer_call_fn_12220082Ђ
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
H__inference_conv3d_230_layer_call_and_return_conditional_losses_12220093Ђ
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
-__inference_conv3d_231_layer_call_fn_12220102Ђ
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
H__inference_conv3d_231_layer_call_and_return_conditional_losses_12220113Ђ
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
-__inference_conv3d_232_layer_call_fn_12220122Ђ
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
H__inference_conv3d_232_layer_call_and_return_conditional_losses_12220133Ђ
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
-__inference_conv3d_233_layer_call_fn_12220142Ђ
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
H__inference_conv3d_233_layer_call_and_return_conditional_losses_12220153Ђ
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
-__inference_conv3d_234_layer_call_fn_12220162Ђ
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
H__inference_conv3d_234_layer_call_and_return_conditional_losses_12220172Ђ
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
&__inference_signature_wrapper_12219393input"
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
 Х
#__inference__wrapped_model_1221829723<=FGPQ^_lmvw:Ђ7
0Ђ-
+(
inputџџџџџџџџџ@@
Њ "CЊ@
>

conv3d_2340-

conv3d_234џџџџџџџџџ@@
R__inference_average_pooling3d_88_layer_call_and_return_conditional_losses_12219863И_Ђ\
UЂR
PM
inputsAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "UЂR
KH
0Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Ц
R__inference_average_pooling3d_88_layer_call_and_return_conditional_losses_12219872p;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ @@
Њ "1Ђ.
'$
0џџџџџџџџџ   
 ч
7__inference_average_pooling3d_88_layer_call_fn_12219849Ћ_Ђ\
UЂR
PM
inputsAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "HEAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
7__inference_average_pooling3d_88_layer_call_fn_12219854c;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ @@
Њ "$!џџџџџџџџџ   
R__inference_average_pooling3d_89_layer_call_and_return_conditional_losses_12219911И_Ђ\
UЂR
PM
inputsAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "UЂR
KH
0Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Ц
R__inference_average_pooling3d_89_layer_call_and_return_conditional_losses_12219920p;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ  
Њ "1Ђ.
'$
0џџџџџџџџџ
 ч
7__inference_average_pooling3d_89_layer_call_fn_12219897Ћ_Ђ\
UЂR
PM
inputsAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "HEAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
7__inference_average_pooling3d_89_layer_call_fn_12219902c;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ  
Њ "$!џџџџџџџџџ
R__inference_average_pooling3d_90_layer_call_and_return_conditional_losses_12219959И_Ђ\
UЂR
PM
inputsAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "UЂR
KH
0Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Ц
R__inference_average_pooling3d_90_layer_call_and_return_conditional_losses_12219968p;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ
Њ "1Ђ.
'$
0џџџџџџџџџ
 ч
7__inference_average_pooling3d_90_layer_call_fn_12219945Ћ_Ђ\
UЂR
PM
inputsAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "HEAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
7__inference_average_pooling3d_90_layer_call_fn_12219950c;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ
Њ "$!џџџџџџџџџ
R__inference_average_pooling3d_91_layer_call_and_return_conditional_losses_12220007И_Ђ\
UЂR
PM
inputsAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "UЂR
KH
0Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Ц
R__inference_average_pooling3d_91_layer_call_and_return_conditional_losses_12220016p;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ
Њ "1Ђ.
'$
0џџџџџџџџџ
 ч
7__inference_average_pooling3d_91_layer_call_fn_12219993Ћ_Ђ\
UЂR
PM
inputsAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "HEAџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
7__inference_average_pooling3d_91_layer_call_fn_12219998c;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ
Њ "$!џџџџџџџџџР
H__inference_conv3d_226_layer_call_and_return_conditional_losses_12219844t23;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ@@
Њ "1Ђ.
'$
0џџџџџџџџџ @@
 
-__inference_conv3d_226_layer_call_fn_12219833g23;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ@@
Њ "$!џџџџџџџџџ @@Р
H__inference_conv3d_227_layer_call_and_return_conditional_losses_12219892t<=;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ   
Њ "1Ђ.
'$
0џџџџџџџџџ  
 
-__inference_conv3d_227_layer_call_fn_12219881g<=;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ   
Њ "$!џџџџџџџџџ  Р
H__inference_conv3d_228_layer_call_and_return_conditional_losses_12219940tFG;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ
Њ "1Ђ.
'$
0џџџџџџџџџ
 
-__inference_conv3d_228_layer_call_fn_12219929gFG;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ
Њ "$!џџџџџџџџџР
H__inference_conv3d_229_layer_call_and_return_conditional_losses_12219988tPQ;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ
Њ "1Ђ.
'$
0џџџџџџџџџ
 
-__inference_conv3d_229_layer_call_fn_12219977gPQ;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ
Њ "$!џџџџџџџџџР
H__inference_conv3d_230_layer_call_and_return_conditional_losses_12220093tlm;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ
Њ "1Ђ.
'$
0џџџџџџџџџ
 
-__inference_conv3d_230_layer_call_fn_12220082glm;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ
Њ "$!џџџџџџџџџР
H__inference_conv3d_231_layer_call_and_return_conditional_losses_12220113tvw;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ
Њ "1Ђ.
'$
0џџџџџџџџџ
 
-__inference_conv3d_231_layer_call_fn_12220102gvw;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ
Њ "$!џџџџџџџџџТ
H__inference_conv3d_232_layer_call_and_return_conditional_losses_12220133v;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ  
Њ "1Ђ.
'$
0џџџџџџџџџ  
 
-__inference_conv3d_232_layer_call_fn_12220122i;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ  
Њ "$!џџџџџџџџџ  Т
H__inference_conv3d_233_layer_call_and_return_conditional_losses_12220153v;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ0@@
Њ "1Ђ.
'$
0џџџџџџџџџ @@
 
-__inference_conv3d_233_layer_call_fn_12220142i;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ0@@
Њ "$!џџџџџџџџџ @@Т
H__inference_conv3d_234_layer_call_and_return_conditional_losses_12220172v;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ @@
Њ "1Ђ.
'$
0џџџџџџџџџ@@
 
-__inference_conv3d_234_layer_call_fn_12220162i;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ @@
Њ "$!џџџџџџџџџ@@І
F__inference_dense_50_layer_call_and_return_conditional_losses_12220053\^_/Ђ,
%Ђ"
 
inputsџџџџџџџџџ@
Њ "%Ђ"

0џџџџџџџџџ@
 ~
+__inference_dense_50_layer_call_fn_12220042O^_/Ђ,
%Ђ"
 
inputsџџџџџџџџџ@
Њ "џџџџџџџџџ@о
F__inference_model_50_layer_call_and_return_conditional_losses_1221924323<=FGPQ^_lmvwBЂ?
8Ђ5
+(
inputџџџџџџџџџ@@
p 

 
Њ "1Ђ.
'$
0џџџџџџџџџ@@
 о
F__inference_model_50_layer_call_and_return_conditional_losses_1221934623<=FGPQ^_lmvwBЂ?
8Ђ5
+(
inputџџџџџџџџџ@@
p

 
Њ "1Ђ.
'$
0џџџџџџџџџ@@
 п
F__inference_model_50_layer_call_and_return_conditional_losses_1221964523<=FGPQ^_lmvwCЂ@
9Ђ6
,)
inputsџџџџџџџџџ@@
p 

 
Њ "1Ђ.
'$
0џџџџџџџџџ@@
 п
F__inference_model_50_layer_call_and_return_conditional_losses_1221980723<=FGPQ^_lmvwCЂ@
9Ђ6
,)
inputsџџџџџџџџџ@@
p

 
Њ "1Ђ.
'$
0џџџџџџџџџ@@
 Ж
+__inference_model_50_layer_call_fn_1221876423<=FGPQ^_lmvwBЂ?
8Ђ5
+(
inputџџџџџџџџџ@@
p 

 
Њ "$!џџџџџџџџџ@@Ж
+__inference_model_50_layer_call_fn_1221914023<=FGPQ^_lmvwBЂ?
8Ђ5
+(
inputџџџџџџџџџ@@
p

 
Њ "$!џџџџџџџџџ@@З
+__inference_model_50_layer_call_fn_1221943823<=FGPQ^_lmvwCЂ@
9Ђ6
,)
inputsџџџџџџџџџ@@
p 

 
Њ "$!џџџџџџџџџ@@З
+__inference_model_50_layer_call_fn_1221948323<=FGPQ^_lmvwCЂ@
9Ђ6
,)
inputsџџџџџџџџџ@@
p

 
Њ "$!џџџџџџџџџ@@Щ
Q__inference_range_conversion_50_layer_call_and_return_conditional_losses_12219824t?Ђ<
5Ђ2
0-

parametersџџџџџџџџџ@@
Њ "1Ђ.
'$
0џџџџџџџџџ@@
 Ё
6__inference_range_conversion_50_layer_call_fn_12219812g?Ђ<
5Ђ2
0-

parametersџџџџџџџџџ@@
Њ "$!џџџџџџџџџ@@Б
I__inference_reshape_100_layer_call_and_return_conditional_losses_12220033d;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ
Њ "%Ђ"

0џџџџџџџџџ@
 
.__inference_reshape_100_layer_call_fn_12220021W;Ђ8
1Ђ.
,)
inputsџџџџџџџџџ
Њ "џџџџџџџџџ@Б
I__inference_reshape_101_layer_call_and_return_conditional_losses_12220073d/Ђ,
%Ђ"
 
inputsџџџџџџџџџ@
Њ "1Ђ.
'$
0џџџџџџџџџ
 
.__inference_reshape_101_layer_call_fn_12220058W/Ђ,
%Ђ"
 
inputsџџџџџџџџџ@
Њ "$!џџџџџџџџџб
&__inference_signature_wrapper_12219393І23<=FGPQ^_lmvwCЂ@
Ђ 
9Њ6
4
input+(
inputџџџџџџџџџ@@"CЊ@
>

conv3d_2340-

conv3d_234џџџџџџџџџ@@