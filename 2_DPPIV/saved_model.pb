ъў

з√
D
AddV2
x"T
y"T
z"T"
Ttype:
2	АР
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( И
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
Ы
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
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
В
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
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
E
Relu
features"T
activations"T"
Ttype:
2	
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
.
Rsqrt
x"T
y"T"
Ttype:

2
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
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
┴
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
executor_typestring Ии
@
StaticRegexFullMatch	
input

output
"
patternstring
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
 И"serve*2.9.22v2.9.1-132-g18960c44ad38бя
В
SGD/fc2/bias/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameSGD/fc2/bias/momentum
{
)SGD/fc2/bias/momentum/Read/ReadVariableOpReadVariableOpSGD/fc2/bias/momentum*
_output_shapes
:*
dtype0
К
SGD/fc2/kernel/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*(
shared_nameSGD/fc2/kernel/momentum
Г
+SGD/fc2/kernel/momentum/Read/ReadVariableOpReadVariableOpSGD/fc2/kernel/momentum*
_output_shapes

:@*
dtype0
В
SGD/fc1/bias/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameSGD/fc1/bias/momentum
{
)SGD/fc1/bias/momentum/Read/ReadVariableOpReadVariableOpSGD/fc1/bias/momentum*
_output_shapes
:@*
dtype0
Л
SGD/fc1/kernel/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А(@*(
shared_nameSGD/fc1/kernel/momentum
Д
+SGD/fc1/kernel/momentum/Read/ReadVariableOpReadVariableOpSGD/fc1/kernel/momentum*
_output_shapes
:	А(@*
dtype0
и
(SGD/batch_normalization_17/beta/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *9
shared_name*(SGD/batch_normalization_17/beta/momentum
б
<SGD/batch_normalization_17/beta/momentum/Read/ReadVariableOpReadVariableOp(SGD/batch_normalization_17/beta/momentum*
_output_shapes
: *
dtype0
к
)SGD/batch_normalization_17/gamma/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *:
shared_name+)SGD/batch_normalization_17/gamma/momentum
г
=SGD/batch_normalization_17/gamma/momentum/Read/ReadVariableOpReadVariableOp)SGD/batch_normalization_17/gamma/momentum*
_output_shapes
: *
dtype0
Т
SGD/layer_conv2/bias/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *.
shared_nameSGD/layer_conv2/bias/momentum
Л
1SGD/layer_conv2/bias/momentum/Read/ReadVariableOpReadVariableOpSGD/layer_conv2/bias/momentum*
_output_shapes
: *
dtype0
Ю
SGD/layer_conv2/kernel/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *0
shared_name!SGD/layer_conv2/kernel/momentum
Ч
3SGD/layer_conv2/kernel/momentum/Read/ReadVariableOpReadVariableOpSGD/layer_conv2/kernel/momentum*"
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
d
SGD/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name
SGD/iter
]
SGD/iter/Read/ReadVariableOpReadVariableOpSGD/iter*
_output_shapes
: *
dtype0	
d
momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
momentum
]
momentum/Read/ReadVariableOpReadVariableOpmomentum*
_output_shapes
: *
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
^
decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedecay
W
decay/Read/ReadVariableOpReadVariableOpdecay*
_output_shapes
: *
dtype0
h
fc2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
fc2/bias
a
fc2/bias/Read/ReadVariableOpReadVariableOpfc2/bias*
_output_shapes
:*
dtype0
p

fc2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*
shared_name
fc2/kernel
i
fc2/kernel/Read/ReadVariableOpReadVariableOp
fc2/kernel*
_output_shapes

:@*
dtype0
h
fc1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_name
fc1/bias
a
fc1/bias/Read/ReadVariableOpReadVariableOpfc1/bias*
_output_shapes
:@*
dtype0
q

fc1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А(@*
shared_name
fc1/kernel
j
fc1/kernel/Read/ReadVariableOpReadVariableOp
fc1/kernel*
_output_shapes
:	А(@*
dtype0
д
&batch_normalization_17/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *7
shared_name(&batch_normalization_17/moving_variance
Э
:batch_normalization_17/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_17/moving_variance*
_output_shapes
: *
dtype0
Ь
"batch_normalization_17/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"batch_normalization_17/moving_mean
Х
6batch_normalization_17/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_17/moving_mean*
_output_shapes
: *
dtype0
О
batch_normalization_17/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *,
shared_namebatch_normalization_17/beta
З
/batch_normalization_17/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_17/beta*
_output_shapes
: *
dtype0
Р
batch_normalization_17/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *-
shared_namebatch_normalization_17/gamma
Й
0batch_normalization_17/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_17/gamma*
_output_shapes
: *
dtype0
x
layer_conv2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_namelayer_conv2/bias
q
$layer_conv2/bias/Read/ReadVariableOpReadVariableOplayer_conv2/bias*
_output_shapes
: *
dtype0
Д
layer_conv2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_namelayer_conv2/kernel
}
&layer_conv2/kernel/Read/ReadVariableOpReadVariableOplayer_conv2/kernel*"
_output_shapes
: *
dtype0

NoOpNoOp
єJ
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*оJ
valueдJBбJ BЪJ
╢
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer-4
layer-5
layer-6
layer_with_weights-2
layer-7
	layer-8

layer_with_weights-3

layer-9
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
* 
╚
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
 _jit_compiled_convolution_op*
╒
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses
#axis
	$gamma
%beta
&moving_mean
'moving_variance*
О
(	variables
)trainable_variables
*regularization_losses
+	keras_api
,__call__
*-&call_and_return_all_conditional_losses* 
О
.	variables
/trainable_variables
0regularization_losses
1	keras_api
2__call__
*3&call_and_return_all_conditional_losses* 
е
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses
:_random_generator* 
О
;	variables
<trainable_variables
=regularization_losses
>	keras_api
?__call__
*@&call_and_return_all_conditional_losses* 
ж
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
E__call__
*F&call_and_return_all_conditional_losses

Gkernel
Hbias*
е
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
M__call__
*N&call_and_return_all_conditional_losses
O_random_generator* 
ж
P	variables
Qtrainable_variables
Rregularization_losses
S	keras_api
T__call__
*U&call_and_return_all_conditional_losses

Vkernel
Wbias*
J
0
1
$2
%3
&4
'5
G6
H7
V8
W9*
<
0
1
$2
%3
G4
H5
V6
W7*
* 
░
Xnon_trainable_variables

Ylayers
Zmetrics
[layer_regularization_losses
\layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
]trace_0
^trace_1
_trace_2
`trace_3* 
6
atrace_0
btrace_1
ctrace_2
dtrace_3* 
* 
┬
	edecay
flearning_rate
gmomentum
hitermomentum║momentum╗$momentum╝%momentum╜Gmomentum╛Hmomentum┐Vmomentum└Wmomentum┴*

iserving_default* 

0
1*

0
1*
* 
У
jnon_trainable_variables

klayers
lmetrics
mlayer_regularization_losses
nlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

otrace_0* 

ptrace_0* 
b\
VARIABLE_VALUElayer_conv2/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUElayer_conv2/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
$0
%1
&2
'3*

$0
%1*
* 
У
qnon_trainable_variables

rlayers
smetrics
tlayer_regularization_losses
ulayer_metrics
	variables
trainable_variables
regularization_losses
!__call__
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses*

vtrace_0
wtrace_1* 

xtrace_0
ytrace_1* 
* 
ke
VARIABLE_VALUEbatch_normalization_17/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_17/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_17/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_17/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
С
znon_trainable_variables

{layers
|metrics
}layer_regularization_losses
~layer_metrics
(	variables
)trainable_variables
*regularization_losses
,__call__
*-&call_and_return_all_conditional_losses
&-"call_and_return_conditional_losses* 

trace_0* 

Аtrace_0* 
* 
* 
* 
Ц
Бnon_trainable_variables
Вlayers
Гmetrics
 Дlayer_regularization_losses
Еlayer_metrics
.	variables
/trainable_variables
0regularization_losses
2__call__
*3&call_and_return_all_conditional_losses
&3"call_and_return_conditional_losses* 

Жtrace_0* 

Зtrace_0* 
* 
* 
* 
Ц
Иnon_trainable_variables
Йlayers
Кmetrics
 Лlayer_regularization_losses
Мlayer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses* 

Нtrace_0
Оtrace_1* 

Пtrace_0
Рtrace_1* 
* 
* 
* 
* 
Ц
Сnon_trainable_variables
Тlayers
Уmetrics
 Фlayer_regularization_losses
Хlayer_metrics
;	variables
<trainable_variables
=regularization_losses
?__call__
*@&call_and_return_all_conditional_losses
&@"call_and_return_conditional_losses* 

Цtrace_0* 

Чtrace_0* 

G0
H1*

G0
H1*
* 
Ш
Шnon_trainable_variables
Щlayers
Ъmetrics
 Ыlayer_regularization_losses
Ьlayer_metrics
A	variables
Btrainable_variables
Cregularization_losses
E__call__
*F&call_and_return_all_conditional_losses
&F"call_and_return_conditional_losses*

Эtrace_0* 

Юtrace_0* 
ZT
VARIABLE_VALUE
fc1/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEfc1/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
Ц
Яnon_trainable_variables
аlayers
бmetrics
 вlayer_regularization_losses
гlayer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
M__call__
*N&call_and_return_all_conditional_losses
&N"call_and_return_conditional_losses* 

дtrace_0
еtrace_1* 

жtrace_0
зtrace_1* 
* 

V0
W1*

V0
W1*
* 
Ш
иnon_trainable_variables
йlayers
кmetrics
 лlayer_regularization_losses
мlayer_metrics
P	variables
Qtrainable_variables
Rregularization_losses
T__call__
*U&call_and_return_all_conditional_losses
&U"call_and_return_conditional_losses*

нtrace_0* 

оtrace_0* 
ZT
VARIABLE_VALUE
fc2/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEfc2/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*

&0
'1*
J
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
9*

п0
░1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
IC
VARIABLE_VALUEdecay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUElearning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEmomentum-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUESGD/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 

&0
'1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<
▒	variables
▓	keras_api

│total

┤count*
M
╡	variables
╢	keras_api

╖total

╕count
╣
_fn_kwargs*

│0
┤1*

▒	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

╖0
╕1*

╡	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
УМ
VARIABLE_VALUESGD/layer_conv2/kernel/momentumYlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE*
ПИ
VARIABLE_VALUESGD/layer_conv2/bias/momentumWlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE*
ЬХ
VARIABLE_VALUE)SGD/batch_normalization_17/gamma/momentumXlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE*
ЪУ
VARIABLE_VALUE(SGD/batch_normalization_17/beta/momentumWlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE*
ЛД
VARIABLE_VALUESGD/fc1/kernel/momentumYlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE*
ЗА
VARIABLE_VALUESGD/fc1/bias/momentumWlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE*
ЛД
VARIABLE_VALUESGD/fc2/kernel/momentumYlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE*
ЗА
VARIABLE_VALUESGD/fc2/bias/momentumWlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE*
Д
serving_default_input_9Placeholder*,
_output_shapes
:         └*
dtype0*!
shape:         └
Я
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_9layer_conv2/kernellayer_conv2/bias&batch_normalization_17/moving_variancebatch_normalization_17/gamma"batch_normalization_17/moving_meanbatch_normalization_17/beta
fc1/kernelfc1/bias
fc2/kernelfc2/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8В *-
f(R&
$__inference_signature_wrapper_274753
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
╒

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename&layer_conv2/kernel/Read/ReadVariableOp$layer_conv2/bias/Read/ReadVariableOp0batch_normalization_17/gamma/Read/ReadVariableOp/batch_normalization_17/beta/Read/ReadVariableOp6batch_normalization_17/moving_mean/Read/ReadVariableOp:batch_normalization_17/moving_variance/Read/ReadVariableOpfc1/kernel/Read/ReadVariableOpfc1/bias/Read/ReadVariableOpfc2/kernel/Read/ReadVariableOpfc2/bias/Read/ReadVariableOpdecay/Read/ReadVariableOp!learning_rate/Read/ReadVariableOpmomentum/Read/ReadVariableOpSGD/iter/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp3SGD/layer_conv2/kernel/momentum/Read/ReadVariableOp1SGD/layer_conv2/bias/momentum/Read/ReadVariableOp=SGD/batch_normalization_17/gamma/momentum/Read/ReadVariableOp<SGD/batch_normalization_17/beta/momentum/Read/ReadVariableOp+SGD/fc1/kernel/momentum/Read/ReadVariableOp)SGD/fc1/bias/momentum/Read/ReadVariableOp+SGD/fc2/kernel/momentum/Read/ReadVariableOp)SGD/fc2/bias/momentum/Read/ReadVariableOpConst*'
Tin 
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *(
f#R!
__inference__traced_save_275272
╚
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamelayer_conv2/kernellayer_conv2/biasbatch_normalization_17/gammabatch_normalization_17/beta"batch_normalization_17/moving_mean&batch_normalization_17/moving_variance
fc1/kernelfc1/bias
fc2/kernelfc2/biasdecaylearning_ratemomentumSGD/itertotal_1count_1totalcountSGD/layer_conv2/kernel/momentumSGD/layer_conv2/bias/momentum)SGD/batch_normalization_17/gamma/momentum(SGD/batch_normalization_17/beta/momentumSGD/fc1/kernel/momentumSGD/fc1/bias/momentumSGD/fc2/kernel/momentumSGD/fc2/bias/momentum*&
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *+
f&R$
"__inference__traced_restore_275360╕┌
Р
▒
R__inference_batch_normalization_17_layer_call_and_return_conditional_losses_274262

inputs/
!batchnorm_readvariableop_resource: 3
%batchnorm_mul_readvariableop_resource: 1
#batchnorm_readvariableop_1_resource: 1
#batchnorm_readvariableop_2_resource: 
identityИвbatchnorm/ReadVariableOpвbatchnorm/ReadVariableOp_1вbatchnorm/ReadVariableOp_2вbatchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
: *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
: P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
: ~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: p
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :                   z
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
: *
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
: z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
: *
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
: 
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :                   o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :                   ║
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:                   : : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :                   
 
_user_specified_nameinputs
Ь

e
F__inference_dropout_25_layer_call_and_return_conditional_losses_274529

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ЧЦЦ?i
dropout/MulMulinputsdropout/Const:output:0*
T0*,
_output_shapes
:         а C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:С
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*,
_output_shapes
:         а *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩ>л
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:         а t
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:         а n
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*,
_output_shapes
:         а ^
IdentityIdentitydropout/Mul_1:z:0*
T0*,
_output_shapes
:         а "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         а :T P
,
_output_shapes
:         а 
 
_user_specified_nameinputs
┘
d
F__inference_dropout_26_layer_call_and_return_conditional_losses_275139

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:         @[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:         @"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         @:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
Ъ

ё
?__inference_fc1_layer_call_and_return_conditional_losses_274406

inputs1
matmul_readvariableop_resource:	А(@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А(@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:         @a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:         @w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А(: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А(
 
_user_specified_nameinputs
▄
╥
7__inference_batch_normalization_17_layer_call_fn_274989

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identityИвStatefulPartitionedCallМ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                   *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *[
fVRT
R__inference_batch_normalization_17_layer_call_and_return_conditional_losses_274309|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :                   `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:                   : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :                   
 
_user_specified_nameinputs
╗
J
.__inference_activation_17_layer_call_fn_275048

inputs
identity╣
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         └ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_activation_17_layer_call_and_return_conditional_losses_274377e
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:         └ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         └ :T P
,
_output_shapes
:         └ 
 
_user_specified_nameinputs
л
F
*__inference_flatten_8_layer_call_fn_275098

inputs
identity▒
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А(* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_flatten_8_layer_call_and_return_conditional_losses_274393a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         А("
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         а :T P
,
_output_shapes
:         а 
 
_user_specified_nameinputs
┴
a
E__inference_flatten_8_layer_call_and_return_conditional_losses_275104

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"       ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         А(Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         А("
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         а :T P
,
_output_shapes
:         а 
 
_user_specified_nameinputs
└)
░
C__inference_Predict_layer_call_and_return_conditional_losses_274608

inputs(
layer_conv2_274578:  
layer_conv2_274580: +
batch_normalization_17_274583: +
batch_normalization_17_274585: +
batch_normalization_17_274587: +
batch_normalization_17_274589: 

fc1_274596:	А(@

fc1_274598:@

fc2_274602:@

fc2_274604:
identityИв.batch_normalization_17/StatefulPartitionedCallв"dropout_25/StatefulPartitionedCallв"dropout_26/StatefulPartitionedCallвfc1/StatefulPartitionedCallвfc2/StatefulPartitionedCallв#layer_conv2/StatefulPartitionedCallБ
#layer_conv2/StatefulPartitionedCallStatefulPartitionedCallinputslayer_conv2_274578layer_conv2_274580*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         └ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_layer_conv2_layer_call_and_return_conditional_losses_274357У
.batch_normalization_17/StatefulPartitionedCallStatefulPartitionedCall,layer_conv2/StatefulPartitionedCall:output:0batch_normalization_17_274583batch_normalization_17_274585batch_normalization_17_274587batch_normalization_17_274589*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         └ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *[
fVRT
R__inference_batch_normalization_17_layer_call_and_return_conditional_losses_274309°
activation_17/PartitionedCallPartitionedCall7batch_normalization_17/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         └ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_activation_17_layer_call_and_return_conditional_losses_274377▌
MaxPool2/PartitionedCallPartitionedCall&activation_17/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         а * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_MaxPool2_layer_call_and_return_conditional_losses_274332ь
"dropout_25/StatefulPartitionedCallStatefulPartitionedCall!MaxPool2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         а * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_25_layer_call_and_return_conditional_losses_274529р
flatten_8/PartitionedCallPartitionedCall+dropout_25/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А(* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_flatten_8_layer_call_and_return_conditional_losses_274393°
fc1/StatefulPartitionedCallStatefulPartitionedCall"flatten_8/PartitionedCall:output:0
fc1_274596
fc1_274598*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_fc1_layer_call_and_return_conditional_losses_274406П
"dropout_26/StatefulPartitionedCallStatefulPartitionedCall$fc1/StatefulPartitionedCall:output:0#^dropout_25/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_26_layer_call_and_return_conditional_losses_274490Б
fc2/StatefulPartitionedCallStatefulPartitionedCall+dropout_26/StatefulPartitionedCall:output:0
fc2_274602
fc2_274604*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_fc2_layer_call_and_return_conditional_losses_274430s
IdentityIdentity$fc2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         г
NoOpNoOp/^batch_normalization_17/StatefulPartitionedCall#^dropout_25/StatefulPartitionedCall#^dropout_26/StatefulPartitionedCall^fc1/StatefulPartitionedCall^fc2/StatefulPartitionedCall$^layer_conv2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:         └: : : : : : : : : : 2`
.batch_normalization_17/StatefulPartitionedCall.batch_normalization_17/StatefulPartitionedCall2H
"dropout_25/StatefulPartitionedCall"dropout_25/StatefulPartitionedCall2H
"dropout_26/StatefulPartitionedCall"dropout_26/StatefulPartitionedCall2:
fc1/StatefulPartitionedCallfc1/StatefulPartitionedCall2:
fc2/StatefulPartitionedCallfc2/StatefulPartitionedCall2J
#layer_conv2/StatefulPartitionedCall#layer_conv2/StatefulPartitionedCall:T P
,
_output_shapes
:         └
 
_user_specified_nameinputs
╡
G
+__inference_dropout_25_layer_call_fn_275071

inputs
identity╢
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         а * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_25_layer_call_and_return_conditional_losses_274385e
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:         а "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         а :T P
,
_output_shapes
:         а 
 
_user_specified_nameinputs
Їi
√
"__inference__traced_restore_275360
file_prefix9
#assignvariableop_layer_conv2_kernel: 1
#assignvariableop_1_layer_conv2_bias: =
/assignvariableop_2_batch_normalization_17_gamma: <
.assignvariableop_3_batch_normalization_17_beta: C
5assignvariableop_4_batch_normalization_17_moving_mean: G
9assignvariableop_5_batch_normalization_17_moving_variance: 0
assignvariableop_6_fc1_kernel:	А(@)
assignvariableop_7_fc1_bias:@/
assignvariableop_8_fc2_kernel:@)
assignvariableop_9_fc2_bias:#
assignvariableop_10_decay: +
!assignvariableop_11_learning_rate: &
assignvariableop_12_momentum: &
assignvariableop_13_sgd_iter:	 %
assignvariableop_14_total_1: %
assignvariableop_15_count_1: #
assignvariableop_16_total: #
assignvariableop_17_count: I
3assignvariableop_18_sgd_layer_conv2_kernel_momentum: ?
1assignvariableop_19_sgd_layer_conv2_bias_momentum: K
=assignvariableop_20_sgd_batch_normalization_17_gamma_momentum: J
<assignvariableop_21_sgd_batch_normalization_17_beta_momentum: >
+assignvariableop_22_sgd_fc1_kernel_momentum:	А(@7
)assignvariableop_23_sgd_fc1_bias_momentum:@=
+assignvariableop_24_sgd_fc2_kernel_momentum:@7
)assignvariableop_25_sgd_fc2_bias_momentum:
identity_27ИвAssignVariableOpвAssignVariableOp_1вAssignVariableOp_10вAssignVariableOp_11вAssignVariableOp_12вAssignVariableOp_13вAssignVariableOp_14вAssignVariableOp_15вAssignVariableOp_16вAssignVariableOp_17вAssignVariableOp_18вAssignVariableOp_19вAssignVariableOp_2вAssignVariableOp_20вAssignVariableOp_21вAssignVariableOp_22вAssignVariableOp_23вAssignVariableOp_24вAssignVariableOp_25вAssignVariableOp_3вAssignVariableOp_4вAssignVariableOp_5вAssignVariableOp_6вAssignVariableOp_7вAssignVariableOp_8вAssignVariableOp_9г
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*╔
value┐B╝B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHж
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*I
value@B>B B B B B B B B B B B B B B B B B B B B B B B B B B B ж
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*А
_output_shapesn
l:::::::::::::::::::::::::::*)
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:О
AssignVariableOpAssignVariableOp#assignvariableop_layer_conv2_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_1AssignVariableOp#assignvariableop_1_layer_conv2_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_2AssignVariableOp/assignvariableop_2_batch_normalization_17_gammaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:Э
AssignVariableOp_3AssignVariableOp.assignvariableop_3_batch_normalization_17_betaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:д
AssignVariableOp_4AssignVariableOp5assignvariableop_4_batch_normalization_17_moving_meanIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:и
AssignVariableOp_5AssignVariableOp9assignvariableop_5_batch_normalization_17_moving_varianceIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_6AssignVariableOpassignvariableop_6_fc1_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_7AssignVariableOpassignvariableop_7_fc1_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_8AssignVariableOpassignvariableop_8_fc2_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_9AssignVariableOpassignvariableop_9_fc2_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_10AssignVariableOpassignvariableop_10_decayIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_11AssignVariableOp!assignvariableop_11_learning_rateIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:Н
AssignVariableOp_12AssignVariableOpassignvariableop_12_momentumIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0	*
_output_shapes
:Н
AssignVariableOp_13AssignVariableOpassignvariableop_13_sgd_iterIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_14AssignVariableOpassignvariableop_14_total_1Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_15AssignVariableOpassignvariableop_15_count_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_16AssignVariableOpassignvariableop_16_totalIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_17AssignVariableOpassignvariableop_17_countIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:д
AssignVariableOp_18AssignVariableOp3assignvariableop_18_sgd_layer_conv2_kernel_momentumIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:в
AssignVariableOp_19AssignVariableOp1assignvariableop_19_sgd_layer_conv2_bias_momentumIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:о
AssignVariableOp_20AssignVariableOp=assignvariableop_20_sgd_batch_normalization_17_gamma_momentumIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:н
AssignVariableOp_21AssignVariableOp<assignvariableop_21_sgd_batch_normalization_17_beta_momentumIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_22AssignVariableOp+assignvariableop_22_sgd_fc1_kernel_momentumIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_23AssignVariableOp)assignvariableop_23_sgd_fc1_bias_momentumIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_24AssignVariableOp+assignvariableop_24_sgd_fc2_kernel_momentumIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_25AssignVariableOp)assignvariableop_25_sgd_fc2_bias_momentumIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 Л
Identity_26Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_27IdentityIdentity_26:output:0^NoOp_1*
T0*
_output_shapes
: °
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_27Identity_27:output:0*I
_input_shapes8
6: : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252(
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
Ш

ы
(__inference_Predict_layer_call_fn_274656
input_9
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: 
	unknown_5:	А(@
	unknown_6:@
	unknown_7:@
	unknown_8:
identityИвStatefulPartitionedCall┐
StatefulPartitionedCallStatefulPartitionedCallinput_9unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_Predict_layer_call_and_return_conditional_losses_274608o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:         └: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
,
_output_shapes
:         └
!
_user_specified_name	input_9
∙
Ц
G__inference_layer_conv2_layer_call_and_return_conditional_losses_274357

inputsA
+conv1d_expanddims_1_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityИвBiasAdd/ReadVariableOpв"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
¤        В
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:         └Т
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: *
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : а
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: н
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:         └ *
paddingSAME*
strides
Б
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*,
_output_shapes
:         └ *
squeeze_dims

¤        r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0В
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:         └ d
IdentityIdentityBiasAdd:output:0^NoOp*
T0*,
_output_shapes
:         └ Д
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         └: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:T P
,
_output_shapes
:         └
 
_user_specified_nameinputs
┼&
ц
C__inference_Predict_layer_call_and_return_conditional_losses_274437

inputs(
layer_conv2_274358:  
layer_conv2_274360: +
batch_normalization_17_274363: +
batch_normalization_17_274365: +
batch_normalization_17_274367: +
batch_normalization_17_274369: 

fc1_274407:	А(@

fc1_274409:@

fc2_274431:@

fc2_274433:
identityИв.batch_normalization_17/StatefulPartitionedCallвfc1/StatefulPartitionedCallвfc2/StatefulPartitionedCallв#layer_conv2/StatefulPartitionedCallБ
#layer_conv2/StatefulPartitionedCallStatefulPartitionedCallinputslayer_conv2_274358layer_conv2_274360*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         └ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_layer_conv2_layer_call_and_return_conditional_losses_274357Х
.batch_normalization_17/StatefulPartitionedCallStatefulPartitionedCall,layer_conv2/StatefulPartitionedCall:output:0batch_normalization_17_274363batch_normalization_17_274365batch_normalization_17_274367batch_normalization_17_274369*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         └ *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *[
fVRT
R__inference_batch_normalization_17_layer_call_and_return_conditional_losses_274262°
activation_17/PartitionedCallPartitionedCall7batch_normalization_17/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         └ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_activation_17_layer_call_and_return_conditional_losses_274377▌
MaxPool2/PartitionedCallPartitionedCall&activation_17/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         а * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_MaxPool2_layer_call_and_return_conditional_losses_274332▄
dropout_25/PartitionedCallPartitionedCall!MaxPool2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         а * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_25_layer_call_and_return_conditional_losses_274385╪
flatten_8/PartitionedCallPartitionedCall#dropout_25/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А(* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_flatten_8_layer_call_and_return_conditional_losses_274393°
fc1/StatefulPartitionedCallStatefulPartitionedCall"flatten_8/PartitionedCall:output:0
fc1_274407
fc1_274409*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_fc1_layer_call_and_return_conditional_losses_274406┌
dropout_26/PartitionedCallPartitionedCall$fc1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_26_layer_call_and_return_conditional_losses_274417∙
fc2/StatefulPartitionedCallStatefulPartitionedCall#dropout_26/PartitionedCall:output:0
fc2_274431
fc2_274433*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_fc2_layer_call_and_return_conditional_losses_274430s
IdentityIdentity$fc2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ┘
NoOpNoOp/^batch_normalization_17/StatefulPartitionedCall^fc1/StatefulPartitionedCall^fc2/StatefulPartitionedCall$^layer_conv2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:         └: : : : : : : : : : 2`
.batch_normalization_17/StatefulPartitionedCall.batch_normalization_17/StatefulPartitionedCall2:
fc1/StatefulPartitionedCallfc1/StatefulPartitionedCall2:
fc2/StatefulPartitionedCallfc2/StatefulPartitionedCall2J
#layer_conv2/StatefulPartitionedCall#layer_conv2/StatefulPartitionedCall:T P
,
_output_shapes
:         └
 
_user_specified_nameinputs
Ы

Ё
?__inference_fc2_layer_call_and_return_conditional_losses_274430

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:         `
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
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
Ёl
ч	
C__inference_Predict_layer_call_and_return_conditional_losses_274939

inputsM
7layer_conv2_conv1d_expanddims_1_readvariableop_resource: 9
+layer_conv2_biasadd_readvariableop_resource: L
>batch_normalization_17_assignmovingavg_readvariableop_resource: N
@batch_normalization_17_assignmovingavg_1_readvariableop_resource: J
<batch_normalization_17_batchnorm_mul_readvariableop_resource: F
8batch_normalization_17_batchnorm_readvariableop_resource: 5
"fc1_matmul_readvariableop_resource:	А(@1
#fc1_biasadd_readvariableop_resource:@4
"fc2_matmul_readvariableop_resource:@1
#fc2_biasadd_readvariableop_resource:
identityИв&batch_normalization_17/AssignMovingAvgв5batch_normalization_17/AssignMovingAvg/ReadVariableOpв(batch_normalization_17/AssignMovingAvg_1в7batch_normalization_17/AssignMovingAvg_1/ReadVariableOpв/batch_normalization_17/batchnorm/ReadVariableOpв3batch_normalization_17/batchnorm/mul/ReadVariableOpвfc1/BiasAdd/ReadVariableOpвfc1/MatMul/ReadVariableOpвfc2/BiasAdd/ReadVariableOpвfc2/MatMul/ReadVariableOpв"layer_conv2/BiasAdd/ReadVariableOpв.layer_conv2/Conv1D/ExpandDims_1/ReadVariableOpl
!layer_conv2/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
¤        Ъ
layer_conv2/Conv1D/ExpandDims
ExpandDimsinputs*layer_conv2/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:         └к
.layer_conv2/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp7layer_conv2_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: *
dtype0e
#layer_conv2/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ─
layer_conv2/Conv1D/ExpandDims_1
ExpandDims6layer_conv2/Conv1D/ExpandDims_1/ReadVariableOp:value:0,layer_conv2/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: ╤
layer_conv2/Conv1DConv2D&layer_conv2/Conv1D/ExpandDims:output:0(layer_conv2/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:         └ *
paddingSAME*
strides
Щ
layer_conv2/Conv1D/SqueezeSqueezelayer_conv2/Conv1D:output:0*
T0*,
_output_shapes
:         └ *
squeeze_dims

¤        К
"layer_conv2/BiasAdd/ReadVariableOpReadVariableOp+layer_conv2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0ж
layer_conv2/BiasAddBiasAdd#layer_conv2/Conv1D/Squeeze:output:0*layer_conv2/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:         └ Ж
5batch_normalization_17/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       ╟
#batch_normalization_17/moments/meanMeanlayer_conv2/BiasAdd:output:0>batch_normalization_17/moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
: *
	keep_dims(Ц
+batch_normalization_17/moments/StopGradientStopGradient,batch_normalization_17/moments/mean:output:0*
T0*"
_output_shapes
: ╨
0batch_normalization_17/moments/SquaredDifferenceSquaredDifferencelayer_conv2/BiasAdd:output:04batch_normalization_17/moments/StopGradient:output:0*
T0*,
_output_shapes
:         └ К
9batch_normalization_17/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       ч
'batch_normalization_17/moments/varianceMean4batch_normalization_17/moments/SquaredDifference:z:0Bbatch_normalization_17/moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
: *
	keep_dims(Ь
&batch_normalization_17/moments/SqueezeSqueeze,batch_normalization_17/moments/mean:output:0*
T0*
_output_shapes
: *
squeeze_dims
 в
(batch_normalization_17/moments/Squeeze_1Squeeze0batch_normalization_17/moments/variance:output:0*
T0*
_output_shapes
: *
squeeze_dims
 q
,batch_normalization_17/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<░
5batch_normalization_17/AssignMovingAvg/ReadVariableOpReadVariableOp>batch_normalization_17_assignmovingavg_readvariableop_resource*
_output_shapes
: *
dtype0╞
*batch_normalization_17/AssignMovingAvg/subSub=batch_normalization_17/AssignMovingAvg/ReadVariableOp:value:0/batch_normalization_17/moments/Squeeze:output:0*
T0*
_output_shapes
: ╜
*batch_normalization_17/AssignMovingAvg/mulMul.batch_normalization_17/AssignMovingAvg/sub:z:05batch_normalization_17/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
: И
&batch_normalization_17/AssignMovingAvgAssignSubVariableOp>batch_normalization_17_assignmovingavg_readvariableop_resource.batch_normalization_17/AssignMovingAvg/mul:z:06^batch_normalization_17/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0s
.batch_normalization_17/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<┤
7batch_normalization_17/AssignMovingAvg_1/ReadVariableOpReadVariableOp@batch_normalization_17_assignmovingavg_1_readvariableop_resource*
_output_shapes
: *
dtype0╠
,batch_normalization_17/AssignMovingAvg_1/subSub?batch_normalization_17/AssignMovingAvg_1/ReadVariableOp:value:01batch_normalization_17/moments/Squeeze_1:output:0*
T0*
_output_shapes
: ├
,batch_normalization_17/AssignMovingAvg_1/mulMul0batch_normalization_17/AssignMovingAvg_1/sub:z:07batch_normalization_17/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
: Р
(batch_normalization_17/AssignMovingAvg_1AssignSubVariableOp@batch_normalization_17_assignmovingavg_1_readvariableop_resource0batch_normalization_17/AssignMovingAvg_1/mul:z:08^batch_normalization_17/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0k
&batch_normalization_17/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:╢
$batch_normalization_17/batchnorm/addAddV21batch_normalization_17/moments/Squeeze_1:output:0/batch_normalization_17/batchnorm/add/y:output:0*
T0*
_output_shapes
: ~
&batch_normalization_17/batchnorm/RsqrtRsqrt(batch_normalization_17/batchnorm/add:z:0*
T0*
_output_shapes
: м
3batch_normalization_17/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_17_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype0╣
$batch_normalization_17/batchnorm/mulMul*batch_normalization_17/batchnorm/Rsqrt:y:0;batch_normalization_17/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: м
&batch_normalization_17/batchnorm/mul_1Mullayer_conv2/BiasAdd:output:0(batch_normalization_17/batchnorm/mul:z:0*
T0*,
_output_shapes
:         └ н
&batch_normalization_17/batchnorm/mul_2Mul/batch_normalization_17/moments/Squeeze:output:0(batch_normalization_17/batchnorm/mul:z:0*
T0*
_output_shapes
: д
/batch_normalization_17/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_17_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype0╡
$batch_normalization_17/batchnorm/subSub7batch_normalization_17/batchnorm/ReadVariableOp:value:0*batch_normalization_17/batchnorm/mul_2:z:0*
T0*
_output_shapes
: ╝
&batch_normalization_17/batchnorm/add_1AddV2*batch_normalization_17/batchnorm/mul_1:z:0(batch_normalization_17/batchnorm/sub:z:0*
T0*,
_output_shapes
:         └ }
activation_17/ReluRelu*batch_normalization_17/batchnorm/add_1:z:0*
T0*,
_output_shapes
:         └ Y
MaxPool2/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :а
MaxPool2/ExpandDims
ExpandDims activation_17/Relu:activations:0 MaxPool2/ExpandDims/dim:output:0*
T0*0
_output_shapes
:         └ ж
MaxPool2/MaxPoolMaxPoolMaxPool2/ExpandDims:output:0*0
_output_shapes
:         а *
ksize
*
paddingSAME*
strides
Д
MaxPool2/SqueezeSqueezeMaxPool2/MaxPool:output:0*
T0*,
_output_shapes
:         а *
squeeze_dims
]
dropout_25/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ЧЦЦ?Т
dropout_25/dropout/MulMulMaxPool2/Squeeze:output:0!dropout_25/dropout/Const:output:0*
T0*,
_output_shapes
:         а a
dropout_25/dropout/ShapeShapeMaxPool2/Squeeze:output:0*
T0*
_output_shapes
:з
/dropout_25/dropout/random_uniform/RandomUniformRandomUniform!dropout_25/dropout/Shape:output:0*
T0*,
_output_shapes
:         а *
dtype0f
!dropout_25/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩ>╠
dropout_25/dropout/GreaterEqualGreaterEqual8dropout_25/dropout/random_uniform/RandomUniform:output:0*dropout_25/dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:         а К
dropout_25/dropout/CastCast#dropout_25/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:         а П
dropout_25/dropout/Mul_1Muldropout_25/dropout/Mul:z:0dropout_25/dropout/Cast:y:0*
T0*,
_output_shapes
:         а `
flatten_8/ConstConst*
_output_shapes
:*
dtype0*
valueB"       З
flatten_8/ReshapeReshapedropout_25/dropout/Mul_1:z:0flatten_8/Const:output:0*
T0*(
_output_shapes
:         А(}
fc1/MatMul/ReadVariableOpReadVariableOp"fc1_matmul_readvariableop_resource*
_output_shapes
:	А(@*
dtype0Е

fc1/MatMulMatMulflatten_8/Reshape:output:0!fc1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @z
fc1/BiasAdd/ReadVariableOpReadVariableOp#fc1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0В
fc1/BiasAddBiasAddfc1/MatMul:product:0"fc1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @X
fc1/ReluRelufc1/BiasAdd:output:0*
T0*'
_output_shapes
:         @]
dropout_26/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ЧЦЦ?К
dropout_26/dropout/MulMulfc1/Relu:activations:0!dropout_26/dropout/Const:output:0*
T0*'
_output_shapes
:         @^
dropout_26/dropout/ShapeShapefc1/Relu:activations:0*
T0*
_output_shapes
:в
/dropout_26/dropout/random_uniform/RandomUniformRandomUniform!dropout_26/dropout/Shape:output:0*
T0*'
_output_shapes
:         @*
dtype0f
!dropout_26/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩ>╟
dropout_26/dropout/GreaterEqualGreaterEqual8dropout_26/dropout/random_uniform/RandomUniform:output:0*dropout_26/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         @Е
dropout_26/dropout/CastCast#dropout_26/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:         @К
dropout_26/dropout/Mul_1Muldropout_26/dropout/Mul:z:0dropout_26/dropout/Cast:y:0*
T0*'
_output_shapes
:         @|
fc2/MatMul/ReadVariableOpReadVariableOp"fc2_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0З

fc2/MatMulMatMuldropout_26/dropout/Mul_1:z:0!fc2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         z
fc2/BiasAdd/ReadVariableOpReadVariableOp#fc2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0В
fc2/BiasAddBiasAddfc2/MatMul:product:0"fc2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ^
fc2/SoftmaxSoftmaxfc2/BiasAdd:output:0*
T0*'
_output_shapes
:         d
IdentityIdentityfc2/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:         ╝
NoOpNoOp'^batch_normalization_17/AssignMovingAvg6^batch_normalization_17/AssignMovingAvg/ReadVariableOp)^batch_normalization_17/AssignMovingAvg_18^batch_normalization_17/AssignMovingAvg_1/ReadVariableOp0^batch_normalization_17/batchnorm/ReadVariableOp4^batch_normalization_17/batchnorm/mul/ReadVariableOp^fc1/BiasAdd/ReadVariableOp^fc1/MatMul/ReadVariableOp^fc2/BiasAdd/ReadVariableOp^fc2/MatMul/ReadVariableOp#^layer_conv2/BiasAdd/ReadVariableOp/^layer_conv2/Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:         └: : : : : : : : : : 2P
&batch_normalization_17/AssignMovingAvg&batch_normalization_17/AssignMovingAvg2n
5batch_normalization_17/AssignMovingAvg/ReadVariableOp5batch_normalization_17/AssignMovingAvg/ReadVariableOp2T
(batch_normalization_17/AssignMovingAvg_1(batch_normalization_17/AssignMovingAvg_12r
7batch_normalization_17/AssignMovingAvg_1/ReadVariableOp7batch_normalization_17/AssignMovingAvg_1/ReadVariableOp2b
/batch_normalization_17/batchnorm/ReadVariableOp/batch_normalization_17/batchnorm/ReadVariableOp2j
3batch_normalization_17/batchnorm/mul/ReadVariableOp3batch_normalization_17/batchnorm/mul/ReadVariableOp28
fc1/BiasAdd/ReadVariableOpfc1/BiasAdd/ReadVariableOp26
fc1/MatMul/ReadVariableOpfc1/MatMul/ReadVariableOp28
fc2/BiasAdd/ReadVariableOpfc2/BiasAdd/ReadVariableOp26
fc2/MatMul/ReadVariableOpfc2/MatMul/ReadVariableOp2H
"layer_conv2/BiasAdd/ReadVariableOp"layer_conv2/BiasAdd/ReadVariableOp2`
.layer_conv2/Conv1D/ExpandDims_1/ReadVariableOp.layer_conv2/Conv1D/ExpandDims_1/ReadVariableOp:T P
,
_output_shapes
:         └
 
_user_specified_nameinputs
с
e
I__inference_activation_17_layer_call_and_return_conditional_losses_274377

inputs
identityK
ReluReluinputs*
T0*,
_output_shapes
:         └ _
IdentityIdentityRelu:activations:0*
T0*,
_output_shapes
:         └ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         └ :T P
,
_output_shapes
:         └ 
 
_user_specified_nameinputs
┘
d
F__inference_dropout_26_layer_call_and_return_conditional_losses_274417

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:         @[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:         @"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         @:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
Х

ъ
(__inference_Predict_layer_call_fn_274803

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: 
	unknown_5:	А(@
	unknown_6:@
	unknown_7:@
	unknown_8:
identityИвStatefulPartitionedCall╛
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_Predict_layer_call_and_return_conditional_losses_274608o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:         └: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:         └
 
_user_specified_nameinputs
Ъ

ы
(__inference_Predict_layer_call_fn_274460
input_9
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: 
	unknown_5:	А(@
	unknown_6:@
	unknown_7:@
	unknown_8:
identityИвStatefulPartitionedCall┴
StatefulPartitionedCallStatefulPartitionedCallinput_9unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_Predict_layer_call_and_return_conditional_losses_274437o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:         └: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
,
_output_shapes
:         └
!
_user_specified_name	input_9
╗
Т
$__inference_fc1_layer_call_fn_275113

inputs
unknown:	А(@
	unknown_0:@
identityИвStatefulPartitionedCall╘
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
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_fc1_layer_call_and_return_conditional_losses_274406o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А(: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А(
 
_user_specified_nameinputs
эK
■	
!__inference__wrapped_model_274238
input_9U
?predict_layer_conv2_conv1d_expanddims_1_readvariableop_resource: A
3predict_layer_conv2_biasadd_readvariableop_resource: N
@predict_batch_normalization_17_batchnorm_readvariableop_resource: R
Dpredict_batch_normalization_17_batchnorm_mul_readvariableop_resource: P
Bpredict_batch_normalization_17_batchnorm_readvariableop_1_resource: P
Bpredict_batch_normalization_17_batchnorm_readvariableop_2_resource: =
*predict_fc1_matmul_readvariableop_resource:	А(@9
+predict_fc1_biasadd_readvariableop_resource:@<
*predict_fc2_matmul_readvariableop_resource:@9
+predict_fc2_biasadd_readvariableop_resource:
identityИв7Predict/batch_normalization_17/batchnorm/ReadVariableOpв9Predict/batch_normalization_17/batchnorm/ReadVariableOp_1в9Predict/batch_normalization_17/batchnorm/ReadVariableOp_2в;Predict/batch_normalization_17/batchnorm/mul/ReadVariableOpв"Predict/fc1/BiasAdd/ReadVariableOpв!Predict/fc1/MatMul/ReadVariableOpв"Predict/fc2/BiasAdd/ReadVariableOpв!Predict/fc2/MatMul/ReadVariableOpв*Predict/layer_conv2/BiasAdd/ReadVariableOpв6Predict/layer_conv2/Conv1D/ExpandDims_1/ReadVariableOpt
)Predict/layer_conv2/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
¤        л
%Predict/layer_conv2/Conv1D/ExpandDims
ExpandDimsinput_92Predict/layer_conv2/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:         └║
6Predict/layer_conv2/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp?predict_layer_conv2_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: *
dtype0m
+Predict/layer_conv2/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ▄
'Predict/layer_conv2/Conv1D/ExpandDims_1
ExpandDims>Predict/layer_conv2/Conv1D/ExpandDims_1/ReadVariableOp:value:04Predict/layer_conv2/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: щ
Predict/layer_conv2/Conv1DConv2D.Predict/layer_conv2/Conv1D/ExpandDims:output:00Predict/layer_conv2/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:         └ *
paddingSAME*
strides
й
"Predict/layer_conv2/Conv1D/SqueezeSqueeze#Predict/layer_conv2/Conv1D:output:0*
T0*,
_output_shapes
:         └ *
squeeze_dims

¤        Ъ
*Predict/layer_conv2/BiasAdd/ReadVariableOpReadVariableOp3predict_layer_conv2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0╛
Predict/layer_conv2/BiasAddBiasAdd+Predict/layer_conv2/Conv1D/Squeeze:output:02Predict/layer_conv2/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:         └ ┤
7Predict/batch_normalization_17/batchnorm/ReadVariableOpReadVariableOp@predict_batch_normalization_17_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype0s
.Predict/batch_normalization_17/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:╘
,Predict/batch_normalization_17/batchnorm/addAddV2?Predict/batch_normalization_17/batchnorm/ReadVariableOp:value:07Predict/batch_normalization_17/batchnorm/add/y:output:0*
T0*
_output_shapes
: О
.Predict/batch_normalization_17/batchnorm/RsqrtRsqrt0Predict/batch_normalization_17/batchnorm/add:z:0*
T0*
_output_shapes
: ╝
;Predict/batch_normalization_17/batchnorm/mul/ReadVariableOpReadVariableOpDpredict_batch_normalization_17_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype0╤
,Predict/batch_normalization_17/batchnorm/mulMul2Predict/batch_normalization_17/batchnorm/Rsqrt:y:0CPredict/batch_normalization_17/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: ─
.Predict/batch_normalization_17/batchnorm/mul_1Mul$Predict/layer_conv2/BiasAdd:output:00Predict/batch_normalization_17/batchnorm/mul:z:0*
T0*,
_output_shapes
:         └ ╕
9Predict/batch_normalization_17/batchnorm/ReadVariableOp_1ReadVariableOpBpredict_batch_normalization_17_batchnorm_readvariableop_1_resource*
_output_shapes
: *
dtype0╧
.Predict/batch_normalization_17/batchnorm/mul_2MulAPredict/batch_normalization_17/batchnorm/ReadVariableOp_1:value:00Predict/batch_normalization_17/batchnorm/mul:z:0*
T0*
_output_shapes
: ╕
9Predict/batch_normalization_17/batchnorm/ReadVariableOp_2ReadVariableOpBpredict_batch_normalization_17_batchnorm_readvariableop_2_resource*
_output_shapes
: *
dtype0╧
,Predict/batch_normalization_17/batchnorm/subSubAPredict/batch_normalization_17/batchnorm/ReadVariableOp_2:value:02Predict/batch_normalization_17/batchnorm/mul_2:z:0*
T0*
_output_shapes
: ╘
.Predict/batch_normalization_17/batchnorm/add_1AddV22Predict/batch_normalization_17/batchnorm/mul_1:z:00Predict/batch_normalization_17/batchnorm/sub:z:0*
T0*,
_output_shapes
:         └ Н
Predict/activation_17/ReluRelu2Predict/batch_normalization_17/batchnorm/add_1:z:0*
T0*,
_output_shapes
:         └ a
Predict/MaxPool2/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :╕
Predict/MaxPool2/ExpandDims
ExpandDims(Predict/activation_17/Relu:activations:0(Predict/MaxPool2/ExpandDims/dim:output:0*
T0*0
_output_shapes
:         └ ╢
Predict/MaxPool2/MaxPoolMaxPool$Predict/MaxPool2/ExpandDims:output:0*0
_output_shapes
:         а *
ksize
*
paddingSAME*
strides
Ф
Predict/MaxPool2/SqueezeSqueeze!Predict/MaxPool2/MaxPool:output:0*
T0*,
_output_shapes
:         а *
squeeze_dims
Б
Predict/dropout_25/IdentityIdentity!Predict/MaxPool2/Squeeze:output:0*
T0*,
_output_shapes
:         а h
Predict/flatten_8/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Я
Predict/flatten_8/ReshapeReshape$Predict/dropout_25/Identity:output:0 Predict/flatten_8/Const:output:0*
T0*(
_output_shapes
:         А(Н
!Predict/fc1/MatMul/ReadVariableOpReadVariableOp*predict_fc1_matmul_readvariableop_resource*
_output_shapes
:	А(@*
dtype0Э
Predict/fc1/MatMulMatMul"Predict/flatten_8/Reshape:output:0)Predict/fc1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @К
"Predict/fc1/BiasAdd/ReadVariableOpReadVariableOp+predict_fc1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ъ
Predict/fc1/BiasAddBiasAddPredict/fc1/MatMul:product:0*Predict/fc1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @h
Predict/fc1/ReluReluPredict/fc1/BiasAdd:output:0*
T0*'
_output_shapes
:         @y
Predict/dropout_26/IdentityIdentityPredict/fc1/Relu:activations:0*
T0*'
_output_shapes
:         @М
!Predict/fc2/MatMul/ReadVariableOpReadVariableOp*predict_fc2_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0Я
Predict/fc2/MatMulMatMul$Predict/dropout_26/Identity:output:0)Predict/fc2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         К
"Predict/fc2/BiasAdd/ReadVariableOpReadVariableOp+predict_fc2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ъ
Predict/fc2/BiasAddBiasAddPredict/fc2/MatMul:product:0*Predict/fc2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         n
Predict/fc2/SoftmaxSoftmaxPredict/fc2/BiasAdd:output:0*
T0*'
_output_shapes
:         l
IdentityIdentityPredict/fc2/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:         о
NoOpNoOp8^Predict/batch_normalization_17/batchnorm/ReadVariableOp:^Predict/batch_normalization_17/batchnorm/ReadVariableOp_1:^Predict/batch_normalization_17/batchnorm/ReadVariableOp_2<^Predict/batch_normalization_17/batchnorm/mul/ReadVariableOp#^Predict/fc1/BiasAdd/ReadVariableOp"^Predict/fc1/MatMul/ReadVariableOp#^Predict/fc2/BiasAdd/ReadVariableOp"^Predict/fc2/MatMul/ReadVariableOp+^Predict/layer_conv2/BiasAdd/ReadVariableOp7^Predict/layer_conv2/Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:         └: : : : : : : : : : 2r
7Predict/batch_normalization_17/batchnorm/ReadVariableOp7Predict/batch_normalization_17/batchnorm/ReadVariableOp2v
9Predict/batch_normalization_17/batchnorm/ReadVariableOp_19Predict/batch_normalization_17/batchnorm/ReadVariableOp_12v
9Predict/batch_normalization_17/batchnorm/ReadVariableOp_29Predict/batch_normalization_17/batchnorm/ReadVariableOp_22z
;Predict/batch_normalization_17/batchnorm/mul/ReadVariableOp;Predict/batch_normalization_17/batchnorm/mul/ReadVariableOp2H
"Predict/fc1/BiasAdd/ReadVariableOp"Predict/fc1/BiasAdd/ReadVariableOp2F
!Predict/fc1/MatMul/ReadVariableOp!Predict/fc1/MatMul/ReadVariableOp2H
"Predict/fc2/BiasAdd/ReadVariableOp"Predict/fc2/BiasAdd/ReadVariableOp2F
!Predict/fc2/MatMul/ReadVariableOp!Predict/fc2/MatMul/ReadVariableOp2X
*Predict/layer_conv2/BiasAdd/ReadVariableOp*Predict/layer_conv2/BiasAdd/ReadVariableOp2p
6Predict/layer_conv2/Conv1D/ExpandDims_1/ReadVariableOp6Predict/layer_conv2/Conv1D/ExpandDims_1/ReadVariableOp:U Q
,
_output_shapes
:         └
!
_user_specified_name	input_9
∙
Ц
G__inference_layer_conv2_layer_call_and_return_conditional_losses_274963

inputsA
+conv1d_expanddims_1_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityИвBiasAdd/ReadVariableOpв"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
¤        В
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:         └Т
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: *
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : а
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: н
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:         └ *
paddingSAME*
strides
Б
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*,
_output_shapes
:         └ *
squeeze_dims

¤        r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0В
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:         └ d
IdentityIdentityBiasAdd:output:0^NoOp*
T0*,
_output_shapes
:         └ Д
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         └: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:T P
,
_output_shapes
:         └
 
_user_specified_nameinputs
Р
▒
R__inference_batch_normalization_17_layer_call_and_return_conditional_losses_275009

inputs/
!batchnorm_readvariableop_resource: 3
%batchnorm_mul_readvariableop_resource: 1
#batchnorm_readvariableop_1_resource: 1
#batchnorm_readvariableop_2_resource: 
identityИвbatchnorm/ReadVariableOpвbatchnorm/ReadVariableOp_1вbatchnorm/ReadVariableOp_2вbatchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
: *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
: P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
: ~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: p
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :                   z
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
: *
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
: z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
: *
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
: 
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :                   o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :                   ║
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:                   : : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :                   
 
_user_specified_nameinputs
б
G
+__inference_dropout_26_layer_call_fn_275129

inputs
identity▒
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
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_26_layer_call_and_return_conditional_losses_274417`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:         @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         @:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
▐
╥
7__inference_batch_normalization_17_layer_call_fn_274976

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identityИвStatefulPartitionedCallО
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                   *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *[
fVRT
R__inference_batch_normalization_17_layer_call_and_return_conditional_losses_274262|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :                   `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:                   : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :                   
 
_user_specified_nameinputs
З
d
+__inference_dropout_25_layer_call_fn_275076

inputs
identityИвStatefulPartitionedCall╞
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         а * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_25_layer_call_and_return_conditional_losses_274529t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:         а `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         а 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:         а 
 
_user_specified_nameinputs
Ї	
ч
$__inference_signature_wrapper_274753
input_9
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: 
	unknown_5:	А(@
	unknown_6:@
	unknown_7:@
	unknown_8:
identityИвStatefulPartitionedCallЯ
StatefulPartitionedCallStatefulPartitionedCallinput_9unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8В **
f%R#
!__inference__wrapped_model_274238o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:         └: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
,
_output_shapes
:         └
!
_user_specified_name	input_9
э
d
F__inference_dropout_25_layer_call_and_return_conditional_losses_274385

inputs

identity_1S
IdentityIdentityinputs*
T0*,
_output_shapes
:         а `

Identity_1IdentityIdentity:output:0*
T0*,
_output_shapes
:         а "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         а :T P
,
_output_shapes
:         а 
 
_user_specified_nameinputs
╕
С
$__inference_fc2_layer_call_fn_275160

inputs
unknown:@
	unknown_0:
identityИвStatefulPartitionedCall╘
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_fc2_layer_call_and_return_conditional_losses_274430o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
├)
▒
C__inference_Predict_layer_call_and_return_conditional_losses_274722
input_9(
layer_conv2_274692:  
layer_conv2_274694: +
batch_normalization_17_274697: +
batch_normalization_17_274699: +
batch_normalization_17_274701: +
batch_normalization_17_274703: 

fc1_274710:	А(@

fc1_274712:@

fc2_274716:@

fc2_274718:
identityИв.batch_normalization_17/StatefulPartitionedCallв"dropout_25/StatefulPartitionedCallв"dropout_26/StatefulPartitionedCallвfc1/StatefulPartitionedCallвfc2/StatefulPartitionedCallв#layer_conv2/StatefulPartitionedCallВ
#layer_conv2/StatefulPartitionedCallStatefulPartitionedCallinput_9layer_conv2_274692layer_conv2_274694*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         └ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_layer_conv2_layer_call_and_return_conditional_losses_274357У
.batch_normalization_17/StatefulPartitionedCallStatefulPartitionedCall,layer_conv2/StatefulPartitionedCall:output:0batch_normalization_17_274697batch_normalization_17_274699batch_normalization_17_274701batch_normalization_17_274703*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         └ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *[
fVRT
R__inference_batch_normalization_17_layer_call_and_return_conditional_losses_274309°
activation_17/PartitionedCallPartitionedCall7batch_normalization_17/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         └ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_activation_17_layer_call_and_return_conditional_losses_274377▌
MaxPool2/PartitionedCallPartitionedCall&activation_17/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         а * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_MaxPool2_layer_call_and_return_conditional_losses_274332ь
"dropout_25/StatefulPartitionedCallStatefulPartitionedCall!MaxPool2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         а * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_25_layer_call_and_return_conditional_losses_274529р
flatten_8/PartitionedCallPartitionedCall+dropout_25/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А(* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_flatten_8_layer_call_and_return_conditional_losses_274393°
fc1/StatefulPartitionedCallStatefulPartitionedCall"flatten_8/PartitionedCall:output:0
fc1_274710
fc1_274712*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_fc1_layer_call_and_return_conditional_losses_274406П
"dropout_26/StatefulPartitionedCallStatefulPartitionedCall$fc1/StatefulPartitionedCall:output:0#^dropout_25/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_26_layer_call_and_return_conditional_losses_274490Б
fc2/StatefulPartitionedCallStatefulPartitionedCall+dropout_26/StatefulPartitionedCall:output:0
fc2_274716
fc2_274718*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_fc2_layer_call_and_return_conditional_losses_274430s
IdentityIdentity$fc2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         г
NoOpNoOp/^batch_normalization_17/StatefulPartitionedCall#^dropout_25/StatefulPartitionedCall#^dropout_26/StatefulPartitionedCall^fc1/StatefulPartitionedCall^fc2/StatefulPartitionedCall$^layer_conv2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:         └: : : : : : : : : : 2`
.batch_normalization_17/StatefulPartitionedCall.batch_normalization_17/StatefulPartitionedCall2H
"dropout_25/StatefulPartitionedCall"dropout_25/StatefulPartitionedCall2H
"dropout_26/StatefulPartitionedCall"dropout_26/StatefulPartitionedCall2:
fc1/StatefulPartitionedCallfc1/StatefulPartitionedCall2:
fc2/StatefulPartitionedCallfc2/StatefulPartitionedCall2J
#layer_conv2/StatefulPartitionedCall#layer_conv2/StatefulPartitionedCall:U Q
,
_output_shapes
:         └
!
_user_specified_name	input_9
╚&
ч
C__inference_Predict_layer_call_and_return_conditional_losses_274689
input_9(
layer_conv2_274659:  
layer_conv2_274661: +
batch_normalization_17_274664: +
batch_normalization_17_274666: +
batch_normalization_17_274668: +
batch_normalization_17_274670: 

fc1_274677:	А(@

fc1_274679:@

fc2_274683:@

fc2_274685:
identityИв.batch_normalization_17/StatefulPartitionedCallвfc1/StatefulPartitionedCallвfc2/StatefulPartitionedCallв#layer_conv2/StatefulPartitionedCallВ
#layer_conv2/StatefulPartitionedCallStatefulPartitionedCallinput_9layer_conv2_274659layer_conv2_274661*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         └ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_layer_conv2_layer_call_and_return_conditional_losses_274357Х
.batch_normalization_17/StatefulPartitionedCallStatefulPartitionedCall,layer_conv2/StatefulPartitionedCall:output:0batch_normalization_17_274664batch_normalization_17_274666batch_normalization_17_274668batch_normalization_17_274670*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         └ *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *[
fVRT
R__inference_batch_normalization_17_layer_call_and_return_conditional_losses_274262°
activation_17/PartitionedCallPartitionedCall7batch_normalization_17/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         └ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_activation_17_layer_call_and_return_conditional_losses_274377▌
MaxPool2/PartitionedCallPartitionedCall&activation_17/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         а * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_MaxPool2_layer_call_and_return_conditional_losses_274332▄
dropout_25/PartitionedCallPartitionedCall!MaxPool2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         а * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_25_layer_call_and_return_conditional_losses_274385╪
flatten_8/PartitionedCallPartitionedCall#dropout_25/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А(* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_flatten_8_layer_call_and_return_conditional_losses_274393°
fc1/StatefulPartitionedCallStatefulPartitionedCall"flatten_8/PartitionedCall:output:0
fc1_274677
fc1_274679*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_fc1_layer_call_and_return_conditional_losses_274406┌
dropout_26/PartitionedCallPartitionedCall$fc1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_26_layer_call_and_return_conditional_losses_274417∙
fc2/StatefulPartitionedCallStatefulPartitionedCall#dropout_26/PartitionedCall:output:0
fc2_274683
fc2_274685*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_fc2_layer_call_and_return_conditional_losses_274430s
IdentityIdentity$fc2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ┘
NoOpNoOp/^batch_normalization_17/StatefulPartitionedCall^fc1/StatefulPartitionedCall^fc2/StatefulPartitionedCall$^layer_conv2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:         └: : : : : : : : : : 2`
.batch_normalization_17/StatefulPartitionedCall.batch_normalization_17/StatefulPartitionedCall2:
fc1/StatefulPartitionedCallfc1/StatefulPartitionedCall2:
fc2/StatefulPartitionedCallfc2/StatefulPartitionedCall2J
#layer_conv2/StatefulPartitionedCall#layer_conv2/StatefulPartitionedCall:U Q
,
_output_shapes
:         └
!
_user_specified_name	input_9
╚
`
D__inference_MaxPool2_layer_call_and_return_conditional_losses_275066

inputs
identityP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :Е

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*A
_output_shapes/
-:+                           е
MaxPoolMaxPoolExpandDims:output:0*A
_output_shapes/
-:+                           *
ksize
*
paddingSAME*
strides
Г
SqueezeSqueezeMaxPool:output:0*
T0*=
_output_shapes+
):'                           *
squeeze_dims
n
IdentityIdentitySqueeze:output:0*
T0*=
_output_shapes+
):'                           "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'                           :e a
=
_output_shapes+
):'                           
 
_user_specified_nameinputs
ї
E
)__inference_MaxPool2_layer_call_fn_275058

inputs
identity┼
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *=
_output_shapes+
):'                           * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_MaxPool2_layer_call_and_return_conditional_losses_274332v
IdentityIdentityPartitionedCall:output:0*
T0*=
_output_shapes+
):'                           "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'                           :e a
=
_output_shapes+
):'                           
 
_user_specified_nameinputs
Ь

e
F__inference_dropout_25_layer_call_and_return_conditional_losses_275093

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ЧЦЦ?i
dropout/MulMulinputsdropout/Const:output:0*
T0*,
_output_shapes
:         а C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:С
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*,
_output_shapes
:         а *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩ>л
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:         а t
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:         а n
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*,
_output_shapes
:         а ^
IdentityIdentitydropout/Mul_1:z:0*
T0*,
_output_shapes
:         а "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         а :T P
,
_output_shapes
:         а 
 
_user_specified_nameinputs
в;
к
__inference__traced_save_275272
file_prefix1
-savev2_layer_conv2_kernel_read_readvariableop/
+savev2_layer_conv2_bias_read_readvariableop;
7savev2_batch_normalization_17_gamma_read_readvariableop:
6savev2_batch_normalization_17_beta_read_readvariableopA
=savev2_batch_normalization_17_moving_mean_read_readvariableopE
Asavev2_batch_normalization_17_moving_variance_read_readvariableop)
%savev2_fc1_kernel_read_readvariableop'
#savev2_fc1_bias_read_readvariableop)
%savev2_fc2_kernel_read_readvariableop'
#savev2_fc2_bias_read_readvariableop$
 savev2_decay_read_readvariableop,
(savev2_learning_rate_read_readvariableop'
#savev2_momentum_read_readvariableop'
#savev2_sgd_iter_read_readvariableop	&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop>
:savev2_sgd_layer_conv2_kernel_momentum_read_readvariableop<
8savev2_sgd_layer_conv2_bias_momentum_read_readvariableopH
Dsavev2_sgd_batch_normalization_17_gamma_momentum_read_readvariableopG
Csavev2_sgd_batch_normalization_17_beta_momentum_read_readvariableop6
2savev2_sgd_fc1_kernel_momentum_read_readvariableop4
0savev2_sgd_fc1_bias_momentum_read_readvariableop6
2savev2_sgd_fc2_kernel_momentum_read_readvariableop4
0savev2_sgd_fc2_bias_momentum_read_readvariableop
savev2_const

identity_1ИвMergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/partБ
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : У
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: а
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*╔
value┐B╝B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHг
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*I
value@B>B B B B B B B B B B B B B B B B B B B B B B B B B B B а
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0-savev2_layer_conv2_kernel_read_readvariableop+savev2_layer_conv2_bias_read_readvariableop7savev2_batch_normalization_17_gamma_read_readvariableop6savev2_batch_normalization_17_beta_read_readvariableop=savev2_batch_normalization_17_moving_mean_read_readvariableopAsavev2_batch_normalization_17_moving_variance_read_readvariableop%savev2_fc1_kernel_read_readvariableop#savev2_fc1_bias_read_readvariableop%savev2_fc2_kernel_read_readvariableop#savev2_fc2_bias_read_readvariableop savev2_decay_read_readvariableop(savev2_learning_rate_read_readvariableop#savev2_momentum_read_readvariableop#savev2_sgd_iter_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop:savev2_sgd_layer_conv2_kernel_momentum_read_readvariableop8savev2_sgd_layer_conv2_bias_momentum_read_readvariableopDsavev2_sgd_batch_normalization_17_gamma_momentum_read_readvariableopCsavev2_sgd_batch_normalization_17_beta_momentum_read_readvariableop2savev2_sgd_fc1_kernel_momentum_read_readvariableop0savev2_sgd_fc1_bias_momentum_read_readvariableop2savev2_sgd_fc2_kernel_momentum_read_readvariableop0savev2_sgd_fc2_bias_momentum_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *)
dtypes
2	Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:Л
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*╖
_input_shapesе
в: : : : : : : :	А(@:@:@:: : : : : : : : : : : : :	А(@:@:@:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:($
"
_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: :%!

_output_shapes
:	А(@: 

_output_shapes
:@:$	 

_output_shapes

:@: 


_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :($
"
_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: :%!

_output_shapes
:	А(@: 

_output_shapes
:@:$ 

_output_shapes

:@: 

_output_shapes
::

_output_shapes
: 
р
Э
,__inference_layer_conv2_layer_call_fn_274948

inputs
unknown: 
	unknown_0: 
identityИвStatefulPartitionedCallс
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         └ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_layer_conv2_layer_call_and_return_conditional_losses_274357t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:         └ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         └: : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:         └
 
_user_specified_nameinputs
Ї	
e
F__inference_dropout_26_layer_call_and_return_conditional_losses_275151

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ЧЦЦ?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:         @C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:М
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:         @*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩ>ж
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         @o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:         @i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:         @Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:         @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         @:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
■%
ы
R__inference_batch_normalization_17_layer_call_and_return_conditional_losses_275043

inputs5
'assignmovingavg_readvariableop_resource: 7
)assignmovingavg_1_readvariableop_resource: 3
%batchnorm_mul_readvariableop_resource: /
!batchnorm_readvariableop_resource: 
identityИвAssignMovingAvgвAssignMovingAvg/ReadVariableOpвAssignMovingAvg_1в AssignMovingAvg_1/ReadVariableOpвbatchnorm/ReadVariableOpвbatchnorm/mul/ReadVariableOpo
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       Г
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
: *
	keep_dims(h
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
: Ф
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*4
_output_shapes"
 :                   s
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       в
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
: *
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
: *
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
: *
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<В
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
: *
dtype0Б
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
: x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
: м
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<Ж
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
: *
dtype0З
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
: ~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
: ┤
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
: P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
: ~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: p
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :                   h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
: v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
: *
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
: 
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :                   o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :                   ъ
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:                   : : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :                   
 
_user_specified_nameinputs
■%
ы
R__inference_batch_normalization_17_layer_call_and_return_conditional_losses_274309

inputs5
'assignmovingavg_readvariableop_resource: 7
)assignmovingavg_1_readvariableop_resource: 3
%batchnorm_mul_readvariableop_resource: /
!batchnorm_readvariableop_resource: 
identityИвAssignMovingAvgвAssignMovingAvg/ReadVariableOpвAssignMovingAvg_1в AssignMovingAvg_1/ReadVariableOpвbatchnorm/ReadVariableOpвbatchnorm/mul/ReadVariableOpo
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       Г
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
: *
	keep_dims(h
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
: Ф
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*4
_output_shapes"
 :                   s
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       в
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
: *
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
: *
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
: *
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<В
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
: *
dtype0Б
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
: x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
: м
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<Ж
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
: *
dtype0З
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
: ~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
: ┤
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
: P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
: ~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: p
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :                   h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
: v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
: *
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
: 
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :                   o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :                   ъ
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:                   : : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :                   
 
_user_specified_nameinputs
╚
`
D__inference_MaxPool2_layer_call_and_return_conditional_losses_274332

inputs
identityP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :Е

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*A
_output_shapes/
-:+                           е
MaxPoolMaxPoolExpandDims:output:0*A
_output_shapes/
-:+                           *
ksize
*
paddingSAME*
strides
Г
SqueezeSqueezeMaxPool:output:0*
T0*=
_output_shapes+
):'                           *
squeeze_dims
n
IdentityIdentitySqueeze:output:0*
T0*=
_output_shapes+
):'                           "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'                           :e a
=
_output_shapes+
):'                           
 
_user_specified_nameinputs
Ы

Ё
?__inference_fc2_layer_call_and_return_conditional_losses_275171

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:         `
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
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
є
d
+__inference_dropout_26_layer_call_fn_275134

inputs
identityИвStatefulPartitionedCall┴
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_26_layer_call_and_return_conditional_losses_274490o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         @22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
Ъ

ё
?__inference_fc1_layer_call_and_return_conditional_losses_275124

inputs1
matmul_readvariableop_resource:	А(@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А(@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:         @a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:         @w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А(: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А(
 
_user_specified_nameinputs
с
e
I__inference_activation_17_layer_call_and_return_conditional_losses_275053

inputs
identityK
ReluReluinputs*
T0*,
_output_shapes
:         └ _
IdentityIdentityRelu:activations:0*
T0*,
_output_shapes
:         └ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         └ :T P
,
_output_shapes
:         └ 
 
_user_specified_nameinputs
┴
a
E__inference_flatten_8_layer_call_and_return_conditional_losses_274393

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"       ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         А(Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         А("
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         а :T P
,
_output_shapes
:         а 
 
_user_specified_nameinputs
Ч

ъ
(__inference_Predict_layer_call_fn_274778

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: 
	unknown_5:	А(@
	unknown_6:@
	unknown_7:@
	unknown_8:
identityИвStatefulPartitionedCall└
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_Predict_layer_call_and_return_conditional_losses_274437o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:         └: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:         └
 
_user_specified_nameinputs
э
d
F__inference_dropout_25_layer_call_and_return_conditional_losses_275081

inputs

identity_1S
IdentityIdentityinputs*
T0*,
_output_shapes
:         а `

Identity_1IdentityIdentity:output:0*
T0*,
_output_shapes
:         а "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         а :T P
,
_output_shapes
:         а 
 
_user_specified_nameinputs
ЭC
 
C__inference_Predict_layer_call_and_return_conditional_losses_274857

inputsM
7layer_conv2_conv1d_expanddims_1_readvariableop_resource: 9
+layer_conv2_biasadd_readvariableop_resource: F
8batch_normalization_17_batchnorm_readvariableop_resource: J
<batch_normalization_17_batchnorm_mul_readvariableop_resource: H
:batch_normalization_17_batchnorm_readvariableop_1_resource: H
:batch_normalization_17_batchnorm_readvariableop_2_resource: 5
"fc1_matmul_readvariableop_resource:	А(@1
#fc1_biasadd_readvariableop_resource:@4
"fc2_matmul_readvariableop_resource:@1
#fc2_biasadd_readvariableop_resource:
identityИв/batch_normalization_17/batchnorm/ReadVariableOpв1batch_normalization_17/batchnorm/ReadVariableOp_1в1batch_normalization_17/batchnorm/ReadVariableOp_2в3batch_normalization_17/batchnorm/mul/ReadVariableOpвfc1/BiasAdd/ReadVariableOpвfc1/MatMul/ReadVariableOpвfc2/BiasAdd/ReadVariableOpвfc2/MatMul/ReadVariableOpв"layer_conv2/BiasAdd/ReadVariableOpв.layer_conv2/Conv1D/ExpandDims_1/ReadVariableOpl
!layer_conv2/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
¤        Ъ
layer_conv2/Conv1D/ExpandDims
ExpandDimsinputs*layer_conv2/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:         └к
.layer_conv2/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp7layer_conv2_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: *
dtype0e
#layer_conv2/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ─
layer_conv2/Conv1D/ExpandDims_1
ExpandDims6layer_conv2/Conv1D/ExpandDims_1/ReadVariableOp:value:0,layer_conv2/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: ╤
layer_conv2/Conv1DConv2D&layer_conv2/Conv1D/ExpandDims:output:0(layer_conv2/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:         └ *
paddingSAME*
strides
Щ
layer_conv2/Conv1D/SqueezeSqueezelayer_conv2/Conv1D:output:0*
T0*,
_output_shapes
:         └ *
squeeze_dims

¤        К
"layer_conv2/BiasAdd/ReadVariableOpReadVariableOp+layer_conv2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0ж
layer_conv2/BiasAddBiasAdd#layer_conv2/Conv1D/Squeeze:output:0*layer_conv2/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:         └ д
/batch_normalization_17/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_17_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype0k
&batch_normalization_17/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:╝
$batch_normalization_17/batchnorm/addAddV27batch_normalization_17/batchnorm/ReadVariableOp:value:0/batch_normalization_17/batchnorm/add/y:output:0*
T0*
_output_shapes
: ~
&batch_normalization_17/batchnorm/RsqrtRsqrt(batch_normalization_17/batchnorm/add:z:0*
T0*
_output_shapes
: м
3batch_normalization_17/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_17_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype0╣
$batch_normalization_17/batchnorm/mulMul*batch_normalization_17/batchnorm/Rsqrt:y:0;batch_normalization_17/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: м
&batch_normalization_17/batchnorm/mul_1Mullayer_conv2/BiasAdd:output:0(batch_normalization_17/batchnorm/mul:z:0*
T0*,
_output_shapes
:         └ и
1batch_normalization_17/batchnorm/ReadVariableOp_1ReadVariableOp:batch_normalization_17_batchnorm_readvariableop_1_resource*
_output_shapes
: *
dtype0╖
&batch_normalization_17/batchnorm/mul_2Mul9batch_normalization_17/batchnorm/ReadVariableOp_1:value:0(batch_normalization_17/batchnorm/mul:z:0*
T0*
_output_shapes
: и
1batch_normalization_17/batchnorm/ReadVariableOp_2ReadVariableOp:batch_normalization_17_batchnorm_readvariableop_2_resource*
_output_shapes
: *
dtype0╖
$batch_normalization_17/batchnorm/subSub9batch_normalization_17/batchnorm/ReadVariableOp_2:value:0*batch_normalization_17/batchnorm/mul_2:z:0*
T0*
_output_shapes
: ╝
&batch_normalization_17/batchnorm/add_1AddV2*batch_normalization_17/batchnorm/mul_1:z:0(batch_normalization_17/batchnorm/sub:z:0*
T0*,
_output_shapes
:         └ }
activation_17/ReluRelu*batch_normalization_17/batchnorm/add_1:z:0*
T0*,
_output_shapes
:         └ Y
MaxPool2/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :а
MaxPool2/ExpandDims
ExpandDims activation_17/Relu:activations:0 MaxPool2/ExpandDims/dim:output:0*
T0*0
_output_shapes
:         └ ж
MaxPool2/MaxPoolMaxPoolMaxPool2/ExpandDims:output:0*0
_output_shapes
:         а *
ksize
*
paddingSAME*
strides
Д
MaxPool2/SqueezeSqueezeMaxPool2/MaxPool:output:0*
T0*,
_output_shapes
:         а *
squeeze_dims
q
dropout_25/IdentityIdentityMaxPool2/Squeeze:output:0*
T0*,
_output_shapes
:         а `
flatten_8/ConstConst*
_output_shapes
:*
dtype0*
valueB"       З
flatten_8/ReshapeReshapedropout_25/Identity:output:0flatten_8/Const:output:0*
T0*(
_output_shapes
:         А(}
fc1/MatMul/ReadVariableOpReadVariableOp"fc1_matmul_readvariableop_resource*
_output_shapes
:	А(@*
dtype0Е

fc1/MatMulMatMulflatten_8/Reshape:output:0!fc1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @z
fc1/BiasAdd/ReadVariableOpReadVariableOp#fc1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0В
fc1/BiasAddBiasAddfc1/MatMul:product:0"fc1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @X
fc1/ReluRelufc1/BiasAdd:output:0*
T0*'
_output_shapes
:         @i
dropout_26/IdentityIdentityfc1/Relu:activations:0*
T0*'
_output_shapes
:         @|
fc2/MatMul/ReadVariableOpReadVariableOp"fc2_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0З

fc2/MatMulMatMuldropout_26/Identity:output:0!fc2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         z
fc2/BiasAdd/ReadVariableOpReadVariableOp#fc2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0В
fc2/BiasAddBiasAddfc2/MatMul:product:0"fc2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ^
fc2/SoftmaxSoftmaxfc2/BiasAdd:output:0*
T0*'
_output_shapes
:         d
IdentityIdentityfc2/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:         ▐
NoOpNoOp0^batch_normalization_17/batchnorm/ReadVariableOp2^batch_normalization_17/batchnorm/ReadVariableOp_12^batch_normalization_17/batchnorm/ReadVariableOp_24^batch_normalization_17/batchnorm/mul/ReadVariableOp^fc1/BiasAdd/ReadVariableOp^fc1/MatMul/ReadVariableOp^fc2/BiasAdd/ReadVariableOp^fc2/MatMul/ReadVariableOp#^layer_conv2/BiasAdd/ReadVariableOp/^layer_conv2/Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:         └: : : : : : : : : : 2b
/batch_normalization_17/batchnorm/ReadVariableOp/batch_normalization_17/batchnorm/ReadVariableOp2f
1batch_normalization_17/batchnorm/ReadVariableOp_11batch_normalization_17/batchnorm/ReadVariableOp_12f
1batch_normalization_17/batchnorm/ReadVariableOp_21batch_normalization_17/batchnorm/ReadVariableOp_22j
3batch_normalization_17/batchnorm/mul/ReadVariableOp3batch_normalization_17/batchnorm/mul/ReadVariableOp28
fc1/BiasAdd/ReadVariableOpfc1/BiasAdd/ReadVariableOp26
fc1/MatMul/ReadVariableOpfc1/MatMul/ReadVariableOp28
fc2/BiasAdd/ReadVariableOpfc2/BiasAdd/ReadVariableOp26
fc2/MatMul/ReadVariableOpfc2/MatMul/ReadVariableOp2H
"layer_conv2/BiasAdd/ReadVariableOp"layer_conv2/BiasAdd/ReadVariableOp2`
.layer_conv2/Conv1D/ExpandDims_1/ReadVariableOp.layer_conv2/Conv1D/ExpandDims_1/ReadVariableOp:T P
,
_output_shapes
:         └
 
_user_specified_nameinputs
Ї	
e
F__inference_dropout_26_layer_call_and_return_conditional_losses_274490

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ЧЦЦ?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:         @C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:М
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:         @*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩ>ж
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         @o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:         @i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:         @Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:         @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         @:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs"┐L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*л
serving_defaultЧ
@
input_95
serving_default_input_9:0         └7
fc20
StatefulPartitionedCall:0         tensorflow/serving/predict:║я
═
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer-4
layer-5
layer-6
layer_with_weights-2
layer-7
	layer-8

layer_with_weights-3

layer-9
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_network
"
_tf_keras_input_layer
▌
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
 _jit_compiled_convolution_op"
_tf_keras_layer
ъ
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses
#axis
	$gamma
%beta
&moving_mean
'moving_variance"
_tf_keras_layer
е
(	variables
)trainable_variables
*regularization_losses
+	keras_api
,__call__
*-&call_and_return_all_conditional_losses"
_tf_keras_layer
е
.	variables
/trainable_variables
0regularization_losses
1	keras_api
2__call__
*3&call_and_return_all_conditional_losses"
_tf_keras_layer
╝
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses
:_random_generator"
_tf_keras_layer
е
;	variables
<trainable_variables
=regularization_losses
>	keras_api
?__call__
*@&call_and_return_all_conditional_losses"
_tf_keras_layer
╗
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
E__call__
*F&call_and_return_all_conditional_losses

Gkernel
Hbias"
_tf_keras_layer
╝
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
M__call__
*N&call_and_return_all_conditional_losses
O_random_generator"
_tf_keras_layer
╗
P	variables
Qtrainable_variables
Rregularization_losses
S	keras_api
T__call__
*U&call_and_return_all_conditional_losses

Vkernel
Wbias"
_tf_keras_layer
f
0
1
$2
%3
&4
'5
G6
H7
V8
W9"
trackable_list_wrapper
X
0
1
$2
%3
G4
H5
V6
W7"
trackable_list_wrapper
 "
trackable_list_wrapper
╩
Xnon_trainable_variables

Ylayers
Zmetrics
[layer_regularization_losses
\layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
╓
]trace_0
^trace_1
_trace_2
`trace_32ы
(__inference_Predict_layer_call_fn_274460
(__inference_Predict_layer_call_fn_274778
(__inference_Predict_layer_call_fn_274803
(__inference_Predict_layer_call_fn_274656└
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
 z]trace_0z^trace_1z_trace_2z`trace_3
┬
atrace_0
btrace_1
ctrace_2
dtrace_32╫
C__inference_Predict_layer_call_and_return_conditional_losses_274857
C__inference_Predict_layer_call_and_return_conditional_losses_274939
C__inference_Predict_layer_call_and_return_conditional_losses_274689
C__inference_Predict_layer_call_and_return_conditional_losses_274722└
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
 zatrace_0zbtrace_1zctrace_2zdtrace_3
╠B╔
!__inference__wrapped_model_274238input_9"Ш
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
╤
	edecay
flearning_rate
gmomentum
hitermomentum║momentum╗$momentum╝%momentum╜Gmomentum╛Hmomentum┐Vmomentum└Wmomentum┴"
	optimizer
,
iserving_default"
signature_map
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
jnon_trainable_variables

klayers
lmetrics
mlayer_regularization_losses
nlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Ё
otrace_02╙
,__inference_layer_conv2_layer_call_fn_274948в
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
 zotrace_0
Л
ptrace_02ю
G__inference_layer_conv2_layer_call_and_return_conditional_losses_274963в
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
 zptrace_0
(:& 2layer_conv2/kernel
: 2layer_conv2/bias
┤2▒о
г▓Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
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
 0
<
$0
%1
&2
'3"
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
 "
trackable_list_wrapper
н
qnon_trainable_variables

rlayers
smetrics
tlayer_regularization_losses
ulayer_metrics
	variables
trainable_variables
regularization_losses
!__call__
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses"
_generic_user_object
р
vtrace_0
wtrace_12й
7__inference_batch_normalization_17_layer_call_fn_274976
7__inference_batch_normalization_17_layer_call_fn_274989┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 zvtrace_0zwtrace_1
Ц
xtrace_0
ytrace_12▀
R__inference_batch_normalization_17_layer_call_and_return_conditional_losses_275009
R__inference_batch_normalization_17_layer_call_and_return_conditional_losses_275043┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 zxtrace_0zytrace_1
 "
trackable_list_wrapper
*:( 2batch_normalization_17/gamma
):' 2batch_normalization_17/beta
2:0  (2"batch_normalization_17/moving_mean
6:4  (2&batch_normalization_17/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
н
znon_trainable_variables

{layers
|metrics
}layer_regularization_losses
~layer_metrics
(	variables
)trainable_variables
*regularization_losses
,__call__
*-&call_and_return_all_conditional_losses
&-"call_and_return_conditional_losses"
_generic_user_object
Є
trace_02╒
.__inference_activation_17_layer_call_fn_275048в
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
 ztrace_0
П
Аtrace_02Ё
I__inference_activation_17_layer_call_and_return_conditional_losses_275053в
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
 zАtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Бnon_trainable_variables
Вlayers
Гmetrics
 Дlayer_regularization_losses
Еlayer_metrics
.	variables
/trainable_variables
0regularization_losses
2__call__
*3&call_and_return_all_conditional_losses
&3"call_and_return_conditional_losses"
_generic_user_object
я
Жtrace_02╨
)__inference_MaxPool2_layer_call_fn_275058в
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
 zЖtrace_0
К
Зtrace_02ы
D__inference_MaxPool2_layer_call_and_return_conditional_losses_275066в
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
 zЗtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Иnon_trainable_variables
Йlayers
Кmetrics
 Лlayer_regularization_losses
Мlayer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses"
_generic_user_object
╠
Нtrace_0
Оtrace_12С
+__inference_dropout_25_layer_call_fn_275071
+__inference_dropout_25_layer_call_fn_275076┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 zНtrace_0zОtrace_1
В
Пtrace_0
Рtrace_12╟
F__inference_dropout_25_layer_call_and_return_conditional_losses_275081
F__inference_dropout_25_layer_call_and_return_conditional_losses_275093┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 zПtrace_0zРtrace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Сnon_trainable_variables
Тlayers
Уmetrics
 Фlayer_regularization_losses
Хlayer_metrics
;	variables
<trainable_variables
=regularization_losses
?__call__
*@&call_and_return_all_conditional_losses
&@"call_and_return_conditional_losses"
_generic_user_object
Ё
Цtrace_02╤
*__inference_flatten_8_layer_call_fn_275098в
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
 zЦtrace_0
Л
Чtrace_02ь
E__inference_flatten_8_layer_call_and_return_conditional_losses_275104в
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
 zЧtrace_0
.
G0
H1"
trackable_list_wrapper
.
G0
H1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Шnon_trainable_variables
Щlayers
Ъmetrics
 Ыlayer_regularization_losses
Ьlayer_metrics
A	variables
Btrainable_variables
Cregularization_losses
E__call__
*F&call_and_return_all_conditional_losses
&F"call_and_return_conditional_losses"
_generic_user_object
ъ
Эtrace_02╦
$__inference_fc1_layer_call_fn_275113в
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
 zЭtrace_0
Е
Юtrace_02ц
?__inference_fc1_layer_call_and_return_conditional_losses_275124в
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
 zЮtrace_0
:	А(@2
fc1/kernel
:@2fc1/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Яnon_trainable_variables
аlayers
бmetrics
 вlayer_regularization_losses
гlayer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
M__call__
*N&call_and_return_all_conditional_losses
&N"call_and_return_conditional_losses"
_generic_user_object
╠
дtrace_0
еtrace_12С
+__inference_dropout_26_layer_call_fn_275129
+__inference_dropout_26_layer_call_fn_275134┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 zдtrace_0zеtrace_1
В
жtrace_0
зtrace_12╟
F__inference_dropout_26_layer_call_and_return_conditional_losses_275139
F__inference_dropout_26_layer_call_and_return_conditional_losses_275151┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 zжtrace_0zзtrace_1
"
_generic_user_object
.
V0
W1"
trackable_list_wrapper
.
V0
W1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
иnon_trainable_variables
йlayers
кmetrics
 лlayer_regularization_losses
мlayer_metrics
P	variables
Qtrainable_variables
Rregularization_losses
T__call__
*U&call_and_return_all_conditional_losses
&U"call_and_return_conditional_losses"
_generic_user_object
ъ
нtrace_02╦
$__inference_fc2_layer_call_fn_275160в
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
 zнtrace_0
Е
оtrace_02ц
?__inference_fc2_layer_call_and_return_conditional_losses_275171в
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
 zоtrace_0
:@2
fc2/kernel
:2fc2/bias
.
&0
'1"
trackable_list_wrapper
f
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
9"
trackable_list_wrapper
0
п0
░1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
√B°
(__inference_Predict_layer_call_fn_274460input_9"└
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
·Bў
(__inference_Predict_layer_call_fn_274778inputs"└
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
·Bў
(__inference_Predict_layer_call_fn_274803inputs"└
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
√B°
(__inference_Predict_layer_call_fn_274656input_9"└
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
ХBТ
C__inference_Predict_layer_call_and_return_conditional_losses_274857inputs"└
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
ХBТ
C__inference_Predict_layer_call_and_return_conditional_losses_274939inputs"└
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
ЦBУ
C__inference_Predict_layer_call_and_return_conditional_losses_274689input_9"└
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
ЦBУ
C__inference_Predict_layer_call_and_return_conditional_losses_274722input_9"└
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
: (2decay
: (2learning_rate
: (2momentum
:	 (2SGD/iter
╦B╚
$__inference_signature_wrapper_274753input_9"Ф
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
 
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
рB▌
,__inference_layer_conv2_layer_call_fn_274948inputs"в
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
√B°
G__inference_layer_conv2_layer_call_and_return_conditional_losses_274963inputs"в
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
.
&0
'1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
¤B·
7__inference_batch_normalization_17_layer_call_fn_274976inputs"┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
¤B·
7__inference_batch_normalization_17_layer_call_fn_274989inputs"┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ШBХ
R__inference_batch_normalization_17_layer_call_and_return_conditional_losses_275009inputs"┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ШBХ
R__inference_batch_normalization_17_layer_call_and_return_conditional_losses_275043inputs"┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
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
тB▀
.__inference_activation_17_layer_call_fn_275048inputs"в
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
¤B·
I__inference_activation_17_layer_call_and_return_conditional_losses_275053inputs"в
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
▌B┌
)__inference_MaxPool2_layer_call_fn_275058inputs"в
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
°Bї
D__inference_MaxPool2_layer_call_and_return_conditional_losses_275066inputs"в
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
ёBю
+__inference_dropout_25_layer_call_fn_275071inputs"┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ёBю
+__inference_dropout_25_layer_call_fn_275076inputs"┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
МBЙ
F__inference_dropout_25_layer_call_and_return_conditional_losses_275081inputs"┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
МBЙ
F__inference_dropout_25_layer_call_and_return_conditional_losses_275093inputs"┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
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
▐B█
*__inference_flatten_8_layer_call_fn_275098inputs"в
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
∙BЎ
E__inference_flatten_8_layer_call_and_return_conditional_losses_275104inputs"в
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
╪B╒
$__inference_fc1_layer_call_fn_275113inputs"в
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
єBЁ
?__inference_fc1_layer_call_and_return_conditional_losses_275124inputs"в
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
ёBю
+__inference_dropout_26_layer_call_fn_275129inputs"┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ёBю
+__inference_dropout_26_layer_call_fn_275134inputs"┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
МBЙ
F__inference_dropout_26_layer_call_and_return_conditional_losses_275139inputs"┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
МBЙ
F__inference_dropout_26_layer_call_and_return_conditional_losses_275151inputs"┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
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
╪B╒
$__inference_fc2_layer_call_fn_275160inputs"в
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
єBЁ
?__inference_fc2_layer_call_and_return_conditional_losses_275171inputs"в
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
R
▒	variables
▓	keras_api

│total

┤count"
_tf_keras_metric
c
╡	variables
╢	keras_api

╖total

╕count
╣
_fn_kwargs"
_tf_keras_metric
0
│0
┤1"
trackable_list_wrapper
.
▒	variables"
_generic_user_object
:  (2total
:  (2count
0
╖0
╕1"
trackable_list_wrapper
.
╡	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
3:1 2SGD/layer_conv2/kernel/momentum
):' 2SGD/layer_conv2/bias/momentum
5:3 2)SGD/batch_normalization_17/gamma/momentum
4:2 2(SGD/batch_normalization_17/beta/momentum
(:&	А(@2SGD/fc1/kernel/momentum
!:@2SGD/fc1/bias/momentum
':%@2SGD/fc2/kernel/momentum
!:2SGD/fc2/bias/momentum═
D__inference_MaxPool2_layer_call_and_return_conditional_losses_275066ДEвB
;в8
6К3
inputs'                           
к ";в8
1К.
0'                           
Ъ д
)__inference_MaxPool2_layer_call_fn_275058wEвB
;в8
6К3
inputs'                           
к ".К+'                           ╣
C__inference_Predict_layer_call_and_return_conditional_losses_274689r
'$&%GHVW=в:
3в0
&К#
input_9         └
p 

 
к "%в"
К
0         
Ъ ╣
C__inference_Predict_layer_call_and_return_conditional_losses_274722r
&'$%GHVW=в:
3в0
&К#
input_9         └
p

 
к "%в"
К
0         
Ъ ╕
C__inference_Predict_layer_call_and_return_conditional_losses_274857q
'$&%GHVW<в9
2в/
%К"
inputs         └
p 

 
к "%в"
К
0         
Ъ ╕
C__inference_Predict_layer_call_and_return_conditional_losses_274939q
&'$%GHVW<в9
2в/
%К"
inputs         └
p

 
к "%в"
К
0         
Ъ С
(__inference_Predict_layer_call_fn_274460e
'$&%GHVW=в:
3в0
&К#
input_9         └
p 

 
к "К         С
(__inference_Predict_layer_call_fn_274656e
&'$%GHVW=в:
3в0
&К#
input_9         └
p

 
к "К         Р
(__inference_Predict_layer_call_fn_274778d
'$&%GHVW<в9
2в/
%К"
inputs         └
p 

 
к "К         Р
(__inference_Predict_layer_call_fn_274803d
&'$%GHVW<в9
2в/
%К"
inputs         └
p

 
к "К         У
!__inference__wrapped_model_274238n
'$&%GHVW5в2
+в(
&К#
input_9         └
к ")к&
$
fc2К
fc2         п
I__inference_activation_17_layer_call_and_return_conditional_losses_275053b4в1
*в'
%К"
inputs         └ 
к "*в'
 К
0         └ 
Ъ З
.__inference_activation_17_layer_call_fn_275048U4в1
*в'
%К"
inputs         └ 
к "К         └ ╥
R__inference_batch_normalization_17_layer_call_and_return_conditional_losses_275009|'$&%@в=
6в3
-К*
inputs                   
p 
к "2в/
(К%
0                   
Ъ ╥
R__inference_batch_normalization_17_layer_call_and_return_conditional_losses_275043|&'$%@в=
6в3
-К*
inputs                   
p
к "2в/
(К%
0                   
Ъ к
7__inference_batch_normalization_17_layer_call_fn_274976o'$&%@в=
6в3
-К*
inputs                   
p 
к "%К"                   к
7__inference_batch_normalization_17_layer_call_fn_274989o&'$%@в=
6в3
-К*
inputs                   
p
к "%К"                   ░
F__inference_dropout_25_layer_call_and_return_conditional_losses_275081f8в5
.в+
%К"
inputs         а 
p 
к "*в'
 К
0         а 
Ъ ░
F__inference_dropout_25_layer_call_and_return_conditional_losses_275093f8в5
.в+
%К"
inputs         а 
p
к "*в'
 К
0         а 
Ъ И
+__inference_dropout_25_layer_call_fn_275071Y8в5
.в+
%К"
inputs         а 
p 
к "К         а И
+__inference_dropout_25_layer_call_fn_275076Y8в5
.в+
%К"
inputs         а 
p
к "К         а ж
F__inference_dropout_26_layer_call_and_return_conditional_losses_275139\3в0
)в&
 К
inputs         @
p 
к "%в"
К
0         @
Ъ ж
F__inference_dropout_26_layer_call_and_return_conditional_losses_275151\3в0
)в&
 К
inputs         @
p
к "%в"
К
0         @
Ъ ~
+__inference_dropout_26_layer_call_fn_275129O3в0
)в&
 К
inputs         @
p 
к "К         @~
+__inference_dropout_26_layer_call_fn_275134O3в0
)в&
 К
inputs         @
p
к "К         @а
?__inference_fc1_layer_call_and_return_conditional_losses_275124]GH0в-
&в#
!К
inputs         А(
к "%в"
К
0         @
Ъ x
$__inference_fc1_layer_call_fn_275113PGH0в-
&в#
!К
inputs         А(
к "К         @Я
?__inference_fc2_layer_call_and_return_conditional_losses_275171\VW/в,
%в"
 К
inputs         @
к "%в"
К
0         
Ъ w
$__inference_fc2_layer_call_fn_275160OVW/в,
%в"
 К
inputs         @
к "К         з
E__inference_flatten_8_layer_call_and_return_conditional_losses_275104^4в1
*в'
%К"
inputs         а 
к "&в#
К
0         А(
Ъ 
*__inference_flatten_8_layer_call_fn_275098Q4в1
*в'
%К"
inputs         а 
к "К         А(▒
G__inference_layer_conv2_layer_call_and_return_conditional_losses_274963f4в1
*в'
%К"
inputs         └
к "*в'
 К
0         └ 
Ъ Й
,__inference_layer_conv2_layer_call_fn_274948Y4в1
*в'
%К"
inputs         └
к "К         └ б
$__inference_signature_wrapper_274753y
'$&%GHVW@в=
в 
6к3
1
input_9&К#
input_9         └")к&
$
fc2К
fc2         