√ш5
┴Р
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
А
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
$
DisableCopyOnRead
resourceИ
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	
Ж
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( И
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
d
Shape

input"T&
output"out_typeКэout_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
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
ў
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

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
░
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type/
output_handleКщшelement_dtype"
element_dtypetype"

shape_typetype:
2	
Я
TensorListReserve
element_shape"
shape_type
num_elements(
handleКщшelement_dtype"
element_dtypetype"

shape_typetype:
2	
И
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint         
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
 И
Ф
While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
И"serve*2.12.02v2.12.0-rc1-12-g0db597d0d758·Ц2
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
~
Adam/v/dense_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/v/dense_5/bias
w
'Adam/v/dense_5/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_5/bias*
_output_shapes
:*
dtype0
~
Adam/m/dense_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/m/dense_5/bias
w
'Adam/m/dense_5/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_5/bias*
_output_shapes
:*
dtype0
Ж
Adam/v/dense_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*&
shared_nameAdam/v/dense_5/kernel

)Adam/v/dense_5/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_5/kernel*
_output_shapes

:*
dtype0
Ж
Adam/m/dense_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*&
shared_nameAdam/m/dense_5/kernel

)Adam/m/dense_5/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_5/kernel*
_output_shapes

:*
dtype0
~
Adam/v/dense_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/v/dense_4/bias
w
'Adam/v/dense_4/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_4/bias*
_output_shapes
:*
dtype0
~
Adam/m/dense_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/m/dense_4/bias
w
'Adam/m/dense_4/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_4/bias*
_output_shapes
:*
dtype0
Ж
Adam/v/dense_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*&
shared_nameAdam/v/dense_4/kernel

)Adam/v/dense_4/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_4/kernel*
_output_shapes

:*
dtype0
Ж
Adam/m/dense_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*&
shared_nameAdam/m/dense_4/kernel

)Adam/m/dense_4/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_4/kernel*
_output_shapes

:*
dtype0
Ф
Adam/v/lstm_8/lstm_cell_8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: */
shared_name Adam/v/lstm_8/lstm_cell_8/bias
Н
2Adam/v/lstm_8/lstm_cell_8/bias/Read/ReadVariableOpReadVariableOpAdam/v/lstm_8/lstm_cell_8/bias*
_output_shapes
: *
dtype0
Ф
Adam/m/lstm_8/lstm_cell_8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: */
shared_name Adam/m/lstm_8/lstm_cell_8/bias
Н
2Adam/m/lstm_8/lstm_cell_8/bias/Read/ReadVariableOpReadVariableOpAdam/m/lstm_8/lstm_cell_8/bias*
_output_shapes
: *
dtype0
░
*Adam/v/lstm_8/lstm_cell_8/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *;
shared_name,*Adam/v/lstm_8/lstm_cell_8/recurrent_kernel
й
>Adam/v/lstm_8/lstm_cell_8/recurrent_kernel/Read/ReadVariableOpReadVariableOp*Adam/v/lstm_8/lstm_cell_8/recurrent_kernel*
_output_shapes

: *
dtype0
░
*Adam/m/lstm_8/lstm_cell_8/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *;
shared_name,*Adam/m/lstm_8/lstm_cell_8/recurrent_kernel
й
>Adam/m/lstm_8/lstm_cell_8/recurrent_kernel/Read/ReadVariableOpReadVariableOp*Adam/m/lstm_8/lstm_cell_8/recurrent_kernel*
_output_shapes

: *
dtype0
Ь
 Adam/v/lstm_8/lstm_cell_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *1
shared_name" Adam/v/lstm_8/lstm_cell_8/kernel
Х
4Adam/v/lstm_8/lstm_cell_8/kernel/Read/ReadVariableOpReadVariableOp Adam/v/lstm_8/lstm_cell_8/kernel*
_output_shapes

: *
dtype0
Ь
 Adam/m/lstm_8/lstm_cell_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *1
shared_name" Adam/m/lstm_8/lstm_cell_8/kernel
Х
4Adam/m/lstm_8/lstm_cell_8/kernel/Read/ReadVariableOpReadVariableOp Adam/m/lstm_8/lstm_cell_8/kernel*
_output_shapes

: *
dtype0
Ф
Adam/v/lstm_7/lstm_cell_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: */
shared_name Adam/v/lstm_7/lstm_cell_7/bias
Н
2Adam/v/lstm_7/lstm_cell_7/bias/Read/ReadVariableOpReadVariableOpAdam/v/lstm_7/lstm_cell_7/bias*
_output_shapes
: *
dtype0
Ф
Adam/m/lstm_7/lstm_cell_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: */
shared_name Adam/m/lstm_7/lstm_cell_7/bias
Н
2Adam/m/lstm_7/lstm_cell_7/bias/Read/ReadVariableOpReadVariableOpAdam/m/lstm_7/lstm_cell_7/bias*
_output_shapes
: *
dtype0
░
*Adam/v/lstm_7/lstm_cell_7/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *;
shared_name,*Adam/v/lstm_7/lstm_cell_7/recurrent_kernel
й
>Adam/v/lstm_7/lstm_cell_7/recurrent_kernel/Read/ReadVariableOpReadVariableOp*Adam/v/lstm_7/lstm_cell_7/recurrent_kernel*
_output_shapes

: *
dtype0
░
*Adam/m/lstm_7/lstm_cell_7/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *;
shared_name,*Adam/m/lstm_7/lstm_cell_7/recurrent_kernel
й
>Adam/m/lstm_7/lstm_cell_7/recurrent_kernel/Read/ReadVariableOpReadVariableOp*Adam/m/lstm_7/lstm_cell_7/recurrent_kernel*
_output_shapes

: *
dtype0
Ь
 Adam/v/lstm_7/lstm_cell_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *1
shared_name" Adam/v/lstm_7/lstm_cell_7/kernel
Х
4Adam/v/lstm_7/lstm_cell_7/kernel/Read/ReadVariableOpReadVariableOp Adam/v/lstm_7/lstm_cell_7/kernel*
_output_shapes

: *
dtype0
Ь
 Adam/m/lstm_7/lstm_cell_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *1
shared_name" Adam/m/lstm_7/lstm_cell_7/kernel
Х
4Adam/m/lstm_7/lstm_cell_7/kernel/Read/ReadVariableOpReadVariableOp Adam/m/lstm_7/lstm_cell_7/kernel*
_output_shapes

: *
dtype0
Ф
Adam/v/lstm_6/lstm_cell_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: */
shared_name Adam/v/lstm_6/lstm_cell_6/bias
Н
2Adam/v/lstm_6/lstm_cell_6/bias/Read/ReadVariableOpReadVariableOpAdam/v/lstm_6/lstm_cell_6/bias*
_output_shapes
: *
dtype0
Ф
Adam/m/lstm_6/lstm_cell_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: */
shared_name Adam/m/lstm_6/lstm_cell_6/bias
Н
2Adam/m/lstm_6/lstm_cell_6/bias/Read/ReadVariableOpReadVariableOpAdam/m/lstm_6/lstm_cell_6/bias*
_output_shapes
: *
dtype0
░
*Adam/v/lstm_6/lstm_cell_6/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *;
shared_name,*Adam/v/lstm_6/lstm_cell_6/recurrent_kernel
й
>Adam/v/lstm_6/lstm_cell_6/recurrent_kernel/Read/ReadVariableOpReadVariableOp*Adam/v/lstm_6/lstm_cell_6/recurrent_kernel*
_output_shapes

: *
dtype0
░
*Adam/m/lstm_6/lstm_cell_6/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *;
shared_name,*Adam/m/lstm_6/lstm_cell_6/recurrent_kernel
й
>Adam/m/lstm_6/lstm_cell_6/recurrent_kernel/Read/ReadVariableOpReadVariableOp*Adam/m/lstm_6/lstm_cell_6/recurrent_kernel*
_output_shapes

: *
dtype0
Ь
 Adam/v/lstm_6/lstm_cell_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *1
shared_name" Adam/v/lstm_6/lstm_cell_6/kernel
Х
4Adam/v/lstm_6/lstm_cell_6/kernel/Read/ReadVariableOpReadVariableOp Adam/v/lstm_6/lstm_cell_6/kernel*
_output_shapes

: *
dtype0
Ь
 Adam/m/lstm_6/lstm_cell_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *1
shared_name" Adam/m/lstm_6/lstm_cell_6/kernel
Х
4Adam/m/lstm_6/lstm_cell_6/kernel/Read/ReadVariableOpReadVariableOp Adam/m/lstm_6/lstm_cell_6/kernel*
_output_shapes

: *
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
f
	iterationVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
Ж
lstm_8/lstm_cell_8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_namelstm_8/lstm_cell_8/bias

+lstm_8/lstm_cell_8/bias/Read/ReadVariableOpReadVariableOplstm_8/lstm_cell_8/bias*
_output_shapes
: *
dtype0
в
#lstm_8/lstm_cell_8/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *4
shared_name%#lstm_8/lstm_cell_8/recurrent_kernel
Ы
7lstm_8/lstm_cell_8/recurrent_kernel/Read/ReadVariableOpReadVariableOp#lstm_8/lstm_cell_8/recurrent_kernel*
_output_shapes

: *
dtype0
О
lstm_8/lstm_cell_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: **
shared_namelstm_8/lstm_cell_8/kernel
З
-lstm_8/lstm_cell_8/kernel/Read/ReadVariableOpReadVariableOplstm_8/lstm_cell_8/kernel*
_output_shapes

: *
dtype0
Ж
lstm_7/lstm_cell_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_namelstm_7/lstm_cell_7/bias

+lstm_7/lstm_cell_7/bias/Read/ReadVariableOpReadVariableOplstm_7/lstm_cell_7/bias*
_output_shapes
: *
dtype0
в
#lstm_7/lstm_cell_7/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *4
shared_name%#lstm_7/lstm_cell_7/recurrent_kernel
Ы
7lstm_7/lstm_cell_7/recurrent_kernel/Read/ReadVariableOpReadVariableOp#lstm_7/lstm_cell_7/recurrent_kernel*
_output_shapes

: *
dtype0
О
lstm_7/lstm_cell_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: **
shared_namelstm_7/lstm_cell_7/kernel
З
-lstm_7/lstm_cell_7/kernel/Read/ReadVariableOpReadVariableOplstm_7/lstm_cell_7/kernel*
_output_shapes

: *
dtype0
Ж
lstm_6/lstm_cell_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_namelstm_6/lstm_cell_6/bias

+lstm_6/lstm_cell_6/bias/Read/ReadVariableOpReadVariableOplstm_6/lstm_cell_6/bias*
_output_shapes
: *
dtype0
в
#lstm_6/lstm_cell_6/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *4
shared_name%#lstm_6/lstm_cell_6/recurrent_kernel
Ы
7lstm_6/lstm_cell_6/recurrent_kernel/Read/ReadVariableOpReadVariableOp#lstm_6/lstm_cell_6/recurrent_kernel*
_output_shapes

: *
dtype0
О
lstm_6/lstm_cell_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: **
shared_namelstm_6/lstm_cell_6/kernel
З
-lstm_6/lstm_cell_6/kernel/Read/ReadVariableOpReadVariableOplstm_6/lstm_cell_6/kernel*
_output_shapes

: *
dtype0
p
dense_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_5/bias
i
 dense_5/bias/Read/ReadVariableOpReadVariableOpdense_5/bias*
_output_shapes
:*
dtype0
x
dense_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_namedense_5/kernel
q
"dense_5/kernel/Read/ReadVariableOpReadVariableOpdense_5/kernel*
_output_shapes

:*
dtype0
p
dense_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_4/bias
i
 dense_4/bias/Read/ReadVariableOpReadVariableOpdense_4/bias*
_output_shapes
:*
dtype0
x
dense_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_namedense_4/kernel
q
"dense_4/kernel/Read/ReadVariableOpReadVariableOpdense_4/kernel*
_output_shapes

:*
dtype0
З
serving_default_lstm_6_inputPlaceholder*+
_output_shapes
:         *
dtype0* 
shape:         
Ч
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_6_inputlstm_6/lstm_cell_6/kernel#lstm_6/lstm_cell_6/recurrent_kernellstm_6/lstm_cell_6/biaslstm_7/lstm_cell_7/kernel#lstm_7/lstm_cell_7/recurrent_kernellstm_7/lstm_cell_7/biaslstm_8/lstm_cell_8/kernel#lstm_8/lstm_cell_8/recurrent_kernellstm_8/lstm_cell_8/biasdense_4/kerneldense_4/biasdense_5/kerneldense_5/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         */
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *,
f'R%
#__inference_signature_wrapper_84293

NoOpNoOp
╗p
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Ўo
valueьoBщo Bтo
├
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer_with_weights-3
layer-6
layer-7
	layer_with_weights-4
	layer-8

	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
┴
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator
cell

state_spec*
е
	variables
trainable_variables
regularization_losses
	keras_api
 __call__
*!&call_and_return_all_conditional_losses
"_random_generator* 
┴
#	variables
$trainable_variables
%regularization_losses
&	keras_api
'__call__
*(&call_and_return_all_conditional_losses
)_random_generator
*cell
+
state_spec*
е
,	variables
-trainable_variables
.regularization_losses
/	keras_api
0__call__
*1&call_and_return_all_conditional_losses
2_random_generator* 
┴
3	variables
4trainable_variables
5regularization_losses
6	keras_api
7__call__
*8&call_and_return_all_conditional_losses
9_random_generator
:cell
;
state_spec*
е
<	variables
=trainable_variables
>regularization_losses
?	keras_api
@__call__
*A&call_and_return_all_conditional_losses
B_random_generator* 
ж
C	variables
Dtrainable_variables
Eregularization_losses
F	keras_api
G__call__
*H&call_and_return_all_conditional_losses

Ikernel
Jbias*
е
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
O__call__
*P&call_and_return_all_conditional_losses
Q_random_generator* 
ж
R	variables
Strainable_variables
Tregularization_losses
U	keras_api
V__call__
*W&call_and_return_all_conditional_losses

Xkernel
Ybias*
b
Z0
[1
\2
]3
^4
_5
`6
a7
b8
I9
J10
X11
Y12*
b
Z0
[1
\2
]3
^4
_5
`6
a7
b8
I9
J10
X11
Y12*
* 
░
cnon_trainable_variables

dlayers
emetrics
flayer_regularization_losses
glayer_metrics

	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
htrace_0
itrace_1
jtrace_2
ktrace_3* 
6
ltrace_0
mtrace_1
ntrace_2
otrace_3* 
* 
Б
p
_variables
q_iterations
r_learning_rate
s_index_dict
t
_momentums
u_velocities
v_update_step_xla*

wserving_default* 

Z0
[1
\2*

Z0
[1
\2*
* 
Я

xstates
ynon_trainable_variables

zlayers
{metrics
|layer_regularization_losses
}layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
8
~trace_0
trace_1
Аtrace_2
Бtrace_3* 
:
Вtrace_0
Гtrace_1
Дtrace_2
Еtrace_3* 
* 
ы
Ж	variables
Зtrainable_variables
Иregularization_losses
Й	keras_api
К__call__
+Л&call_and_return_all_conditional_losses
М_random_generator
Н
state_size

Zkernel
[recurrent_kernel
\bias*
* 
* 
* 
* 
Ц
Оnon_trainable_variables
Пlayers
Рmetrics
 Сlayer_regularization_losses
Тlayer_metrics
	variables
trainable_variables
regularization_losses
 __call__
*!&call_and_return_all_conditional_losses
&!"call_and_return_conditional_losses* 

Уtrace_0
Фtrace_1* 

Хtrace_0
Цtrace_1* 
* 

]0
^1
_2*

]0
^1
_2*
* 
е
Чstates
Шnon_trainable_variables
Щlayers
Ъmetrics
 Ыlayer_regularization_losses
Ьlayer_metrics
#	variables
$trainable_variables
%regularization_losses
'__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses*
:
Эtrace_0
Юtrace_1
Яtrace_2
аtrace_3* 
:
бtrace_0
вtrace_1
гtrace_2
дtrace_3* 
* 
ы
е	variables
жtrainable_variables
зregularization_losses
и	keras_api
й__call__
+к&call_and_return_all_conditional_losses
л_random_generator
м
state_size

]kernel
^recurrent_kernel
_bias*
* 
* 
* 
* 
Ц
нnon_trainable_variables
оlayers
пmetrics
 ░layer_regularization_losses
▒layer_metrics
,	variables
-trainable_variables
.regularization_losses
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses* 

▓trace_0
│trace_1* 

┤trace_0
╡trace_1* 
* 

`0
a1
b2*

`0
a1
b2*
* 
е
╢states
╖non_trainable_variables
╕layers
╣metrics
 ║layer_regularization_losses
╗layer_metrics
3	variables
4trainable_variables
5regularization_losses
7__call__
*8&call_and_return_all_conditional_losses
&8"call_and_return_conditional_losses*
:
╝trace_0
╜trace_1
╛trace_2
┐trace_3* 
:
└trace_0
┴trace_1
┬trace_2
├trace_3* 
* 
ы
─	variables
┼trainable_variables
╞regularization_losses
╟	keras_api
╚__call__
+╔&call_and_return_all_conditional_losses
╩_random_generator
╦
state_size

`kernel
arecurrent_kernel
bbias*
* 
* 
* 
* 
Ц
╠non_trainable_variables
═layers
╬metrics
 ╧layer_regularization_losses
╨layer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses* 

╤trace_0
╥trace_1* 

╙trace_0
╘trace_1* 
* 

I0
J1*

I0
J1*
* 
Ш
╒non_trainable_variables
╓layers
╫metrics
 ╪layer_regularization_losses
┘layer_metrics
C	variables
Dtrainable_variables
Eregularization_losses
G__call__
*H&call_and_return_all_conditional_losses
&H"call_and_return_conditional_losses*

┌trace_0* 

█trace_0* 
^X
VARIABLE_VALUEdense_4/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_4/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
Ц
▄non_trainable_variables
▌layers
▐metrics
 ▀layer_regularization_losses
рlayer_metrics
K	variables
Ltrainable_variables
Mregularization_losses
O__call__
*P&call_and_return_all_conditional_losses
&P"call_and_return_conditional_losses* 

сtrace_0
тtrace_1* 

уtrace_0
фtrace_1* 
* 

X0
Y1*

X0
Y1*
* 
Ш
хnon_trainable_variables
цlayers
чmetrics
 шlayer_regularization_losses
щlayer_metrics
R	variables
Strainable_variables
Tregularization_losses
V__call__
*W&call_and_return_all_conditional_losses
&W"call_and_return_conditional_losses*

ъtrace_0* 

ыtrace_0* 
^X
VARIABLE_VALUEdense_5/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_5/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUElstm_6/lstm_cell_6/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE#lstm_6/lstm_cell_6/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUElstm_6/lstm_cell_6/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUElstm_7/lstm_cell_7/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE#lstm_7/lstm_cell_7/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUElstm_7/lstm_cell_7/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUElstm_8/lstm_cell_8/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE#lstm_8/lstm_cell_8/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUElstm_8/lstm_cell_8/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
* 
C
0
1
2
3
4
5
6
7
	8*

ь0
э1*
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
ь
q0
ю1
я2
Ё3
ё4
Є5
є6
Ї7
ї8
Ў9
ў10
°11
∙12
·13
√14
№15
¤16
■17
 18
А19
Б20
В21
Г22
Д23
Е24
Ж25
З26*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
o
ю0
Ё1
Є2
Ї3
Ў4
°5
·6
№7
■8
А9
В10
Д11
Ж12*
o
я0
ё1
є2
ї3
ў4
∙5
√6
¤7
 8
Б9
Г10
Е11
З12*
* 
* 
* 
* 

0*
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

Z0
[1
\2*

Z0
[1
\2*
* 
Ю
Иnon_trainable_variables
Йlayers
Кmetrics
 Лlayer_regularization_losses
Мlayer_metrics
Ж	variables
Зtrainable_variables
Иregularization_losses
К__call__
+Л&call_and_return_all_conditional_losses
'Л"call_and_return_conditional_losses*

Нtrace_0
Оtrace_1* 

Пtrace_0
Рtrace_1* 
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

*0*
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

]0
^1
_2*

]0
^1
_2*
* 
Ю
Сnon_trainable_variables
Тlayers
Уmetrics
 Фlayer_regularization_losses
Хlayer_metrics
е	variables
жtrainable_variables
зregularization_losses
й__call__
+к&call_and_return_all_conditional_losses
'к"call_and_return_conditional_losses*

Цtrace_0
Чtrace_1* 

Шtrace_0
Щtrace_1* 
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

:0*
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

`0
a1
b2*

`0
a1
b2*
* 
Ю
Ъnon_trainable_variables
Ыlayers
Ьmetrics
 Эlayer_regularization_losses
Юlayer_metrics
─	variables
┼trainable_variables
╞regularization_losses
╚__call__
+╔&call_and_return_all_conditional_losses
'╔"call_and_return_conditional_losses*

Яtrace_0
аtrace_1* 

бtrace_0
вtrace_1* 
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
г	variables
д	keras_api

еtotal

жcount*
M
з	variables
и	keras_api

йtotal

кcount
л
_fn_kwargs*
ke
VARIABLE_VALUE Adam/m/lstm_6/lstm_cell_6/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUE Adam/v/lstm_6/lstm_cell_6/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUE*Adam/m/lstm_6/lstm_cell_6/recurrent_kernel1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUE*Adam/v/lstm_6/lstm_cell_6/recurrent_kernel1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEAdam/m/lstm_6/lstm_cell_6/bias1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEAdam/v/lstm_6/lstm_cell_6/bias1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUE Adam/m/lstm_7/lstm_cell_7/kernel1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUE Adam/v/lstm_7/lstm_cell_7/kernel1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUE*Adam/m/lstm_7/lstm_cell_7/recurrent_kernel1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE*Adam/v/lstm_7/lstm_cell_7/recurrent_kernel2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEAdam/m/lstm_7/lstm_cell_7/bias2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEAdam/v/lstm_7/lstm_cell_7/bias2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUE Adam/m/lstm_8/lstm_cell_8/kernel2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUE Adam/v/lstm_8/lstm_cell_8/kernel2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE*Adam/m/lstm_8/lstm_cell_8/recurrent_kernel2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE*Adam/v/lstm_8/lstm_cell_8/recurrent_kernel2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEAdam/m/lstm_8/lstm_cell_8/bias2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEAdam/v/lstm_8/lstm_cell_8/bias2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/dense_4/kernel2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/dense_4/kernel2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/dense_4/bias2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/dense_4/bias2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/dense_5/kernel2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/dense_5/kernel2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/dense_5/bias2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/dense_5/bias2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUE*
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

е0
ж1*

г	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

й0
к1*

з	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
М
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamedense_4/kerneldense_4/biasdense_5/kerneldense_5/biaslstm_6/lstm_cell_6/kernel#lstm_6/lstm_cell_6/recurrent_kernellstm_6/lstm_cell_6/biaslstm_7/lstm_cell_7/kernel#lstm_7/lstm_cell_7/recurrent_kernellstm_7/lstm_cell_7/biaslstm_8/lstm_cell_8/kernel#lstm_8/lstm_cell_8/recurrent_kernellstm_8/lstm_cell_8/bias	iterationlearning_rate Adam/m/lstm_6/lstm_cell_6/kernel Adam/v/lstm_6/lstm_cell_6/kernel*Adam/m/lstm_6/lstm_cell_6/recurrent_kernel*Adam/v/lstm_6/lstm_cell_6/recurrent_kernelAdam/m/lstm_6/lstm_cell_6/biasAdam/v/lstm_6/lstm_cell_6/bias Adam/m/lstm_7/lstm_cell_7/kernel Adam/v/lstm_7/lstm_cell_7/kernel*Adam/m/lstm_7/lstm_cell_7/recurrent_kernel*Adam/v/lstm_7/lstm_cell_7/recurrent_kernelAdam/m/lstm_7/lstm_cell_7/biasAdam/v/lstm_7/lstm_cell_7/bias Adam/m/lstm_8/lstm_cell_8/kernel Adam/v/lstm_8/lstm_cell_8/kernel*Adam/m/lstm_8/lstm_cell_8/recurrent_kernel*Adam/v/lstm_8/lstm_cell_8/recurrent_kernelAdam/m/lstm_8/lstm_cell_8/biasAdam/v/lstm_8/lstm_cell_8/biasAdam/m/dense_4/kernelAdam/v/dense_4/kernelAdam/m/dense_4/biasAdam/v/dense_4/biasAdam/m/dense_5/kernelAdam/v/dense_5/kernelAdam/m/dense_5/biasAdam/v/dense_5/biastotal_1count_1totalcountConst*:
Tin3
12/*
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
GPU 2J 8В *'
f"R 
__inference__traced_save_87853
З
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_4/kerneldense_4/biasdense_5/kerneldense_5/biaslstm_6/lstm_cell_6/kernel#lstm_6/lstm_cell_6/recurrent_kernellstm_6/lstm_cell_6/biaslstm_7/lstm_cell_7/kernel#lstm_7/lstm_cell_7/recurrent_kernellstm_7/lstm_cell_7/biaslstm_8/lstm_cell_8/kernel#lstm_8/lstm_cell_8/recurrent_kernellstm_8/lstm_cell_8/bias	iterationlearning_rate Adam/m/lstm_6/lstm_cell_6/kernel Adam/v/lstm_6/lstm_cell_6/kernel*Adam/m/lstm_6/lstm_cell_6/recurrent_kernel*Adam/v/lstm_6/lstm_cell_6/recurrent_kernelAdam/m/lstm_6/lstm_cell_6/biasAdam/v/lstm_6/lstm_cell_6/bias Adam/m/lstm_7/lstm_cell_7/kernel Adam/v/lstm_7/lstm_cell_7/kernel*Adam/m/lstm_7/lstm_cell_7/recurrent_kernel*Adam/v/lstm_7/lstm_cell_7/recurrent_kernelAdam/m/lstm_7/lstm_cell_7/biasAdam/v/lstm_7/lstm_cell_7/bias Adam/m/lstm_8/lstm_cell_8/kernel Adam/v/lstm_8/lstm_cell_8/kernel*Adam/m/lstm_8/lstm_cell_8/recurrent_kernel*Adam/v/lstm_8/lstm_cell_8/recurrent_kernelAdam/m/lstm_8/lstm_cell_8/biasAdam/v/lstm_8/lstm_cell_8/biasAdam/m/dense_4/kernelAdam/v/dense_4/kernelAdam/m/dense_4/biasAdam/v/dense_4/biasAdam/m/dense_5/kernelAdam/v/dense_5/kernelAdam/m/dense_5/biasAdam/v/dense_5/biastotal_1count_1totalcount*9
Tin2
02.*
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
GPU 2J 8В **
f%R#
!__inference__traced_restore_87998╣е0
Т	
╛
while_cond_83279
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_83279___redundant_placeholder03
/while_while_cond_83279___redundant_placeholder13
/while_while_cond_83279___redundant_placeholder23
/while_while_cond_83279___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
:
Щ

d
E__inference_dropout_11_layer_call_and_return_conditional_losses_87242

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:         Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::э╧М
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:         *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=ж
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    У
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*'
_output_shapes
:         a
IdentityIdentitydropout/SelectV2:output:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs
╤
Б
F__inference_lstm_cell_8_layer_call_and_return_conditional_losses_87560

inputs
states_0
states_10
matmul_readvariableop_resource: 2
 matmul_1_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity

identity_1

identity_2ИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpвMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:          r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╢
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         N
ReluRelusplit:output:2*
T0*'
_output_shapes
:         _
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         С
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         :         : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:QM
'
_output_shapes
:         
"
_user_specified_name
states_0:QM
'
_output_shapes
:         
"
_user_specified_name
states_1
ф
ё
+__inference_lstm_cell_7_layer_call_fn_87398

inputs
states_0
states_1
unknown: 
	unknown_0: 
	unknown_1: 
identity

identity_1

identity_2ИвStatefulPartitionedCallж
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         :         :         *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_lstm_cell_7_layer_call_and_return_conditional_losses_82394o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:         q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         :         : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:QM
'
_output_shapes
:         
"
_user_specified_name
states_0:QM
'
_output_shapes
:         
"
_user_specified_name
states_1
ч
b
D__inference_dropout_9_layer_call_and_return_conditional_losses_83748

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:         _

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:         "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         :S O
+
_output_shapes
:         
 
_user_specified_nameinputs
ф
ё
+__inference_lstm_cell_8_layer_call_fn_87479

inputs
states_0
states_1
unknown: 
	unknown_0: 
	unknown_1: 
identity

identity_1

identity_2ИвStatefulPartitionedCallж
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         :         :         *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_lstm_cell_8_layer_call_and_return_conditional_losses_82599o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:         q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         :         : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:QM
'
_output_shapes
:         
"
_user_specified_name
states_0:QM
'
_output_shapes
:         
"
_user_specified_name
states_1
╤
Б
F__inference_lstm_cell_8_layer_call_and_return_conditional_losses_87528

inputs
states_0
states_10
matmul_readvariableop_resource: 2
 matmul_1_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity

identity_1

identity_2ИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpвMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:          r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╢
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         N
ReluRelusplit:output:2*
T0*'
_output_shapes
:         _
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         С
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         :         : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:QM
'
_output_shapes
:         
"
_user_specified_name
states_0:QM
'
_output_shapes
:         
"
_user_specified_name
states_1
Щ#
╧
while_body_82058
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0+
while_lstm_cell_6_82082_0: +
while_lstm_cell_6_82084_0: '
while_lstm_cell_6_82086_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor)
while_lstm_cell_6_82082: )
while_lstm_cell_6_82084: %
while_lstm_cell_6_82086: Ив)while/lstm_cell_6/StatefulPartitionedCallИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0к
)while/lstm_cell_6/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_6_82082_0while_lstm_cell_6_82084_0while_lstm_cell_6_82086_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         :         :         *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_lstm_cell_6_layer_call_and_return_conditional_losses_82044█
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/lstm_cell_6/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:щш╥M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: П
while/Identity_4Identity2while/lstm_cell_6/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         П
while/Identity_5Identity2while/lstm_cell_6/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         x

while/NoOpNoOp*^while/lstm_cell_6/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"4
while_lstm_cell_6_82082while_lstm_cell_6_82082_0"4
while_lstm_cell_6_82084while_lstm_cell_6_82084_0"4
while_lstm_cell_6_82086while_lstm_cell_6_82086_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2V
)while/lstm_cell_6/StatefulPartitionedCall)while/lstm_cell_6/StatefulPartitionedCall:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
: 
┼	
є
B__inference_dense_5_layer_call_and_return_conditional_losses_83428

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
ф
ё
+__inference_lstm_cell_7_layer_call_fn_87381

inputs
states_0
states_1
unknown: 
	unknown_0: 
	unknown_1: 
identity

identity_1

identity_2ИвStatefulPartitionedCallж
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         :         :         *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_lstm_cell_7_layer_call_and_return_conditional_losses_82249o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:         q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         :         : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:QM
'
_output_shapes
:         
"
_user_specified_name
states_0:QM
'
_output_shapes
:         
"
_user_specified_name
states_1
╤Д
э
G__inference_sequential_2_layer_call_and_return_conditional_losses_85263

inputsC
1lstm_6_lstm_cell_6_matmul_readvariableop_resource: E
3lstm_6_lstm_cell_6_matmul_1_readvariableop_resource: @
2lstm_6_lstm_cell_6_biasadd_readvariableop_resource: C
1lstm_7_lstm_cell_7_matmul_readvariableop_resource: E
3lstm_7_lstm_cell_7_matmul_1_readvariableop_resource: @
2lstm_7_lstm_cell_7_biasadd_readvariableop_resource: C
1lstm_8_lstm_cell_8_matmul_readvariableop_resource: E
3lstm_8_lstm_cell_8_matmul_1_readvariableop_resource: @
2lstm_8_lstm_cell_8_biasadd_readvariableop_resource: 8
&dense_4_matmul_readvariableop_resource:5
'dense_4_biasadd_readvariableop_resource:8
&dense_5_matmul_readvariableop_resource:5
'dense_5_biasadd_readvariableop_resource:
identityИвdense_4/BiasAdd/ReadVariableOpвdense_4/MatMul/ReadVariableOpвdense_5/BiasAdd/ReadVariableOpвdense_5/MatMul/ReadVariableOpв)lstm_6/lstm_cell_6/BiasAdd/ReadVariableOpв(lstm_6/lstm_cell_6/MatMul/ReadVariableOpв*lstm_6/lstm_cell_6/MatMul_1/ReadVariableOpвlstm_6/whileв)lstm_7/lstm_cell_7/BiasAdd/ReadVariableOpв(lstm_7/lstm_cell_7/MatMul/ReadVariableOpв*lstm_7/lstm_cell_7/MatMul_1/ReadVariableOpвlstm_7/whileв)lstm_8/lstm_cell_8/BiasAdd/ReadVariableOpв(lstm_8/lstm_cell_8/MatMul/ReadVariableOpв*lstm_8/lstm_cell_8/MatMul_1/ReadVariableOpвlstm_8/whileP
lstm_6/ShapeShapeinputs*
T0*
_output_shapes
::э╧d
lstm_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: f
lstm_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:f
lstm_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ї
lstm_6/strided_sliceStridedSlicelstm_6/Shape:output:0#lstm_6/strided_slice/stack:output:0%lstm_6/strided_slice/stack_1:output:0%lstm_6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskW
lstm_6/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :И
lstm_6/zeros/packedPacklstm_6/strided_slice:output:0lstm_6/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:W
lstm_6/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Б
lstm_6/zerosFilllstm_6/zeros/packed:output:0lstm_6/zeros/Const:output:0*
T0*'
_output_shapes
:         Y
lstm_6/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :М
lstm_6/zeros_1/packedPacklstm_6/strided_slice:output:0 lstm_6/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_6/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    З
lstm_6/zeros_1Filllstm_6/zeros_1/packed:output:0lstm_6/zeros_1/Const:output:0*
T0*'
_output_shapes
:         j
lstm_6/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          {
lstm_6/transpose	Transposeinputslstm_6/transpose/perm:output:0*
T0*+
_output_shapes
:         `
lstm_6/Shape_1Shapelstm_6/transpose:y:0*
T0*
_output_shapes
::э╧f
lstm_6/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_6/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_6/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:■
lstm_6/strided_slice_1StridedSlicelstm_6/Shape_1:output:0%lstm_6/strided_slice_1/stack:output:0'lstm_6/strided_slice_1/stack_1:output:0'lstm_6/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskm
"lstm_6/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ╔
lstm_6/TensorArrayV2TensorListReserve+lstm_6/TensorArrayV2/element_shape:output:0lstm_6/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Н
<lstm_6/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ї
.lstm_6/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_6/transpose:y:0Elstm_6/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥f
lstm_6/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_6/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_6/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:М
lstm_6/strided_slice_2StridedSlicelstm_6/transpose:y:0%lstm_6/strided_slice_2/stack:output:0'lstm_6/strided_slice_2/stack_1:output:0'lstm_6/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskЪ
(lstm_6/lstm_cell_6/MatMul/ReadVariableOpReadVariableOp1lstm_6_lstm_cell_6_matmul_readvariableop_resource*
_output_shapes

: *
dtype0и
lstm_6/lstm_cell_6/MatMulMatMullstm_6/strided_slice_2:output:00lstm_6/lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Ю
*lstm_6/lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp3lstm_6_lstm_cell_6_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0в
lstm_6/lstm_cell_6/MatMul_1MatMullstm_6/zeros:output:02lstm_6/lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Э
lstm_6/lstm_cell_6/addAddV2#lstm_6/lstm_cell_6/MatMul:product:0%lstm_6/lstm_cell_6/MatMul_1:product:0*
T0*'
_output_shapes
:          Ш
)lstm_6/lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp2lstm_6_lstm_cell_6_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0ж
lstm_6/lstm_cell_6/BiasAddBiasAddlstm_6/lstm_cell_6/add:z:01lstm_6/lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          d
"lstm_6/lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :я
lstm_6/lstm_cell_6/splitSplit+lstm_6/lstm_cell_6/split/split_dim:output:0#lstm_6/lstm_cell_6/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitz
lstm_6/lstm_cell_6/SigmoidSigmoid!lstm_6/lstm_cell_6/split:output:0*
T0*'
_output_shapes
:         |
lstm_6/lstm_cell_6/Sigmoid_1Sigmoid!lstm_6/lstm_cell_6/split:output:1*
T0*'
_output_shapes
:         К
lstm_6/lstm_cell_6/mulMul lstm_6/lstm_cell_6/Sigmoid_1:y:0lstm_6/zeros_1:output:0*
T0*'
_output_shapes
:         t
lstm_6/lstm_cell_6/ReluRelu!lstm_6/lstm_cell_6/split:output:2*
T0*'
_output_shapes
:         Ш
lstm_6/lstm_cell_6/mul_1Mullstm_6/lstm_cell_6/Sigmoid:y:0%lstm_6/lstm_cell_6/Relu:activations:0*
T0*'
_output_shapes
:         Н
lstm_6/lstm_cell_6/add_1AddV2lstm_6/lstm_cell_6/mul:z:0lstm_6/lstm_cell_6/mul_1:z:0*
T0*'
_output_shapes
:         |
lstm_6/lstm_cell_6/Sigmoid_2Sigmoid!lstm_6/lstm_cell_6/split:output:3*
T0*'
_output_shapes
:         q
lstm_6/lstm_cell_6/Relu_1Relulstm_6/lstm_cell_6/add_1:z:0*
T0*'
_output_shapes
:         Ь
lstm_6/lstm_cell_6/mul_2Mul lstm_6/lstm_cell_6/Sigmoid_2:y:0'lstm_6/lstm_cell_6/Relu_1:activations:0*
T0*'
_output_shapes
:         u
$lstm_6/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ═
lstm_6/TensorArrayV2_1TensorListReserve-lstm_6/TensorArrayV2_1/element_shape:output:0lstm_6/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥M
lstm_6/timeConst*
_output_shapes
: *
dtype0*
value	B : j
lstm_6/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         [
lstm_6/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ▀
lstm_6/whileWhile"lstm_6/while/loop_counter:output:0(lstm_6/while/maximum_iterations:output:0lstm_6/time:output:0lstm_6/TensorArrayV2_1:handle:0lstm_6/zeros:output:0lstm_6/zeros_1:output:0lstm_6/strided_slice_1:output:0>lstm_6/TensorArrayUnstack/TensorListFromTensor:output_handle:01lstm_6_lstm_cell_6_matmul_readvariableop_resource3lstm_6_lstm_cell_6_matmul_1_readvariableop_resource2lstm_6_lstm_cell_6_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *#
bodyR
lstm_6_while_body_84882*#
condR
lstm_6_while_cond_84881*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations И
7lstm_6/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╫
)lstm_6/TensorArrayV2Stack/TensorListStackTensorListStacklstm_6/while:output:3@lstm_6/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         *
element_dtype0o
lstm_6/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         h
lstm_6/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: h
lstm_6/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:к
lstm_6/strided_slice_3StridedSlice2lstm_6/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_6/strided_slice_3/stack:output:0'lstm_6/strided_slice_3/stack_1:output:0'lstm_6/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskl
lstm_6/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          л
lstm_6/transpose_1	Transpose2lstm_6/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_6/transpose_1/perm:output:0*
T0*+
_output_shapes
:         b
lstm_6/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    l
dropout_8/IdentityIdentitylstm_6/transpose_1:y:0*
T0*+
_output_shapes
:         e
lstm_7/ShapeShapedropout_8/Identity:output:0*
T0*
_output_shapes
::э╧d
lstm_7/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: f
lstm_7/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:f
lstm_7/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ї
lstm_7/strided_sliceStridedSlicelstm_7/Shape:output:0#lstm_7/strided_slice/stack:output:0%lstm_7/strided_slice/stack_1:output:0%lstm_7/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskW
lstm_7/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :И
lstm_7/zeros/packedPacklstm_7/strided_slice:output:0lstm_7/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:W
lstm_7/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Б
lstm_7/zerosFilllstm_7/zeros/packed:output:0lstm_7/zeros/Const:output:0*
T0*'
_output_shapes
:         Y
lstm_7/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :М
lstm_7/zeros_1/packedPacklstm_7/strided_slice:output:0 lstm_7/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_7/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    З
lstm_7/zeros_1Filllstm_7/zeros_1/packed:output:0lstm_7/zeros_1/Const:output:0*
T0*'
_output_shapes
:         j
lstm_7/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Р
lstm_7/transpose	Transposedropout_8/Identity:output:0lstm_7/transpose/perm:output:0*
T0*+
_output_shapes
:         `
lstm_7/Shape_1Shapelstm_7/transpose:y:0*
T0*
_output_shapes
::э╧f
lstm_7/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_7/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_7/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:■
lstm_7/strided_slice_1StridedSlicelstm_7/Shape_1:output:0%lstm_7/strided_slice_1/stack:output:0'lstm_7/strided_slice_1/stack_1:output:0'lstm_7/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskm
"lstm_7/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ╔
lstm_7/TensorArrayV2TensorListReserve+lstm_7/TensorArrayV2/element_shape:output:0lstm_7/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Н
<lstm_7/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ї
.lstm_7/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_7/transpose:y:0Elstm_7/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥f
lstm_7/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_7/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_7/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:М
lstm_7/strided_slice_2StridedSlicelstm_7/transpose:y:0%lstm_7/strided_slice_2/stack:output:0'lstm_7/strided_slice_2/stack_1:output:0'lstm_7/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskЪ
(lstm_7/lstm_cell_7/MatMul/ReadVariableOpReadVariableOp1lstm_7_lstm_cell_7_matmul_readvariableop_resource*
_output_shapes

: *
dtype0и
lstm_7/lstm_cell_7/MatMulMatMullstm_7/strided_slice_2:output:00lstm_7/lstm_cell_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Ю
*lstm_7/lstm_cell_7/MatMul_1/ReadVariableOpReadVariableOp3lstm_7_lstm_cell_7_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0в
lstm_7/lstm_cell_7/MatMul_1MatMullstm_7/zeros:output:02lstm_7/lstm_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Э
lstm_7/lstm_cell_7/addAddV2#lstm_7/lstm_cell_7/MatMul:product:0%lstm_7/lstm_cell_7/MatMul_1:product:0*
T0*'
_output_shapes
:          Ш
)lstm_7/lstm_cell_7/BiasAdd/ReadVariableOpReadVariableOp2lstm_7_lstm_cell_7_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0ж
lstm_7/lstm_cell_7/BiasAddBiasAddlstm_7/lstm_cell_7/add:z:01lstm_7/lstm_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          d
"lstm_7/lstm_cell_7/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :я
lstm_7/lstm_cell_7/splitSplit+lstm_7/lstm_cell_7/split/split_dim:output:0#lstm_7/lstm_cell_7/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitz
lstm_7/lstm_cell_7/SigmoidSigmoid!lstm_7/lstm_cell_7/split:output:0*
T0*'
_output_shapes
:         |
lstm_7/lstm_cell_7/Sigmoid_1Sigmoid!lstm_7/lstm_cell_7/split:output:1*
T0*'
_output_shapes
:         К
lstm_7/lstm_cell_7/mulMul lstm_7/lstm_cell_7/Sigmoid_1:y:0lstm_7/zeros_1:output:0*
T0*'
_output_shapes
:         t
lstm_7/lstm_cell_7/ReluRelu!lstm_7/lstm_cell_7/split:output:2*
T0*'
_output_shapes
:         Ш
lstm_7/lstm_cell_7/mul_1Mullstm_7/lstm_cell_7/Sigmoid:y:0%lstm_7/lstm_cell_7/Relu:activations:0*
T0*'
_output_shapes
:         Н
lstm_7/lstm_cell_7/add_1AddV2lstm_7/lstm_cell_7/mul:z:0lstm_7/lstm_cell_7/mul_1:z:0*
T0*'
_output_shapes
:         |
lstm_7/lstm_cell_7/Sigmoid_2Sigmoid!lstm_7/lstm_cell_7/split:output:3*
T0*'
_output_shapes
:         q
lstm_7/lstm_cell_7/Relu_1Relulstm_7/lstm_cell_7/add_1:z:0*
T0*'
_output_shapes
:         Ь
lstm_7/lstm_cell_7/mul_2Mul lstm_7/lstm_cell_7/Sigmoid_2:y:0'lstm_7/lstm_cell_7/Relu_1:activations:0*
T0*'
_output_shapes
:         u
$lstm_7/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ═
lstm_7/TensorArrayV2_1TensorListReserve-lstm_7/TensorArrayV2_1/element_shape:output:0lstm_7/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥M
lstm_7/timeConst*
_output_shapes
: *
dtype0*
value	B : j
lstm_7/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         [
lstm_7/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ▀
lstm_7/whileWhile"lstm_7/while/loop_counter:output:0(lstm_7/while/maximum_iterations:output:0lstm_7/time:output:0lstm_7/TensorArrayV2_1:handle:0lstm_7/zeros:output:0lstm_7/zeros_1:output:0lstm_7/strided_slice_1:output:0>lstm_7/TensorArrayUnstack/TensorListFromTensor:output_handle:01lstm_7_lstm_cell_7_matmul_readvariableop_resource3lstm_7_lstm_cell_7_matmul_1_readvariableop_resource2lstm_7_lstm_cell_7_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *#
bodyR
lstm_7_while_body_85022*#
condR
lstm_7_while_cond_85021*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations И
7lstm_7/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╫
)lstm_7/TensorArrayV2Stack/TensorListStackTensorListStacklstm_7/while:output:3@lstm_7/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         *
element_dtype0o
lstm_7/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         h
lstm_7/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: h
lstm_7/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:к
lstm_7/strided_slice_3StridedSlice2lstm_7/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_7/strided_slice_3/stack:output:0'lstm_7/strided_slice_3/stack_1:output:0'lstm_7/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskl
lstm_7/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          л
lstm_7/transpose_1	Transpose2lstm_7/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_7/transpose_1/perm:output:0*
T0*+
_output_shapes
:         b
lstm_7/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    l
dropout_9/IdentityIdentitylstm_7/transpose_1:y:0*
T0*+
_output_shapes
:         e
lstm_8/ShapeShapedropout_9/Identity:output:0*
T0*
_output_shapes
::э╧d
lstm_8/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: f
lstm_8/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:f
lstm_8/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ї
lstm_8/strided_sliceStridedSlicelstm_8/Shape:output:0#lstm_8/strided_slice/stack:output:0%lstm_8/strided_slice/stack_1:output:0%lstm_8/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskW
lstm_8/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :И
lstm_8/zeros/packedPacklstm_8/strided_slice:output:0lstm_8/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:W
lstm_8/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Б
lstm_8/zerosFilllstm_8/zeros/packed:output:0lstm_8/zeros/Const:output:0*
T0*'
_output_shapes
:         Y
lstm_8/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :М
lstm_8/zeros_1/packedPacklstm_8/strided_slice:output:0 lstm_8/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_8/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    З
lstm_8/zeros_1Filllstm_8/zeros_1/packed:output:0lstm_8/zeros_1/Const:output:0*
T0*'
_output_shapes
:         j
lstm_8/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Р
lstm_8/transpose	Transposedropout_9/Identity:output:0lstm_8/transpose/perm:output:0*
T0*+
_output_shapes
:         `
lstm_8/Shape_1Shapelstm_8/transpose:y:0*
T0*
_output_shapes
::э╧f
lstm_8/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_8/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_8/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:■
lstm_8/strided_slice_1StridedSlicelstm_8/Shape_1:output:0%lstm_8/strided_slice_1/stack:output:0'lstm_8/strided_slice_1/stack_1:output:0'lstm_8/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskm
"lstm_8/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ╔
lstm_8/TensorArrayV2TensorListReserve+lstm_8/TensorArrayV2/element_shape:output:0lstm_8/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Н
<lstm_8/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ї
.lstm_8/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_8/transpose:y:0Elstm_8/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥f
lstm_8/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_8/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_8/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:М
lstm_8/strided_slice_2StridedSlicelstm_8/transpose:y:0%lstm_8/strided_slice_2/stack:output:0'lstm_8/strided_slice_2/stack_1:output:0'lstm_8/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskЪ
(lstm_8/lstm_cell_8/MatMul/ReadVariableOpReadVariableOp1lstm_8_lstm_cell_8_matmul_readvariableop_resource*
_output_shapes

: *
dtype0и
lstm_8/lstm_cell_8/MatMulMatMullstm_8/strided_slice_2:output:00lstm_8/lstm_cell_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Ю
*lstm_8/lstm_cell_8/MatMul_1/ReadVariableOpReadVariableOp3lstm_8_lstm_cell_8_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0в
lstm_8/lstm_cell_8/MatMul_1MatMullstm_8/zeros:output:02lstm_8/lstm_cell_8/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Э
lstm_8/lstm_cell_8/addAddV2#lstm_8/lstm_cell_8/MatMul:product:0%lstm_8/lstm_cell_8/MatMul_1:product:0*
T0*'
_output_shapes
:          Ш
)lstm_8/lstm_cell_8/BiasAdd/ReadVariableOpReadVariableOp2lstm_8_lstm_cell_8_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0ж
lstm_8/lstm_cell_8/BiasAddBiasAddlstm_8/lstm_cell_8/add:z:01lstm_8/lstm_cell_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          d
"lstm_8/lstm_cell_8/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :я
lstm_8/lstm_cell_8/splitSplit+lstm_8/lstm_cell_8/split/split_dim:output:0#lstm_8/lstm_cell_8/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitz
lstm_8/lstm_cell_8/SigmoidSigmoid!lstm_8/lstm_cell_8/split:output:0*
T0*'
_output_shapes
:         |
lstm_8/lstm_cell_8/Sigmoid_1Sigmoid!lstm_8/lstm_cell_8/split:output:1*
T0*'
_output_shapes
:         К
lstm_8/lstm_cell_8/mulMul lstm_8/lstm_cell_8/Sigmoid_1:y:0lstm_8/zeros_1:output:0*
T0*'
_output_shapes
:         t
lstm_8/lstm_cell_8/ReluRelu!lstm_8/lstm_cell_8/split:output:2*
T0*'
_output_shapes
:         Ш
lstm_8/lstm_cell_8/mul_1Mullstm_8/lstm_cell_8/Sigmoid:y:0%lstm_8/lstm_cell_8/Relu:activations:0*
T0*'
_output_shapes
:         Н
lstm_8/lstm_cell_8/add_1AddV2lstm_8/lstm_cell_8/mul:z:0lstm_8/lstm_cell_8/mul_1:z:0*
T0*'
_output_shapes
:         |
lstm_8/lstm_cell_8/Sigmoid_2Sigmoid!lstm_8/lstm_cell_8/split:output:3*
T0*'
_output_shapes
:         q
lstm_8/lstm_cell_8/Relu_1Relulstm_8/lstm_cell_8/add_1:z:0*
T0*'
_output_shapes
:         Ь
lstm_8/lstm_cell_8/mul_2Mul lstm_8/lstm_cell_8/Sigmoid_2:y:0'lstm_8/lstm_cell_8/Relu_1:activations:0*
T0*'
_output_shapes
:         u
$lstm_8/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       e
#lstm_8/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┌
lstm_8/TensorArrayV2_1TensorListReserve-lstm_8/TensorArrayV2_1/element_shape:output:0,lstm_8/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥M
lstm_8/timeConst*
_output_shapes
: *
dtype0*
value	B : j
lstm_8/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         [
lstm_8/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ▀
lstm_8/whileWhile"lstm_8/while/loop_counter:output:0(lstm_8/while/maximum_iterations:output:0lstm_8/time:output:0lstm_8/TensorArrayV2_1:handle:0lstm_8/zeros:output:0lstm_8/zeros_1:output:0lstm_8/strided_slice_1:output:0>lstm_8/TensorArrayUnstack/TensorListFromTensor:output_handle:01lstm_8_lstm_cell_8_matmul_readvariableop_resource3lstm_8_lstm_cell_8_matmul_1_readvariableop_resource2lstm_8_lstm_cell_8_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *#
bodyR
lstm_8_while_body_85163*#
condR
lstm_8_while_cond_85162*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations И
7lstm_8/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ы
)lstm_8/TensorArrayV2Stack/TensorListStackTensorListStacklstm_8/while:output:3@lstm_8/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         *
element_dtype0*
num_elementso
lstm_8/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         h
lstm_8/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: h
lstm_8/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:к
lstm_8/strided_slice_3StridedSlice2lstm_8/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_8/strided_slice_3/stack:output:0'lstm_8/strided_slice_3/stack_1:output:0'lstm_8/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskl
lstm_8/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          л
lstm_8/transpose_1	Transpose2lstm_8/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_8/transpose_1/perm:output:0*
T0*+
_output_shapes
:         b
lstm_8/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
dropout_10/IdentityIdentitylstm_8/strided_slice_3:output:0*
T0*'
_output_shapes
:         Д
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource*
_output_shapes

:*
dtype0П
dense_4/MatMulMatMuldropout_10/Identity:output:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         В
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0О
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         `
dense_4/ReluReludense_4/BiasAdd:output:0*
T0*'
_output_shapes
:         m
dropout_11/IdentityIdentitydense_4/Relu:activations:0*
T0*'
_output_shapes
:         Д
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource*
_output_shapes

:*
dtype0П
dense_5/MatMulMatMuldropout_11/Identity:output:0%dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         В
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0О
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         g
IdentityIdentitydense_5/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         Б
NoOpNoOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp*^lstm_6/lstm_cell_6/BiasAdd/ReadVariableOp)^lstm_6/lstm_cell_6/MatMul/ReadVariableOp+^lstm_6/lstm_cell_6/MatMul_1/ReadVariableOp^lstm_6/while*^lstm_7/lstm_cell_7/BiasAdd/ReadVariableOp)^lstm_7/lstm_cell_7/MatMul/ReadVariableOp+^lstm_7/lstm_cell_7/MatMul_1/ReadVariableOp^lstm_7/while*^lstm_8/lstm_cell_8/BiasAdd/ReadVariableOp)^lstm_8/lstm_cell_8/MatMul/ReadVariableOp+^lstm_8/lstm_cell_8/MatMul_1/ReadVariableOp^lstm_8/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:         : : : : : : : : : : : : : 2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2>
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp2V
)lstm_6/lstm_cell_6/BiasAdd/ReadVariableOp)lstm_6/lstm_cell_6/BiasAdd/ReadVariableOp2T
(lstm_6/lstm_cell_6/MatMul/ReadVariableOp(lstm_6/lstm_cell_6/MatMul/ReadVariableOp2X
*lstm_6/lstm_cell_6/MatMul_1/ReadVariableOp*lstm_6/lstm_cell_6/MatMul_1/ReadVariableOp2
lstm_6/whilelstm_6/while2V
)lstm_7/lstm_cell_7/BiasAdd/ReadVariableOp)lstm_7/lstm_cell_7/BiasAdd/ReadVariableOp2T
(lstm_7/lstm_cell_7/MatMul/ReadVariableOp(lstm_7/lstm_cell_7/MatMul/ReadVariableOp2X
*lstm_7/lstm_cell_7/MatMul_1/ReadVariableOp*lstm_7/lstm_cell_7/MatMul_1/ReadVariableOp2
lstm_7/whilelstm_7/while2V
)lstm_8/lstm_cell_8/BiasAdd/ReadVariableOp)lstm_8/lstm_cell_8/BiasAdd/ReadVariableOp2T
(lstm_8/lstm_cell_8/MatMul/ReadVariableOp(lstm_8/lstm_cell_8/MatMul/ReadVariableOp2X
*lstm_8/lstm_cell_8/MatMul_1/ReadVariableOp*lstm_8/lstm_cell_8/MatMul_1/ReadVariableOp2
lstm_8/whilelstm_8/while:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
ч
b
D__inference_dropout_8_layer_call_and_return_conditional_losses_85906

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:         _

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:         "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         :S O
+
_output_shapes
:         
 
_user_specified_nameinputs
Т	
╛
while_cond_82057
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_82057___redundant_placeholder03
/while_while_cond_82057___redundant_placeholder13
/while_while_cond_82057___redundant_placeholder23
/while_while_cond_82057___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
:
║
╨
,__inference_sequential_2_layer_call_fn_84066
lstm_6_input
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: 
	unknown_5: 
	unknown_6: 
	unknown_7: 
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:
identityИвStatefulPartitionedCallє
StatefulPartitionedCallStatefulPartitionedCalllstm_6_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         */
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_sequential_2_layer_call_and_return_conditional_losses_84037o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:         : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
+
_output_shapes
:         
&
_user_specified_namelstm_6_input
ф

╩
lstm_6_while_cond_84413*
&lstm_6_while_lstm_6_while_loop_counter0
,lstm_6_while_lstm_6_while_maximum_iterations
lstm_6_while_placeholder
lstm_6_while_placeholder_1
lstm_6_while_placeholder_2
lstm_6_while_placeholder_3,
(lstm_6_while_less_lstm_6_strided_slice_1A
=lstm_6_while_lstm_6_while_cond_84413___redundant_placeholder0A
=lstm_6_while_lstm_6_while_cond_84413___redundant_placeholder1A
=lstm_6_while_lstm_6_while_cond_84413___redundant_placeholder2A
=lstm_6_while_lstm_6_while_cond_84413___redundant_placeholder3
lstm_6_while_identity
~
lstm_6/while/LessLesslstm_6_while_placeholder(lstm_6_while_less_lstm_6_strided_slice_1*
T0*
_output_shapes
: Y
lstm_6/while/IdentityIdentitylstm_6/while/Less:z:0*
T0
*
_output_shapes
: "7
lstm_6_while_identitylstm_6/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : :::::Q M

_output_shapes
: 
3
_user_specified_namelstm_6/while/loop_counter:WS

_output_shapes
: 
9
_user_specified_name!lstm_6/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
:
Т	
╛
while_cond_86797
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_86797___redundant_placeholder03
/while_while_cond_86797___redundant_placeholder13
/while_while_cond_86797___redundant_placeholder23
/while_while_cond_86797___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
:
°
░
&__inference_lstm_6_layer_call_fn_85296

inputs
unknown: 
	unknown_0: 
	unknown_1: 
identityИвStatefulPartitionedCallч
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_lstm_6_layer_call_and_return_conditional_losses_83035s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
н
E
)__inference_dropout_8_layer_call_fn_85889

inputs
identity│
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_8_layer_call_and_return_conditional_losses_83592d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         :S O
+
_output_shapes
:         
 
_user_specified_nameinputs
Т	
╛
while_cond_86008
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_86008___redundant_placeholder03
/while_while_cond_86008___redundant_placeholder13
/while_while_cond_86008___redundant_placeholder23
/while_while_cond_86008___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
:
Щ

є
B__inference_dense_4_layer_call_and_return_conditional_losses_87220

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:         a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
∙8
∙
A__inference_lstm_8_layer_call_and_return_conditional_losses_82831

inputs#
lstm_cell_8_82747: #
lstm_cell_8_82749: 
lstm_cell_8_82751: 
identityИв#lstm_cell_8/StatefulPartitionedCallвwhileI
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::э╧_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskь
#lstm_cell_8/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_8_82747lstm_cell_8_82749lstm_cell_8_82751*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         :         :         *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_lstm_cell_8_layer_call_and_return_conditional_losses_82746n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : п
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_8_82747lstm_cell_8_82749lstm_cell_8_82751*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_82761*
condR
while_cond_82760*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╓
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         *
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:         t
NoOpNoOp$^lstm_cell_8/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2J
#lstm_cell_8/StatefulPartitionedCall#lstm_cell_8/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs
ы
╬
$sequential_2_lstm_7_while_cond_81593D
@sequential_2_lstm_7_while_sequential_2_lstm_7_while_loop_counterJ
Fsequential_2_lstm_7_while_sequential_2_lstm_7_while_maximum_iterations)
%sequential_2_lstm_7_while_placeholder+
'sequential_2_lstm_7_while_placeholder_1+
'sequential_2_lstm_7_while_placeholder_2+
'sequential_2_lstm_7_while_placeholder_3F
Bsequential_2_lstm_7_while_less_sequential_2_lstm_7_strided_slice_1[
Wsequential_2_lstm_7_while_sequential_2_lstm_7_while_cond_81593___redundant_placeholder0[
Wsequential_2_lstm_7_while_sequential_2_lstm_7_while_cond_81593___redundant_placeholder1[
Wsequential_2_lstm_7_while_sequential_2_lstm_7_while_cond_81593___redundant_placeholder2[
Wsequential_2_lstm_7_while_sequential_2_lstm_7_while_cond_81593___redundant_placeholder3&
"sequential_2_lstm_7_while_identity
▓
sequential_2/lstm_7/while/LessLess%sequential_2_lstm_7_while_placeholderBsequential_2_lstm_7_while_less_sequential_2_lstm_7_strided_slice_1*
T0*
_output_shapes
: s
"sequential_2/lstm_7/while/IdentityIdentity"sequential_2/lstm_7/while/Less:z:0*
T0
*
_output_shapes
: "Q
"sequential_2_lstm_7_while_identity+sequential_2/lstm_7/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : :::::^ Z

_output_shapes
: 
@
_user_specified_name(&sequential_2/lstm_7/while/loop_counter:d`

_output_shapes
: 
F
_user_specified_name.,sequential_2/lstm_7/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
:
┼	
є
B__inference_dense_5_layer_call_and_return_conditional_losses_87266

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
Т	
╛
while_cond_81912
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_81912___redundant_placeholder03
/while_while_cond_81912___redundant_placeholder13
/while_while_cond_81912___redundant_placeholder23
/while_while_cond_81912___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
:
╪
c
E__inference_dropout_10_layer_call_and_return_conditional_losses_87200

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:         [

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:         "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs
Т	
╛
while_cond_82262
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_82262___redundant_placeholder03
/while_while_cond_82262___redundant_placeholder13
/while_while_cond_82262___redundant_placeholder23
/while_while_cond_82262___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
:
╤
Б
F__inference_lstm_cell_7_layer_call_and_return_conditional_losses_87462

inputs
states_0
states_10
matmul_readvariableop_resource: 2
 matmul_1_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity

identity_1

identity_2ИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpвMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:          r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╢
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         N
ReluRelusplit:output:2*
T0*'
_output_shapes
:         _
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         С
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         :         : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:QM
'
_output_shapes
:         
"
_user_specified_name
states_0:QM
'
_output_shapes
:         
"
_user_specified_name
states_1
Т	
╛
while_cond_82613
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_82613___redundant_placeholder03
/while_while_cond_82613___redundant_placeholder13
/while_while_cond_82613___redundant_placeholder23
/while_while_cond_82613___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
:
Ё
░
&__inference_lstm_8_layer_call_fn_86593

inputs
unknown: 
	unknown_0: 
	unknown_1: 
identityИвStatefulPartitionedCallу
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_lstm_8_layer_call_and_return_conditional_losses_83894o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
ё
c
*__inference_dropout_10_layer_call_fn_87178

inputs
identityИвStatefulPartitionedCall└
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dropout_10_layer_call_and_return_conditional_losses_83385o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
Щ#
╧
while_body_82408
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0+
while_lstm_cell_7_82432_0: +
while_lstm_cell_7_82434_0: '
while_lstm_cell_7_82436_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor)
while_lstm_cell_7_82432: )
while_lstm_cell_7_82434: %
while_lstm_cell_7_82436: Ив)while/lstm_cell_7/StatefulPartitionedCallИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0к
)while/lstm_cell_7/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_7_82432_0while_lstm_cell_7_82434_0while_lstm_cell_7_82436_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         :         :         *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_lstm_cell_7_layer_call_and_return_conditional_losses_82394█
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/lstm_cell_7/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:щш╥M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: П
while/Identity_4Identity2while/lstm_cell_7/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         П
while/Identity_5Identity2while/lstm_cell_7/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         x

while/NoOpNoOp*^while/lstm_cell_7/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"4
while_lstm_cell_7_82432while_lstm_cell_7_82432_0"4
while_lstm_cell_7_82434while_lstm_cell_7_82434_0"4
while_lstm_cell_7_82436while_lstm_cell_7_82436_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2V
)while/lstm_cell_7/StatefulPartitionedCall)while/lstm_cell_7/StatefulPartitionedCall:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
: 
°
░
&__inference_lstm_6_layer_call_fn_85307

inputs
unknown: 
	unknown_0: 
	unknown_1: 
identityИвStatefulPartitionedCallч
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_lstm_6_layer_call_and_return_conditional_losses_83580s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
ф
ё
+__inference_lstm_cell_6_layer_call_fn_87283

inputs
states_0
states_1
unknown: 
	unknown_0: 
	unknown_1: 
identity

identity_1

identity_2ИвStatefulPartitionedCallж
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         :         :         *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_lstm_cell_6_layer_call_and_return_conditional_losses_81899o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:         q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         :         : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:QM
'
_output_shapes
:         
"
_user_specified_name
states_0:QM
'
_output_shapes
:         
"
_user_specified_name
states_1
Щ

d
E__inference_dropout_10_layer_call_and_return_conditional_losses_87195

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:         Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::э╧М
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:         *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=ж
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    У
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*'
_output_shapes
:         a
IdentityIdentitydropout/SelectV2:output:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs
╕9
└
while_body_86798
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
2while_lstm_cell_8_matmul_readvariableop_resource_0: F
4while_lstm_cell_8_matmul_1_readvariableop_resource_0: A
3while_lstm_cell_8_biasadd_readvariableop_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
0while_lstm_cell_8_matmul_readvariableop_resource: D
2while_lstm_cell_8_matmul_1_readvariableop_resource: ?
1while_lstm_cell_8_biasadd_readvariableop_resource: Ив(while/lstm_cell_8/BiasAdd/ReadVariableOpв'while/lstm_cell_8/MatMul/ReadVariableOpв)while/lstm_cell_8/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ъ
'while/lstm_cell_8/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_8_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0╖
while/lstm_cell_8/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Ю
)while/lstm_cell_8/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_8_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0Ю
while/lstm_cell_8/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_8/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Ъ
while/lstm_cell_8/addAddV2"while/lstm_cell_8/MatMul:product:0$while/lstm_cell_8/MatMul_1:product:0*
T0*'
_output_shapes
:          Ш
(while/lstm_cell_8/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_8_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0г
while/lstm_cell_8/BiasAddBiasAddwhile/lstm_cell_8/add:z:00while/lstm_cell_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          c
!while/lstm_cell_8/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ь
while/lstm_cell_8/splitSplit*while/lstm_cell_8/split/split_dim:output:0"while/lstm_cell_8/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitx
while/lstm_cell_8/SigmoidSigmoid while/lstm_cell_8/split:output:0*
T0*'
_output_shapes
:         z
while/lstm_cell_8/Sigmoid_1Sigmoid while/lstm_cell_8/split:output:1*
T0*'
_output_shapes
:         Д
while/lstm_cell_8/mulMulwhile/lstm_cell_8/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         r
while/lstm_cell_8/ReluRelu while/lstm_cell_8/split:output:2*
T0*'
_output_shapes
:         Х
while/lstm_cell_8/mul_1Mulwhile/lstm_cell_8/Sigmoid:y:0$while/lstm_cell_8/Relu:activations:0*
T0*'
_output_shapes
:         К
while/lstm_cell_8/add_1AddV2while/lstm_cell_8/mul:z:0while/lstm_cell_8/mul_1:z:0*
T0*'
_output_shapes
:         z
while/lstm_cell_8/Sigmoid_2Sigmoid while/lstm_cell_8/split:output:3*
T0*'
_output_shapes
:         o
while/lstm_cell_8/Relu_1Reluwhile/lstm_cell_8/add_1:z:0*
T0*'
_output_shapes
:         Щ
while/lstm_cell_8/mul_2Mulwhile/lstm_cell_8/Sigmoid_2:y:0&while/lstm_cell_8/Relu_1:activations:0*
T0*'
_output_shapes
:         r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ь
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_8/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/lstm_cell_8/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         x
while/Identity_5Identitywhile/lstm_cell_8/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         ═

while/NoOpNoOp)^while/lstm_cell_8/BiasAdd/ReadVariableOp(^while/lstm_cell_8/MatMul/ReadVariableOp*^while/lstm_cell_8/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_8_biasadd_readvariableop_resource3while_lstm_cell_8_biasadd_readvariableop_resource_0"j
2while_lstm_cell_8_matmul_1_readvariableop_resource4while_lstm_cell_8_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_8_matmul_readvariableop_resource2while_lstm_cell_8_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2T
(while/lstm_cell_8/BiasAdd/ReadVariableOp(while/lstm_cell_8/BiasAdd/ReadVariableOp2R
'while/lstm_cell_8/MatMul/ReadVariableOp'while/lstm_cell_8/MatMul/ReadVariableOp2V
)while/lstm_cell_8/MatMul_1/ReadVariableOp)while/lstm_cell_8/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
: 
Ь8
└
while_body_82951
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
2while_lstm_cell_6_matmul_readvariableop_resource_0: F
4while_lstm_cell_6_matmul_1_readvariableop_resource_0: A
3while_lstm_cell_6_biasadd_readvariableop_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
0while_lstm_cell_6_matmul_readvariableop_resource: D
2while_lstm_cell_6_matmul_1_readvariableop_resource: ?
1while_lstm_cell_6_biasadd_readvariableop_resource: Ив(while/lstm_cell_6/BiasAdd/ReadVariableOpв'while/lstm_cell_6/MatMul/ReadVariableOpв)while/lstm_cell_6/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ъ
'while/lstm_cell_6/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_6_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0╖
while/lstm_cell_6/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Ю
)while/lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_6_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0Ю
while/lstm_cell_6/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Ъ
while/lstm_cell_6/addAddV2"while/lstm_cell_6/MatMul:product:0$while/lstm_cell_6/MatMul_1:product:0*
T0*'
_output_shapes
:          Ш
(while/lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_6_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0г
while/lstm_cell_6/BiasAddBiasAddwhile/lstm_cell_6/add:z:00while/lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          c
!while/lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ь
while/lstm_cell_6/splitSplit*while/lstm_cell_6/split/split_dim:output:0"while/lstm_cell_6/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitx
while/lstm_cell_6/SigmoidSigmoid while/lstm_cell_6/split:output:0*
T0*'
_output_shapes
:         z
while/lstm_cell_6/Sigmoid_1Sigmoid while/lstm_cell_6/split:output:1*
T0*'
_output_shapes
:         Д
while/lstm_cell_6/mulMulwhile/lstm_cell_6/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         r
while/lstm_cell_6/ReluRelu while/lstm_cell_6/split:output:2*
T0*'
_output_shapes
:         Х
while/lstm_cell_6/mul_1Mulwhile/lstm_cell_6/Sigmoid:y:0$while/lstm_cell_6/Relu:activations:0*
T0*'
_output_shapes
:         К
while/lstm_cell_6/add_1AddV2while/lstm_cell_6/mul:z:0while/lstm_cell_6/mul_1:z:0*
T0*'
_output_shapes
:         z
while/lstm_cell_6/Sigmoid_2Sigmoid while/lstm_cell_6/split:output:3*
T0*'
_output_shapes
:         o
while/lstm_cell_6/Relu_1Reluwhile/lstm_cell_6/add_1:z:0*
T0*'
_output_shapes
:         Щ
while/lstm_cell_6/mul_2Mulwhile/lstm_cell_6/Sigmoid_2:y:0&while/lstm_cell_6/Relu_1:activations:0*
T0*'
_output_shapes
:         ─
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_6/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/lstm_cell_6/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         x
while/Identity_5Identitywhile/lstm_cell_6/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         ═

while/NoOpNoOp)^while/lstm_cell_6/BiasAdd/ReadVariableOp(^while/lstm_cell_6/MatMul/ReadVariableOp*^while/lstm_cell_6/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_6_biasadd_readvariableop_resource3while_lstm_cell_6_biasadd_readvariableop_resource_0"j
2while_lstm_cell_6_matmul_1_readvariableop_resource4while_lstm_cell_6_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_6_matmul_readvariableop_resource2while_lstm_cell_6_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2T
(while/lstm_cell_6/BiasAdd/ReadVariableOp(while/lstm_cell_6/BiasAdd/ReadVariableOp2R
'while/lstm_cell_6/MatMul/ReadVariableOp'while/lstm_cell_6/MatMul/ReadVariableOp2V
)while/lstm_cell_6/MatMul_1/ReadVariableOp)while/lstm_cell_6/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
: 
ф

╩
lstm_6_while_cond_84881*
&lstm_6_while_lstm_6_while_loop_counter0
,lstm_6_while_lstm_6_while_maximum_iterations
lstm_6_while_placeholder
lstm_6_while_placeholder_1
lstm_6_while_placeholder_2
lstm_6_while_placeholder_3,
(lstm_6_while_less_lstm_6_strided_slice_1A
=lstm_6_while_lstm_6_while_cond_84881___redundant_placeholder0A
=lstm_6_while_lstm_6_while_cond_84881___redundant_placeholder1A
=lstm_6_while_lstm_6_while_cond_84881___redundant_placeholder2A
=lstm_6_while_lstm_6_while_cond_84881___redundant_placeholder3
lstm_6_while_identity
~
lstm_6/while/LessLesslstm_6_while_placeholder(lstm_6_while_less_lstm_6_strided_slice_1*
T0*
_output_shapes
: Y
lstm_6/while/IdentityIdentitylstm_6/while/Less:z:0*
T0
*
_output_shapes
: "7
lstm_6_while_identitylstm_6/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : :::::Q M

_output_shapes
: 
3
_user_specified_namelstm_6/while/loop_counter:WS

_output_shapes
: 
9
_user_specified_name!lstm_6/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
:
ы
╬
$sequential_2_lstm_8_while_cond_81734D
@sequential_2_lstm_8_while_sequential_2_lstm_8_while_loop_counterJ
Fsequential_2_lstm_8_while_sequential_2_lstm_8_while_maximum_iterations)
%sequential_2_lstm_8_while_placeholder+
'sequential_2_lstm_8_while_placeholder_1+
'sequential_2_lstm_8_while_placeholder_2+
'sequential_2_lstm_8_while_placeholder_3F
Bsequential_2_lstm_8_while_less_sequential_2_lstm_8_strided_slice_1[
Wsequential_2_lstm_8_while_sequential_2_lstm_8_while_cond_81734___redundant_placeholder0[
Wsequential_2_lstm_8_while_sequential_2_lstm_8_while_cond_81734___redundant_placeholder1[
Wsequential_2_lstm_8_while_sequential_2_lstm_8_while_cond_81734___redundant_placeholder2[
Wsequential_2_lstm_8_while_sequential_2_lstm_8_while_cond_81734___redundant_placeholder3&
"sequential_2_lstm_8_while_identity
▓
sequential_2/lstm_8/while/LessLess%sequential_2_lstm_8_while_placeholderBsequential_2_lstm_8_while_less_sequential_2_lstm_8_strided_slice_1*
T0*
_output_shapes
: s
"sequential_2/lstm_8/while/IdentityIdentity"sequential_2/lstm_8/while/Less:z:0*
T0
*
_output_shapes
: "Q
"sequential_2_lstm_8_while_identity+sequential_2/lstm_8/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : :::::^ Z

_output_shapes
: 
@
_user_specified_name(&sequential_2/lstm_8/while/loop_counter:d`

_output_shapes
: 
F
_user_specified_name.,sequential_2/lstm_8/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
:
╡$
╧
while_body_82761
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0+
while_lstm_cell_8_82785_0: +
while_lstm_cell_8_82787_0: '
while_lstm_cell_8_82789_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor)
while_lstm_cell_8_82785: )
while_lstm_cell_8_82787: %
while_lstm_cell_8_82789: Ив)while/lstm_cell_8/StatefulPartitionedCallИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0к
)while/lstm_cell_8/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_8_82785_0while_lstm_cell_8_82787_0while_lstm_cell_8_82789_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         :         :         *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_lstm_cell_8_layer_call_and_return_conditional_losses_82746r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : Г
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:02while/lstm_cell_8/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:щш╥M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: П
while/Identity_4Identity2while/lstm_cell_8/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         П
while/Identity_5Identity2while/lstm_cell_8/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         x

while/NoOpNoOp*^while/lstm_cell_8/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"4
while_lstm_cell_8_82785while_lstm_cell_8_82785_0"4
while_lstm_cell_8_82787while_lstm_cell_8_82787_0"4
while_lstm_cell_8_82789while_lstm_cell_8_82789_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2V
)while/lstm_cell_8/StatefulPartitionedCall)while/lstm_cell_8/StatefulPartitionedCall:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
: 
Ў&
Э
G__inference_sequential_2_layer_call_and_return_conditional_losses_84037

inputs
lstm_6_84001: 
lstm_6_84003: 
lstm_6_84005: 
lstm_7_84009: 
lstm_7_84011: 
lstm_7_84013: 
lstm_8_84017: 
lstm_8_84019: 
lstm_8_84021: 
dense_4_84025:
dense_4_84027:
dense_5_84031:
dense_5_84033:
identityИвdense_4/StatefulPartitionedCallвdense_5/StatefulPartitionedCallвlstm_6/StatefulPartitionedCallвlstm_7/StatefulPartitionedCallвlstm_8/StatefulPartitionedCall∙
lstm_6/StatefulPartitionedCallStatefulPartitionedCallinputslstm_6_84001lstm_6_84003lstm_6_84005*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_lstm_6_layer_call_and_return_conditional_losses_83580▐
dropout_8/PartitionedCallPartitionedCall'lstm_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_8_layer_call_and_return_conditional_losses_83592Х
lstm_7/StatefulPartitionedCallStatefulPartitionedCall"dropout_8/PartitionedCall:output:0lstm_7_84009lstm_7_84011lstm_7_84013*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_lstm_7_layer_call_and_return_conditional_losses_83736▐
dropout_9/PartitionedCallPartitionedCall'lstm_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_9_layer_call_and_return_conditional_losses_83748С
lstm_8/StatefulPartitionedCallStatefulPartitionedCall"dropout_9/PartitionedCall:output:0lstm_8_84017lstm_8_84019lstm_8_84021*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_lstm_8_layer_call_and_return_conditional_losses_83894▄
dropout_10/PartitionedCallPartitionedCall'lstm_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dropout_10_layer_call_and_return_conditional_losses_83906Ж
dense_4/StatefulPartitionedCallStatefulPartitionedCall#dropout_10/PartitionedCall:output:0dense_4_84025dense_4_84027*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_83398▌
dropout_11/PartitionedCallPartitionedCall(dense_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dropout_11_layer_call_and_return_conditional_losses_83917Ж
dense_5/StatefulPartitionedCallStatefulPartitionedCall#dropout_11/PartitionedCall:output:0dense_5_84031dense_5_84033*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_5_layer_call_and_return_conditional_losses_83428w
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         э
NoOpNoOp ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall^lstm_6/StatefulPartitionedCall^lstm_7/StatefulPartitionedCall^lstm_8/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:         : : : : : : : : : : : : : 2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2@
lstm_6/StatefulPartitionedCalllstm_6/StatefulPartitionedCall2@
lstm_7/StatefulPartitionedCalllstm_7/StatefulPartitionedCall2@
lstm_8/StatefulPartitionedCalllstm_8/StatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
Т	
╛
while_cond_86652
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_86652___redundant_placeholder03
/while_while_cond_86652___redundant_placeholder13
/while_while_cond_86652___redundant_placeholder23
/while_while_cond_86652___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
:
О8
∙
A__inference_lstm_7_layer_call_and_return_conditional_losses_82332

inputs#
lstm_cell_7_82250: #
lstm_cell_7_82252: 
lstm_cell_7_82254: 
identityИв#lstm_cell_7/StatefulPartitionedCallвwhileI
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::э╧_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskь
#lstm_cell_7/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_7_82250lstm_cell_7_82252lstm_cell_7_82254*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         :         :         *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_lstm_cell_7_layer_call_and_return_conditional_losses_82249n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : п
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_7_82250lstm_cell_7_82252lstm_cell_7_82254*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_82263*
condR
while_cond_82262*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Я
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  t
NoOpNoOp$^lstm_cell_7/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2J
#lstm_cell_7/StatefulPartitionedCall#lstm_cell_7/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs
Щ

d
E__inference_dropout_11_layer_call_and_return_conditional_losses_83416

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:         Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::э╧М
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:         *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=ж
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    У
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*'
_output_shapes
:         a
IdentityIdentitydropout/SelectV2:output:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs
┤J
Т
A__inference_lstm_7_layer_call_and_return_conditional_losses_86093
inputs_0<
*lstm_cell_7_matmul_readvariableop_resource: >
,lstm_cell_7_matmul_1_readvariableop_resource: 9
+lstm_cell_7_biasadd_readvariableop_resource: 
identityИв"lstm_cell_7/BiasAdd/ReadVariableOpв!lstm_cell_7/MatMul/ReadVariableOpв#lstm_cell_7/MatMul_1/ReadVariableOpвwhileK
ShapeShapeinputs_0*
T0*
_output_shapes
::э╧]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :                  R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::э╧_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskМ
!lstm_cell_7/MatMul/ReadVariableOpReadVariableOp*lstm_cell_7_matmul_readvariableop_resource*
_output_shapes

: *
dtype0У
lstm_cell_7/MatMulMatMulstrided_slice_2:output:0)lstm_cell_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Р
#lstm_cell_7/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_7_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0Н
lstm_cell_7/MatMul_1MatMulzeros:output:0+lstm_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          И
lstm_cell_7/addAddV2lstm_cell_7/MatMul:product:0lstm_cell_7/MatMul_1:product:0*
T0*'
_output_shapes
:          К
"lstm_cell_7/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_7_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0С
lstm_cell_7/BiasAddBiasAddlstm_cell_7/add:z:0*lstm_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ]
lstm_cell_7/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :┌
lstm_cell_7/splitSplit$lstm_cell_7/split/split_dim:output:0lstm_cell_7/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitl
lstm_cell_7/SigmoidSigmoidlstm_cell_7/split:output:0*
T0*'
_output_shapes
:         n
lstm_cell_7/Sigmoid_1Sigmoidlstm_cell_7/split:output:1*
T0*'
_output_shapes
:         u
lstm_cell_7/mulMullstm_cell_7/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         f
lstm_cell_7/ReluRelulstm_cell_7/split:output:2*
T0*'
_output_shapes
:         Г
lstm_cell_7/mul_1Mullstm_cell_7/Sigmoid:y:0lstm_cell_7/Relu:activations:0*
T0*'
_output_shapes
:         x
lstm_cell_7/add_1AddV2lstm_cell_7/mul:z:0lstm_cell_7/mul_1:z:0*
T0*'
_output_shapes
:         n
lstm_cell_7/Sigmoid_2Sigmoidlstm_cell_7/split:output:3*
T0*'
_output_shapes
:         c
lstm_cell_7/Relu_1Relulstm_cell_7/add_1:z:0*
T0*'
_output_shapes
:         З
lstm_cell_7/mul_2Mullstm_cell_7/Sigmoid_2:y:0 lstm_cell_7/Relu_1:activations:0*
T0*'
_output_shapes
:         n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ¤
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_7_matmul_readvariableop_resource,lstm_cell_7_matmul_1_readvariableop_resource+lstm_cell_7_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_86009*
condR
while_cond_86008*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Я
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  ╜
NoOpNoOp#^lstm_cell_7/BiasAdd/ReadVariableOp"^lstm_cell_7/MatMul/ReadVariableOp$^lstm_cell_7/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2H
"lstm_cell_7/BiasAdd/ReadVariableOp"lstm_cell_7/BiasAdd/ReadVariableOp2F
!lstm_cell_7/MatMul/ReadVariableOp!lstm_cell_7/MatMul/ReadVariableOp2J
#lstm_cell_7/MatMul_1/ReadVariableOp#lstm_cell_7/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs_0
№J
Р
A__inference_lstm_8_layer_call_and_return_conditional_losses_83365

inputs<
*lstm_cell_8_matmul_readvariableop_resource: >
,lstm_cell_8_matmul_1_readvariableop_resource: 9
+lstm_cell_8_biasadd_readvariableop_resource: 
identityИв"lstm_cell_8/BiasAdd/ReadVariableOpв!lstm_cell_8/MatMul/ReadVariableOpв#lstm_cell_8/MatMul_1/ReadVariableOpвwhileI
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::э╧_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskМ
!lstm_cell_8/MatMul/ReadVariableOpReadVariableOp*lstm_cell_8_matmul_readvariableop_resource*
_output_shapes

: *
dtype0У
lstm_cell_8/MatMulMatMulstrided_slice_2:output:0)lstm_cell_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Р
#lstm_cell_8/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_8_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0Н
lstm_cell_8/MatMul_1MatMulzeros:output:0+lstm_cell_8/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          И
lstm_cell_8/addAddV2lstm_cell_8/MatMul:product:0lstm_cell_8/MatMul_1:product:0*
T0*'
_output_shapes
:          К
"lstm_cell_8/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_8_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0С
lstm_cell_8/BiasAddBiasAddlstm_cell_8/add:z:0*lstm_cell_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ]
lstm_cell_8/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :┌
lstm_cell_8/splitSplit$lstm_cell_8/split/split_dim:output:0lstm_cell_8/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitl
lstm_cell_8/SigmoidSigmoidlstm_cell_8/split:output:0*
T0*'
_output_shapes
:         n
lstm_cell_8/Sigmoid_1Sigmoidlstm_cell_8/split:output:1*
T0*'
_output_shapes
:         u
lstm_cell_8/mulMullstm_cell_8/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         f
lstm_cell_8/ReluRelulstm_cell_8/split:output:2*
T0*'
_output_shapes
:         Г
lstm_cell_8/mul_1Mullstm_cell_8/Sigmoid:y:0lstm_cell_8/Relu:activations:0*
T0*'
_output_shapes
:         x
lstm_cell_8/add_1AddV2lstm_cell_8/mul:z:0lstm_cell_8/mul_1:z:0*
T0*'
_output_shapes
:         n
lstm_cell_8/Sigmoid_2Sigmoidlstm_cell_8/split:output:3*
T0*'
_output_shapes
:         c
lstm_cell_8/Relu_1Relulstm_cell_8/add_1:z:0*
T0*'
_output_shapes
:         З
lstm_cell_8/mul_2Mullstm_cell_8/Sigmoid_2:y:0 lstm_cell_8/Relu_1:activations:0*
T0*'
_output_shapes
:         n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ¤
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_8_matmul_readvariableop_resource,lstm_cell_8_matmul_1_readvariableop_resource+lstm_cell_8_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_83280*
condR
while_cond_83279*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╓
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         *
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:         ╜
NoOpNoOp#^lstm_cell_8/BiasAdd/ReadVariableOp"^lstm_cell_8/MatMul/ReadVariableOp$^lstm_cell_8/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 2H
"lstm_cell_8/BiasAdd/ReadVariableOp"lstm_cell_8/BiasAdd/ReadVariableOp2F
!lstm_cell_8/MatMul/ReadVariableOp!lstm_cell_8/MatMul/ReadVariableOp2J
#lstm_cell_8/MatMul_1/ReadVariableOp#lstm_cell_8/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
╔
 
F__inference_lstm_cell_7_layer_call_and_return_conditional_losses_82249

inputs

states
states_10
matmul_readvariableop_resource: 2
 matmul_1_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity

identity_1

identity_2ИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpвMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:          r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╢
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         N
ReluRelusplit:output:2*
T0*'
_output_shapes
:         _
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         С
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         :         : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_namestates:OK
'
_output_shapes
:         
 
_user_specified_namestates
╠@
а

lstm_7_while_body_84561*
&lstm_7_while_lstm_7_while_loop_counter0
,lstm_7_while_lstm_7_while_maximum_iterations
lstm_7_while_placeholder
lstm_7_while_placeholder_1
lstm_7_while_placeholder_2
lstm_7_while_placeholder_3)
%lstm_7_while_lstm_7_strided_slice_1_0e
alstm_7_while_tensorarrayv2read_tensorlistgetitem_lstm_7_tensorarrayunstack_tensorlistfromtensor_0K
9lstm_7_while_lstm_cell_7_matmul_readvariableop_resource_0: M
;lstm_7_while_lstm_cell_7_matmul_1_readvariableop_resource_0: H
:lstm_7_while_lstm_cell_7_biasadd_readvariableop_resource_0: 
lstm_7_while_identity
lstm_7_while_identity_1
lstm_7_while_identity_2
lstm_7_while_identity_3
lstm_7_while_identity_4
lstm_7_while_identity_5'
#lstm_7_while_lstm_7_strided_slice_1c
_lstm_7_while_tensorarrayv2read_tensorlistgetitem_lstm_7_tensorarrayunstack_tensorlistfromtensorI
7lstm_7_while_lstm_cell_7_matmul_readvariableop_resource: K
9lstm_7_while_lstm_cell_7_matmul_1_readvariableop_resource: F
8lstm_7_while_lstm_cell_7_biasadd_readvariableop_resource: Ив/lstm_7/while/lstm_cell_7/BiasAdd/ReadVariableOpв.lstm_7/while/lstm_cell_7/MatMul/ReadVariableOpв0lstm_7/while/lstm_cell_7/MatMul_1/ReadVariableOpП
>lstm_7/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╔
0lstm_7/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_7_while_tensorarrayv2read_tensorlistgetitem_lstm_7_tensorarrayunstack_tensorlistfromtensor_0lstm_7_while_placeholderGlstm_7/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0и
.lstm_7/while/lstm_cell_7/MatMul/ReadVariableOpReadVariableOp9lstm_7_while_lstm_cell_7_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0╠
lstm_7/while/lstm_cell_7/MatMulMatMul7lstm_7/while/TensorArrayV2Read/TensorListGetItem:item:06lstm_7/while/lstm_cell_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          м
0lstm_7/while/lstm_cell_7/MatMul_1/ReadVariableOpReadVariableOp;lstm_7_while_lstm_cell_7_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0│
!lstm_7/while/lstm_cell_7/MatMul_1MatMullstm_7_while_placeholder_28lstm_7/while/lstm_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          п
lstm_7/while/lstm_cell_7/addAddV2)lstm_7/while/lstm_cell_7/MatMul:product:0+lstm_7/while/lstm_cell_7/MatMul_1:product:0*
T0*'
_output_shapes
:          ж
/lstm_7/while/lstm_cell_7/BiasAdd/ReadVariableOpReadVariableOp:lstm_7_while_lstm_cell_7_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0╕
 lstm_7/while/lstm_cell_7/BiasAddBiasAdd lstm_7/while/lstm_cell_7/add:z:07lstm_7/while/lstm_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          j
(lstm_7/while/lstm_cell_7/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Б
lstm_7/while/lstm_cell_7/splitSplit1lstm_7/while/lstm_cell_7/split/split_dim:output:0)lstm_7/while/lstm_cell_7/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitЖ
 lstm_7/while/lstm_cell_7/SigmoidSigmoid'lstm_7/while/lstm_cell_7/split:output:0*
T0*'
_output_shapes
:         И
"lstm_7/while/lstm_cell_7/Sigmoid_1Sigmoid'lstm_7/while/lstm_cell_7/split:output:1*
T0*'
_output_shapes
:         Щ
lstm_7/while/lstm_cell_7/mulMul&lstm_7/while/lstm_cell_7/Sigmoid_1:y:0lstm_7_while_placeholder_3*
T0*'
_output_shapes
:         А
lstm_7/while/lstm_cell_7/ReluRelu'lstm_7/while/lstm_cell_7/split:output:2*
T0*'
_output_shapes
:         к
lstm_7/while/lstm_cell_7/mul_1Mul$lstm_7/while/lstm_cell_7/Sigmoid:y:0+lstm_7/while/lstm_cell_7/Relu:activations:0*
T0*'
_output_shapes
:         Я
lstm_7/while/lstm_cell_7/add_1AddV2 lstm_7/while/lstm_cell_7/mul:z:0"lstm_7/while/lstm_cell_7/mul_1:z:0*
T0*'
_output_shapes
:         И
"lstm_7/while/lstm_cell_7/Sigmoid_2Sigmoid'lstm_7/while/lstm_cell_7/split:output:3*
T0*'
_output_shapes
:         }
lstm_7/while/lstm_cell_7/Relu_1Relu"lstm_7/while/lstm_cell_7/add_1:z:0*
T0*'
_output_shapes
:         о
lstm_7/while/lstm_cell_7/mul_2Mul&lstm_7/while/lstm_cell_7/Sigmoid_2:y:0-lstm_7/while/lstm_cell_7/Relu_1:activations:0*
T0*'
_output_shapes
:         р
1lstm_7/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_7_while_placeholder_1lstm_7_while_placeholder"lstm_7/while/lstm_cell_7/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥T
lstm_7/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :q
lstm_7/while/addAddV2lstm_7_while_placeholderlstm_7/while/add/y:output:0*
T0*
_output_shapes
: V
lstm_7/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Г
lstm_7/while/add_1AddV2&lstm_7_while_lstm_7_while_loop_counterlstm_7/while/add_1/y:output:0*
T0*
_output_shapes
: n
lstm_7/while/IdentityIdentitylstm_7/while/add_1:z:0^lstm_7/while/NoOp*
T0*
_output_shapes
: Ж
lstm_7/while/Identity_1Identity,lstm_7_while_lstm_7_while_maximum_iterations^lstm_7/while/NoOp*
T0*
_output_shapes
: n
lstm_7/while/Identity_2Identitylstm_7/while/add:z:0^lstm_7/while/NoOp*
T0*
_output_shapes
: Ы
lstm_7/while/Identity_3IdentityAlstm_7/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_7/while/NoOp*
T0*
_output_shapes
: Н
lstm_7/while/Identity_4Identity"lstm_7/while/lstm_cell_7/mul_2:z:0^lstm_7/while/NoOp*
T0*'
_output_shapes
:         Н
lstm_7/while/Identity_5Identity"lstm_7/while/lstm_cell_7/add_1:z:0^lstm_7/while/NoOp*
T0*'
_output_shapes
:         щ
lstm_7/while/NoOpNoOp0^lstm_7/while/lstm_cell_7/BiasAdd/ReadVariableOp/^lstm_7/while/lstm_cell_7/MatMul/ReadVariableOp1^lstm_7/while/lstm_cell_7/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "7
lstm_7_while_identitylstm_7/while/Identity:output:0";
lstm_7_while_identity_1 lstm_7/while/Identity_1:output:0";
lstm_7_while_identity_2 lstm_7/while/Identity_2:output:0";
lstm_7_while_identity_3 lstm_7/while/Identity_3:output:0";
lstm_7_while_identity_4 lstm_7/while/Identity_4:output:0";
lstm_7_while_identity_5 lstm_7/while/Identity_5:output:0"L
#lstm_7_while_lstm_7_strided_slice_1%lstm_7_while_lstm_7_strided_slice_1_0"v
8lstm_7_while_lstm_cell_7_biasadd_readvariableop_resource:lstm_7_while_lstm_cell_7_biasadd_readvariableop_resource_0"x
9lstm_7_while_lstm_cell_7_matmul_1_readvariableop_resource;lstm_7_while_lstm_cell_7_matmul_1_readvariableop_resource_0"t
7lstm_7_while_lstm_cell_7_matmul_readvariableop_resource9lstm_7_while_lstm_cell_7_matmul_readvariableop_resource_0"─
_lstm_7_while_tensorarrayv2read_tensorlistgetitem_lstm_7_tensorarrayunstack_tensorlistfromtensoralstm_7_while_tensorarrayv2read_tensorlistgetitem_lstm_7_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2b
/lstm_7/while/lstm_cell_7/BiasAdd/ReadVariableOp/lstm_7/while/lstm_cell_7/BiasAdd/ReadVariableOp2`
.lstm_7/while/lstm_cell_7/MatMul/ReadVariableOp.lstm_7/while/lstm_cell_7/MatMul/ReadVariableOp2d
0lstm_7/while/lstm_cell_7/MatMul_1/ReadVariableOp0lstm_7/while/lstm_cell_7/MatMul_1/ReadVariableOp:Q M

_output_shapes
: 
3
_user_specified_namelstm_7/while/loop_counter:WS

_output_shapes
: 
9
_user_specified_name!lstm_7/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
: 
┤

c
D__inference_dropout_9_layer_call_and_return_conditional_losses_83219

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?h
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:         Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::э╧Р
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:         *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=к
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:         T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ч
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*+
_output_shapes
:         e
IdentityIdentitydropout/SelectV2:output:0*
T0*+
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         :S O
+
_output_shapes
:         
 
_user_specified_nameinputs
┤J
Т
A__inference_lstm_7_layer_call_and_return_conditional_losses_86236
inputs_0<
*lstm_cell_7_matmul_readvariableop_resource: >
,lstm_cell_7_matmul_1_readvariableop_resource: 9
+lstm_cell_7_biasadd_readvariableop_resource: 
identityИв"lstm_cell_7/BiasAdd/ReadVariableOpв!lstm_cell_7/MatMul/ReadVariableOpв#lstm_cell_7/MatMul_1/ReadVariableOpвwhileK
ShapeShapeinputs_0*
T0*
_output_shapes
::э╧]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :                  R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::э╧_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskМ
!lstm_cell_7/MatMul/ReadVariableOpReadVariableOp*lstm_cell_7_matmul_readvariableop_resource*
_output_shapes

: *
dtype0У
lstm_cell_7/MatMulMatMulstrided_slice_2:output:0)lstm_cell_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Р
#lstm_cell_7/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_7_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0Н
lstm_cell_7/MatMul_1MatMulzeros:output:0+lstm_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          И
lstm_cell_7/addAddV2lstm_cell_7/MatMul:product:0lstm_cell_7/MatMul_1:product:0*
T0*'
_output_shapes
:          К
"lstm_cell_7/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_7_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0С
lstm_cell_7/BiasAddBiasAddlstm_cell_7/add:z:0*lstm_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ]
lstm_cell_7/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :┌
lstm_cell_7/splitSplit$lstm_cell_7/split/split_dim:output:0lstm_cell_7/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitl
lstm_cell_7/SigmoidSigmoidlstm_cell_7/split:output:0*
T0*'
_output_shapes
:         n
lstm_cell_7/Sigmoid_1Sigmoidlstm_cell_7/split:output:1*
T0*'
_output_shapes
:         u
lstm_cell_7/mulMullstm_cell_7/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         f
lstm_cell_7/ReluRelulstm_cell_7/split:output:2*
T0*'
_output_shapes
:         Г
lstm_cell_7/mul_1Mullstm_cell_7/Sigmoid:y:0lstm_cell_7/Relu:activations:0*
T0*'
_output_shapes
:         x
lstm_cell_7/add_1AddV2lstm_cell_7/mul:z:0lstm_cell_7/mul_1:z:0*
T0*'
_output_shapes
:         n
lstm_cell_7/Sigmoid_2Sigmoidlstm_cell_7/split:output:3*
T0*'
_output_shapes
:         c
lstm_cell_7/Relu_1Relulstm_cell_7/add_1:z:0*
T0*'
_output_shapes
:         З
lstm_cell_7/mul_2Mullstm_cell_7/Sigmoid_2:y:0 lstm_cell_7/Relu_1:activations:0*
T0*'
_output_shapes
:         n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ¤
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_7_matmul_readvariableop_resource,lstm_cell_7_matmul_1_readvariableop_resource+lstm_cell_7_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_86152*
condR
while_cond_86151*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Я
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  ╜
NoOpNoOp#^lstm_cell_7/BiasAdd/ReadVariableOp"^lstm_cell_7/MatMul/ReadVariableOp$^lstm_cell_7/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2H
"lstm_cell_7/BiasAdd/ReadVariableOp"lstm_cell_7/BiasAdd/ReadVariableOp2F
!lstm_cell_7/MatMul/ReadVariableOp!lstm_cell_7/MatMul/ReadVariableOp2J
#lstm_cell_7/MatMul_1/ReadVariableOp#lstm_cell_7/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs_0
╡$
╧
while_body_82614
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0+
while_lstm_cell_8_82638_0: +
while_lstm_cell_8_82640_0: '
while_lstm_cell_8_82642_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor)
while_lstm_cell_8_82638: )
while_lstm_cell_8_82640: %
while_lstm_cell_8_82642: Ив)while/lstm_cell_8/StatefulPartitionedCallИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0к
)while/lstm_cell_8/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_8_82638_0while_lstm_cell_8_82640_0while_lstm_cell_8_82642_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         :         :         *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_lstm_cell_8_layer_call_and_return_conditional_losses_82599r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : Г
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:02while/lstm_cell_8/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:щш╥M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: П
while/Identity_4Identity2while/lstm_cell_8/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         П
while/Identity_5Identity2while/lstm_cell_8/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         x

while/NoOpNoOp*^while/lstm_cell_8/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"4
while_lstm_cell_8_82638while_lstm_cell_8_82638_0"4
while_lstm_cell_8_82640while_lstm_cell_8_82640_0"4
while_lstm_cell_8_82642while_lstm_cell_8_82642_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2V
)while/lstm_cell_8/StatefulPartitionedCall)while/lstm_cell_8/StatefulPartitionedCall:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
: 
и
╩
,__inference_sequential_2_layer_call_fn_84324

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: 
	unknown_5: 
	unknown_6: 
	unknown_7: 
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:
identityИвStatefulPartitionedCallэ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         */
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_sequential_2_layer_call_and_return_conditional_losses_83967o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:         : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
╕9
└
while_body_83809
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
2while_lstm_cell_8_matmul_readvariableop_resource_0: F
4while_lstm_cell_8_matmul_1_readvariableop_resource_0: A
3while_lstm_cell_8_biasadd_readvariableop_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
0while_lstm_cell_8_matmul_readvariableop_resource: D
2while_lstm_cell_8_matmul_1_readvariableop_resource: ?
1while_lstm_cell_8_biasadd_readvariableop_resource: Ив(while/lstm_cell_8/BiasAdd/ReadVariableOpв'while/lstm_cell_8/MatMul/ReadVariableOpв)while/lstm_cell_8/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ъ
'while/lstm_cell_8/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_8_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0╖
while/lstm_cell_8/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Ю
)while/lstm_cell_8/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_8_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0Ю
while/lstm_cell_8/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_8/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Ъ
while/lstm_cell_8/addAddV2"while/lstm_cell_8/MatMul:product:0$while/lstm_cell_8/MatMul_1:product:0*
T0*'
_output_shapes
:          Ш
(while/lstm_cell_8/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_8_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0г
while/lstm_cell_8/BiasAddBiasAddwhile/lstm_cell_8/add:z:00while/lstm_cell_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          c
!while/lstm_cell_8/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ь
while/lstm_cell_8/splitSplit*while/lstm_cell_8/split/split_dim:output:0"while/lstm_cell_8/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitx
while/lstm_cell_8/SigmoidSigmoid while/lstm_cell_8/split:output:0*
T0*'
_output_shapes
:         z
while/lstm_cell_8/Sigmoid_1Sigmoid while/lstm_cell_8/split:output:1*
T0*'
_output_shapes
:         Д
while/lstm_cell_8/mulMulwhile/lstm_cell_8/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         r
while/lstm_cell_8/ReluRelu while/lstm_cell_8/split:output:2*
T0*'
_output_shapes
:         Х
while/lstm_cell_8/mul_1Mulwhile/lstm_cell_8/Sigmoid:y:0$while/lstm_cell_8/Relu:activations:0*
T0*'
_output_shapes
:         К
while/lstm_cell_8/add_1AddV2while/lstm_cell_8/mul:z:0while/lstm_cell_8/mul_1:z:0*
T0*'
_output_shapes
:         z
while/lstm_cell_8/Sigmoid_2Sigmoid while/lstm_cell_8/split:output:3*
T0*'
_output_shapes
:         o
while/lstm_cell_8/Relu_1Reluwhile/lstm_cell_8/add_1:z:0*
T0*'
_output_shapes
:         Щ
while/lstm_cell_8/mul_2Mulwhile/lstm_cell_8/Sigmoid_2:y:0&while/lstm_cell_8/Relu_1:activations:0*
T0*'
_output_shapes
:         r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ь
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_8/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/lstm_cell_8/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         x
while/Identity_5Identitywhile/lstm_cell_8/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         ═

while/NoOpNoOp)^while/lstm_cell_8/BiasAdd/ReadVariableOp(^while/lstm_cell_8/MatMul/ReadVariableOp*^while/lstm_cell_8/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_8_biasadd_readvariableop_resource3while_lstm_cell_8_biasadd_readvariableop_resource_0"j
2while_lstm_cell_8_matmul_1_readvariableop_resource4while_lstm_cell_8_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_8_matmul_readvariableop_resource2while_lstm_cell_8_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2T
(while/lstm_cell_8/BiasAdd/ReadVariableOp(while/lstm_cell_8/BiasAdd/ReadVariableOp2R
'while/lstm_cell_8/MatMul/ReadVariableOp'while/lstm_cell_8/MatMul/ReadVariableOp2V
)while/lstm_cell_8/MatMul_1/ReadVariableOp)while/lstm_cell_8/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
: 
№J
Р
A__inference_lstm_8_layer_call_and_return_conditional_losses_87028

inputs<
*lstm_cell_8_matmul_readvariableop_resource: >
,lstm_cell_8_matmul_1_readvariableop_resource: 9
+lstm_cell_8_biasadd_readvariableop_resource: 
identityИв"lstm_cell_8/BiasAdd/ReadVariableOpв!lstm_cell_8/MatMul/ReadVariableOpв#lstm_cell_8/MatMul_1/ReadVariableOpвwhileI
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::э╧_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskМ
!lstm_cell_8/MatMul/ReadVariableOpReadVariableOp*lstm_cell_8_matmul_readvariableop_resource*
_output_shapes

: *
dtype0У
lstm_cell_8/MatMulMatMulstrided_slice_2:output:0)lstm_cell_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Р
#lstm_cell_8/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_8_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0Н
lstm_cell_8/MatMul_1MatMulzeros:output:0+lstm_cell_8/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          И
lstm_cell_8/addAddV2lstm_cell_8/MatMul:product:0lstm_cell_8/MatMul_1:product:0*
T0*'
_output_shapes
:          К
"lstm_cell_8/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_8_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0С
lstm_cell_8/BiasAddBiasAddlstm_cell_8/add:z:0*lstm_cell_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ]
lstm_cell_8/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :┌
lstm_cell_8/splitSplit$lstm_cell_8/split/split_dim:output:0lstm_cell_8/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitl
lstm_cell_8/SigmoidSigmoidlstm_cell_8/split:output:0*
T0*'
_output_shapes
:         n
lstm_cell_8/Sigmoid_1Sigmoidlstm_cell_8/split:output:1*
T0*'
_output_shapes
:         u
lstm_cell_8/mulMullstm_cell_8/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         f
lstm_cell_8/ReluRelulstm_cell_8/split:output:2*
T0*'
_output_shapes
:         Г
lstm_cell_8/mul_1Mullstm_cell_8/Sigmoid:y:0lstm_cell_8/Relu:activations:0*
T0*'
_output_shapes
:         x
lstm_cell_8/add_1AddV2lstm_cell_8/mul:z:0lstm_cell_8/mul_1:z:0*
T0*'
_output_shapes
:         n
lstm_cell_8/Sigmoid_2Sigmoidlstm_cell_8/split:output:3*
T0*'
_output_shapes
:         c
lstm_cell_8/Relu_1Relulstm_cell_8/add_1:z:0*
T0*'
_output_shapes
:         З
lstm_cell_8/mul_2Mullstm_cell_8/Sigmoid_2:y:0 lstm_cell_8/Relu_1:activations:0*
T0*'
_output_shapes
:         n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ¤
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_8_matmul_readvariableop_resource,lstm_cell_8_matmul_1_readvariableop_resource+lstm_cell_8_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_86943*
condR
while_cond_86942*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╓
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         *
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:         ╜
NoOpNoOp#^lstm_cell_8/BiasAdd/ReadVariableOp"^lstm_cell_8/MatMul/ReadVariableOp$^lstm_cell_8/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 2H
"lstm_cell_8/BiasAdd/ReadVariableOp"lstm_cell_8/BiasAdd/ReadVariableOp2F
!lstm_cell_8/MatMul/ReadVariableOp!lstm_cell_8/MatMul/ReadVariableOp2J
#lstm_cell_8/MatMul_1/ReadVariableOp#lstm_cell_8/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
ЎI
Р
A__inference_lstm_7_layer_call_and_return_conditional_losses_86379

inputs<
*lstm_cell_7_matmul_readvariableop_resource: >
,lstm_cell_7_matmul_1_readvariableop_resource: 9
+lstm_cell_7_biasadd_readvariableop_resource: 
identityИв"lstm_cell_7/BiasAdd/ReadVariableOpв!lstm_cell_7/MatMul/ReadVariableOpв#lstm_cell_7/MatMul_1/ReadVariableOpвwhileI
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::э╧_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskМ
!lstm_cell_7/MatMul/ReadVariableOpReadVariableOp*lstm_cell_7_matmul_readvariableop_resource*
_output_shapes

: *
dtype0У
lstm_cell_7/MatMulMatMulstrided_slice_2:output:0)lstm_cell_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Р
#lstm_cell_7/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_7_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0Н
lstm_cell_7/MatMul_1MatMulzeros:output:0+lstm_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          И
lstm_cell_7/addAddV2lstm_cell_7/MatMul:product:0lstm_cell_7/MatMul_1:product:0*
T0*'
_output_shapes
:          К
"lstm_cell_7/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_7_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0С
lstm_cell_7/BiasAddBiasAddlstm_cell_7/add:z:0*lstm_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ]
lstm_cell_7/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :┌
lstm_cell_7/splitSplit$lstm_cell_7/split/split_dim:output:0lstm_cell_7/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitl
lstm_cell_7/SigmoidSigmoidlstm_cell_7/split:output:0*
T0*'
_output_shapes
:         n
lstm_cell_7/Sigmoid_1Sigmoidlstm_cell_7/split:output:1*
T0*'
_output_shapes
:         u
lstm_cell_7/mulMullstm_cell_7/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         f
lstm_cell_7/ReluRelulstm_cell_7/split:output:2*
T0*'
_output_shapes
:         Г
lstm_cell_7/mul_1Mullstm_cell_7/Sigmoid:y:0lstm_cell_7/Relu:activations:0*
T0*'
_output_shapes
:         x
lstm_cell_7/add_1AddV2lstm_cell_7/mul:z:0lstm_cell_7/mul_1:z:0*
T0*'
_output_shapes
:         n
lstm_cell_7/Sigmoid_2Sigmoidlstm_cell_7/split:output:3*
T0*'
_output_shapes
:         c
lstm_cell_7/Relu_1Relulstm_cell_7/add_1:z:0*
T0*'
_output_shapes
:         З
lstm_cell_7/mul_2Mullstm_cell_7/Sigmoid_2:y:0 lstm_cell_7/Relu_1:activations:0*
T0*'
_output_shapes
:         n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ¤
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_7_matmul_readvariableop_resource,lstm_cell_7_matmul_1_readvariableop_resource+lstm_cell_7_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_86295*
condR
while_cond_86294*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:         ╜
NoOpNoOp#^lstm_cell_7/BiasAdd/ReadVariableOp"^lstm_cell_7/MatMul/ReadVariableOp$^lstm_cell_7/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 2H
"lstm_cell_7/BiasAdd/ReadVariableOp"lstm_cell_7/BiasAdd/ReadVariableOp2F
!lstm_cell_7/MatMul/ReadVariableOp!lstm_cell_7/MatMul/ReadVariableOp2J
#lstm_cell_7/MatMul_1/ReadVariableOp#lstm_cell_7/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
яA
а

lstm_8_while_body_85163*
&lstm_8_while_lstm_8_while_loop_counter0
,lstm_8_while_lstm_8_while_maximum_iterations
lstm_8_while_placeholder
lstm_8_while_placeholder_1
lstm_8_while_placeholder_2
lstm_8_while_placeholder_3)
%lstm_8_while_lstm_8_strided_slice_1_0e
alstm_8_while_tensorarrayv2read_tensorlistgetitem_lstm_8_tensorarrayunstack_tensorlistfromtensor_0K
9lstm_8_while_lstm_cell_8_matmul_readvariableop_resource_0: M
;lstm_8_while_lstm_cell_8_matmul_1_readvariableop_resource_0: H
:lstm_8_while_lstm_cell_8_biasadd_readvariableop_resource_0: 
lstm_8_while_identity
lstm_8_while_identity_1
lstm_8_while_identity_2
lstm_8_while_identity_3
lstm_8_while_identity_4
lstm_8_while_identity_5'
#lstm_8_while_lstm_8_strided_slice_1c
_lstm_8_while_tensorarrayv2read_tensorlistgetitem_lstm_8_tensorarrayunstack_tensorlistfromtensorI
7lstm_8_while_lstm_cell_8_matmul_readvariableop_resource: K
9lstm_8_while_lstm_cell_8_matmul_1_readvariableop_resource: F
8lstm_8_while_lstm_cell_8_biasadd_readvariableop_resource: Ив/lstm_8/while/lstm_cell_8/BiasAdd/ReadVariableOpв.lstm_8/while/lstm_cell_8/MatMul/ReadVariableOpв0lstm_8/while/lstm_cell_8/MatMul_1/ReadVariableOpП
>lstm_8/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╔
0lstm_8/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_8_while_tensorarrayv2read_tensorlistgetitem_lstm_8_tensorarrayunstack_tensorlistfromtensor_0lstm_8_while_placeholderGlstm_8/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0и
.lstm_8/while/lstm_cell_8/MatMul/ReadVariableOpReadVariableOp9lstm_8_while_lstm_cell_8_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0╠
lstm_8/while/lstm_cell_8/MatMulMatMul7lstm_8/while/TensorArrayV2Read/TensorListGetItem:item:06lstm_8/while/lstm_cell_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          м
0lstm_8/while/lstm_cell_8/MatMul_1/ReadVariableOpReadVariableOp;lstm_8_while_lstm_cell_8_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0│
!lstm_8/while/lstm_cell_8/MatMul_1MatMullstm_8_while_placeholder_28lstm_8/while/lstm_cell_8/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          п
lstm_8/while/lstm_cell_8/addAddV2)lstm_8/while/lstm_cell_8/MatMul:product:0+lstm_8/while/lstm_cell_8/MatMul_1:product:0*
T0*'
_output_shapes
:          ж
/lstm_8/while/lstm_cell_8/BiasAdd/ReadVariableOpReadVariableOp:lstm_8_while_lstm_cell_8_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0╕
 lstm_8/while/lstm_cell_8/BiasAddBiasAdd lstm_8/while/lstm_cell_8/add:z:07lstm_8/while/lstm_cell_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          j
(lstm_8/while/lstm_cell_8/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Б
lstm_8/while/lstm_cell_8/splitSplit1lstm_8/while/lstm_cell_8/split/split_dim:output:0)lstm_8/while/lstm_cell_8/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitЖ
 lstm_8/while/lstm_cell_8/SigmoidSigmoid'lstm_8/while/lstm_cell_8/split:output:0*
T0*'
_output_shapes
:         И
"lstm_8/while/lstm_cell_8/Sigmoid_1Sigmoid'lstm_8/while/lstm_cell_8/split:output:1*
T0*'
_output_shapes
:         Щ
lstm_8/while/lstm_cell_8/mulMul&lstm_8/while/lstm_cell_8/Sigmoid_1:y:0lstm_8_while_placeholder_3*
T0*'
_output_shapes
:         А
lstm_8/while/lstm_cell_8/ReluRelu'lstm_8/while/lstm_cell_8/split:output:2*
T0*'
_output_shapes
:         к
lstm_8/while/lstm_cell_8/mul_1Mul$lstm_8/while/lstm_cell_8/Sigmoid:y:0+lstm_8/while/lstm_cell_8/Relu:activations:0*
T0*'
_output_shapes
:         Я
lstm_8/while/lstm_cell_8/add_1AddV2 lstm_8/while/lstm_cell_8/mul:z:0"lstm_8/while/lstm_cell_8/mul_1:z:0*
T0*'
_output_shapes
:         И
"lstm_8/while/lstm_cell_8/Sigmoid_2Sigmoid'lstm_8/while/lstm_cell_8/split:output:3*
T0*'
_output_shapes
:         }
lstm_8/while/lstm_cell_8/Relu_1Relu"lstm_8/while/lstm_cell_8/add_1:z:0*
T0*'
_output_shapes
:         о
lstm_8/while/lstm_cell_8/mul_2Mul&lstm_8/while/lstm_cell_8/Sigmoid_2:y:0-lstm_8/while/lstm_cell_8/Relu_1:activations:0*
T0*'
_output_shapes
:         y
7lstm_8/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : И
1lstm_8/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_8_while_placeholder_1@lstm_8/while/TensorArrayV2Write/TensorListSetItem/index:output:0"lstm_8/while/lstm_cell_8/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥T
lstm_8/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :q
lstm_8/while/addAddV2lstm_8_while_placeholderlstm_8/while/add/y:output:0*
T0*
_output_shapes
: V
lstm_8/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Г
lstm_8/while/add_1AddV2&lstm_8_while_lstm_8_while_loop_counterlstm_8/while/add_1/y:output:0*
T0*
_output_shapes
: n
lstm_8/while/IdentityIdentitylstm_8/while/add_1:z:0^lstm_8/while/NoOp*
T0*
_output_shapes
: Ж
lstm_8/while/Identity_1Identity,lstm_8_while_lstm_8_while_maximum_iterations^lstm_8/while/NoOp*
T0*
_output_shapes
: n
lstm_8/while/Identity_2Identitylstm_8/while/add:z:0^lstm_8/while/NoOp*
T0*
_output_shapes
: Ы
lstm_8/while/Identity_3IdentityAlstm_8/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_8/while/NoOp*
T0*
_output_shapes
: Н
lstm_8/while/Identity_4Identity"lstm_8/while/lstm_cell_8/mul_2:z:0^lstm_8/while/NoOp*
T0*'
_output_shapes
:         Н
lstm_8/while/Identity_5Identity"lstm_8/while/lstm_cell_8/add_1:z:0^lstm_8/while/NoOp*
T0*'
_output_shapes
:         щ
lstm_8/while/NoOpNoOp0^lstm_8/while/lstm_cell_8/BiasAdd/ReadVariableOp/^lstm_8/while/lstm_cell_8/MatMul/ReadVariableOp1^lstm_8/while/lstm_cell_8/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "7
lstm_8_while_identitylstm_8/while/Identity:output:0";
lstm_8_while_identity_1 lstm_8/while/Identity_1:output:0";
lstm_8_while_identity_2 lstm_8/while/Identity_2:output:0";
lstm_8_while_identity_3 lstm_8/while/Identity_3:output:0";
lstm_8_while_identity_4 lstm_8/while/Identity_4:output:0";
lstm_8_while_identity_5 lstm_8/while/Identity_5:output:0"L
#lstm_8_while_lstm_8_strided_slice_1%lstm_8_while_lstm_8_strided_slice_1_0"v
8lstm_8_while_lstm_cell_8_biasadd_readvariableop_resource:lstm_8_while_lstm_cell_8_biasadd_readvariableop_resource_0"x
9lstm_8_while_lstm_cell_8_matmul_1_readvariableop_resource;lstm_8_while_lstm_cell_8_matmul_1_readvariableop_resource_0"t
7lstm_8_while_lstm_cell_8_matmul_readvariableop_resource9lstm_8_while_lstm_cell_8_matmul_readvariableop_resource_0"─
_lstm_8_while_tensorarrayv2read_tensorlistgetitem_lstm_8_tensorarrayunstack_tensorlistfromtensoralstm_8_while_tensorarrayv2read_tensorlistgetitem_lstm_8_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2b
/lstm_8/while/lstm_cell_8/BiasAdd/ReadVariableOp/lstm_8/while/lstm_cell_8/BiasAdd/ReadVariableOp2`
.lstm_8/while/lstm_cell_8/MatMul/ReadVariableOp.lstm_8/while/lstm_cell_8/MatMul/ReadVariableOp2d
0lstm_8/while/lstm_cell_8/MatMul_1/ReadVariableOp0lstm_8/while/lstm_cell_8/MatMul_1/ReadVariableOp:Q M

_output_shapes
: 
3
_user_specified_namelstm_8/while/loop_counter:WS

_output_shapes
: 
9
_user_specified_name!lstm_8/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
: 
ф

╩
lstm_7_while_cond_84560*
&lstm_7_while_lstm_7_while_loop_counter0
,lstm_7_while_lstm_7_while_maximum_iterations
lstm_7_while_placeholder
lstm_7_while_placeholder_1
lstm_7_while_placeholder_2
lstm_7_while_placeholder_3,
(lstm_7_while_less_lstm_7_strided_slice_1A
=lstm_7_while_lstm_7_while_cond_84560___redundant_placeholder0A
=lstm_7_while_lstm_7_while_cond_84560___redundant_placeholder1A
=lstm_7_while_lstm_7_while_cond_84560___redundant_placeholder2A
=lstm_7_while_lstm_7_while_cond_84560___redundant_placeholder3
lstm_7_while_identity
~
lstm_7/while/LessLesslstm_7_while_placeholder(lstm_7_while_less_lstm_7_strided_slice_1*
T0*
_output_shapes
: Y
lstm_7/while/IdentityIdentitylstm_7/while/Less:z:0*
T0
*
_output_shapes
: "7
lstm_7_while_identitylstm_7/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : :::::Q M

_output_shapes
: 
3
_user_specified_namelstm_7/while/loop_counter:WS

_output_shapes
: 
9
_user_specified_name!lstm_7/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
:
од
э
G__inference_sequential_2_layer_call_and_return_conditional_losses_84823

inputsC
1lstm_6_lstm_cell_6_matmul_readvariableop_resource: E
3lstm_6_lstm_cell_6_matmul_1_readvariableop_resource: @
2lstm_6_lstm_cell_6_biasadd_readvariableop_resource: C
1lstm_7_lstm_cell_7_matmul_readvariableop_resource: E
3lstm_7_lstm_cell_7_matmul_1_readvariableop_resource: @
2lstm_7_lstm_cell_7_biasadd_readvariableop_resource: C
1lstm_8_lstm_cell_8_matmul_readvariableop_resource: E
3lstm_8_lstm_cell_8_matmul_1_readvariableop_resource: @
2lstm_8_lstm_cell_8_biasadd_readvariableop_resource: 8
&dense_4_matmul_readvariableop_resource:5
'dense_4_biasadd_readvariableop_resource:8
&dense_5_matmul_readvariableop_resource:5
'dense_5_biasadd_readvariableop_resource:
identityИвdense_4/BiasAdd/ReadVariableOpвdense_4/MatMul/ReadVariableOpвdense_5/BiasAdd/ReadVariableOpвdense_5/MatMul/ReadVariableOpв)lstm_6/lstm_cell_6/BiasAdd/ReadVariableOpв(lstm_6/lstm_cell_6/MatMul/ReadVariableOpв*lstm_6/lstm_cell_6/MatMul_1/ReadVariableOpвlstm_6/whileв)lstm_7/lstm_cell_7/BiasAdd/ReadVariableOpв(lstm_7/lstm_cell_7/MatMul/ReadVariableOpв*lstm_7/lstm_cell_7/MatMul_1/ReadVariableOpвlstm_7/whileв)lstm_8/lstm_cell_8/BiasAdd/ReadVariableOpв(lstm_8/lstm_cell_8/MatMul/ReadVariableOpв*lstm_8/lstm_cell_8/MatMul_1/ReadVariableOpвlstm_8/whileP
lstm_6/ShapeShapeinputs*
T0*
_output_shapes
::э╧d
lstm_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: f
lstm_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:f
lstm_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ї
lstm_6/strided_sliceStridedSlicelstm_6/Shape:output:0#lstm_6/strided_slice/stack:output:0%lstm_6/strided_slice/stack_1:output:0%lstm_6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskW
lstm_6/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :И
lstm_6/zeros/packedPacklstm_6/strided_slice:output:0lstm_6/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:W
lstm_6/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Б
lstm_6/zerosFilllstm_6/zeros/packed:output:0lstm_6/zeros/Const:output:0*
T0*'
_output_shapes
:         Y
lstm_6/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :М
lstm_6/zeros_1/packedPacklstm_6/strided_slice:output:0 lstm_6/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_6/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    З
lstm_6/zeros_1Filllstm_6/zeros_1/packed:output:0lstm_6/zeros_1/Const:output:0*
T0*'
_output_shapes
:         j
lstm_6/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          {
lstm_6/transpose	Transposeinputslstm_6/transpose/perm:output:0*
T0*+
_output_shapes
:         `
lstm_6/Shape_1Shapelstm_6/transpose:y:0*
T0*
_output_shapes
::э╧f
lstm_6/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_6/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_6/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:■
lstm_6/strided_slice_1StridedSlicelstm_6/Shape_1:output:0%lstm_6/strided_slice_1/stack:output:0'lstm_6/strided_slice_1/stack_1:output:0'lstm_6/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskm
"lstm_6/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ╔
lstm_6/TensorArrayV2TensorListReserve+lstm_6/TensorArrayV2/element_shape:output:0lstm_6/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Н
<lstm_6/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ї
.lstm_6/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_6/transpose:y:0Elstm_6/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥f
lstm_6/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_6/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_6/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:М
lstm_6/strided_slice_2StridedSlicelstm_6/transpose:y:0%lstm_6/strided_slice_2/stack:output:0'lstm_6/strided_slice_2/stack_1:output:0'lstm_6/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskЪ
(lstm_6/lstm_cell_6/MatMul/ReadVariableOpReadVariableOp1lstm_6_lstm_cell_6_matmul_readvariableop_resource*
_output_shapes

: *
dtype0и
lstm_6/lstm_cell_6/MatMulMatMullstm_6/strided_slice_2:output:00lstm_6/lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Ю
*lstm_6/lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp3lstm_6_lstm_cell_6_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0в
lstm_6/lstm_cell_6/MatMul_1MatMullstm_6/zeros:output:02lstm_6/lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Э
lstm_6/lstm_cell_6/addAddV2#lstm_6/lstm_cell_6/MatMul:product:0%lstm_6/lstm_cell_6/MatMul_1:product:0*
T0*'
_output_shapes
:          Ш
)lstm_6/lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp2lstm_6_lstm_cell_6_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0ж
lstm_6/lstm_cell_6/BiasAddBiasAddlstm_6/lstm_cell_6/add:z:01lstm_6/lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          d
"lstm_6/lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :я
lstm_6/lstm_cell_6/splitSplit+lstm_6/lstm_cell_6/split/split_dim:output:0#lstm_6/lstm_cell_6/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitz
lstm_6/lstm_cell_6/SigmoidSigmoid!lstm_6/lstm_cell_6/split:output:0*
T0*'
_output_shapes
:         |
lstm_6/lstm_cell_6/Sigmoid_1Sigmoid!lstm_6/lstm_cell_6/split:output:1*
T0*'
_output_shapes
:         К
lstm_6/lstm_cell_6/mulMul lstm_6/lstm_cell_6/Sigmoid_1:y:0lstm_6/zeros_1:output:0*
T0*'
_output_shapes
:         t
lstm_6/lstm_cell_6/ReluRelu!lstm_6/lstm_cell_6/split:output:2*
T0*'
_output_shapes
:         Ш
lstm_6/lstm_cell_6/mul_1Mullstm_6/lstm_cell_6/Sigmoid:y:0%lstm_6/lstm_cell_6/Relu:activations:0*
T0*'
_output_shapes
:         Н
lstm_6/lstm_cell_6/add_1AddV2lstm_6/lstm_cell_6/mul:z:0lstm_6/lstm_cell_6/mul_1:z:0*
T0*'
_output_shapes
:         |
lstm_6/lstm_cell_6/Sigmoid_2Sigmoid!lstm_6/lstm_cell_6/split:output:3*
T0*'
_output_shapes
:         q
lstm_6/lstm_cell_6/Relu_1Relulstm_6/lstm_cell_6/add_1:z:0*
T0*'
_output_shapes
:         Ь
lstm_6/lstm_cell_6/mul_2Mul lstm_6/lstm_cell_6/Sigmoid_2:y:0'lstm_6/lstm_cell_6/Relu_1:activations:0*
T0*'
_output_shapes
:         u
$lstm_6/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ═
lstm_6/TensorArrayV2_1TensorListReserve-lstm_6/TensorArrayV2_1/element_shape:output:0lstm_6/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥M
lstm_6/timeConst*
_output_shapes
: *
dtype0*
value	B : j
lstm_6/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         [
lstm_6/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ▀
lstm_6/whileWhile"lstm_6/while/loop_counter:output:0(lstm_6/while/maximum_iterations:output:0lstm_6/time:output:0lstm_6/TensorArrayV2_1:handle:0lstm_6/zeros:output:0lstm_6/zeros_1:output:0lstm_6/strided_slice_1:output:0>lstm_6/TensorArrayUnstack/TensorListFromTensor:output_handle:01lstm_6_lstm_cell_6_matmul_readvariableop_resource3lstm_6_lstm_cell_6_matmul_1_readvariableop_resource2lstm_6_lstm_cell_6_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *#
bodyR
lstm_6_while_body_84414*#
condR
lstm_6_while_cond_84413*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations И
7lstm_6/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╫
)lstm_6/TensorArrayV2Stack/TensorListStackTensorListStacklstm_6/while:output:3@lstm_6/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         *
element_dtype0o
lstm_6/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         h
lstm_6/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: h
lstm_6/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:к
lstm_6/strided_slice_3StridedSlice2lstm_6/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_6/strided_slice_3/stack:output:0'lstm_6/strided_slice_3/stack_1:output:0'lstm_6/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskl
lstm_6/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          л
lstm_6/transpose_1	Transpose2lstm_6/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_6/transpose_1/perm:output:0*
T0*+
_output_shapes
:         b
lstm_6/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    \
dropout_8/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?М
dropout_8/dropout/MulMullstm_6/transpose_1:y:0 dropout_8/dropout/Const:output:0*
T0*+
_output_shapes
:         k
dropout_8/dropout/ShapeShapelstm_6/transpose_1:y:0*
T0*
_output_shapes
::э╧д
.dropout_8/dropout/random_uniform/RandomUniformRandomUniform dropout_8/dropout/Shape:output:0*
T0*+
_output_shapes
:         *
dtype0e
 dropout_8/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=╚
dropout_8/dropout/GreaterEqualGreaterEqual7dropout_8/dropout/random_uniform/RandomUniform:output:0)dropout_8/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:         ^
dropout_8/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ┐
dropout_8/dropout/SelectV2SelectV2"dropout_8/dropout/GreaterEqual:z:0dropout_8/dropout/Mul:z:0"dropout_8/dropout/Const_1:output:0*
T0*+
_output_shapes
:         m
lstm_7/ShapeShape#dropout_8/dropout/SelectV2:output:0*
T0*
_output_shapes
::э╧d
lstm_7/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: f
lstm_7/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:f
lstm_7/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ї
lstm_7/strided_sliceStridedSlicelstm_7/Shape:output:0#lstm_7/strided_slice/stack:output:0%lstm_7/strided_slice/stack_1:output:0%lstm_7/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskW
lstm_7/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :И
lstm_7/zeros/packedPacklstm_7/strided_slice:output:0lstm_7/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:W
lstm_7/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Б
lstm_7/zerosFilllstm_7/zeros/packed:output:0lstm_7/zeros/Const:output:0*
T0*'
_output_shapes
:         Y
lstm_7/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :М
lstm_7/zeros_1/packedPacklstm_7/strided_slice:output:0 lstm_7/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_7/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    З
lstm_7/zeros_1Filllstm_7/zeros_1/packed:output:0lstm_7/zeros_1/Const:output:0*
T0*'
_output_shapes
:         j
lstm_7/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ш
lstm_7/transpose	Transpose#dropout_8/dropout/SelectV2:output:0lstm_7/transpose/perm:output:0*
T0*+
_output_shapes
:         `
lstm_7/Shape_1Shapelstm_7/transpose:y:0*
T0*
_output_shapes
::э╧f
lstm_7/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_7/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_7/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:■
lstm_7/strided_slice_1StridedSlicelstm_7/Shape_1:output:0%lstm_7/strided_slice_1/stack:output:0'lstm_7/strided_slice_1/stack_1:output:0'lstm_7/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskm
"lstm_7/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ╔
lstm_7/TensorArrayV2TensorListReserve+lstm_7/TensorArrayV2/element_shape:output:0lstm_7/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Н
<lstm_7/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ї
.lstm_7/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_7/transpose:y:0Elstm_7/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥f
lstm_7/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_7/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_7/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:М
lstm_7/strided_slice_2StridedSlicelstm_7/transpose:y:0%lstm_7/strided_slice_2/stack:output:0'lstm_7/strided_slice_2/stack_1:output:0'lstm_7/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskЪ
(lstm_7/lstm_cell_7/MatMul/ReadVariableOpReadVariableOp1lstm_7_lstm_cell_7_matmul_readvariableop_resource*
_output_shapes

: *
dtype0и
lstm_7/lstm_cell_7/MatMulMatMullstm_7/strided_slice_2:output:00lstm_7/lstm_cell_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Ю
*lstm_7/lstm_cell_7/MatMul_1/ReadVariableOpReadVariableOp3lstm_7_lstm_cell_7_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0в
lstm_7/lstm_cell_7/MatMul_1MatMullstm_7/zeros:output:02lstm_7/lstm_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Э
lstm_7/lstm_cell_7/addAddV2#lstm_7/lstm_cell_7/MatMul:product:0%lstm_7/lstm_cell_7/MatMul_1:product:0*
T0*'
_output_shapes
:          Ш
)lstm_7/lstm_cell_7/BiasAdd/ReadVariableOpReadVariableOp2lstm_7_lstm_cell_7_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0ж
lstm_7/lstm_cell_7/BiasAddBiasAddlstm_7/lstm_cell_7/add:z:01lstm_7/lstm_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          d
"lstm_7/lstm_cell_7/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :я
lstm_7/lstm_cell_7/splitSplit+lstm_7/lstm_cell_7/split/split_dim:output:0#lstm_7/lstm_cell_7/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitz
lstm_7/lstm_cell_7/SigmoidSigmoid!lstm_7/lstm_cell_7/split:output:0*
T0*'
_output_shapes
:         |
lstm_7/lstm_cell_7/Sigmoid_1Sigmoid!lstm_7/lstm_cell_7/split:output:1*
T0*'
_output_shapes
:         К
lstm_7/lstm_cell_7/mulMul lstm_7/lstm_cell_7/Sigmoid_1:y:0lstm_7/zeros_1:output:0*
T0*'
_output_shapes
:         t
lstm_7/lstm_cell_7/ReluRelu!lstm_7/lstm_cell_7/split:output:2*
T0*'
_output_shapes
:         Ш
lstm_7/lstm_cell_7/mul_1Mullstm_7/lstm_cell_7/Sigmoid:y:0%lstm_7/lstm_cell_7/Relu:activations:0*
T0*'
_output_shapes
:         Н
lstm_7/lstm_cell_7/add_1AddV2lstm_7/lstm_cell_7/mul:z:0lstm_7/lstm_cell_7/mul_1:z:0*
T0*'
_output_shapes
:         |
lstm_7/lstm_cell_7/Sigmoid_2Sigmoid!lstm_7/lstm_cell_7/split:output:3*
T0*'
_output_shapes
:         q
lstm_7/lstm_cell_7/Relu_1Relulstm_7/lstm_cell_7/add_1:z:0*
T0*'
_output_shapes
:         Ь
lstm_7/lstm_cell_7/mul_2Mul lstm_7/lstm_cell_7/Sigmoid_2:y:0'lstm_7/lstm_cell_7/Relu_1:activations:0*
T0*'
_output_shapes
:         u
$lstm_7/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ═
lstm_7/TensorArrayV2_1TensorListReserve-lstm_7/TensorArrayV2_1/element_shape:output:0lstm_7/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥M
lstm_7/timeConst*
_output_shapes
: *
dtype0*
value	B : j
lstm_7/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         [
lstm_7/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ▀
lstm_7/whileWhile"lstm_7/while/loop_counter:output:0(lstm_7/while/maximum_iterations:output:0lstm_7/time:output:0lstm_7/TensorArrayV2_1:handle:0lstm_7/zeros:output:0lstm_7/zeros_1:output:0lstm_7/strided_slice_1:output:0>lstm_7/TensorArrayUnstack/TensorListFromTensor:output_handle:01lstm_7_lstm_cell_7_matmul_readvariableop_resource3lstm_7_lstm_cell_7_matmul_1_readvariableop_resource2lstm_7_lstm_cell_7_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *#
bodyR
lstm_7_while_body_84561*#
condR
lstm_7_while_cond_84560*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations И
7lstm_7/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╫
)lstm_7/TensorArrayV2Stack/TensorListStackTensorListStacklstm_7/while:output:3@lstm_7/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         *
element_dtype0o
lstm_7/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         h
lstm_7/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: h
lstm_7/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:к
lstm_7/strided_slice_3StridedSlice2lstm_7/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_7/strided_slice_3/stack:output:0'lstm_7/strided_slice_3/stack_1:output:0'lstm_7/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskl
lstm_7/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          л
lstm_7/transpose_1	Transpose2lstm_7/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_7/transpose_1/perm:output:0*
T0*+
_output_shapes
:         b
lstm_7/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    \
dropout_9/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?М
dropout_9/dropout/MulMullstm_7/transpose_1:y:0 dropout_9/dropout/Const:output:0*
T0*+
_output_shapes
:         k
dropout_9/dropout/ShapeShapelstm_7/transpose_1:y:0*
T0*
_output_shapes
::э╧д
.dropout_9/dropout/random_uniform/RandomUniformRandomUniform dropout_9/dropout/Shape:output:0*
T0*+
_output_shapes
:         *
dtype0e
 dropout_9/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=╚
dropout_9/dropout/GreaterEqualGreaterEqual7dropout_9/dropout/random_uniform/RandomUniform:output:0)dropout_9/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:         ^
dropout_9/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ┐
dropout_9/dropout/SelectV2SelectV2"dropout_9/dropout/GreaterEqual:z:0dropout_9/dropout/Mul:z:0"dropout_9/dropout/Const_1:output:0*
T0*+
_output_shapes
:         m
lstm_8/ShapeShape#dropout_9/dropout/SelectV2:output:0*
T0*
_output_shapes
::э╧d
lstm_8/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: f
lstm_8/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:f
lstm_8/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ї
lstm_8/strided_sliceStridedSlicelstm_8/Shape:output:0#lstm_8/strided_slice/stack:output:0%lstm_8/strided_slice/stack_1:output:0%lstm_8/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskW
lstm_8/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :И
lstm_8/zeros/packedPacklstm_8/strided_slice:output:0lstm_8/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:W
lstm_8/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Б
lstm_8/zerosFilllstm_8/zeros/packed:output:0lstm_8/zeros/Const:output:0*
T0*'
_output_shapes
:         Y
lstm_8/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :М
lstm_8/zeros_1/packedPacklstm_8/strided_slice:output:0 lstm_8/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_8/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    З
lstm_8/zeros_1Filllstm_8/zeros_1/packed:output:0lstm_8/zeros_1/Const:output:0*
T0*'
_output_shapes
:         j
lstm_8/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ш
lstm_8/transpose	Transpose#dropout_9/dropout/SelectV2:output:0lstm_8/transpose/perm:output:0*
T0*+
_output_shapes
:         `
lstm_8/Shape_1Shapelstm_8/transpose:y:0*
T0*
_output_shapes
::э╧f
lstm_8/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_8/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_8/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:■
lstm_8/strided_slice_1StridedSlicelstm_8/Shape_1:output:0%lstm_8/strided_slice_1/stack:output:0'lstm_8/strided_slice_1/stack_1:output:0'lstm_8/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskm
"lstm_8/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ╔
lstm_8/TensorArrayV2TensorListReserve+lstm_8/TensorArrayV2/element_shape:output:0lstm_8/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Н
<lstm_8/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ї
.lstm_8/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_8/transpose:y:0Elstm_8/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥f
lstm_8/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_8/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_8/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:М
lstm_8/strided_slice_2StridedSlicelstm_8/transpose:y:0%lstm_8/strided_slice_2/stack:output:0'lstm_8/strided_slice_2/stack_1:output:0'lstm_8/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskЪ
(lstm_8/lstm_cell_8/MatMul/ReadVariableOpReadVariableOp1lstm_8_lstm_cell_8_matmul_readvariableop_resource*
_output_shapes

: *
dtype0и
lstm_8/lstm_cell_8/MatMulMatMullstm_8/strided_slice_2:output:00lstm_8/lstm_cell_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Ю
*lstm_8/lstm_cell_8/MatMul_1/ReadVariableOpReadVariableOp3lstm_8_lstm_cell_8_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0в
lstm_8/lstm_cell_8/MatMul_1MatMullstm_8/zeros:output:02lstm_8/lstm_cell_8/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Э
lstm_8/lstm_cell_8/addAddV2#lstm_8/lstm_cell_8/MatMul:product:0%lstm_8/lstm_cell_8/MatMul_1:product:0*
T0*'
_output_shapes
:          Ш
)lstm_8/lstm_cell_8/BiasAdd/ReadVariableOpReadVariableOp2lstm_8_lstm_cell_8_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0ж
lstm_8/lstm_cell_8/BiasAddBiasAddlstm_8/lstm_cell_8/add:z:01lstm_8/lstm_cell_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          d
"lstm_8/lstm_cell_8/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :я
lstm_8/lstm_cell_8/splitSplit+lstm_8/lstm_cell_8/split/split_dim:output:0#lstm_8/lstm_cell_8/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitz
lstm_8/lstm_cell_8/SigmoidSigmoid!lstm_8/lstm_cell_8/split:output:0*
T0*'
_output_shapes
:         |
lstm_8/lstm_cell_8/Sigmoid_1Sigmoid!lstm_8/lstm_cell_8/split:output:1*
T0*'
_output_shapes
:         К
lstm_8/lstm_cell_8/mulMul lstm_8/lstm_cell_8/Sigmoid_1:y:0lstm_8/zeros_1:output:0*
T0*'
_output_shapes
:         t
lstm_8/lstm_cell_8/ReluRelu!lstm_8/lstm_cell_8/split:output:2*
T0*'
_output_shapes
:         Ш
lstm_8/lstm_cell_8/mul_1Mullstm_8/lstm_cell_8/Sigmoid:y:0%lstm_8/lstm_cell_8/Relu:activations:0*
T0*'
_output_shapes
:         Н
lstm_8/lstm_cell_8/add_1AddV2lstm_8/lstm_cell_8/mul:z:0lstm_8/lstm_cell_8/mul_1:z:0*
T0*'
_output_shapes
:         |
lstm_8/lstm_cell_8/Sigmoid_2Sigmoid!lstm_8/lstm_cell_8/split:output:3*
T0*'
_output_shapes
:         q
lstm_8/lstm_cell_8/Relu_1Relulstm_8/lstm_cell_8/add_1:z:0*
T0*'
_output_shapes
:         Ь
lstm_8/lstm_cell_8/mul_2Mul lstm_8/lstm_cell_8/Sigmoid_2:y:0'lstm_8/lstm_cell_8/Relu_1:activations:0*
T0*'
_output_shapes
:         u
$lstm_8/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       e
#lstm_8/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┌
lstm_8/TensorArrayV2_1TensorListReserve-lstm_8/TensorArrayV2_1/element_shape:output:0,lstm_8/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥M
lstm_8/timeConst*
_output_shapes
: *
dtype0*
value	B : j
lstm_8/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         [
lstm_8/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ▀
lstm_8/whileWhile"lstm_8/while/loop_counter:output:0(lstm_8/while/maximum_iterations:output:0lstm_8/time:output:0lstm_8/TensorArrayV2_1:handle:0lstm_8/zeros:output:0lstm_8/zeros_1:output:0lstm_8/strided_slice_1:output:0>lstm_8/TensorArrayUnstack/TensorListFromTensor:output_handle:01lstm_8_lstm_cell_8_matmul_readvariableop_resource3lstm_8_lstm_cell_8_matmul_1_readvariableop_resource2lstm_8_lstm_cell_8_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *#
bodyR
lstm_8_while_body_84709*#
condR
lstm_8_while_cond_84708*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations И
7lstm_8/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ы
)lstm_8/TensorArrayV2Stack/TensorListStackTensorListStacklstm_8/while:output:3@lstm_8/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         *
element_dtype0*
num_elementso
lstm_8/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         h
lstm_8/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: h
lstm_8/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:к
lstm_8/strided_slice_3StridedSlice2lstm_8/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_8/strided_slice_3/stack:output:0'lstm_8/strided_slice_3/stack_1:output:0'lstm_8/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskl
lstm_8/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          л
lstm_8/transpose_1	Transpose2lstm_8/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_8/transpose_1/perm:output:0*
T0*+
_output_shapes
:         b
lstm_8/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ]
dropout_10/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?У
dropout_10/dropout/MulMullstm_8/strided_slice_3:output:0!dropout_10/dropout/Const:output:0*
T0*'
_output_shapes
:         u
dropout_10/dropout/ShapeShapelstm_8/strided_slice_3:output:0*
T0*
_output_shapes
::э╧в
/dropout_10/dropout/random_uniform/RandomUniformRandomUniform!dropout_10/dropout/Shape:output:0*
T0*'
_output_shapes
:         *
dtype0f
!dropout_10/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=╟
dropout_10/dropout/GreaterEqualGreaterEqual8dropout_10/dropout/random_uniform/RandomUniform:output:0*dropout_10/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         _
dropout_10/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ┐
dropout_10/dropout/SelectV2SelectV2#dropout_10/dropout/GreaterEqual:z:0dropout_10/dropout/Mul:z:0#dropout_10/dropout/Const_1:output:0*
T0*'
_output_shapes
:         Д
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource*
_output_shapes

:*
dtype0Ч
dense_4/MatMulMatMul$dropout_10/dropout/SelectV2:output:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         В
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0О
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         `
dense_4/ReluReludense_4/BiasAdd:output:0*
T0*'
_output_shapes
:         ]
dropout_11/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?О
dropout_11/dropout/MulMuldense_4/Relu:activations:0!dropout_11/dropout/Const:output:0*
T0*'
_output_shapes
:         p
dropout_11/dropout/ShapeShapedense_4/Relu:activations:0*
T0*
_output_shapes
::э╧в
/dropout_11/dropout/random_uniform/RandomUniformRandomUniform!dropout_11/dropout/Shape:output:0*
T0*'
_output_shapes
:         *
dtype0f
!dropout_11/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=╟
dropout_11/dropout/GreaterEqualGreaterEqual8dropout_11/dropout/random_uniform/RandomUniform:output:0*dropout_11/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         _
dropout_11/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ┐
dropout_11/dropout/SelectV2SelectV2#dropout_11/dropout/GreaterEqual:z:0dropout_11/dropout/Mul:z:0#dropout_11/dropout/Const_1:output:0*
T0*'
_output_shapes
:         Д
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource*
_output_shapes

:*
dtype0Ч
dense_5/MatMulMatMul$dropout_11/dropout/SelectV2:output:0%dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         В
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0О
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         g
IdentityIdentitydense_5/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         Б
NoOpNoOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp*^lstm_6/lstm_cell_6/BiasAdd/ReadVariableOp)^lstm_6/lstm_cell_6/MatMul/ReadVariableOp+^lstm_6/lstm_cell_6/MatMul_1/ReadVariableOp^lstm_6/while*^lstm_7/lstm_cell_7/BiasAdd/ReadVariableOp)^lstm_7/lstm_cell_7/MatMul/ReadVariableOp+^lstm_7/lstm_cell_7/MatMul_1/ReadVariableOp^lstm_7/while*^lstm_8/lstm_cell_8/BiasAdd/ReadVariableOp)^lstm_8/lstm_cell_8/MatMul/ReadVariableOp+^lstm_8/lstm_cell_8/MatMul_1/ReadVariableOp^lstm_8/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:         : : : : : : : : : : : : : 2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2>
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp2V
)lstm_6/lstm_cell_6/BiasAdd/ReadVariableOp)lstm_6/lstm_cell_6/BiasAdd/ReadVariableOp2T
(lstm_6/lstm_cell_6/MatMul/ReadVariableOp(lstm_6/lstm_cell_6/MatMul/ReadVariableOp2X
*lstm_6/lstm_cell_6/MatMul_1/ReadVariableOp*lstm_6/lstm_cell_6/MatMul_1/ReadVariableOp2
lstm_6/whilelstm_6/while2V
)lstm_7/lstm_cell_7/BiasAdd/ReadVariableOp)lstm_7/lstm_cell_7/BiasAdd/ReadVariableOp2T
(lstm_7/lstm_cell_7/MatMul/ReadVariableOp(lstm_7/lstm_cell_7/MatMul/ReadVariableOp2X
*lstm_7/lstm_cell_7/MatMul_1/ReadVariableOp*lstm_7/lstm_cell_7/MatMul_1/ReadVariableOp2
lstm_7/whilelstm_7/while2V
)lstm_8/lstm_cell_8/BiasAdd/ReadVariableOp)lstm_8/lstm_cell_8/BiasAdd/ReadVariableOp2T
(lstm_8/lstm_cell_8/MatMul/ReadVariableOp(lstm_8/lstm_cell_8/MatMul/ReadVariableOp2X
*lstm_8/lstm_cell_8/MatMul_1/ReadVariableOp*lstm_8/lstm_cell_8/MatMul_1/ReadVariableOp2
lstm_8/whilelstm_8/while:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
ё
c
*__inference_dropout_11_layer_call_fn_87225

inputs
identityИвStatefulPartitionedCall└
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dropout_11_layer_call_and_return_conditional_losses_83416o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
Ь8
└
while_body_85652
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
2while_lstm_cell_6_matmul_readvariableop_resource_0: F
4while_lstm_cell_6_matmul_1_readvariableop_resource_0: A
3while_lstm_cell_6_biasadd_readvariableop_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
0while_lstm_cell_6_matmul_readvariableop_resource: D
2while_lstm_cell_6_matmul_1_readvariableop_resource: ?
1while_lstm_cell_6_biasadd_readvariableop_resource: Ив(while/lstm_cell_6/BiasAdd/ReadVariableOpв'while/lstm_cell_6/MatMul/ReadVariableOpв)while/lstm_cell_6/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ъ
'while/lstm_cell_6/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_6_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0╖
while/lstm_cell_6/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Ю
)while/lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_6_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0Ю
while/lstm_cell_6/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Ъ
while/lstm_cell_6/addAddV2"while/lstm_cell_6/MatMul:product:0$while/lstm_cell_6/MatMul_1:product:0*
T0*'
_output_shapes
:          Ш
(while/lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_6_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0г
while/lstm_cell_6/BiasAddBiasAddwhile/lstm_cell_6/add:z:00while/lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          c
!while/lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ь
while/lstm_cell_6/splitSplit*while/lstm_cell_6/split/split_dim:output:0"while/lstm_cell_6/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitx
while/lstm_cell_6/SigmoidSigmoid while/lstm_cell_6/split:output:0*
T0*'
_output_shapes
:         z
while/lstm_cell_6/Sigmoid_1Sigmoid while/lstm_cell_6/split:output:1*
T0*'
_output_shapes
:         Д
while/lstm_cell_6/mulMulwhile/lstm_cell_6/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         r
while/lstm_cell_6/ReluRelu while/lstm_cell_6/split:output:2*
T0*'
_output_shapes
:         Х
while/lstm_cell_6/mul_1Mulwhile/lstm_cell_6/Sigmoid:y:0$while/lstm_cell_6/Relu:activations:0*
T0*'
_output_shapes
:         К
while/lstm_cell_6/add_1AddV2while/lstm_cell_6/mul:z:0while/lstm_cell_6/mul_1:z:0*
T0*'
_output_shapes
:         z
while/lstm_cell_6/Sigmoid_2Sigmoid while/lstm_cell_6/split:output:3*
T0*'
_output_shapes
:         o
while/lstm_cell_6/Relu_1Reluwhile/lstm_cell_6/add_1:z:0*
T0*'
_output_shapes
:         Щ
while/lstm_cell_6/mul_2Mulwhile/lstm_cell_6/Sigmoid_2:y:0&while/lstm_cell_6/Relu_1:activations:0*
T0*'
_output_shapes
:         ─
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_6/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/lstm_cell_6/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         x
while/Identity_5Identitywhile/lstm_cell_6/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         ═

while/NoOpNoOp)^while/lstm_cell_6/BiasAdd/ReadVariableOp(^while/lstm_cell_6/MatMul/ReadVariableOp*^while/lstm_cell_6/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_6_biasadd_readvariableop_resource3while_lstm_cell_6_biasadd_readvariableop_resource_0"j
2while_lstm_cell_6_matmul_1_readvariableop_resource4while_lstm_cell_6_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_6_matmul_readvariableop_resource2while_lstm_cell_6_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2T
(while/lstm_cell_6/BiasAdd/ReadVariableOp(while/lstm_cell_6/BiasAdd/ReadVariableOp2R
'while/lstm_cell_6/MatMul/ReadVariableOp'while/lstm_cell_6/MatMul/ReadVariableOp2V
)while/lstm_cell_6/MatMul_1/ReadVariableOp)while/lstm_cell_6/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
: 
╠@
а

lstm_6_while_body_84882*
&lstm_6_while_lstm_6_while_loop_counter0
,lstm_6_while_lstm_6_while_maximum_iterations
lstm_6_while_placeholder
lstm_6_while_placeholder_1
lstm_6_while_placeholder_2
lstm_6_while_placeholder_3)
%lstm_6_while_lstm_6_strided_slice_1_0e
alstm_6_while_tensorarrayv2read_tensorlistgetitem_lstm_6_tensorarrayunstack_tensorlistfromtensor_0K
9lstm_6_while_lstm_cell_6_matmul_readvariableop_resource_0: M
;lstm_6_while_lstm_cell_6_matmul_1_readvariableop_resource_0: H
:lstm_6_while_lstm_cell_6_biasadd_readvariableop_resource_0: 
lstm_6_while_identity
lstm_6_while_identity_1
lstm_6_while_identity_2
lstm_6_while_identity_3
lstm_6_while_identity_4
lstm_6_while_identity_5'
#lstm_6_while_lstm_6_strided_slice_1c
_lstm_6_while_tensorarrayv2read_tensorlistgetitem_lstm_6_tensorarrayunstack_tensorlistfromtensorI
7lstm_6_while_lstm_cell_6_matmul_readvariableop_resource: K
9lstm_6_while_lstm_cell_6_matmul_1_readvariableop_resource: F
8lstm_6_while_lstm_cell_6_biasadd_readvariableop_resource: Ив/lstm_6/while/lstm_cell_6/BiasAdd/ReadVariableOpв.lstm_6/while/lstm_cell_6/MatMul/ReadVariableOpв0lstm_6/while/lstm_cell_6/MatMul_1/ReadVariableOpП
>lstm_6/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╔
0lstm_6/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_6_while_tensorarrayv2read_tensorlistgetitem_lstm_6_tensorarrayunstack_tensorlistfromtensor_0lstm_6_while_placeholderGlstm_6/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0и
.lstm_6/while/lstm_cell_6/MatMul/ReadVariableOpReadVariableOp9lstm_6_while_lstm_cell_6_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0╠
lstm_6/while/lstm_cell_6/MatMulMatMul7lstm_6/while/TensorArrayV2Read/TensorListGetItem:item:06lstm_6/while/lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          м
0lstm_6/while/lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp;lstm_6_while_lstm_cell_6_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0│
!lstm_6/while/lstm_cell_6/MatMul_1MatMullstm_6_while_placeholder_28lstm_6/while/lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          п
lstm_6/while/lstm_cell_6/addAddV2)lstm_6/while/lstm_cell_6/MatMul:product:0+lstm_6/while/lstm_cell_6/MatMul_1:product:0*
T0*'
_output_shapes
:          ж
/lstm_6/while/lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp:lstm_6_while_lstm_cell_6_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0╕
 lstm_6/while/lstm_cell_6/BiasAddBiasAdd lstm_6/while/lstm_cell_6/add:z:07lstm_6/while/lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          j
(lstm_6/while/lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Б
lstm_6/while/lstm_cell_6/splitSplit1lstm_6/while/lstm_cell_6/split/split_dim:output:0)lstm_6/while/lstm_cell_6/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitЖ
 lstm_6/while/lstm_cell_6/SigmoidSigmoid'lstm_6/while/lstm_cell_6/split:output:0*
T0*'
_output_shapes
:         И
"lstm_6/while/lstm_cell_6/Sigmoid_1Sigmoid'lstm_6/while/lstm_cell_6/split:output:1*
T0*'
_output_shapes
:         Щ
lstm_6/while/lstm_cell_6/mulMul&lstm_6/while/lstm_cell_6/Sigmoid_1:y:0lstm_6_while_placeholder_3*
T0*'
_output_shapes
:         А
lstm_6/while/lstm_cell_6/ReluRelu'lstm_6/while/lstm_cell_6/split:output:2*
T0*'
_output_shapes
:         к
lstm_6/while/lstm_cell_6/mul_1Mul$lstm_6/while/lstm_cell_6/Sigmoid:y:0+lstm_6/while/lstm_cell_6/Relu:activations:0*
T0*'
_output_shapes
:         Я
lstm_6/while/lstm_cell_6/add_1AddV2 lstm_6/while/lstm_cell_6/mul:z:0"lstm_6/while/lstm_cell_6/mul_1:z:0*
T0*'
_output_shapes
:         И
"lstm_6/while/lstm_cell_6/Sigmoid_2Sigmoid'lstm_6/while/lstm_cell_6/split:output:3*
T0*'
_output_shapes
:         }
lstm_6/while/lstm_cell_6/Relu_1Relu"lstm_6/while/lstm_cell_6/add_1:z:0*
T0*'
_output_shapes
:         о
lstm_6/while/lstm_cell_6/mul_2Mul&lstm_6/while/lstm_cell_6/Sigmoid_2:y:0-lstm_6/while/lstm_cell_6/Relu_1:activations:0*
T0*'
_output_shapes
:         р
1lstm_6/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_6_while_placeholder_1lstm_6_while_placeholder"lstm_6/while/lstm_cell_6/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥T
lstm_6/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :q
lstm_6/while/addAddV2lstm_6_while_placeholderlstm_6/while/add/y:output:0*
T0*
_output_shapes
: V
lstm_6/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Г
lstm_6/while/add_1AddV2&lstm_6_while_lstm_6_while_loop_counterlstm_6/while/add_1/y:output:0*
T0*
_output_shapes
: n
lstm_6/while/IdentityIdentitylstm_6/while/add_1:z:0^lstm_6/while/NoOp*
T0*
_output_shapes
: Ж
lstm_6/while/Identity_1Identity,lstm_6_while_lstm_6_while_maximum_iterations^lstm_6/while/NoOp*
T0*
_output_shapes
: n
lstm_6/while/Identity_2Identitylstm_6/while/add:z:0^lstm_6/while/NoOp*
T0*
_output_shapes
: Ы
lstm_6/while/Identity_3IdentityAlstm_6/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_6/while/NoOp*
T0*
_output_shapes
: Н
lstm_6/while/Identity_4Identity"lstm_6/while/lstm_cell_6/mul_2:z:0^lstm_6/while/NoOp*
T0*'
_output_shapes
:         Н
lstm_6/while/Identity_5Identity"lstm_6/while/lstm_cell_6/add_1:z:0^lstm_6/while/NoOp*
T0*'
_output_shapes
:         щ
lstm_6/while/NoOpNoOp0^lstm_6/while/lstm_cell_6/BiasAdd/ReadVariableOp/^lstm_6/while/lstm_cell_6/MatMul/ReadVariableOp1^lstm_6/while/lstm_cell_6/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "7
lstm_6_while_identitylstm_6/while/Identity:output:0";
lstm_6_while_identity_1 lstm_6/while/Identity_1:output:0";
lstm_6_while_identity_2 lstm_6/while/Identity_2:output:0";
lstm_6_while_identity_3 lstm_6/while/Identity_3:output:0";
lstm_6_while_identity_4 lstm_6/while/Identity_4:output:0";
lstm_6_while_identity_5 lstm_6/while/Identity_5:output:0"L
#lstm_6_while_lstm_6_strided_slice_1%lstm_6_while_lstm_6_strided_slice_1_0"v
8lstm_6_while_lstm_cell_6_biasadd_readvariableop_resource:lstm_6_while_lstm_cell_6_biasadd_readvariableop_resource_0"x
9lstm_6_while_lstm_cell_6_matmul_1_readvariableop_resource;lstm_6_while_lstm_cell_6_matmul_1_readvariableop_resource_0"t
7lstm_6_while_lstm_cell_6_matmul_readvariableop_resource9lstm_6_while_lstm_cell_6_matmul_readvariableop_resource_0"─
_lstm_6_while_tensorarrayv2read_tensorlistgetitem_lstm_6_tensorarrayunstack_tensorlistfromtensoralstm_6_while_tensorarrayv2read_tensorlistgetitem_lstm_6_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2b
/lstm_6/while/lstm_cell_6/BiasAdd/ReadVariableOp/lstm_6/while/lstm_cell_6/BiasAdd/ReadVariableOp2`
.lstm_6/while/lstm_cell_6/MatMul/ReadVariableOp.lstm_6/while/lstm_cell_6/MatMul/ReadVariableOp2d
0lstm_6/while/lstm_cell_6/MatMul_1/ReadVariableOp0lstm_6/while/lstm_cell_6/MatMul_1/ReadVariableOp:Q M

_output_shapes
: 
3
_user_specified_namelstm_6/while/loop_counter:WS

_output_shapes
: 
9
_user_specified_name!lstm_6/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
: 
ч
b
D__inference_dropout_9_layer_call_and_return_conditional_losses_86549

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:         _

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:         "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         :S O
+
_output_shapes
:         
 
_user_specified_nameinputs
Ь8
└
while_body_86152
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
2while_lstm_cell_7_matmul_readvariableop_resource_0: F
4while_lstm_cell_7_matmul_1_readvariableop_resource_0: A
3while_lstm_cell_7_biasadd_readvariableop_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
0while_lstm_cell_7_matmul_readvariableop_resource: D
2while_lstm_cell_7_matmul_1_readvariableop_resource: ?
1while_lstm_cell_7_biasadd_readvariableop_resource: Ив(while/lstm_cell_7/BiasAdd/ReadVariableOpв'while/lstm_cell_7/MatMul/ReadVariableOpв)while/lstm_cell_7/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ъ
'while/lstm_cell_7/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_7_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0╖
while/lstm_cell_7/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Ю
)while/lstm_cell_7/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_7_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0Ю
while/lstm_cell_7/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Ъ
while/lstm_cell_7/addAddV2"while/lstm_cell_7/MatMul:product:0$while/lstm_cell_7/MatMul_1:product:0*
T0*'
_output_shapes
:          Ш
(while/lstm_cell_7/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_7_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0г
while/lstm_cell_7/BiasAddBiasAddwhile/lstm_cell_7/add:z:00while/lstm_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          c
!while/lstm_cell_7/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ь
while/lstm_cell_7/splitSplit*while/lstm_cell_7/split/split_dim:output:0"while/lstm_cell_7/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitx
while/lstm_cell_7/SigmoidSigmoid while/lstm_cell_7/split:output:0*
T0*'
_output_shapes
:         z
while/lstm_cell_7/Sigmoid_1Sigmoid while/lstm_cell_7/split:output:1*
T0*'
_output_shapes
:         Д
while/lstm_cell_7/mulMulwhile/lstm_cell_7/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         r
while/lstm_cell_7/ReluRelu while/lstm_cell_7/split:output:2*
T0*'
_output_shapes
:         Х
while/lstm_cell_7/mul_1Mulwhile/lstm_cell_7/Sigmoid:y:0$while/lstm_cell_7/Relu:activations:0*
T0*'
_output_shapes
:         К
while/lstm_cell_7/add_1AddV2while/lstm_cell_7/mul:z:0while/lstm_cell_7/mul_1:z:0*
T0*'
_output_shapes
:         z
while/lstm_cell_7/Sigmoid_2Sigmoid while/lstm_cell_7/split:output:3*
T0*'
_output_shapes
:         o
while/lstm_cell_7/Relu_1Reluwhile/lstm_cell_7/add_1:z:0*
T0*'
_output_shapes
:         Щ
while/lstm_cell_7/mul_2Mulwhile/lstm_cell_7/Sigmoid_2:y:0&while/lstm_cell_7/Relu_1:activations:0*
T0*'
_output_shapes
:         ─
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_7/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/lstm_cell_7/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         x
while/Identity_5Identitywhile/lstm_cell_7/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         ═

while/NoOpNoOp)^while/lstm_cell_7/BiasAdd/ReadVariableOp(^while/lstm_cell_7/MatMul/ReadVariableOp*^while/lstm_cell_7/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_7_biasadd_readvariableop_resource3while_lstm_cell_7_biasadd_readvariableop_resource_0"j
2while_lstm_cell_7_matmul_1_readvariableop_resource4while_lstm_cell_7_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_7_matmul_readvariableop_resource2while_lstm_cell_7_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2T
(while/lstm_cell_7/BiasAdd/ReadVariableOp(while/lstm_cell_7/BiasAdd/ReadVariableOp2R
'while/lstm_cell_7/MatMul/ReadVariableOp'while/lstm_cell_7/MatMul/ReadVariableOp2V
)while/lstm_cell_7/MatMul_1/ReadVariableOp)while/lstm_cell_7/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
: 
 
b
)__inference_dropout_8_layer_call_fn_85884

inputs
identityИвStatefulPartitionedCall├
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_8_layer_call_and_return_conditional_losses_83055s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
╔
 
F__inference_lstm_cell_6_layer_call_and_return_conditional_losses_82044

inputs

states
states_10
matmul_readvariableop_resource: 2
 matmul_1_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity

identity_1

identity_2ИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpвMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:          r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╢
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         N
ReluRelusplit:output:2*
T0*'
_output_shapes
:         _
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         С
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         :         : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_namestates:OK
'
_output_shapes
:         
 
_user_specified_namestates
╕9
└
while_body_83280
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
2while_lstm_cell_8_matmul_readvariableop_resource_0: F
4while_lstm_cell_8_matmul_1_readvariableop_resource_0: A
3while_lstm_cell_8_biasadd_readvariableop_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
0while_lstm_cell_8_matmul_readvariableop_resource: D
2while_lstm_cell_8_matmul_1_readvariableop_resource: ?
1while_lstm_cell_8_biasadd_readvariableop_resource: Ив(while/lstm_cell_8/BiasAdd/ReadVariableOpв'while/lstm_cell_8/MatMul/ReadVariableOpв)while/lstm_cell_8/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ъ
'while/lstm_cell_8/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_8_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0╖
while/lstm_cell_8/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Ю
)while/lstm_cell_8/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_8_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0Ю
while/lstm_cell_8/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_8/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Ъ
while/lstm_cell_8/addAddV2"while/lstm_cell_8/MatMul:product:0$while/lstm_cell_8/MatMul_1:product:0*
T0*'
_output_shapes
:          Ш
(while/lstm_cell_8/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_8_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0г
while/lstm_cell_8/BiasAddBiasAddwhile/lstm_cell_8/add:z:00while/lstm_cell_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          c
!while/lstm_cell_8/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ь
while/lstm_cell_8/splitSplit*while/lstm_cell_8/split/split_dim:output:0"while/lstm_cell_8/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitx
while/lstm_cell_8/SigmoidSigmoid while/lstm_cell_8/split:output:0*
T0*'
_output_shapes
:         z
while/lstm_cell_8/Sigmoid_1Sigmoid while/lstm_cell_8/split:output:1*
T0*'
_output_shapes
:         Д
while/lstm_cell_8/mulMulwhile/lstm_cell_8/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         r
while/lstm_cell_8/ReluRelu while/lstm_cell_8/split:output:2*
T0*'
_output_shapes
:         Х
while/lstm_cell_8/mul_1Mulwhile/lstm_cell_8/Sigmoid:y:0$while/lstm_cell_8/Relu:activations:0*
T0*'
_output_shapes
:         К
while/lstm_cell_8/add_1AddV2while/lstm_cell_8/mul:z:0while/lstm_cell_8/mul_1:z:0*
T0*'
_output_shapes
:         z
while/lstm_cell_8/Sigmoid_2Sigmoid while/lstm_cell_8/split:output:3*
T0*'
_output_shapes
:         o
while/lstm_cell_8/Relu_1Reluwhile/lstm_cell_8/add_1:z:0*
T0*'
_output_shapes
:         Щ
while/lstm_cell_8/mul_2Mulwhile/lstm_cell_8/Sigmoid_2:y:0&while/lstm_cell_8/Relu_1:activations:0*
T0*'
_output_shapes
:         r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ь
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_8/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/lstm_cell_8/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         x
while/Identity_5Identitywhile/lstm_cell_8/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         ═

while/NoOpNoOp)^while/lstm_cell_8/BiasAdd/ReadVariableOp(^while/lstm_cell_8/MatMul/ReadVariableOp*^while/lstm_cell_8/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_8_biasadd_readvariableop_resource3while_lstm_cell_8_biasadd_readvariableop_resource_0"j
2while_lstm_cell_8_matmul_1_readvariableop_resource4while_lstm_cell_8_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_8_matmul_readvariableop_resource2while_lstm_cell_8_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2T
(while/lstm_cell_8/BiasAdd/ReadVariableOp(while/lstm_cell_8/BiasAdd/ReadVariableOp2R
'while/lstm_cell_8/MatMul/ReadVariableOp'while/lstm_cell_8/MatMul/ReadVariableOp2V
)while/lstm_cell_8/MatMul_1/ReadVariableOp)while/lstm_cell_8/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
: 
Т	
╛
while_cond_86294
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_86294___redundant_placeholder03
/while_while_cond_86294___redundant_placeholder13
/while_while_cond_86294___redundant_placeholder23
/while_while_cond_86294___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
:
ЯK
Т
A__inference_lstm_8_layer_call_and_return_conditional_losses_86883
inputs_0<
*lstm_cell_8_matmul_readvariableop_resource: >
,lstm_cell_8_matmul_1_readvariableop_resource: 9
+lstm_cell_8_biasadd_readvariableop_resource: 
identityИв"lstm_cell_8/BiasAdd/ReadVariableOpв!lstm_cell_8/MatMul/ReadVariableOpв#lstm_cell_8/MatMul_1/ReadVariableOpвwhileK
ShapeShapeinputs_0*
T0*
_output_shapes
::э╧]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :                  R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::э╧_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskМ
!lstm_cell_8/MatMul/ReadVariableOpReadVariableOp*lstm_cell_8_matmul_readvariableop_resource*
_output_shapes

: *
dtype0У
lstm_cell_8/MatMulMatMulstrided_slice_2:output:0)lstm_cell_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Р
#lstm_cell_8/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_8_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0Н
lstm_cell_8/MatMul_1MatMulzeros:output:0+lstm_cell_8/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          И
lstm_cell_8/addAddV2lstm_cell_8/MatMul:product:0lstm_cell_8/MatMul_1:product:0*
T0*'
_output_shapes
:          К
"lstm_cell_8/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_8_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0С
lstm_cell_8/BiasAddBiasAddlstm_cell_8/add:z:0*lstm_cell_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ]
lstm_cell_8/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :┌
lstm_cell_8/splitSplit$lstm_cell_8/split/split_dim:output:0lstm_cell_8/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitl
lstm_cell_8/SigmoidSigmoidlstm_cell_8/split:output:0*
T0*'
_output_shapes
:         n
lstm_cell_8/Sigmoid_1Sigmoidlstm_cell_8/split:output:1*
T0*'
_output_shapes
:         u
lstm_cell_8/mulMullstm_cell_8/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         f
lstm_cell_8/ReluRelulstm_cell_8/split:output:2*
T0*'
_output_shapes
:         Г
lstm_cell_8/mul_1Mullstm_cell_8/Sigmoid:y:0lstm_cell_8/Relu:activations:0*
T0*'
_output_shapes
:         x
lstm_cell_8/add_1AddV2lstm_cell_8/mul:z:0lstm_cell_8/mul_1:z:0*
T0*'
_output_shapes
:         n
lstm_cell_8/Sigmoid_2Sigmoidlstm_cell_8/split:output:3*
T0*'
_output_shapes
:         c
lstm_cell_8/Relu_1Relulstm_cell_8/add_1:z:0*
T0*'
_output_shapes
:         З
lstm_cell_8/mul_2Mullstm_cell_8/Sigmoid_2:y:0 lstm_cell_8/Relu_1:activations:0*
T0*'
_output_shapes
:         n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ¤
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_8_matmul_readvariableop_resource,lstm_cell_8_matmul_1_readvariableop_resource+lstm_cell_8_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_86798*
condR
while_cond_86797*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╓
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         *
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:         ╜
NoOpNoOp#^lstm_cell_8/BiasAdd/ReadVariableOp"^lstm_cell_8/MatMul/ReadVariableOp$^lstm_cell_8/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2H
"lstm_cell_8/BiasAdd/ReadVariableOp"lstm_cell_8/BiasAdd/ReadVariableOp2F
!lstm_cell_8/MatMul/ReadVariableOp!lstm_cell_8/MatMul/ReadVariableOp2J
#lstm_cell_8/MatMul_1/ReadVariableOp#lstm_cell_8/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs_0
Т	
╛
while_cond_83651
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_83651___redundant_placeholder03
/while_while_cond_83651___redundant_placeholder13
/while_while_cond_83651___redundant_placeholder23
/while_while_cond_83651___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
:
О8
∙
A__inference_lstm_7_layer_call_and_return_conditional_losses_82477

inputs#
lstm_cell_7_82395: #
lstm_cell_7_82397: 
lstm_cell_7_82399: 
identityИв#lstm_cell_7/StatefulPartitionedCallвwhileI
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::э╧_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskь
#lstm_cell_7/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_7_82395lstm_cell_7_82397lstm_cell_7_82399*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         :         :         *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_lstm_cell_7_layer_call_and_return_conditional_losses_82394n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : п
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_7_82395lstm_cell_7_82397lstm_cell_7_82399*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_82408*
condR
while_cond_82407*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Я
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  t
NoOpNoOp$^lstm_cell_7/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2J
#lstm_cell_7/StatefulPartitionedCall#lstm_cell_7/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs
н
E
)__inference_dropout_9_layer_call_fn_86532

inputs
identity│
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_9_layer_call_and_return_conditional_losses_83748d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         :S O
+
_output_shapes
:         
 
_user_specified_nameinputs
Т	
╛
while_cond_82760
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_82760___redundant_placeholder03
/while_while_cond_82760___redundant_placeholder13
/while_while_cond_82760___redundant_placeholder23
/while_while_cond_82760___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
:
Ь8
└
while_body_85509
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
2while_lstm_cell_6_matmul_readvariableop_resource_0: F
4while_lstm_cell_6_matmul_1_readvariableop_resource_0: A
3while_lstm_cell_6_biasadd_readvariableop_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
0while_lstm_cell_6_matmul_readvariableop_resource: D
2while_lstm_cell_6_matmul_1_readvariableop_resource: ?
1while_lstm_cell_6_biasadd_readvariableop_resource: Ив(while/lstm_cell_6/BiasAdd/ReadVariableOpв'while/lstm_cell_6/MatMul/ReadVariableOpв)while/lstm_cell_6/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ъ
'while/lstm_cell_6/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_6_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0╖
while/lstm_cell_6/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Ю
)while/lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_6_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0Ю
while/lstm_cell_6/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Ъ
while/lstm_cell_6/addAddV2"while/lstm_cell_6/MatMul:product:0$while/lstm_cell_6/MatMul_1:product:0*
T0*'
_output_shapes
:          Ш
(while/lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_6_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0г
while/lstm_cell_6/BiasAddBiasAddwhile/lstm_cell_6/add:z:00while/lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          c
!while/lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ь
while/lstm_cell_6/splitSplit*while/lstm_cell_6/split/split_dim:output:0"while/lstm_cell_6/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitx
while/lstm_cell_6/SigmoidSigmoid while/lstm_cell_6/split:output:0*
T0*'
_output_shapes
:         z
while/lstm_cell_6/Sigmoid_1Sigmoid while/lstm_cell_6/split:output:1*
T0*'
_output_shapes
:         Д
while/lstm_cell_6/mulMulwhile/lstm_cell_6/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         r
while/lstm_cell_6/ReluRelu while/lstm_cell_6/split:output:2*
T0*'
_output_shapes
:         Х
while/lstm_cell_6/mul_1Mulwhile/lstm_cell_6/Sigmoid:y:0$while/lstm_cell_6/Relu:activations:0*
T0*'
_output_shapes
:         К
while/lstm_cell_6/add_1AddV2while/lstm_cell_6/mul:z:0while/lstm_cell_6/mul_1:z:0*
T0*'
_output_shapes
:         z
while/lstm_cell_6/Sigmoid_2Sigmoid while/lstm_cell_6/split:output:3*
T0*'
_output_shapes
:         o
while/lstm_cell_6/Relu_1Reluwhile/lstm_cell_6/add_1:z:0*
T0*'
_output_shapes
:         Щ
while/lstm_cell_6/mul_2Mulwhile/lstm_cell_6/Sigmoid_2:y:0&while/lstm_cell_6/Relu_1:activations:0*
T0*'
_output_shapes
:         ─
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_6/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/lstm_cell_6/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         x
while/Identity_5Identitywhile/lstm_cell_6/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         ═

while/NoOpNoOp)^while/lstm_cell_6/BiasAdd/ReadVariableOp(^while/lstm_cell_6/MatMul/ReadVariableOp*^while/lstm_cell_6/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_6_biasadd_readvariableop_resource3while_lstm_cell_6_biasadd_readvariableop_resource_0"j
2while_lstm_cell_6_matmul_1_readvariableop_resource4while_lstm_cell_6_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_6_matmul_readvariableop_resource2while_lstm_cell_6_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2T
(while/lstm_cell_6/BiasAdd/ReadVariableOp(while/lstm_cell_6/BiasAdd/ReadVariableOp2R
'while/lstm_cell_6/MatMul/ReadVariableOp'while/lstm_cell_6/MatMul/ReadVariableOp2V
)while/lstm_cell_6/MatMul_1/ReadVariableOp)while/lstm_cell_6/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
: 
Щ#
╧
while_body_81913
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0+
while_lstm_cell_6_81937_0: +
while_lstm_cell_6_81939_0: '
while_lstm_cell_6_81941_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor)
while_lstm_cell_6_81937: )
while_lstm_cell_6_81939: %
while_lstm_cell_6_81941: Ив)while/lstm_cell_6/StatefulPartitionedCallИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0к
)while/lstm_cell_6/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_6_81937_0while_lstm_cell_6_81939_0while_lstm_cell_6_81941_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         :         :         *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_lstm_cell_6_layer_call_and_return_conditional_losses_81899█
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/lstm_cell_6/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:щш╥M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: П
while/Identity_4Identity2while/lstm_cell_6/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         П
while/Identity_5Identity2while/lstm_cell_6/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         x

while/NoOpNoOp*^while/lstm_cell_6/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"4
while_lstm_cell_6_81937while_lstm_cell_6_81937_0"4
while_lstm_cell_6_81939while_lstm_cell_6_81939_0"4
while_lstm_cell_6_81941while_lstm_cell_6_81941_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2V
)while/lstm_cell_6/StatefulPartitionedCall)while/lstm_cell_6/StatefulPartitionedCall:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
: 
в
▓
&__inference_lstm_6_layer_call_fn_85285
inputs_0
unknown: 
	unknown_0: 
	unknown_1: 
identityИвStatefulPartitionedCallЄ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_lstm_6_layer_call_and_return_conditional_losses_82127|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :                  `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs_0
┤J
Т
A__inference_lstm_6_layer_call_and_return_conditional_losses_85450
inputs_0<
*lstm_cell_6_matmul_readvariableop_resource: >
,lstm_cell_6_matmul_1_readvariableop_resource: 9
+lstm_cell_6_biasadd_readvariableop_resource: 
identityИв"lstm_cell_6/BiasAdd/ReadVariableOpв!lstm_cell_6/MatMul/ReadVariableOpв#lstm_cell_6/MatMul_1/ReadVariableOpвwhileK
ShapeShapeinputs_0*
T0*
_output_shapes
::э╧]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :                  R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::э╧_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskМ
!lstm_cell_6/MatMul/ReadVariableOpReadVariableOp*lstm_cell_6_matmul_readvariableop_resource*
_output_shapes

: *
dtype0У
lstm_cell_6/MatMulMatMulstrided_slice_2:output:0)lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Р
#lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_6_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0Н
lstm_cell_6/MatMul_1MatMulzeros:output:0+lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          И
lstm_cell_6/addAddV2lstm_cell_6/MatMul:product:0lstm_cell_6/MatMul_1:product:0*
T0*'
_output_shapes
:          К
"lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_6_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0С
lstm_cell_6/BiasAddBiasAddlstm_cell_6/add:z:0*lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ]
lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :┌
lstm_cell_6/splitSplit$lstm_cell_6/split/split_dim:output:0lstm_cell_6/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitl
lstm_cell_6/SigmoidSigmoidlstm_cell_6/split:output:0*
T0*'
_output_shapes
:         n
lstm_cell_6/Sigmoid_1Sigmoidlstm_cell_6/split:output:1*
T0*'
_output_shapes
:         u
lstm_cell_6/mulMullstm_cell_6/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         f
lstm_cell_6/ReluRelulstm_cell_6/split:output:2*
T0*'
_output_shapes
:         Г
lstm_cell_6/mul_1Mullstm_cell_6/Sigmoid:y:0lstm_cell_6/Relu:activations:0*
T0*'
_output_shapes
:         x
lstm_cell_6/add_1AddV2lstm_cell_6/mul:z:0lstm_cell_6/mul_1:z:0*
T0*'
_output_shapes
:         n
lstm_cell_6/Sigmoid_2Sigmoidlstm_cell_6/split:output:3*
T0*'
_output_shapes
:         c
lstm_cell_6/Relu_1Relulstm_cell_6/add_1:z:0*
T0*'
_output_shapes
:         З
lstm_cell_6/mul_2Mullstm_cell_6/Sigmoid_2:y:0 lstm_cell_6/Relu_1:activations:0*
T0*'
_output_shapes
:         n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ¤
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_6_matmul_readvariableop_resource,lstm_cell_6_matmul_1_readvariableop_resource+lstm_cell_6_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_85366*
condR
while_cond_85365*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Я
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  ╜
NoOpNoOp#^lstm_cell_6/BiasAdd/ReadVariableOp"^lstm_cell_6/MatMul/ReadVariableOp$^lstm_cell_6/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2H
"lstm_cell_6/BiasAdd/ReadVariableOp"lstm_cell_6/BiasAdd/ReadVariableOp2F
!lstm_cell_6/MatMul/ReadVariableOp!lstm_cell_6/MatMul/ReadVariableOp2J
#lstm_cell_6/MatMul_1/ReadVariableOp#lstm_cell_6/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs_0
╔
 
F__inference_lstm_cell_8_layer_call_and_return_conditional_losses_82746

inputs

states
states_10
matmul_readvariableop_resource: 2
 matmul_1_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity

identity_1

identity_2ИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpвMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:          r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╢
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         N
ReluRelusplit:output:2*
T0*'
_output_shapes
:         _
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         С
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         :         : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_namestates:OK
'
_output_shapes
:         
 
_user_specified_namestates
ё└
Х
!__inference__traced_restore_87998
file_prefix1
assignvariableop_dense_4_kernel:-
assignvariableop_1_dense_4_bias:3
!assignvariableop_2_dense_5_kernel:-
assignvariableop_3_dense_5_bias:>
,assignvariableop_4_lstm_6_lstm_cell_6_kernel: H
6assignvariableop_5_lstm_6_lstm_cell_6_recurrent_kernel: 8
*assignvariableop_6_lstm_6_lstm_cell_6_bias: >
,assignvariableop_7_lstm_7_lstm_cell_7_kernel: H
6assignvariableop_8_lstm_7_lstm_cell_7_recurrent_kernel: 8
*assignvariableop_9_lstm_7_lstm_cell_7_bias: ?
-assignvariableop_10_lstm_8_lstm_cell_8_kernel: I
7assignvariableop_11_lstm_8_lstm_cell_8_recurrent_kernel: 9
+assignvariableop_12_lstm_8_lstm_cell_8_bias: '
assignvariableop_13_iteration:	 +
!assignvariableop_14_learning_rate: F
4assignvariableop_15_adam_m_lstm_6_lstm_cell_6_kernel: F
4assignvariableop_16_adam_v_lstm_6_lstm_cell_6_kernel: P
>assignvariableop_17_adam_m_lstm_6_lstm_cell_6_recurrent_kernel: P
>assignvariableop_18_adam_v_lstm_6_lstm_cell_6_recurrent_kernel: @
2assignvariableop_19_adam_m_lstm_6_lstm_cell_6_bias: @
2assignvariableop_20_adam_v_lstm_6_lstm_cell_6_bias: F
4assignvariableop_21_adam_m_lstm_7_lstm_cell_7_kernel: F
4assignvariableop_22_adam_v_lstm_7_lstm_cell_7_kernel: P
>assignvariableop_23_adam_m_lstm_7_lstm_cell_7_recurrent_kernel: P
>assignvariableop_24_adam_v_lstm_7_lstm_cell_7_recurrent_kernel: @
2assignvariableop_25_adam_m_lstm_7_lstm_cell_7_bias: @
2assignvariableop_26_adam_v_lstm_7_lstm_cell_7_bias: F
4assignvariableop_27_adam_m_lstm_8_lstm_cell_8_kernel: F
4assignvariableop_28_adam_v_lstm_8_lstm_cell_8_kernel: P
>assignvariableop_29_adam_m_lstm_8_lstm_cell_8_recurrent_kernel: P
>assignvariableop_30_adam_v_lstm_8_lstm_cell_8_recurrent_kernel: @
2assignvariableop_31_adam_m_lstm_8_lstm_cell_8_bias: @
2assignvariableop_32_adam_v_lstm_8_lstm_cell_8_bias: ;
)assignvariableop_33_adam_m_dense_4_kernel:;
)assignvariableop_34_adam_v_dense_4_kernel:5
'assignvariableop_35_adam_m_dense_4_bias:5
'assignvariableop_36_adam_v_dense_4_bias:;
)assignvariableop_37_adam_m_dense_5_kernel:;
)assignvariableop_38_adam_v_dense_5_kernel:5
'assignvariableop_39_adam_m_dense_5_bias:5
'assignvariableop_40_adam_v_dense_5_bias:%
assignvariableop_41_total_1: %
assignvariableop_42_count_1: #
assignvariableop_43_total: #
assignvariableop_44_count: 
identity_46ИвAssignVariableOpвAssignVariableOp_1вAssignVariableOp_10вAssignVariableOp_11вAssignVariableOp_12вAssignVariableOp_13вAssignVariableOp_14вAssignVariableOp_15вAssignVariableOp_16вAssignVariableOp_17вAssignVariableOp_18вAssignVariableOp_19вAssignVariableOp_2вAssignVariableOp_20вAssignVariableOp_21вAssignVariableOp_22вAssignVariableOp_23вAssignVariableOp_24вAssignVariableOp_25вAssignVariableOp_26вAssignVariableOp_27вAssignVariableOp_28вAssignVariableOp_29вAssignVariableOp_3вAssignVariableOp_30вAssignVariableOp_31вAssignVariableOp_32вAssignVariableOp_33вAssignVariableOp_34вAssignVariableOp_35вAssignVariableOp_36вAssignVariableOp_37вAssignVariableOp_38вAssignVariableOp_39вAssignVariableOp_4вAssignVariableOp_40вAssignVariableOp_41вAssignVariableOp_42вAssignVariableOp_43вAssignVariableOp_44вAssignVariableOp_5вAssignVariableOp_6вAssignVariableOp_7вAssignVariableOp_8вAssignVariableOp_9╧
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:.*
dtype0*ї
valueыBш.B6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH╠
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:.*
dtype0*o
valuefBd.B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B З
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*╬
_output_shapes╗
╕::::::::::::::::::::::::::::::::::::::::::::::*<
dtypes2
02.	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:▓
AssignVariableOpAssignVariableOpassignvariableop_dense_4_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:╢
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_4_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:╕
AssignVariableOp_2AssignVariableOp!assignvariableop_2_dense_5_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:╢
AssignVariableOp_3AssignVariableOpassignvariableop_3_dense_5_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:├
AssignVariableOp_4AssignVariableOp,assignvariableop_4_lstm_6_lstm_cell_6_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:═
AssignVariableOp_5AssignVariableOp6assignvariableop_5_lstm_6_lstm_cell_6_recurrent_kernelIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:┴
AssignVariableOp_6AssignVariableOp*assignvariableop_6_lstm_6_lstm_cell_6_biasIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:├
AssignVariableOp_7AssignVariableOp,assignvariableop_7_lstm_7_lstm_cell_7_kernelIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:═
AssignVariableOp_8AssignVariableOp6assignvariableop_8_lstm_7_lstm_cell_7_recurrent_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:┴
AssignVariableOp_9AssignVariableOp*assignvariableop_9_lstm_7_lstm_cell_7_biasIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:╞
AssignVariableOp_10AssignVariableOp-assignvariableop_10_lstm_8_lstm_cell_8_kernelIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:╨
AssignVariableOp_11AssignVariableOp7assignvariableop_11_lstm_8_lstm_cell_8_recurrent_kernelIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:─
AssignVariableOp_12AssignVariableOp+assignvariableop_12_lstm_8_lstm_cell_8_biasIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0	*
_output_shapes
:╢
AssignVariableOp_13AssignVariableOpassignvariableop_13_iterationIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:║
AssignVariableOp_14AssignVariableOp!assignvariableop_14_learning_rateIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:═
AssignVariableOp_15AssignVariableOp4assignvariableop_15_adam_m_lstm_6_lstm_cell_6_kernelIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:═
AssignVariableOp_16AssignVariableOp4assignvariableop_16_adam_v_lstm_6_lstm_cell_6_kernelIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:╫
AssignVariableOp_17AssignVariableOp>assignvariableop_17_adam_m_lstm_6_lstm_cell_6_recurrent_kernelIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:╫
AssignVariableOp_18AssignVariableOp>assignvariableop_18_adam_v_lstm_6_lstm_cell_6_recurrent_kernelIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:╦
AssignVariableOp_19AssignVariableOp2assignvariableop_19_adam_m_lstm_6_lstm_cell_6_biasIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:╦
AssignVariableOp_20AssignVariableOp2assignvariableop_20_adam_v_lstm_6_lstm_cell_6_biasIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:═
AssignVariableOp_21AssignVariableOp4assignvariableop_21_adam_m_lstm_7_lstm_cell_7_kernelIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:═
AssignVariableOp_22AssignVariableOp4assignvariableop_22_adam_v_lstm_7_lstm_cell_7_kernelIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:╫
AssignVariableOp_23AssignVariableOp>assignvariableop_23_adam_m_lstm_7_lstm_cell_7_recurrent_kernelIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:╫
AssignVariableOp_24AssignVariableOp>assignvariableop_24_adam_v_lstm_7_lstm_cell_7_recurrent_kernelIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:╦
AssignVariableOp_25AssignVariableOp2assignvariableop_25_adam_m_lstm_7_lstm_cell_7_biasIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:╦
AssignVariableOp_26AssignVariableOp2assignvariableop_26_adam_v_lstm_7_lstm_cell_7_biasIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:═
AssignVariableOp_27AssignVariableOp4assignvariableop_27_adam_m_lstm_8_lstm_cell_8_kernelIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:═
AssignVariableOp_28AssignVariableOp4assignvariableop_28_adam_v_lstm_8_lstm_cell_8_kernelIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:╫
AssignVariableOp_29AssignVariableOp>assignvariableop_29_adam_m_lstm_8_lstm_cell_8_recurrent_kernelIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:╫
AssignVariableOp_30AssignVariableOp>assignvariableop_30_adam_v_lstm_8_lstm_cell_8_recurrent_kernelIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:╦
AssignVariableOp_31AssignVariableOp2assignvariableop_31_adam_m_lstm_8_lstm_cell_8_biasIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:╦
AssignVariableOp_32AssignVariableOp2assignvariableop_32_adam_v_lstm_8_lstm_cell_8_biasIdentity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_33AssignVariableOp)assignvariableop_33_adam_m_dense_4_kernelIdentity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_34AssignVariableOp)assignvariableop_34_adam_v_dense_4_kernelIdentity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_35AssignVariableOp'assignvariableop_35_adam_m_dense_4_biasIdentity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_36AssignVariableOp'assignvariableop_36_adam_v_dense_4_biasIdentity_36:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_37AssignVariableOp)assignvariableop_37_adam_m_dense_5_kernelIdentity_37:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_38AssignVariableOp)assignvariableop_38_adam_v_dense_5_kernelIdentity_38:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_39AssignVariableOp'assignvariableop_39_adam_m_dense_5_biasIdentity_39:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_40AssignVariableOp'assignvariableop_40_adam_v_dense_5_biasIdentity_40:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:┤
AssignVariableOp_41AssignVariableOpassignvariableop_41_total_1Identity_41:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:┤
AssignVariableOp_42AssignVariableOpassignvariableop_42_count_1Identity_42:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:▓
AssignVariableOp_43AssignVariableOpassignvariableop_43_totalIdentity_43:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:▓
AssignVariableOp_44AssignVariableOpassignvariableop_44_countIdentity_44:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 н
Identity_45Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_46IdentityIdentity_45:output:0^NoOp_1*
T0*
_output_shapes
: Ъ
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_46Identity_46:output:0*o
_input_shapes^
\: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442(
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
О8
∙
A__inference_lstm_6_layer_call_and_return_conditional_losses_81982

inputs#
lstm_cell_6_81900: #
lstm_cell_6_81902: 
lstm_cell_6_81904: 
identityИв#lstm_cell_6/StatefulPartitionedCallвwhileI
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::э╧_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskь
#lstm_cell_6/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_6_81900lstm_cell_6_81902lstm_cell_6_81904*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         :         :         *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_lstm_cell_6_layer_call_and_return_conditional_losses_81899n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : п
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_6_81900lstm_cell_6_81902lstm_cell_6_81904*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_81913*
condR
while_cond_81912*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Я
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  t
NoOpNoOp$^lstm_cell_6/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2J
#lstm_cell_6/StatefulPartitionedCall#lstm_cell_6/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs
╪
c
E__inference_dropout_11_layer_call_and_return_conditional_losses_83917

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:         [

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:         "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs
Т	
╛
while_cond_82407
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_82407___redundant_placeholder03
/while_while_cond_82407___redundant_placeholder13
/while_while_cond_82407___redundant_placeholder23
/while_while_cond_82407___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
:
╜Q
└
$sequential_2_lstm_8_while_body_81735D
@sequential_2_lstm_8_while_sequential_2_lstm_8_while_loop_counterJ
Fsequential_2_lstm_8_while_sequential_2_lstm_8_while_maximum_iterations)
%sequential_2_lstm_8_while_placeholder+
'sequential_2_lstm_8_while_placeholder_1+
'sequential_2_lstm_8_while_placeholder_2+
'sequential_2_lstm_8_while_placeholder_3C
?sequential_2_lstm_8_while_sequential_2_lstm_8_strided_slice_1_0
{sequential_2_lstm_8_while_tensorarrayv2read_tensorlistgetitem_sequential_2_lstm_8_tensorarrayunstack_tensorlistfromtensor_0X
Fsequential_2_lstm_8_while_lstm_cell_8_matmul_readvariableop_resource_0: Z
Hsequential_2_lstm_8_while_lstm_cell_8_matmul_1_readvariableop_resource_0: U
Gsequential_2_lstm_8_while_lstm_cell_8_biasadd_readvariableop_resource_0: &
"sequential_2_lstm_8_while_identity(
$sequential_2_lstm_8_while_identity_1(
$sequential_2_lstm_8_while_identity_2(
$sequential_2_lstm_8_while_identity_3(
$sequential_2_lstm_8_while_identity_4(
$sequential_2_lstm_8_while_identity_5A
=sequential_2_lstm_8_while_sequential_2_lstm_8_strided_slice_1}
ysequential_2_lstm_8_while_tensorarrayv2read_tensorlistgetitem_sequential_2_lstm_8_tensorarrayunstack_tensorlistfromtensorV
Dsequential_2_lstm_8_while_lstm_cell_8_matmul_readvariableop_resource: X
Fsequential_2_lstm_8_while_lstm_cell_8_matmul_1_readvariableop_resource: S
Esequential_2_lstm_8_while_lstm_cell_8_biasadd_readvariableop_resource: Ив<sequential_2/lstm_8/while/lstm_cell_8/BiasAdd/ReadVariableOpв;sequential_2/lstm_8/while/lstm_cell_8/MatMul/ReadVariableOpв=sequential_2/lstm_8/while/lstm_cell_8/MatMul_1/ReadVariableOpЬ
Ksequential_2/lstm_8/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       К
=sequential_2/lstm_8/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem{sequential_2_lstm_8_while_tensorarrayv2read_tensorlistgetitem_sequential_2_lstm_8_tensorarrayunstack_tensorlistfromtensor_0%sequential_2_lstm_8_while_placeholderTsequential_2/lstm_8/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0┬
;sequential_2/lstm_8/while/lstm_cell_8/MatMul/ReadVariableOpReadVariableOpFsequential_2_lstm_8_while_lstm_cell_8_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0є
,sequential_2/lstm_8/while/lstm_cell_8/MatMulMatMulDsequential_2/lstm_8/while/TensorArrayV2Read/TensorListGetItem:item:0Csequential_2/lstm_8/while/lstm_cell_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ╞
=sequential_2/lstm_8/while/lstm_cell_8/MatMul_1/ReadVariableOpReadVariableOpHsequential_2_lstm_8_while_lstm_cell_8_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0┌
.sequential_2/lstm_8/while/lstm_cell_8/MatMul_1MatMul'sequential_2_lstm_8_while_placeholder_2Esequential_2/lstm_8/while/lstm_cell_8/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ╓
)sequential_2/lstm_8/while/lstm_cell_8/addAddV26sequential_2/lstm_8/while/lstm_cell_8/MatMul:product:08sequential_2/lstm_8/while/lstm_cell_8/MatMul_1:product:0*
T0*'
_output_shapes
:          └
<sequential_2/lstm_8/while/lstm_cell_8/BiasAdd/ReadVariableOpReadVariableOpGsequential_2_lstm_8_while_lstm_cell_8_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0▀
-sequential_2/lstm_8/while/lstm_cell_8/BiasAddBiasAdd-sequential_2/lstm_8/while/lstm_cell_8/add:z:0Dsequential_2/lstm_8/while/lstm_cell_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          w
5sequential_2/lstm_8/while/lstm_cell_8/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :и
+sequential_2/lstm_8/while/lstm_cell_8/splitSplit>sequential_2/lstm_8/while/lstm_cell_8/split/split_dim:output:06sequential_2/lstm_8/while/lstm_cell_8/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitа
-sequential_2/lstm_8/while/lstm_cell_8/SigmoidSigmoid4sequential_2/lstm_8/while/lstm_cell_8/split:output:0*
T0*'
_output_shapes
:         в
/sequential_2/lstm_8/while/lstm_cell_8/Sigmoid_1Sigmoid4sequential_2/lstm_8/while/lstm_cell_8/split:output:1*
T0*'
_output_shapes
:         └
)sequential_2/lstm_8/while/lstm_cell_8/mulMul3sequential_2/lstm_8/while/lstm_cell_8/Sigmoid_1:y:0'sequential_2_lstm_8_while_placeholder_3*
T0*'
_output_shapes
:         Ъ
*sequential_2/lstm_8/while/lstm_cell_8/ReluRelu4sequential_2/lstm_8/while/lstm_cell_8/split:output:2*
T0*'
_output_shapes
:         ╤
+sequential_2/lstm_8/while/lstm_cell_8/mul_1Mul1sequential_2/lstm_8/while/lstm_cell_8/Sigmoid:y:08sequential_2/lstm_8/while/lstm_cell_8/Relu:activations:0*
T0*'
_output_shapes
:         ╞
+sequential_2/lstm_8/while/lstm_cell_8/add_1AddV2-sequential_2/lstm_8/while/lstm_cell_8/mul:z:0/sequential_2/lstm_8/while/lstm_cell_8/mul_1:z:0*
T0*'
_output_shapes
:         в
/sequential_2/lstm_8/while/lstm_cell_8/Sigmoid_2Sigmoid4sequential_2/lstm_8/while/lstm_cell_8/split:output:3*
T0*'
_output_shapes
:         Ч
,sequential_2/lstm_8/while/lstm_cell_8/Relu_1Relu/sequential_2/lstm_8/while/lstm_cell_8/add_1:z:0*
T0*'
_output_shapes
:         ╒
+sequential_2/lstm_8/while/lstm_cell_8/mul_2Mul3sequential_2/lstm_8/while/lstm_cell_8/Sigmoid_2:y:0:sequential_2/lstm_8/while/lstm_cell_8/Relu_1:activations:0*
T0*'
_output_shapes
:         Ж
Dsequential_2/lstm_8/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ╝
>sequential_2/lstm_8/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem'sequential_2_lstm_8_while_placeholder_1Msequential_2/lstm_8/while/TensorArrayV2Write/TensorListSetItem/index:output:0/sequential_2/lstm_8/while/lstm_cell_8/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥a
sequential_2/lstm_8/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Ш
sequential_2/lstm_8/while/addAddV2%sequential_2_lstm_8_while_placeholder(sequential_2/lstm_8/while/add/y:output:0*
T0*
_output_shapes
: c
!sequential_2/lstm_8/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :╖
sequential_2/lstm_8/while/add_1AddV2@sequential_2_lstm_8_while_sequential_2_lstm_8_while_loop_counter*sequential_2/lstm_8/while/add_1/y:output:0*
T0*
_output_shapes
: Х
"sequential_2/lstm_8/while/IdentityIdentity#sequential_2/lstm_8/while/add_1:z:0^sequential_2/lstm_8/while/NoOp*
T0*
_output_shapes
: ║
$sequential_2/lstm_8/while/Identity_1IdentityFsequential_2_lstm_8_while_sequential_2_lstm_8_while_maximum_iterations^sequential_2/lstm_8/while/NoOp*
T0*
_output_shapes
: Х
$sequential_2/lstm_8/while/Identity_2Identity!sequential_2/lstm_8/while/add:z:0^sequential_2/lstm_8/while/NoOp*
T0*
_output_shapes
: ┬
$sequential_2/lstm_8/while/Identity_3IdentityNsequential_2/lstm_8/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^sequential_2/lstm_8/while/NoOp*
T0*
_output_shapes
: ┤
$sequential_2/lstm_8/while/Identity_4Identity/sequential_2/lstm_8/while/lstm_cell_8/mul_2:z:0^sequential_2/lstm_8/while/NoOp*
T0*'
_output_shapes
:         ┤
$sequential_2/lstm_8/while/Identity_5Identity/sequential_2/lstm_8/while/lstm_cell_8/add_1:z:0^sequential_2/lstm_8/while/NoOp*
T0*'
_output_shapes
:         Э
sequential_2/lstm_8/while/NoOpNoOp=^sequential_2/lstm_8/while/lstm_cell_8/BiasAdd/ReadVariableOp<^sequential_2/lstm_8/while/lstm_cell_8/MatMul/ReadVariableOp>^sequential_2/lstm_8/while/lstm_cell_8/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Q
"sequential_2_lstm_8_while_identity+sequential_2/lstm_8/while/Identity:output:0"U
$sequential_2_lstm_8_while_identity_1-sequential_2/lstm_8/while/Identity_1:output:0"U
$sequential_2_lstm_8_while_identity_2-sequential_2/lstm_8/while/Identity_2:output:0"U
$sequential_2_lstm_8_while_identity_3-sequential_2/lstm_8/while/Identity_3:output:0"U
$sequential_2_lstm_8_while_identity_4-sequential_2/lstm_8/while/Identity_4:output:0"U
$sequential_2_lstm_8_while_identity_5-sequential_2/lstm_8/while/Identity_5:output:0"Р
Esequential_2_lstm_8_while_lstm_cell_8_biasadd_readvariableop_resourceGsequential_2_lstm_8_while_lstm_cell_8_biasadd_readvariableop_resource_0"Т
Fsequential_2_lstm_8_while_lstm_cell_8_matmul_1_readvariableop_resourceHsequential_2_lstm_8_while_lstm_cell_8_matmul_1_readvariableop_resource_0"О
Dsequential_2_lstm_8_while_lstm_cell_8_matmul_readvariableop_resourceFsequential_2_lstm_8_while_lstm_cell_8_matmul_readvariableop_resource_0"А
=sequential_2_lstm_8_while_sequential_2_lstm_8_strided_slice_1?sequential_2_lstm_8_while_sequential_2_lstm_8_strided_slice_1_0"°
ysequential_2_lstm_8_while_tensorarrayv2read_tensorlistgetitem_sequential_2_lstm_8_tensorarrayunstack_tensorlistfromtensor{sequential_2_lstm_8_while_tensorarrayv2read_tensorlistgetitem_sequential_2_lstm_8_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2|
<sequential_2/lstm_8/while/lstm_cell_8/BiasAdd/ReadVariableOp<sequential_2/lstm_8/while/lstm_cell_8/BiasAdd/ReadVariableOp2z
;sequential_2/lstm_8/while/lstm_cell_8/MatMul/ReadVariableOp;sequential_2/lstm_8/while/lstm_cell_8/MatMul/ReadVariableOp2~
=sequential_2/lstm_8/while/lstm_cell_8/MatMul_1/ReadVariableOp=sequential_2/lstm_8/while/lstm_cell_8/MatMul_1/ReadVariableOp:^ Z

_output_shapes
: 
@
_user_specified_name(&sequential_2/lstm_8/while/loop_counter:d`

_output_shapes
: 
F
_user_specified_name.,sequential_2/lstm_8/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
: 
Т	
╛
while_cond_82950
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_82950___redundant_placeholder03
/while_while_cond_82950___redundant_placeholder13
/while_while_cond_82950___redundant_placeholder23
/while_while_cond_82950___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
:
И'
г
G__inference_sequential_2_layer_call_and_return_conditional_losses_83925
lstm_6_input
lstm_6_83581: 
lstm_6_83583: 
lstm_6_83585: 
lstm_7_83737: 
lstm_7_83739: 
lstm_7_83741: 
lstm_8_83895: 
lstm_8_83897: 
lstm_8_83899: 
dense_4_83908:
dense_4_83910:
dense_5_83919:
dense_5_83921:
identityИвdense_4/StatefulPartitionedCallвdense_5/StatefulPartitionedCallвlstm_6/StatefulPartitionedCallвlstm_7/StatefulPartitionedCallвlstm_8/StatefulPartitionedCall 
lstm_6/StatefulPartitionedCallStatefulPartitionedCalllstm_6_inputlstm_6_83581lstm_6_83583lstm_6_83585*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_lstm_6_layer_call_and_return_conditional_losses_83580▐
dropout_8/PartitionedCallPartitionedCall'lstm_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_8_layer_call_and_return_conditional_losses_83592Х
lstm_7/StatefulPartitionedCallStatefulPartitionedCall"dropout_8/PartitionedCall:output:0lstm_7_83737lstm_7_83739lstm_7_83741*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_lstm_7_layer_call_and_return_conditional_losses_83736▐
dropout_9/PartitionedCallPartitionedCall'lstm_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_9_layer_call_and_return_conditional_losses_83748С
lstm_8/StatefulPartitionedCallStatefulPartitionedCall"dropout_9/PartitionedCall:output:0lstm_8_83895lstm_8_83897lstm_8_83899*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_lstm_8_layer_call_and_return_conditional_losses_83894▄
dropout_10/PartitionedCallPartitionedCall'lstm_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dropout_10_layer_call_and_return_conditional_losses_83906Ж
dense_4/StatefulPartitionedCallStatefulPartitionedCall#dropout_10/PartitionedCall:output:0dense_4_83908dense_4_83910*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_83398▌
dropout_11/PartitionedCallPartitionedCall(dense_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dropout_11_layer_call_and_return_conditional_losses_83917Ж
dense_5/StatefulPartitionedCallStatefulPartitionedCall#dropout_11/PartitionedCall:output:0dense_5_83919dense_5_83921*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_5_layer_call_and_return_conditional_losses_83428w
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         э
NoOpNoOp ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall^lstm_6/StatefulPartitionedCall^lstm_7/StatefulPartitionedCall^lstm_8/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:         : : : : : : : : : : : : : 2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2@
lstm_6/StatefulPartitionedCalllstm_6/StatefulPartitionedCall2@
lstm_7/StatefulPartitionedCalllstm_7/StatefulPartitionedCall2@
lstm_8/StatefulPartitionedCalllstm_8/StatefulPartitionedCall:Y U
+
_output_shapes
:         
&
_user_specified_namelstm_6_input
Т	
╛
while_cond_86437
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_86437___redundant_placeholder03
/while_while_cond_86437___redundant_placeholder13
/while_while_cond_86437___redundant_placeholder23
/while_while_cond_86437___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
:
Т	
╛
while_cond_85651
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_85651___redundant_placeholder03
/while_while_cond_85651___redundant_placeholder13
/while_while_cond_85651___redundant_placeholder23
/while_while_cond_85651___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
:
Э-
╡
G__inference_sequential_2_layer_call_and_return_conditional_losses_83435
lstm_6_input
lstm_6_83036: 
lstm_6_83038: 
lstm_6_83040: 
lstm_7_83200: 
lstm_7_83202: 
lstm_7_83204: 
lstm_8_83366: 
lstm_8_83368: 
lstm_8_83370: 
dense_4_83399:
dense_4_83401:
dense_5_83429:
dense_5_83431:
identityИвdense_4/StatefulPartitionedCallвdense_5/StatefulPartitionedCallв"dropout_10/StatefulPartitionedCallв"dropout_11/StatefulPartitionedCallв!dropout_8/StatefulPartitionedCallв!dropout_9/StatefulPartitionedCallвlstm_6/StatefulPartitionedCallвlstm_7/StatefulPartitionedCallвlstm_8/StatefulPartitionedCall 
lstm_6/StatefulPartitionedCallStatefulPartitionedCalllstm_6_inputlstm_6_83036lstm_6_83038lstm_6_83040*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_lstm_6_layer_call_and_return_conditional_losses_83035ю
!dropout_8/StatefulPartitionedCallStatefulPartitionedCall'lstm_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_8_layer_call_and_return_conditional_losses_83055Э
lstm_7/StatefulPartitionedCallStatefulPartitionedCall*dropout_8/StatefulPartitionedCall:output:0lstm_7_83200lstm_7_83202lstm_7_83204*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_lstm_7_layer_call_and_return_conditional_losses_83199Т
!dropout_9/StatefulPartitionedCallStatefulPartitionedCall'lstm_7/StatefulPartitionedCall:output:0"^dropout_8/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_9_layer_call_and_return_conditional_losses_83219Щ
lstm_8/StatefulPartitionedCallStatefulPartitionedCall*dropout_9/StatefulPartitionedCall:output:0lstm_8_83366lstm_8_83368lstm_8_83370*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_lstm_8_layer_call_and_return_conditional_losses_83365Р
"dropout_10/StatefulPartitionedCallStatefulPartitionedCall'lstm_8/StatefulPartitionedCall:output:0"^dropout_9/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dropout_10_layer_call_and_return_conditional_losses_83385О
dense_4/StatefulPartitionedCallStatefulPartitionedCall+dropout_10/StatefulPartitionedCall:output:0dense_4_83399dense_4_83401*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_83398Т
"dropout_11/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0#^dropout_10/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dropout_11_layer_call_and_return_conditional_losses_83416О
dense_5/StatefulPartitionedCallStatefulPartitionedCall+dropout_11/StatefulPartitionedCall:output:0dense_5_83429dense_5_83431*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_5_layer_call_and_return_conditional_losses_83428w
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:          
NoOpNoOp ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall#^dropout_10/StatefulPartitionedCall#^dropout_11/StatefulPartitionedCall"^dropout_8/StatefulPartitionedCall"^dropout_9/StatefulPartitionedCall^lstm_6/StatefulPartitionedCall^lstm_7/StatefulPartitionedCall^lstm_8/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:         : : : : : : : : : : : : : 2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2H
"dropout_10/StatefulPartitionedCall"dropout_10/StatefulPartitionedCall2H
"dropout_11/StatefulPartitionedCall"dropout_11/StatefulPartitionedCall2F
!dropout_8/StatefulPartitionedCall!dropout_8/StatefulPartitionedCall2F
!dropout_9/StatefulPartitionedCall!dropout_9/StatefulPartitionedCall2@
lstm_6/StatefulPartitionedCalllstm_6/StatefulPartitionedCall2@
lstm_7/StatefulPartitionedCalllstm_7/StatefulPartitionedCall2@
lstm_8/StatefulPartitionedCalllstm_8/StatefulPartitionedCall:Y U
+
_output_shapes
:         
&
_user_specified_namelstm_6_input
Я
F
*__inference_dropout_10_layer_call_fn_87183

inputs
identity░
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dropout_10_layer_call_and_return_conditional_losses_83906`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs
МP
└
$sequential_2_lstm_7_while_body_81594D
@sequential_2_lstm_7_while_sequential_2_lstm_7_while_loop_counterJ
Fsequential_2_lstm_7_while_sequential_2_lstm_7_while_maximum_iterations)
%sequential_2_lstm_7_while_placeholder+
'sequential_2_lstm_7_while_placeholder_1+
'sequential_2_lstm_7_while_placeholder_2+
'sequential_2_lstm_7_while_placeholder_3C
?sequential_2_lstm_7_while_sequential_2_lstm_7_strided_slice_1_0
{sequential_2_lstm_7_while_tensorarrayv2read_tensorlistgetitem_sequential_2_lstm_7_tensorarrayunstack_tensorlistfromtensor_0X
Fsequential_2_lstm_7_while_lstm_cell_7_matmul_readvariableop_resource_0: Z
Hsequential_2_lstm_7_while_lstm_cell_7_matmul_1_readvariableop_resource_0: U
Gsequential_2_lstm_7_while_lstm_cell_7_biasadd_readvariableop_resource_0: &
"sequential_2_lstm_7_while_identity(
$sequential_2_lstm_7_while_identity_1(
$sequential_2_lstm_7_while_identity_2(
$sequential_2_lstm_7_while_identity_3(
$sequential_2_lstm_7_while_identity_4(
$sequential_2_lstm_7_while_identity_5A
=sequential_2_lstm_7_while_sequential_2_lstm_7_strided_slice_1}
ysequential_2_lstm_7_while_tensorarrayv2read_tensorlistgetitem_sequential_2_lstm_7_tensorarrayunstack_tensorlistfromtensorV
Dsequential_2_lstm_7_while_lstm_cell_7_matmul_readvariableop_resource: X
Fsequential_2_lstm_7_while_lstm_cell_7_matmul_1_readvariableop_resource: S
Esequential_2_lstm_7_while_lstm_cell_7_biasadd_readvariableop_resource: Ив<sequential_2/lstm_7/while/lstm_cell_7/BiasAdd/ReadVariableOpв;sequential_2/lstm_7/while/lstm_cell_7/MatMul/ReadVariableOpв=sequential_2/lstm_7/while/lstm_cell_7/MatMul_1/ReadVariableOpЬ
Ksequential_2/lstm_7/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       К
=sequential_2/lstm_7/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem{sequential_2_lstm_7_while_tensorarrayv2read_tensorlistgetitem_sequential_2_lstm_7_tensorarrayunstack_tensorlistfromtensor_0%sequential_2_lstm_7_while_placeholderTsequential_2/lstm_7/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0┬
;sequential_2/lstm_7/while/lstm_cell_7/MatMul/ReadVariableOpReadVariableOpFsequential_2_lstm_7_while_lstm_cell_7_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0є
,sequential_2/lstm_7/while/lstm_cell_7/MatMulMatMulDsequential_2/lstm_7/while/TensorArrayV2Read/TensorListGetItem:item:0Csequential_2/lstm_7/while/lstm_cell_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ╞
=sequential_2/lstm_7/while/lstm_cell_7/MatMul_1/ReadVariableOpReadVariableOpHsequential_2_lstm_7_while_lstm_cell_7_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0┌
.sequential_2/lstm_7/while/lstm_cell_7/MatMul_1MatMul'sequential_2_lstm_7_while_placeholder_2Esequential_2/lstm_7/while/lstm_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ╓
)sequential_2/lstm_7/while/lstm_cell_7/addAddV26sequential_2/lstm_7/while/lstm_cell_7/MatMul:product:08sequential_2/lstm_7/while/lstm_cell_7/MatMul_1:product:0*
T0*'
_output_shapes
:          └
<sequential_2/lstm_7/while/lstm_cell_7/BiasAdd/ReadVariableOpReadVariableOpGsequential_2_lstm_7_while_lstm_cell_7_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0▀
-sequential_2/lstm_7/while/lstm_cell_7/BiasAddBiasAdd-sequential_2/lstm_7/while/lstm_cell_7/add:z:0Dsequential_2/lstm_7/while/lstm_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          w
5sequential_2/lstm_7/while/lstm_cell_7/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :и
+sequential_2/lstm_7/while/lstm_cell_7/splitSplit>sequential_2/lstm_7/while/lstm_cell_7/split/split_dim:output:06sequential_2/lstm_7/while/lstm_cell_7/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitа
-sequential_2/lstm_7/while/lstm_cell_7/SigmoidSigmoid4sequential_2/lstm_7/while/lstm_cell_7/split:output:0*
T0*'
_output_shapes
:         в
/sequential_2/lstm_7/while/lstm_cell_7/Sigmoid_1Sigmoid4sequential_2/lstm_7/while/lstm_cell_7/split:output:1*
T0*'
_output_shapes
:         └
)sequential_2/lstm_7/while/lstm_cell_7/mulMul3sequential_2/lstm_7/while/lstm_cell_7/Sigmoid_1:y:0'sequential_2_lstm_7_while_placeholder_3*
T0*'
_output_shapes
:         Ъ
*sequential_2/lstm_7/while/lstm_cell_7/ReluRelu4sequential_2/lstm_7/while/lstm_cell_7/split:output:2*
T0*'
_output_shapes
:         ╤
+sequential_2/lstm_7/while/lstm_cell_7/mul_1Mul1sequential_2/lstm_7/while/lstm_cell_7/Sigmoid:y:08sequential_2/lstm_7/while/lstm_cell_7/Relu:activations:0*
T0*'
_output_shapes
:         ╞
+sequential_2/lstm_7/while/lstm_cell_7/add_1AddV2-sequential_2/lstm_7/while/lstm_cell_7/mul:z:0/sequential_2/lstm_7/while/lstm_cell_7/mul_1:z:0*
T0*'
_output_shapes
:         в
/sequential_2/lstm_7/while/lstm_cell_7/Sigmoid_2Sigmoid4sequential_2/lstm_7/while/lstm_cell_7/split:output:3*
T0*'
_output_shapes
:         Ч
,sequential_2/lstm_7/while/lstm_cell_7/Relu_1Relu/sequential_2/lstm_7/while/lstm_cell_7/add_1:z:0*
T0*'
_output_shapes
:         ╒
+sequential_2/lstm_7/while/lstm_cell_7/mul_2Mul3sequential_2/lstm_7/while/lstm_cell_7/Sigmoid_2:y:0:sequential_2/lstm_7/while/lstm_cell_7/Relu_1:activations:0*
T0*'
_output_shapes
:         Ф
>sequential_2/lstm_7/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem'sequential_2_lstm_7_while_placeholder_1%sequential_2_lstm_7_while_placeholder/sequential_2/lstm_7/while/lstm_cell_7/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥a
sequential_2/lstm_7/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Ш
sequential_2/lstm_7/while/addAddV2%sequential_2_lstm_7_while_placeholder(sequential_2/lstm_7/while/add/y:output:0*
T0*
_output_shapes
: c
!sequential_2/lstm_7/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :╖
sequential_2/lstm_7/while/add_1AddV2@sequential_2_lstm_7_while_sequential_2_lstm_7_while_loop_counter*sequential_2/lstm_7/while/add_1/y:output:0*
T0*
_output_shapes
: Х
"sequential_2/lstm_7/while/IdentityIdentity#sequential_2/lstm_7/while/add_1:z:0^sequential_2/lstm_7/while/NoOp*
T0*
_output_shapes
: ║
$sequential_2/lstm_7/while/Identity_1IdentityFsequential_2_lstm_7_while_sequential_2_lstm_7_while_maximum_iterations^sequential_2/lstm_7/while/NoOp*
T0*
_output_shapes
: Х
$sequential_2/lstm_7/while/Identity_2Identity!sequential_2/lstm_7/while/add:z:0^sequential_2/lstm_7/while/NoOp*
T0*
_output_shapes
: ┬
$sequential_2/lstm_7/while/Identity_3IdentityNsequential_2/lstm_7/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^sequential_2/lstm_7/while/NoOp*
T0*
_output_shapes
: ┤
$sequential_2/lstm_7/while/Identity_4Identity/sequential_2/lstm_7/while/lstm_cell_7/mul_2:z:0^sequential_2/lstm_7/while/NoOp*
T0*'
_output_shapes
:         ┤
$sequential_2/lstm_7/while/Identity_5Identity/sequential_2/lstm_7/while/lstm_cell_7/add_1:z:0^sequential_2/lstm_7/while/NoOp*
T0*'
_output_shapes
:         Э
sequential_2/lstm_7/while/NoOpNoOp=^sequential_2/lstm_7/while/lstm_cell_7/BiasAdd/ReadVariableOp<^sequential_2/lstm_7/while/lstm_cell_7/MatMul/ReadVariableOp>^sequential_2/lstm_7/while/lstm_cell_7/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Q
"sequential_2_lstm_7_while_identity+sequential_2/lstm_7/while/Identity:output:0"U
$sequential_2_lstm_7_while_identity_1-sequential_2/lstm_7/while/Identity_1:output:0"U
$sequential_2_lstm_7_while_identity_2-sequential_2/lstm_7/while/Identity_2:output:0"U
$sequential_2_lstm_7_while_identity_3-sequential_2/lstm_7/while/Identity_3:output:0"U
$sequential_2_lstm_7_while_identity_4-sequential_2/lstm_7/while/Identity_4:output:0"U
$sequential_2_lstm_7_while_identity_5-sequential_2/lstm_7/while/Identity_5:output:0"Р
Esequential_2_lstm_7_while_lstm_cell_7_biasadd_readvariableop_resourceGsequential_2_lstm_7_while_lstm_cell_7_biasadd_readvariableop_resource_0"Т
Fsequential_2_lstm_7_while_lstm_cell_7_matmul_1_readvariableop_resourceHsequential_2_lstm_7_while_lstm_cell_7_matmul_1_readvariableop_resource_0"О
Dsequential_2_lstm_7_while_lstm_cell_7_matmul_readvariableop_resourceFsequential_2_lstm_7_while_lstm_cell_7_matmul_readvariableop_resource_0"А
=sequential_2_lstm_7_while_sequential_2_lstm_7_strided_slice_1?sequential_2_lstm_7_while_sequential_2_lstm_7_strided_slice_1_0"°
ysequential_2_lstm_7_while_tensorarrayv2read_tensorlistgetitem_sequential_2_lstm_7_tensorarrayunstack_tensorlistfromtensor{sequential_2_lstm_7_while_tensorarrayv2read_tensorlistgetitem_sequential_2_lstm_7_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2|
<sequential_2/lstm_7/while/lstm_cell_7/BiasAdd/ReadVariableOp<sequential_2/lstm_7/while/lstm_cell_7/BiasAdd/ReadVariableOp2z
;sequential_2/lstm_7/while/lstm_cell_7/MatMul/ReadVariableOp;sequential_2/lstm_7/while/lstm_cell_7/MatMul/ReadVariableOp2~
=sequential_2/lstm_7/while/lstm_cell_7/MatMul_1/ReadVariableOp=sequential_2/lstm_7/while/lstm_cell_7/MatMul_1/ReadVariableOp:^ Z

_output_shapes
: 
@
_user_specified_name(&sequential_2/lstm_7/while/loop_counter:d`

_output_shapes
: 
F
_user_specified_name.,sequential_2/lstm_7/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
: 
Ь8
└
while_body_85366
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
2while_lstm_cell_6_matmul_readvariableop_resource_0: F
4while_lstm_cell_6_matmul_1_readvariableop_resource_0: A
3while_lstm_cell_6_biasadd_readvariableop_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
0while_lstm_cell_6_matmul_readvariableop_resource: D
2while_lstm_cell_6_matmul_1_readvariableop_resource: ?
1while_lstm_cell_6_biasadd_readvariableop_resource: Ив(while/lstm_cell_6/BiasAdd/ReadVariableOpв'while/lstm_cell_6/MatMul/ReadVariableOpв)while/lstm_cell_6/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ъ
'while/lstm_cell_6/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_6_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0╖
while/lstm_cell_6/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Ю
)while/lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_6_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0Ю
while/lstm_cell_6/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Ъ
while/lstm_cell_6/addAddV2"while/lstm_cell_6/MatMul:product:0$while/lstm_cell_6/MatMul_1:product:0*
T0*'
_output_shapes
:          Ш
(while/lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_6_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0г
while/lstm_cell_6/BiasAddBiasAddwhile/lstm_cell_6/add:z:00while/lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          c
!while/lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ь
while/lstm_cell_6/splitSplit*while/lstm_cell_6/split/split_dim:output:0"while/lstm_cell_6/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitx
while/lstm_cell_6/SigmoidSigmoid while/lstm_cell_6/split:output:0*
T0*'
_output_shapes
:         z
while/lstm_cell_6/Sigmoid_1Sigmoid while/lstm_cell_6/split:output:1*
T0*'
_output_shapes
:         Д
while/lstm_cell_6/mulMulwhile/lstm_cell_6/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         r
while/lstm_cell_6/ReluRelu while/lstm_cell_6/split:output:2*
T0*'
_output_shapes
:         Х
while/lstm_cell_6/mul_1Mulwhile/lstm_cell_6/Sigmoid:y:0$while/lstm_cell_6/Relu:activations:0*
T0*'
_output_shapes
:         К
while/lstm_cell_6/add_1AddV2while/lstm_cell_6/mul:z:0while/lstm_cell_6/mul_1:z:0*
T0*'
_output_shapes
:         z
while/lstm_cell_6/Sigmoid_2Sigmoid while/lstm_cell_6/split:output:3*
T0*'
_output_shapes
:         o
while/lstm_cell_6/Relu_1Reluwhile/lstm_cell_6/add_1:z:0*
T0*'
_output_shapes
:         Щ
while/lstm_cell_6/mul_2Mulwhile/lstm_cell_6/Sigmoid_2:y:0&while/lstm_cell_6/Relu_1:activations:0*
T0*'
_output_shapes
:         ─
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_6/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/lstm_cell_6/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         x
while/Identity_5Identitywhile/lstm_cell_6/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         ═

while/NoOpNoOp)^while/lstm_cell_6/BiasAdd/ReadVariableOp(^while/lstm_cell_6/MatMul/ReadVariableOp*^while/lstm_cell_6/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_6_biasadd_readvariableop_resource3while_lstm_cell_6_biasadd_readvariableop_resource_0"j
2while_lstm_cell_6_matmul_1_readvariableop_resource4while_lstm_cell_6_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_6_matmul_readvariableop_resource2while_lstm_cell_6_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2T
(while/lstm_cell_6/BiasAdd/ReadVariableOp(while/lstm_cell_6/BiasAdd/ReadVariableOp2R
'while/lstm_cell_6/MatMul/ReadVariableOp'while/lstm_cell_6/MatMul/ReadVariableOp2V
)while/lstm_cell_6/MatMul_1/ReadVariableOp)while/lstm_cell_6/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
: 
в
▓
&__inference_lstm_7_layer_call_fn_85928
inputs_0
unknown: 
	unknown_0: 
	unknown_1: 
identityИвStatefulPartitionedCallЄ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_lstm_7_layer_call_and_return_conditional_losses_82477|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :                  `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs_0
ы
╬
$sequential_2_lstm_6_while_cond_81453D
@sequential_2_lstm_6_while_sequential_2_lstm_6_while_loop_counterJ
Fsequential_2_lstm_6_while_sequential_2_lstm_6_while_maximum_iterations)
%sequential_2_lstm_6_while_placeholder+
'sequential_2_lstm_6_while_placeholder_1+
'sequential_2_lstm_6_while_placeholder_2+
'sequential_2_lstm_6_while_placeholder_3F
Bsequential_2_lstm_6_while_less_sequential_2_lstm_6_strided_slice_1[
Wsequential_2_lstm_6_while_sequential_2_lstm_6_while_cond_81453___redundant_placeholder0[
Wsequential_2_lstm_6_while_sequential_2_lstm_6_while_cond_81453___redundant_placeholder1[
Wsequential_2_lstm_6_while_sequential_2_lstm_6_while_cond_81453___redundant_placeholder2[
Wsequential_2_lstm_6_while_sequential_2_lstm_6_while_cond_81453___redundant_placeholder3&
"sequential_2_lstm_6_while_identity
▓
sequential_2/lstm_6/while/LessLess%sequential_2_lstm_6_while_placeholderBsequential_2_lstm_6_while_less_sequential_2_lstm_6_strided_slice_1*
T0*
_output_shapes
: s
"sequential_2/lstm_6/while/IdentityIdentity"sequential_2/lstm_6/while/Less:z:0*
T0
*
_output_shapes
: "Q
"sequential_2_lstm_6_while_identity+sequential_2/lstm_6/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : :::::^ Z

_output_shapes
: 
@
_user_specified_name(&sequential_2/lstm_6/while/loop_counter:d`

_output_shapes
: 
F
_user_specified_name.,sequential_2/lstm_6/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
:
Я
F
*__inference_dropout_11_layer_call_fn_87230

inputs
identity░
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dropout_11_layer_call_and_return_conditional_losses_83917`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs
║
╨
,__inference_sequential_2_layer_call_fn_83996
lstm_6_input
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: 
	unknown_5: 
	unknown_6: 
	unknown_7: 
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:
identityИвStatefulPartitionedCallє
StatefulPartitionedCallStatefulPartitionedCalllstm_6_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         */
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_sequential_2_layer_call_and_return_conditional_losses_83967o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:         : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
+
_output_shapes
:         
&
_user_specified_namelstm_6_input
ЎI
Р
A__inference_lstm_6_layer_call_and_return_conditional_losses_85879

inputs<
*lstm_cell_6_matmul_readvariableop_resource: >
,lstm_cell_6_matmul_1_readvariableop_resource: 9
+lstm_cell_6_biasadd_readvariableop_resource: 
identityИв"lstm_cell_6/BiasAdd/ReadVariableOpв!lstm_cell_6/MatMul/ReadVariableOpв#lstm_cell_6/MatMul_1/ReadVariableOpвwhileI
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::э╧_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskМ
!lstm_cell_6/MatMul/ReadVariableOpReadVariableOp*lstm_cell_6_matmul_readvariableop_resource*
_output_shapes

: *
dtype0У
lstm_cell_6/MatMulMatMulstrided_slice_2:output:0)lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Р
#lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_6_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0Н
lstm_cell_6/MatMul_1MatMulzeros:output:0+lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          И
lstm_cell_6/addAddV2lstm_cell_6/MatMul:product:0lstm_cell_6/MatMul_1:product:0*
T0*'
_output_shapes
:          К
"lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_6_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0С
lstm_cell_6/BiasAddBiasAddlstm_cell_6/add:z:0*lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ]
lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :┌
lstm_cell_6/splitSplit$lstm_cell_6/split/split_dim:output:0lstm_cell_6/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitl
lstm_cell_6/SigmoidSigmoidlstm_cell_6/split:output:0*
T0*'
_output_shapes
:         n
lstm_cell_6/Sigmoid_1Sigmoidlstm_cell_6/split:output:1*
T0*'
_output_shapes
:         u
lstm_cell_6/mulMullstm_cell_6/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         f
lstm_cell_6/ReluRelulstm_cell_6/split:output:2*
T0*'
_output_shapes
:         Г
lstm_cell_6/mul_1Mullstm_cell_6/Sigmoid:y:0lstm_cell_6/Relu:activations:0*
T0*'
_output_shapes
:         x
lstm_cell_6/add_1AddV2lstm_cell_6/mul:z:0lstm_cell_6/mul_1:z:0*
T0*'
_output_shapes
:         n
lstm_cell_6/Sigmoid_2Sigmoidlstm_cell_6/split:output:3*
T0*'
_output_shapes
:         c
lstm_cell_6/Relu_1Relulstm_cell_6/add_1:z:0*
T0*'
_output_shapes
:         З
lstm_cell_6/mul_2Mullstm_cell_6/Sigmoid_2:y:0 lstm_cell_6/Relu_1:activations:0*
T0*'
_output_shapes
:         n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ¤
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_6_matmul_readvariableop_resource,lstm_cell_6_matmul_1_readvariableop_resource+lstm_cell_6_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_85795*
condR
while_cond_85794*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:         ╜
NoOpNoOp#^lstm_cell_6/BiasAdd/ReadVariableOp"^lstm_cell_6/MatMul/ReadVariableOp$^lstm_cell_6/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 2H
"lstm_cell_6/BiasAdd/ReadVariableOp"lstm_cell_6/BiasAdd/ReadVariableOp2F
!lstm_cell_6/MatMul/ReadVariableOp!lstm_cell_6/MatMul/ReadVariableOp2J
#lstm_cell_6/MatMul_1/ReadVariableOp#lstm_cell_6/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
Щ

d
E__inference_dropout_10_layer_call_and_return_conditional_losses_83385

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:         Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::э╧М
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:         *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=ж
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    У
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*'
_output_shapes
:         a
IdentityIdentitydropout/SelectV2:output:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs
╤
Б
F__inference_lstm_cell_6_layer_call_and_return_conditional_losses_87364

inputs
states_0
states_10
matmul_readvariableop_resource: 2
 matmul_1_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity

identity_1

identity_2ИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpвMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:          r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╢
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         N
ReluRelusplit:output:2*
T0*'
_output_shapes
:         _
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         С
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         :         : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:QM
'
_output_shapes
:         
"
_user_specified_name
states_0:QM
'
_output_shapes
:         
"
_user_specified_name
states_1
╠@
а

lstm_6_while_body_84414*
&lstm_6_while_lstm_6_while_loop_counter0
,lstm_6_while_lstm_6_while_maximum_iterations
lstm_6_while_placeholder
lstm_6_while_placeholder_1
lstm_6_while_placeholder_2
lstm_6_while_placeholder_3)
%lstm_6_while_lstm_6_strided_slice_1_0e
alstm_6_while_tensorarrayv2read_tensorlistgetitem_lstm_6_tensorarrayunstack_tensorlistfromtensor_0K
9lstm_6_while_lstm_cell_6_matmul_readvariableop_resource_0: M
;lstm_6_while_lstm_cell_6_matmul_1_readvariableop_resource_0: H
:lstm_6_while_lstm_cell_6_biasadd_readvariableop_resource_0: 
lstm_6_while_identity
lstm_6_while_identity_1
lstm_6_while_identity_2
lstm_6_while_identity_3
lstm_6_while_identity_4
lstm_6_while_identity_5'
#lstm_6_while_lstm_6_strided_slice_1c
_lstm_6_while_tensorarrayv2read_tensorlistgetitem_lstm_6_tensorarrayunstack_tensorlistfromtensorI
7lstm_6_while_lstm_cell_6_matmul_readvariableop_resource: K
9lstm_6_while_lstm_cell_6_matmul_1_readvariableop_resource: F
8lstm_6_while_lstm_cell_6_biasadd_readvariableop_resource: Ив/lstm_6/while/lstm_cell_6/BiasAdd/ReadVariableOpв.lstm_6/while/lstm_cell_6/MatMul/ReadVariableOpв0lstm_6/while/lstm_cell_6/MatMul_1/ReadVariableOpП
>lstm_6/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╔
0lstm_6/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_6_while_tensorarrayv2read_tensorlistgetitem_lstm_6_tensorarrayunstack_tensorlistfromtensor_0lstm_6_while_placeholderGlstm_6/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0и
.lstm_6/while/lstm_cell_6/MatMul/ReadVariableOpReadVariableOp9lstm_6_while_lstm_cell_6_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0╠
lstm_6/while/lstm_cell_6/MatMulMatMul7lstm_6/while/TensorArrayV2Read/TensorListGetItem:item:06lstm_6/while/lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          м
0lstm_6/while/lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp;lstm_6_while_lstm_cell_6_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0│
!lstm_6/while/lstm_cell_6/MatMul_1MatMullstm_6_while_placeholder_28lstm_6/while/lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          п
lstm_6/while/lstm_cell_6/addAddV2)lstm_6/while/lstm_cell_6/MatMul:product:0+lstm_6/while/lstm_cell_6/MatMul_1:product:0*
T0*'
_output_shapes
:          ж
/lstm_6/while/lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp:lstm_6_while_lstm_cell_6_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0╕
 lstm_6/while/lstm_cell_6/BiasAddBiasAdd lstm_6/while/lstm_cell_6/add:z:07lstm_6/while/lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          j
(lstm_6/while/lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Б
lstm_6/while/lstm_cell_6/splitSplit1lstm_6/while/lstm_cell_6/split/split_dim:output:0)lstm_6/while/lstm_cell_6/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitЖ
 lstm_6/while/lstm_cell_6/SigmoidSigmoid'lstm_6/while/lstm_cell_6/split:output:0*
T0*'
_output_shapes
:         И
"lstm_6/while/lstm_cell_6/Sigmoid_1Sigmoid'lstm_6/while/lstm_cell_6/split:output:1*
T0*'
_output_shapes
:         Щ
lstm_6/while/lstm_cell_6/mulMul&lstm_6/while/lstm_cell_6/Sigmoid_1:y:0lstm_6_while_placeholder_3*
T0*'
_output_shapes
:         А
lstm_6/while/lstm_cell_6/ReluRelu'lstm_6/while/lstm_cell_6/split:output:2*
T0*'
_output_shapes
:         к
lstm_6/while/lstm_cell_6/mul_1Mul$lstm_6/while/lstm_cell_6/Sigmoid:y:0+lstm_6/while/lstm_cell_6/Relu:activations:0*
T0*'
_output_shapes
:         Я
lstm_6/while/lstm_cell_6/add_1AddV2 lstm_6/while/lstm_cell_6/mul:z:0"lstm_6/while/lstm_cell_6/mul_1:z:0*
T0*'
_output_shapes
:         И
"lstm_6/while/lstm_cell_6/Sigmoid_2Sigmoid'lstm_6/while/lstm_cell_6/split:output:3*
T0*'
_output_shapes
:         }
lstm_6/while/lstm_cell_6/Relu_1Relu"lstm_6/while/lstm_cell_6/add_1:z:0*
T0*'
_output_shapes
:         о
lstm_6/while/lstm_cell_6/mul_2Mul&lstm_6/while/lstm_cell_6/Sigmoid_2:y:0-lstm_6/while/lstm_cell_6/Relu_1:activations:0*
T0*'
_output_shapes
:         р
1lstm_6/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_6_while_placeholder_1lstm_6_while_placeholder"lstm_6/while/lstm_cell_6/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥T
lstm_6/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :q
lstm_6/while/addAddV2lstm_6_while_placeholderlstm_6/while/add/y:output:0*
T0*
_output_shapes
: V
lstm_6/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Г
lstm_6/while/add_1AddV2&lstm_6_while_lstm_6_while_loop_counterlstm_6/while/add_1/y:output:0*
T0*
_output_shapes
: n
lstm_6/while/IdentityIdentitylstm_6/while/add_1:z:0^lstm_6/while/NoOp*
T0*
_output_shapes
: Ж
lstm_6/while/Identity_1Identity,lstm_6_while_lstm_6_while_maximum_iterations^lstm_6/while/NoOp*
T0*
_output_shapes
: n
lstm_6/while/Identity_2Identitylstm_6/while/add:z:0^lstm_6/while/NoOp*
T0*
_output_shapes
: Ы
lstm_6/while/Identity_3IdentityAlstm_6/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_6/while/NoOp*
T0*
_output_shapes
: Н
lstm_6/while/Identity_4Identity"lstm_6/while/lstm_cell_6/mul_2:z:0^lstm_6/while/NoOp*
T0*'
_output_shapes
:         Н
lstm_6/while/Identity_5Identity"lstm_6/while/lstm_cell_6/add_1:z:0^lstm_6/while/NoOp*
T0*'
_output_shapes
:         щ
lstm_6/while/NoOpNoOp0^lstm_6/while/lstm_cell_6/BiasAdd/ReadVariableOp/^lstm_6/while/lstm_cell_6/MatMul/ReadVariableOp1^lstm_6/while/lstm_cell_6/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "7
lstm_6_while_identitylstm_6/while/Identity:output:0";
lstm_6_while_identity_1 lstm_6/while/Identity_1:output:0";
lstm_6_while_identity_2 lstm_6/while/Identity_2:output:0";
lstm_6_while_identity_3 lstm_6/while/Identity_3:output:0";
lstm_6_while_identity_4 lstm_6/while/Identity_4:output:0";
lstm_6_while_identity_5 lstm_6/while/Identity_5:output:0"L
#lstm_6_while_lstm_6_strided_slice_1%lstm_6_while_lstm_6_strided_slice_1_0"v
8lstm_6_while_lstm_cell_6_biasadd_readvariableop_resource:lstm_6_while_lstm_cell_6_biasadd_readvariableop_resource_0"x
9lstm_6_while_lstm_cell_6_matmul_1_readvariableop_resource;lstm_6_while_lstm_cell_6_matmul_1_readvariableop_resource_0"t
7lstm_6_while_lstm_cell_6_matmul_readvariableop_resource9lstm_6_while_lstm_cell_6_matmul_readvariableop_resource_0"─
_lstm_6_while_tensorarrayv2read_tensorlistgetitem_lstm_6_tensorarrayunstack_tensorlistfromtensoralstm_6_while_tensorarrayv2read_tensorlistgetitem_lstm_6_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2b
/lstm_6/while/lstm_cell_6/BiasAdd/ReadVariableOp/lstm_6/while/lstm_cell_6/BiasAdd/ReadVariableOp2`
.lstm_6/while/lstm_cell_6/MatMul/ReadVariableOp.lstm_6/while/lstm_cell_6/MatMul/ReadVariableOp2d
0lstm_6/while/lstm_cell_6/MatMul_1/ReadVariableOp0lstm_6/while/lstm_cell_6/MatMul_1/ReadVariableOp:Q M

_output_shapes
: 
3
_user_specified_namelstm_6/while/loop_counter:WS

_output_shapes
: 
9
_user_specified_name!lstm_6/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
: 
°╚
о+
__inference__traced_save_87853
file_prefix7
%read_disablecopyonread_dense_4_kernel:3
%read_1_disablecopyonread_dense_4_bias:9
'read_2_disablecopyonread_dense_5_kernel:3
%read_3_disablecopyonread_dense_5_bias:D
2read_4_disablecopyonread_lstm_6_lstm_cell_6_kernel: N
<read_5_disablecopyonread_lstm_6_lstm_cell_6_recurrent_kernel: >
0read_6_disablecopyonread_lstm_6_lstm_cell_6_bias: D
2read_7_disablecopyonread_lstm_7_lstm_cell_7_kernel: N
<read_8_disablecopyonread_lstm_7_lstm_cell_7_recurrent_kernel: >
0read_9_disablecopyonread_lstm_7_lstm_cell_7_bias: E
3read_10_disablecopyonread_lstm_8_lstm_cell_8_kernel: O
=read_11_disablecopyonread_lstm_8_lstm_cell_8_recurrent_kernel: ?
1read_12_disablecopyonread_lstm_8_lstm_cell_8_bias: -
#read_13_disablecopyonread_iteration:	 1
'read_14_disablecopyonread_learning_rate: L
:read_15_disablecopyonread_adam_m_lstm_6_lstm_cell_6_kernel: L
:read_16_disablecopyonread_adam_v_lstm_6_lstm_cell_6_kernel: V
Dread_17_disablecopyonread_adam_m_lstm_6_lstm_cell_6_recurrent_kernel: V
Dread_18_disablecopyonread_adam_v_lstm_6_lstm_cell_6_recurrent_kernel: F
8read_19_disablecopyonread_adam_m_lstm_6_lstm_cell_6_bias: F
8read_20_disablecopyonread_adam_v_lstm_6_lstm_cell_6_bias: L
:read_21_disablecopyonread_adam_m_lstm_7_lstm_cell_7_kernel: L
:read_22_disablecopyonread_adam_v_lstm_7_lstm_cell_7_kernel: V
Dread_23_disablecopyonread_adam_m_lstm_7_lstm_cell_7_recurrent_kernel: V
Dread_24_disablecopyonread_adam_v_lstm_7_lstm_cell_7_recurrent_kernel: F
8read_25_disablecopyonread_adam_m_lstm_7_lstm_cell_7_bias: F
8read_26_disablecopyonread_adam_v_lstm_7_lstm_cell_7_bias: L
:read_27_disablecopyonread_adam_m_lstm_8_lstm_cell_8_kernel: L
:read_28_disablecopyonread_adam_v_lstm_8_lstm_cell_8_kernel: V
Dread_29_disablecopyonread_adam_m_lstm_8_lstm_cell_8_recurrent_kernel: V
Dread_30_disablecopyonread_adam_v_lstm_8_lstm_cell_8_recurrent_kernel: F
8read_31_disablecopyonread_adam_m_lstm_8_lstm_cell_8_bias: F
8read_32_disablecopyonread_adam_v_lstm_8_lstm_cell_8_bias: A
/read_33_disablecopyonread_adam_m_dense_4_kernel:A
/read_34_disablecopyonread_adam_v_dense_4_kernel:;
-read_35_disablecopyonread_adam_m_dense_4_bias:;
-read_36_disablecopyonread_adam_v_dense_4_bias:A
/read_37_disablecopyonread_adam_m_dense_5_kernel:A
/read_38_disablecopyonread_adam_v_dense_5_kernel:;
-read_39_disablecopyonread_adam_m_dense_5_bias:;
-read_40_disablecopyonread_adam_v_dense_5_bias:+
!read_41_disablecopyonread_total_1: +
!read_42_disablecopyonread_count_1: )
read_43_disablecopyonread_total: )
read_44_disablecopyonread_count: 
savev2_const
identity_91ИвMergeV2CheckpointsвRead/DisableCopyOnReadвRead/ReadVariableOpвRead_1/DisableCopyOnReadвRead_1/ReadVariableOpвRead_10/DisableCopyOnReadвRead_10/ReadVariableOpвRead_11/DisableCopyOnReadвRead_11/ReadVariableOpвRead_12/DisableCopyOnReadвRead_12/ReadVariableOpвRead_13/DisableCopyOnReadвRead_13/ReadVariableOpвRead_14/DisableCopyOnReadвRead_14/ReadVariableOpвRead_15/DisableCopyOnReadвRead_15/ReadVariableOpвRead_16/DisableCopyOnReadвRead_16/ReadVariableOpвRead_17/DisableCopyOnReadвRead_17/ReadVariableOpвRead_18/DisableCopyOnReadвRead_18/ReadVariableOpвRead_19/DisableCopyOnReadвRead_19/ReadVariableOpвRead_2/DisableCopyOnReadвRead_2/ReadVariableOpвRead_20/DisableCopyOnReadвRead_20/ReadVariableOpвRead_21/DisableCopyOnReadвRead_21/ReadVariableOpвRead_22/DisableCopyOnReadвRead_22/ReadVariableOpвRead_23/DisableCopyOnReadвRead_23/ReadVariableOpвRead_24/DisableCopyOnReadвRead_24/ReadVariableOpвRead_25/DisableCopyOnReadвRead_25/ReadVariableOpвRead_26/DisableCopyOnReadвRead_26/ReadVariableOpвRead_27/DisableCopyOnReadвRead_27/ReadVariableOpвRead_28/DisableCopyOnReadвRead_28/ReadVariableOpвRead_29/DisableCopyOnReadвRead_29/ReadVariableOpвRead_3/DisableCopyOnReadвRead_3/ReadVariableOpвRead_30/DisableCopyOnReadвRead_30/ReadVariableOpвRead_31/DisableCopyOnReadвRead_31/ReadVariableOpвRead_32/DisableCopyOnReadвRead_32/ReadVariableOpвRead_33/DisableCopyOnReadвRead_33/ReadVariableOpвRead_34/DisableCopyOnReadвRead_34/ReadVariableOpвRead_35/DisableCopyOnReadвRead_35/ReadVariableOpвRead_36/DisableCopyOnReadвRead_36/ReadVariableOpвRead_37/DisableCopyOnReadвRead_37/ReadVariableOpвRead_38/DisableCopyOnReadвRead_38/ReadVariableOpвRead_39/DisableCopyOnReadвRead_39/ReadVariableOpвRead_4/DisableCopyOnReadвRead_4/ReadVariableOpвRead_40/DisableCopyOnReadвRead_40/ReadVariableOpвRead_41/DisableCopyOnReadвRead_41/ReadVariableOpвRead_42/DisableCopyOnReadвRead_42/ReadVariableOpвRead_43/DisableCopyOnReadвRead_43/ReadVariableOpвRead_44/DisableCopyOnReadвRead_44/ReadVariableOpвRead_5/DisableCopyOnReadвRead_5/ReadVariableOpвRead_6/DisableCopyOnReadвRead_6/ReadVariableOpвRead_7/DisableCopyOnReadвRead_7/ReadVariableOpвRead_8/DisableCopyOnReadвRead_8/ReadVariableOpвRead_9/DisableCopyOnReadвRead_9/ReadVariableOpw
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
: w
Read/DisableCopyOnReadDisableCopyOnRead%read_disablecopyonread_dense_4_kernel"/device:CPU:0*
_output_shapes
 б
Read/ReadVariableOpReadVariableOp%read_disablecopyonread_dense_4_kernel^Read/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0i
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:a

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*
_output_shapes

:y
Read_1/DisableCopyOnReadDisableCopyOnRead%read_1_disablecopyonread_dense_4_bias"/device:CPU:0*
_output_shapes
 б
Read_1/ReadVariableOpReadVariableOp%read_1_disablecopyonread_dense_4_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
:{
Read_2/DisableCopyOnReadDisableCopyOnRead'read_2_disablecopyonread_dense_5_kernel"/device:CPU:0*
_output_shapes
 з
Read_2/ReadVariableOpReadVariableOp'read_2_disablecopyonread_dense_5_kernel^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0m

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:c

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes

:y
Read_3/DisableCopyOnReadDisableCopyOnRead%read_3_disablecopyonread_dense_5_bias"/device:CPU:0*
_output_shapes
 б
Read_3/ReadVariableOpReadVariableOp%read_3_disablecopyonread_dense_5_bias^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
:Ж
Read_4/DisableCopyOnReadDisableCopyOnRead2read_4_disablecopyonread_lstm_6_lstm_cell_6_kernel"/device:CPU:0*
_output_shapes
 ▓
Read_4/ReadVariableOpReadVariableOp2read_4_disablecopyonread_lstm_6_lstm_cell_6_kernel^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes

: *
dtype0m

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

: c

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes

: Р
Read_5/DisableCopyOnReadDisableCopyOnRead<read_5_disablecopyonread_lstm_6_lstm_cell_6_recurrent_kernel"/device:CPU:0*
_output_shapes
 ╝
Read_5/ReadVariableOpReadVariableOp<read_5_disablecopyonread_lstm_6_lstm_cell_6_recurrent_kernel^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes

: *
dtype0n
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

: e
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes

: Д
Read_6/DisableCopyOnReadDisableCopyOnRead0read_6_disablecopyonread_lstm_6_lstm_cell_6_bias"/device:CPU:0*
_output_shapes
 м
Read_6/ReadVariableOpReadVariableOp0read_6_disablecopyonread_lstm_6_lstm_cell_6_bias^Read_6/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0j
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*
_output_shapes
: Ж
Read_7/DisableCopyOnReadDisableCopyOnRead2read_7_disablecopyonread_lstm_7_lstm_cell_7_kernel"/device:CPU:0*
_output_shapes
 ▓
Read_7/ReadVariableOpReadVariableOp2read_7_disablecopyonread_lstm_7_lstm_cell_7_kernel^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes

: *
dtype0n
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

: e
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes

: Р
Read_8/DisableCopyOnReadDisableCopyOnRead<read_8_disablecopyonread_lstm_7_lstm_cell_7_recurrent_kernel"/device:CPU:0*
_output_shapes
 ╝
Read_8/ReadVariableOpReadVariableOp<read_8_disablecopyonread_lstm_7_lstm_cell_7_recurrent_kernel^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes

: *
dtype0n
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

: e
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes

: Д
Read_9/DisableCopyOnReadDisableCopyOnRead0read_9_disablecopyonread_lstm_7_lstm_cell_7_bias"/device:CPU:0*
_output_shapes
 м
Read_9/ReadVariableOpReadVariableOp0read_9_disablecopyonread_lstm_7_lstm_cell_7_bias^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0j
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
: И
Read_10/DisableCopyOnReadDisableCopyOnRead3read_10_disablecopyonread_lstm_8_lstm_cell_8_kernel"/device:CPU:0*
_output_shapes
 ╡
Read_10/ReadVariableOpReadVariableOp3read_10_disablecopyonread_lstm_8_lstm_cell_8_kernel^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes

: *
dtype0o
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

: e
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes

: Т
Read_11/DisableCopyOnReadDisableCopyOnRead=read_11_disablecopyonread_lstm_8_lstm_cell_8_recurrent_kernel"/device:CPU:0*
_output_shapes
 ┐
Read_11/ReadVariableOpReadVariableOp=read_11_disablecopyonread_lstm_8_lstm_cell_8_recurrent_kernel^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes

: *
dtype0o
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

: e
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes

: Ж
Read_12/DisableCopyOnReadDisableCopyOnRead1read_12_disablecopyonread_lstm_8_lstm_cell_8_bias"/device:CPU:0*
_output_shapes
 п
Read_12/ReadVariableOpReadVariableOp1read_12_disablecopyonread_lstm_8_lstm_cell_8_bias^Read_12/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*
_output_shapes
: x
Read_13/DisableCopyOnReadDisableCopyOnRead#read_13_disablecopyonread_iteration"/device:CPU:0*
_output_shapes
 Э
Read_13/ReadVariableOpReadVariableOp#read_13_disablecopyonread_iteration^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	g
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0	*
_output_shapes
: |
Read_14/DisableCopyOnReadDisableCopyOnRead'read_14_disablecopyonread_learning_rate"/device:CPU:0*
_output_shapes
 б
Read_14/ReadVariableOpReadVariableOp'read_14_disablecopyonread_learning_rate^Read_14/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes
: П
Read_15/DisableCopyOnReadDisableCopyOnRead:read_15_disablecopyonread_adam_m_lstm_6_lstm_cell_6_kernel"/device:CPU:0*
_output_shapes
 ╝
Read_15/ReadVariableOpReadVariableOp:read_15_disablecopyonread_adam_m_lstm_6_lstm_cell_6_kernel^Read_15/DisableCopyOnRead"/device:CPU:0*
_output_shapes

: *
dtype0o
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

: e
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes

: П
Read_16/DisableCopyOnReadDisableCopyOnRead:read_16_disablecopyonread_adam_v_lstm_6_lstm_cell_6_kernel"/device:CPU:0*
_output_shapes
 ╝
Read_16/ReadVariableOpReadVariableOp:read_16_disablecopyonread_adam_v_lstm_6_lstm_cell_6_kernel^Read_16/DisableCopyOnRead"/device:CPU:0*
_output_shapes

: *
dtype0o
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

: e
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes

: Щ
Read_17/DisableCopyOnReadDisableCopyOnReadDread_17_disablecopyonread_adam_m_lstm_6_lstm_cell_6_recurrent_kernel"/device:CPU:0*
_output_shapes
 ╞
Read_17/ReadVariableOpReadVariableOpDread_17_disablecopyonread_adam_m_lstm_6_lstm_cell_6_recurrent_kernel^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes

: *
dtype0o
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

: e
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes

: Щ
Read_18/DisableCopyOnReadDisableCopyOnReadDread_18_disablecopyonread_adam_v_lstm_6_lstm_cell_6_recurrent_kernel"/device:CPU:0*
_output_shapes
 ╞
Read_18/ReadVariableOpReadVariableOpDread_18_disablecopyonread_adam_v_lstm_6_lstm_cell_6_recurrent_kernel^Read_18/DisableCopyOnRead"/device:CPU:0*
_output_shapes

: *
dtype0o
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

: e
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*
_output_shapes

: Н
Read_19/DisableCopyOnReadDisableCopyOnRead8read_19_disablecopyonread_adam_m_lstm_6_lstm_cell_6_bias"/device:CPU:0*
_output_shapes
 ╢
Read_19/ReadVariableOpReadVariableOp8read_19_disablecopyonread_adam_m_lstm_6_lstm_cell_6_bias^Read_19/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*
_output_shapes
: Н
Read_20/DisableCopyOnReadDisableCopyOnRead8read_20_disablecopyonread_adam_v_lstm_6_lstm_cell_6_bias"/device:CPU:0*
_output_shapes
 ╢
Read_20/ReadVariableOpReadVariableOp8read_20_disablecopyonread_adam_v_lstm_6_lstm_cell_6_bias^Read_20/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*
_output_shapes
: П
Read_21/DisableCopyOnReadDisableCopyOnRead:read_21_disablecopyonread_adam_m_lstm_7_lstm_cell_7_kernel"/device:CPU:0*
_output_shapes
 ╝
Read_21/ReadVariableOpReadVariableOp:read_21_disablecopyonread_adam_m_lstm_7_lstm_cell_7_kernel^Read_21/DisableCopyOnRead"/device:CPU:0*
_output_shapes

: *
dtype0o
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

: e
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes

: П
Read_22/DisableCopyOnReadDisableCopyOnRead:read_22_disablecopyonread_adam_v_lstm_7_lstm_cell_7_kernel"/device:CPU:0*
_output_shapes
 ╝
Read_22/ReadVariableOpReadVariableOp:read_22_disablecopyonread_adam_v_lstm_7_lstm_cell_7_kernel^Read_22/DisableCopyOnRead"/device:CPU:0*
_output_shapes

: *
dtype0o
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

: e
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*
_output_shapes

: Щ
Read_23/DisableCopyOnReadDisableCopyOnReadDread_23_disablecopyonread_adam_m_lstm_7_lstm_cell_7_recurrent_kernel"/device:CPU:0*
_output_shapes
 ╞
Read_23/ReadVariableOpReadVariableOpDread_23_disablecopyonread_adam_m_lstm_7_lstm_cell_7_recurrent_kernel^Read_23/DisableCopyOnRead"/device:CPU:0*
_output_shapes

: *
dtype0o
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

: e
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*
_output_shapes

: Щ
Read_24/DisableCopyOnReadDisableCopyOnReadDread_24_disablecopyonread_adam_v_lstm_7_lstm_cell_7_recurrent_kernel"/device:CPU:0*
_output_shapes
 ╞
Read_24/ReadVariableOpReadVariableOpDread_24_disablecopyonread_adam_v_lstm_7_lstm_cell_7_recurrent_kernel^Read_24/DisableCopyOnRead"/device:CPU:0*
_output_shapes

: *
dtype0o
Identity_48IdentityRead_24/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

: e
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0*
_output_shapes

: Н
Read_25/DisableCopyOnReadDisableCopyOnRead8read_25_disablecopyonread_adam_m_lstm_7_lstm_cell_7_bias"/device:CPU:0*
_output_shapes
 ╢
Read_25/ReadVariableOpReadVariableOp8read_25_disablecopyonread_adam_m_lstm_7_lstm_cell_7_bias^Read_25/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_50IdentityRead_25/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*
_output_shapes
: Н
Read_26/DisableCopyOnReadDisableCopyOnRead8read_26_disablecopyonread_adam_v_lstm_7_lstm_cell_7_bias"/device:CPU:0*
_output_shapes
 ╢
Read_26/ReadVariableOpReadVariableOp8read_26_disablecopyonread_adam_v_lstm_7_lstm_cell_7_bias^Read_26/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_52IdentityRead_26/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0*
_output_shapes
: П
Read_27/DisableCopyOnReadDisableCopyOnRead:read_27_disablecopyonread_adam_m_lstm_8_lstm_cell_8_kernel"/device:CPU:0*
_output_shapes
 ╝
Read_27/ReadVariableOpReadVariableOp:read_27_disablecopyonread_adam_m_lstm_8_lstm_cell_8_kernel^Read_27/DisableCopyOnRead"/device:CPU:0*
_output_shapes

: *
dtype0o
Identity_54IdentityRead_27/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

: e
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0*
_output_shapes

: П
Read_28/DisableCopyOnReadDisableCopyOnRead:read_28_disablecopyonread_adam_v_lstm_8_lstm_cell_8_kernel"/device:CPU:0*
_output_shapes
 ╝
Read_28/ReadVariableOpReadVariableOp:read_28_disablecopyonread_adam_v_lstm_8_lstm_cell_8_kernel^Read_28/DisableCopyOnRead"/device:CPU:0*
_output_shapes

: *
dtype0o
Identity_56IdentityRead_28/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

: e
Identity_57IdentityIdentity_56:output:0"/device:CPU:0*
T0*
_output_shapes

: Щ
Read_29/DisableCopyOnReadDisableCopyOnReadDread_29_disablecopyonread_adam_m_lstm_8_lstm_cell_8_recurrent_kernel"/device:CPU:0*
_output_shapes
 ╞
Read_29/ReadVariableOpReadVariableOpDread_29_disablecopyonread_adam_m_lstm_8_lstm_cell_8_recurrent_kernel^Read_29/DisableCopyOnRead"/device:CPU:0*
_output_shapes

: *
dtype0o
Identity_58IdentityRead_29/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

: e
Identity_59IdentityIdentity_58:output:0"/device:CPU:0*
T0*
_output_shapes

: Щ
Read_30/DisableCopyOnReadDisableCopyOnReadDread_30_disablecopyonread_adam_v_lstm_8_lstm_cell_8_recurrent_kernel"/device:CPU:0*
_output_shapes
 ╞
Read_30/ReadVariableOpReadVariableOpDread_30_disablecopyonread_adam_v_lstm_8_lstm_cell_8_recurrent_kernel^Read_30/DisableCopyOnRead"/device:CPU:0*
_output_shapes

: *
dtype0o
Identity_60IdentityRead_30/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

: e
Identity_61IdentityIdentity_60:output:0"/device:CPU:0*
T0*
_output_shapes

: Н
Read_31/DisableCopyOnReadDisableCopyOnRead8read_31_disablecopyonread_adam_m_lstm_8_lstm_cell_8_bias"/device:CPU:0*
_output_shapes
 ╢
Read_31/ReadVariableOpReadVariableOp8read_31_disablecopyonread_adam_m_lstm_8_lstm_cell_8_bias^Read_31/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_62IdentityRead_31/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_63IdentityIdentity_62:output:0"/device:CPU:0*
T0*
_output_shapes
: Н
Read_32/DisableCopyOnReadDisableCopyOnRead8read_32_disablecopyonread_adam_v_lstm_8_lstm_cell_8_bias"/device:CPU:0*
_output_shapes
 ╢
Read_32/ReadVariableOpReadVariableOp8read_32_disablecopyonread_adam_v_lstm_8_lstm_cell_8_bias^Read_32/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_64IdentityRead_32/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_65IdentityIdentity_64:output:0"/device:CPU:0*
T0*
_output_shapes
: Д
Read_33/DisableCopyOnReadDisableCopyOnRead/read_33_disablecopyonread_adam_m_dense_4_kernel"/device:CPU:0*
_output_shapes
 ▒
Read_33/ReadVariableOpReadVariableOp/read_33_disablecopyonread_adam_m_dense_4_kernel^Read_33/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_66IdentityRead_33/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_67IdentityIdentity_66:output:0"/device:CPU:0*
T0*
_output_shapes

:Д
Read_34/DisableCopyOnReadDisableCopyOnRead/read_34_disablecopyonread_adam_v_dense_4_kernel"/device:CPU:0*
_output_shapes
 ▒
Read_34/ReadVariableOpReadVariableOp/read_34_disablecopyonread_adam_v_dense_4_kernel^Read_34/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_68IdentityRead_34/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_69IdentityIdentity_68:output:0"/device:CPU:0*
T0*
_output_shapes

:В
Read_35/DisableCopyOnReadDisableCopyOnRead-read_35_disablecopyonread_adam_m_dense_4_bias"/device:CPU:0*
_output_shapes
 л
Read_35/ReadVariableOpReadVariableOp-read_35_disablecopyonread_adam_m_dense_4_bias^Read_35/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_70IdentityRead_35/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_71IdentityIdentity_70:output:0"/device:CPU:0*
T0*
_output_shapes
:В
Read_36/DisableCopyOnReadDisableCopyOnRead-read_36_disablecopyonread_adam_v_dense_4_bias"/device:CPU:0*
_output_shapes
 л
Read_36/ReadVariableOpReadVariableOp-read_36_disablecopyonread_adam_v_dense_4_bias^Read_36/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_72IdentityRead_36/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_73IdentityIdentity_72:output:0"/device:CPU:0*
T0*
_output_shapes
:Д
Read_37/DisableCopyOnReadDisableCopyOnRead/read_37_disablecopyonread_adam_m_dense_5_kernel"/device:CPU:0*
_output_shapes
 ▒
Read_37/ReadVariableOpReadVariableOp/read_37_disablecopyonread_adam_m_dense_5_kernel^Read_37/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_74IdentityRead_37/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_75IdentityIdentity_74:output:0"/device:CPU:0*
T0*
_output_shapes

:Д
Read_38/DisableCopyOnReadDisableCopyOnRead/read_38_disablecopyonread_adam_v_dense_5_kernel"/device:CPU:0*
_output_shapes
 ▒
Read_38/ReadVariableOpReadVariableOp/read_38_disablecopyonread_adam_v_dense_5_kernel^Read_38/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_76IdentityRead_38/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_77IdentityIdentity_76:output:0"/device:CPU:0*
T0*
_output_shapes

:В
Read_39/DisableCopyOnReadDisableCopyOnRead-read_39_disablecopyonread_adam_m_dense_5_bias"/device:CPU:0*
_output_shapes
 л
Read_39/ReadVariableOpReadVariableOp-read_39_disablecopyonread_adam_m_dense_5_bias^Read_39/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_78IdentityRead_39/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_79IdentityIdentity_78:output:0"/device:CPU:0*
T0*
_output_shapes
:В
Read_40/DisableCopyOnReadDisableCopyOnRead-read_40_disablecopyonread_adam_v_dense_5_bias"/device:CPU:0*
_output_shapes
 л
Read_40/ReadVariableOpReadVariableOp-read_40_disablecopyonread_adam_v_dense_5_bias^Read_40/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_80IdentityRead_40/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_81IdentityIdentity_80:output:0"/device:CPU:0*
T0*
_output_shapes
:v
Read_41/DisableCopyOnReadDisableCopyOnRead!read_41_disablecopyonread_total_1"/device:CPU:0*
_output_shapes
 Ы
Read_41/ReadVariableOpReadVariableOp!read_41_disablecopyonread_total_1^Read_41/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_82IdentityRead_41/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_83IdentityIdentity_82:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_42/DisableCopyOnReadDisableCopyOnRead!read_42_disablecopyonread_count_1"/device:CPU:0*
_output_shapes
 Ы
Read_42/ReadVariableOpReadVariableOp!read_42_disablecopyonread_count_1^Read_42/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_84IdentityRead_42/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_85IdentityIdentity_84:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_43/DisableCopyOnReadDisableCopyOnReadread_43_disablecopyonread_total"/device:CPU:0*
_output_shapes
 Щ
Read_43/ReadVariableOpReadVariableOpread_43_disablecopyonread_total^Read_43/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_86IdentityRead_43/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_87IdentityIdentity_86:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_44/DisableCopyOnReadDisableCopyOnReadread_44_disablecopyonread_count"/device:CPU:0*
_output_shapes
 Щ
Read_44/ReadVariableOpReadVariableOpread_44_disablecopyonread_count^Read_44/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_88IdentityRead_44/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_89IdentityIdentity_88:output:0"/device:CPU:0*
T0*
_output_shapes
: ╠
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:.*
dtype0*ї
valueыBш.B6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH╔
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:.*
dtype0*o
valuefBd.B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ▐	
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0Identity_57:output:0Identity_59:output:0Identity_61:output:0Identity_63:output:0Identity_65:output:0Identity_67:output:0Identity_69:output:0Identity_71:output:0Identity_73:output:0Identity_75:output:0Identity_77:output:0Identity_79:output:0Identity_81:output:0Identity_83:output:0Identity_85:output:0Identity_87:output:0Identity_89:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *<
dtypes2
02.	Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:│
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_90Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_91IdentityIdentity_90:output:0^NoOp*
T0*
_output_shapes
: Ф
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_28/DisableCopyOnRead^Read_28/ReadVariableOp^Read_29/DisableCopyOnRead^Read_29/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_30/DisableCopyOnRead^Read_30/ReadVariableOp^Read_31/DisableCopyOnRead^Read_31/ReadVariableOp^Read_32/DisableCopyOnRead^Read_32/ReadVariableOp^Read_33/DisableCopyOnRead^Read_33/ReadVariableOp^Read_34/DisableCopyOnRead^Read_34/ReadVariableOp^Read_35/DisableCopyOnRead^Read_35/ReadVariableOp^Read_36/DisableCopyOnRead^Read_36/ReadVariableOp^Read_37/DisableCopyOnRead^Read_37/ReadVariableOp^Read_38/DisableCopyOnRead^Read_38/ReadVariableOp^Read_39/DisableCopyOnRead^Read_39/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_40/DisableCopyOnRead^Read_40/ReadVariableOp^Read_41/DisableCopyOnRead^Read_41/ReadVariableOp^Read_42/DisableCopyOnRead^Read_42/ReadVariableOp^Read_43/DisableCopyOnRead^Read_43/ReadVariableOp^Read_44/DisableCopyOnRead^Read_44/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "#
identity_91Identity_91:output:0*q
_input_shapes`
^: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp26
Read_22/DisableCopyOnReadRead_22/DisableCopyOnRead20
Read_22/ReadVariableOpRead_22/ReadVariableOp26
Read_23/DisableCopyOnReadRead_23/DisableCopyOnRead20
Read_23/ReadVariableOpRead_23/ReadVariableOp26
Read_24/DisableCopyOnReadRead_24/DisableCopyOnRead20
Read_24/ReadVariableOpRead_24/ReadVariableOp26
Read_25/DisableCopyOnReadRead_25/DisableCopyOnRead20
Read_25/ReadVariableOpRead_25/ReadVariableOp26
Read_26/DisableCopyOnReadRead_26/DisableCopyOnRead20
Read_26/ReadVariableOpRead_26/ReadVariableOp26
Read_27/DisableCopyOnReadRead_27/DisableCopyOnRead20
Read_27/ReadVariableOpRead_27/ReadVariableOp26
Read_28/DisableCopyOnReadRead_28/DisableCopyOnRead20
Read_28/ReadVariableOpRead_28/ReadVariableOp26
Read_29/DisableCopyOnReadRead_29/DisableCopyOnRead20
Read_29/ReadVariableOpRead_29/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp26
Read_30/DisableCopyOnReadRead_30/DisableCopyOnRead20
Read_30/ReadVariableOpRead_30/ReadVariableOp26
Read_31/DisableCopyOnReadRead_31/DisableCopyOnRead20
Read_31/ReadVariableOpRead_31/ReadVariableOp26
Read_32/DisableCopyOnReadRead_32/DisableCopyOnRead20
Read_32/ReadVariableOpRead_32/ReadVariableOp26
Read_33/DisableCopyOnReadRead_33/DisableCopyOnRead20
Read_33/ReadVariableOpRead_33/ReadVariableOp26
Read_34/DisableCopyOnReadRead_34/DisableCopyOnRead20
Read_34/ReadVariableOpRead_34/ReadVariableOp26
Read_35/DisableCopyOnReadRead_35/DisableCopyOnRead20
Read_35/ReadVariableOpRead_35/ReadVariableOp26
Read_36/DisableCopyOnReadRead_36/DisableCopyOnRead20
Read_36/ReadVariableOpRead_36/ReadVariableOp26
Read_37/DisableCopyOnReadRead_37/DisableCopyOnRead20
Read_37/ReadVariableOpRead_37/ReadVariableOp26
Read_38/DisableCopyOnReadRead_38/DisableCopyOnRead20
Read_38/ReadVariableOpRead_38/ReadVariableOp26
Read_39/DisableCopyOnReadRead_39/DisableCopyOnRead20
Read_39/ReadVariableOpRead_39/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp26
Read_40/DisableCopyOnReadRead_40/DisableCopyOnRead20
Read_40/ReadVariableOpRead_40/ReadVariableOp26
Read_41/DisableCopyOnReadRead_41/DisableCopyOnRead20
Read_41/ReadVariableOpRead_41/ReadVariableOp26
Read_42/DisableCopyOnReadRead_42/DisableCopyOnRead20
Read_42/ReadVariableOpRead_42/ReadVariableOp26
Read_43/DisableCopyOnReadRead_43/DisableCopyOnRead20
Read_43/ReadVariableOpRead_43/ReadVariableOp26
Read_44/DisableCopyOnReadRead_44/DisableCopyOnRead20
Read_44/ReadVariableOpRead_44/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:.

_output_shapes
: 
┤

c
D__inference_dropout_8_layer_call_and_return_conditional_losses_83055

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?h
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:         Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::э╧Р
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:         *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=к
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:         T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ч
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*+
_output_shapes
:         e
IdentityIdentitydropout/SelectV2:output:0*
T0*+
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         :S O
+
_output_shapes
:         
 
_user_specified_nameinputs
╕9
└
while_body_86653
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
2while_lstm_cell_8_matmul_readvariableop_resource_0: F
4while_lstm_cell_8_matmul_1_readvariableop_resource_0: A
3while_lstm_cell_8_biasadd_readvariableop_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
0while_lstm_cell_8_matmul_readvariableop_resource: D
2while_lstm_cell_8_matmul_1_readvariableop_resource: ?
1while_lstm_cell_8_biasadd_readvariableop_resource: Ив(while/lstm_cell_8/BiasAdd/ReadVariableOpв'while/lstm_cell_8/MatMul/ReadVariableOpв)while/lstm_cell_8/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ъ
'while/lstm_cell_8/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_8_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0╖
while/lstm_cell_8/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Ю
)while/lstm_cell_8/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_8_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0Ю
while/lstm_cell_8/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_8/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Ъ
while/lstm_cell_8/addAddV2"while/lstm_cell_8/MatMul:product:0$while/lstm_cell_8/MatMul_1:product:0*
T0*'
_output_shapes
:          Ш
(while/lstm_cell_8/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_8_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0г
while/lstm_cell_8/BiasAddBiasAddwhile/lstm_cell_8/add:z:00while/lstm_cell_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          c
!while/lstm_cell_8/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ь
while/lstm_cell_8/splitSplit*while/lstm_cell_8/split/split_dim:output:0"while/lstm_cell_8/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitx
while/lstm_cell_8/SigmoidSigmoid while/lstm_cell_8/split:output:0*
T0*'
_output_shapes
:         z
while/lstm_cell_8/Sigmoid_1Sigmoid while/lstm_cell_8/split:output:1*
T0*'
_output_shapes
:         Д
while/lstm_cell_8/mulMulwhile/lstm_cell_8/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         r
while/lstm_cell_8/ReluRelu while/lstm_cell_8/split:output:2*
T0*'
_output_shapes
:         Х
while/lstm_cell_8/mul_1Mulwhile/lstm_cell_8/Sigmoid:y:0$while/lstm_cell_8/Relu:activations:0*
T0*'
_output_shapes
:         К
while/lstm_cell_8/add_1AddV2while/lstm_cell_8/mul:z:0while/lstm_cell_8/mul_1:z:0*
T0*'
_output_shapes
:         z
while/lstm_cell_8/Sigmoid_2Sigmoid while/lstm_cell_8/split:output:3*
T0*'
_output_shapes
:         o
while/lstm_cell_8/Relu_1Reluwhile/lstm_cell_8/add_1:z:0*
T0*'
_output_shapes
:         Щ
while/lstm_cell_8/mul_2Mulwhile/lstm_cell_8/Sigmoid_2:y:0&while/lstm_cell_8/Relu_1:activations:0*
T0*'
_output_shapes
:         r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ь
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_8/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/lstm_cell_8/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         x
while/Identity_5Identitywhile/lstm_cell_8/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         ═

while/NoOpNoOp)^while/lstm_cell_8/BiasAdd/ReadVariableOp(^while/lstm_cell_8/MatMul/ReadVariableOp*^while/lstm_cell_8/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_8_biasadd_readvariableop_resource3while_lstm_cell_8_biasadd_readvariableop_resource_0"j
2while_lstm_cell_8_matmul_1_readvariableop_resource4while_lstm_cell_8_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_8_matmul_readvariableop_resource2while_lstm_cell_8_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2T
(while/lstm_cell_8/BiasAdd/ReadVariableOp(while/lstm_cell_8/BiasAdd/ReadVariableOp2R
'while/lstm_cell_8/MatMul/ReadVariableOp'while/lstm_cell_8/MatMul/ReadVariableOp2V
)while/lstm_cell_8/MatMul_1/ReadVariableOp)while/lstm_cell_8/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
: 
Т	
╛
while_cond_83114
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_83114___redundant_placeholder03
/while_while_cond_83114___redundant_placeholder13
/while_while_cond_83114___redundant_placeholder23
/while_while_cond_83114___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
:
╕9
└
while_body_87088
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
2while_lstm_cell_8_matmul_readvariableop_resource_0: F
4while_lstm_cell_8_matmul_1_readvariableop_resource_0: A
3while_lstm_cell_8_biasadd_readvariableop_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
0while_lstm_cell_8_matmul_readvariableop_resource: D
2while_lstm_cell_8_matmul_1_readvariableop_resource: ?
1while_lstm_cell_8_biasadd_readvariableop_resource: Ив(while/lstm_cell_8/BiasAdd/ReadVariableOpв'while/lstm_cell_8/MatMul/ReadVariableOpв)while/lstm_cell_8/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ъ
'while/lstm_cell_8/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_8_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0╖
while/lstm_cell_8/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Ю
)while/lstm_cell_8/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_8_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0Ю
while/lstm_cell_8/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_8/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Ъ
while/lstm_cell_8/addAddV2"while/lstm_cell_8/MatMul:product:0$while/lstm_cell_8/MatMul_1:product:0*
T0*'
_output_shapes
:          Ш
(while/lstm_cell_8/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_8_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0г
while/lstm_cell_8/BiasAddBiasAddwhile/lstm_cell_8/add:z:00while/lstm_cell_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          c
!while/lstm_cell_8/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ь
while/lstm_cell_8/splitSplit*while/lstm_cell_8/split/split_dim:output:0"while/lstm_cell_8/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitx
while/lstm_cell_8/SigmoidSigmoid while/lstm_cell_8/split:output:0*
T0*'
_output_shapes
:         z
while/lstm_cell_8/Sigmoid_1Sigmoid while/lstm_cell_8/split:output:1*
T0*'
_output_shapes
:         Д
while/lstm_cell_8/mulMulwhile/lstm_cell_8/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         r
while/lstm_cell_8/ReluRelu while/lstm_cell_8/split:output:2*
T0*'
_output_shapes
:         Х
while/lstm_cell_8/mul_1Mulwhile/lstm_cell_8/Sigmoid:y:0$while/lstm_cell_8/Relu:activations:0*
T0*'
_output_shapes
:         К
while/lstm_cell_8/add_1AddV2while/lstm_cell_8/mul:z:0while/lstm_cell_8/mul_1:z:0*
T0*'
_output_shapes
:         z
while/lstm_cell_8/Sigmoid_2Sigmoid while/lstm_cell_8/split:output:3*
T0*'
_output_shapes
:         o
while/lstm_cell_8/Relu_1Reluwhile/lstm_cell_8/add_1:z:0*
T0*'
_output_shapes
:         Щ
while/lstm_cell_8/mul_2Mulwhile/lstm_cell_8/Sigmoid_2:y:0&while/lstm_cell_8/Relu_1:activations:0*
T0*'
_output_shapes
:         r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ь
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_8/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/lstm_cell_8/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         x
while/Identity_5Identitywhile/lstm_cell_8/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         ═

while/NoOpNoOp)^while/lstm_cell_8/BiasAdd/ReadVariableOp(^while/lstm_cell_8/MatMul/ReadVariableOp*^while/lstm_cell_8/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_8_biasadd_readvariableop_resource3while_lstm_cell_8_biasadd_readvariableop_resource_0"j
2while_lstm_cell_8_matmul_1_readvariableop_resource4while_lstm_cell_8_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_8_matmul_readvariableop_resource2while_lstm_cell_8_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2T
(while/lstm_cell_8/BiasAdd/ReadVariableOp(while/lstm_cell_8/BiasAdd/ReadVariableOp2R
'while/lstm_cell_8/MatMul/ReadVariableOp'while/lstm_cell_8/MatMul/ReadVariableOp2V
)while/lstm_cell_8/MatMul_1/ReadVariableOp)while/lstm_cell_8/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
: 
ЎI
Р
A__inference_lstm_7_layer_call_and_return_conditional_losses_83736

inputs<
*lstm_cell_7_matmul_readvariableop_resource: >
,lstm_cell_7_matmul_1_readvariableop_resource: 9
+lstm_cell_7_biasadd_readvariableop_resource: 
identityИв"lstm_cell_7/BiasAdd/ReadVariableOpв!lstm_cell_7/MatMul/ReadVariableOpв#lstm_cell_7/MatMul_1/ReadVariableOpвwhileI
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::э╧_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskМ
!lstm_cell_7/MatMul/ReadVariableOpReadVariableOp*lstm_cell_7_matmul_readvariableop_resource*
_output_shapes

: *
dtype0У
lstm_cell_7/MatMulMatMulstrided_slice_2:output:0)lstm_cell_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Р
#lstm_cell_7/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_7_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0Н
lstm_cell_7/MatMul_1MatMulzeros:output:0+lstm_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          И
lstm_cell_7/addAddV2lstm_cell_7/MatMul:product:0lstm_cell_7/MatMul_1:product:0*
T0*'
_output_shapes
:          К
"lstm_cell_7/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_7_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0С
lstm_cell_7/BiasAddBiasAddlstm_cell_7/add:z:0*lstm_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ]
lstm_cell_7/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :┌
lstm_cell_7/splitSplit$lstm_cell_7/split/split_dim:output:0lstm_cell_7/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitl
lstm_cell_7/SigmoidSigmoidlstm_cell_7/split:output:0*
T0*'
_output_shapes
:         n
lstm_cell_7/Sigmoid_1Sigmoidlstm_cell_7/split:output:1*
T0*'
_output_shapes
:         u
lstm_cell_7/mulMullstm_cell_7/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         f
lstm_cell_7/ReluRelulstm_cell_7/split:output:2*
T0*'
_output_shapes
:         Г
lstm_cell_7/mul_1Mullstm_cell_7/Sigmoid:y:0lstm_cell_7/Relu:activations:0*
T0*'
_output_shapes
:         x
lstm_cell_7/add_1AddV2lstm_cell_7/mul:z:0lstm_cell_7/mul_1:z:0*
T0*'
_output_shapes
:         n
lstm_cell_7/Sigmoid_2Sigmoidlstm_cell_7/split:output:3*
T0*'
_output_shapes
:         c
lstm_cell_7/Relu_1Relulstm_cell_7/add_1:z:0*
T0*'
_output_shapes
:         З
lstm_cell_7/mul_2Mullstm_cell_7/Sigmoid_2:y:0 lstm_cell_7/Relu_1:activations:0*
T0*'
_output_shapes
:         n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ¤
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_7_matmul_readvariableop_resource,lstm_cell_7_matmul_1_readvariableop_resource+lstm_cell_7_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_83652*
condR
while_cond_83651*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:         ╜
NoOpNoOp#^lstm_cell_7/BiasAdd/ReadVariableOp"^lstm_cell_7/MatMul/ReadVariableOp$^lstm_cell_7/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 2H
"lstm_cell_7/BiasAdd/ReadVariableOp"lstm_cell_7/BiasAdd/ReadVariableOp2F
!lstm_cell_7/MatMul/ReadVariableOp!lstm_cell_7/MatMul/ReadVariableOp2J
#lstm_cell_7/MatMul_1/ReadVariableOp#lstm_cell_7/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
╛
Ф
'__inference_dense_4_layer_call_fn_87209

inputs
unknown:
	unknown_0:
identityИвStatefulPartitionedCall╫
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_83398o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
И
▓
&__inference_lstm_8_layer_call_fn_86560
inputs_0
unknown: 
	unknown_0: 
	unknown_1: 
identityИвStatefulPartitionedCallх
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_lstm_8_layer_call_and_return_conditional_losses_82684o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs_0
И
▓
&__inference_lstm_8_layer_call_fn_86571
inputs_0
unknown: 
	unknown_0: 
	unknown_1: 
identityИвStatefulPartitionedCallх
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_lstm_8_layer_call_and_return_conditional_losses_82831o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs_0
Щ#
╧
while_body_82263
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0+
while_lstm_cell_7_82287_0: +
while_lstm_cell_7_82289_0: '
while_lstm_cell_7_82291_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor)
while_lstm_cell_7_82287: )
while_lstm_cell_7_82289: %
while_lstm_cell_7_82291: Ив)while/lstm_cell_7/StatefulPartitionedCallИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0к
)while/lstm_cell_7/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_7_82287_0while_lstm_cell_7_82289_0while_lstm_cell_7_82291_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         :         :         *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_lstm_cell_7_layer_call_and_return_conditional_losses_82249█
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/lstm_cell_7/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:щш╥M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: П
while/Identity_4Identity2while/lstm_cell_7/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         П
while/Identity_5Identity2while/lstm_cell_7/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         x

while/NoOpNoOp*^while/lstm_cell_7/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"4
while_lstm_cell_7_82287while_lstm_cell_7_82287_0"4
while_lstm_cell_7_82289while_lstm_cell_7_82289_0"4
while_lstm_cell_7_82291while_lstm_cell_7_82291_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2V
)while/lstm_cell_7/StatefulPartitionedCall)while/lstm_cell_7/StatefulPartitionedCall:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
: 
Т	
╛
while_cond_85794
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_85794___redundant_placeholder03
/while_while_cond_85794___redundant_placeholder13
/while_while_cond_85794___redundant_placeholder23
/while_while_cond_85794___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
:
яA
а

lstm_8_while_body_84709*
&lstm_8_while_lstm_8_while_loop_counter0
,lstm_8_while_lstm_8_while_maximum_iterations
lstm_8_while_placeholder
lstm_8_while_placeholder_1
lstm_8_while_placeholder_2
lstm_8_while_placeholder_3)
%lstm_8_while_lstm_8_strided_slice_1_0e
alstm_8_while_tensorarrayv2read_tensorlistgetitem_lstm_8_tensorarrayunstack_tensorlistfromtensor_0K
9lstm_8_while_lstm_cell_8_matmul_readvariableop_resource_0: M
;lstm_8_while_lstm_cell_8_matmul_1_readvariableop_resource_0: H
:lstm_8_while_lstm_cell_8_biasadd_readvariableop_resource_0: 
lstm_8_while_identity
lstm_8_while_identity_1
lstm_8_while_identity_2
lstm_8_while_identity_3
lstm_8_while_identity_4
lstm_8_while_identity_5'
#lstm_8_while_lstm_8_strided_slice_1c
_lstm_8_while_tensorarrayv2read_tensorlistgetitem_lstm_8_tensorarrayunstack_tensorlistfromtensorI
7lstm_8_while_lstm_cell_8_matmul_readvariableop_resource: K
9lstm_8_while_lstm_cell_8_matmul_1_readvariableop_resource: F
8lstm_8_while_lstm_cell_8_biasadd_readvariableop_resource: Ив/lstm_8/while/lstm_cell_8/BiasAdd/ReadVariableOpв.lstm_8/while/lstm_cell_8/MatMul/ReadVariableOpв0lstm_8/while/lstm_cell_8/MatMul_1/ReadVariableOpП
>lstm_8/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╔
0lstm_8/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_8_while_tensorarrayv2read_tensorlistgetitem_lstm_8_tensorarrayunstack_tensorlistfromtensor_0lstm_8_while_placeholderGlstm_8/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0и
.lstm_8/while/lstm_cell_8/MatMul/ReadVariableOpReadVariableOp9lstm_8_while_lstm_cell_8_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0╠
lstm_8/while/lstm_cell_8/MatMulMatMul7lstm_8/while/TensorArrayV2Read/TensorListGetItem:item:06lstm_8/while/lstm_cell_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          м
0lstm_8/while/lstm_cell_8/MatMul_1/ReadVariableOpReadVariableOp;lstm_8_while_lstm_cell_8_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0│
!lstm_8/while/lstm_cell_8/MatMul_1MatMullstm_8_while_placeholder_28lstm_8/while/lstm_cell_8/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          п
lstm_8/while/lstm_cell_8/addAddV2)lstm_8/while/lstm_cell_8/MatMul:product:0+lstm_8/while/lstm_cell_8/MatMul_1:product:0*
T0*'
_output_shapes
:          ж
/lstm_8/while/lstm_cell_8/BiasAdd/ReadVariableOpReadVariableOp:lstm_8_while_lstm_cell_8_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0╕
 lstm_8/while/lstm_cell_8/BiasAddBiasAdd lstm_8/while/lstm_cell_8/add:z:07lstm_8/while/lstm_cell_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          j
(lstm_8/while/lstm_cell_8/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Б
lstm_8/while/lstm_cell_8/splitSplit1lstm_8/while/lstm_cell_8/split/split_dim:output:0)lstm_8/while/lstm_cell_8/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitЖ
 lstm_8/while/lstm_cell_8/SigmoidSigmoid'lstm_8/while/lstm_cell_8/split:output:0*
T0*'
_output_shapes
:         И
"lstm_8/while/lstm_cell_8/Sigmoid_1Sigmoid'lstm_8/while/lstm_cell_8/split:output:1*
T0*'
_output_shapes
:         Щ
lstm_8/while/lstm_cell_8/mulMul&lstm_8/while/lstm_cell_8/Sigmoid_1:y:0lstm_8_while_placeholder_3*
T0*'
_output_shapes
:         А
lstm_8/while/lstm_cell_8/ReluRelu'lstm_8/while/lstm_cell_8/split:output:2*
T0*'
_output_shapes
:         к
lstm_8/while/lstm_cell_8/mul_1Mul$lstm_8/while/lstm_cell_8/Sigmoid:y:0+lstm_8/while/lstm_cell_8/Relu:activations:0*
T0*'
_output_shapes
:         Я
lstm_8/while/lstm_cell_8/add_1AddV2 lstm_8/while/lstm_cell_8/mul:z:0"lstm_8/while/lstm_cell_8/mul_1:z:0*
T0*'
_output_shapes
:         И
"lstm_8/while/lstm_cell_8/Sigmoid_2Sigmoid'lstm_8/while/lstm_cell_8/split:output:3*
T0*'
_output_shapes
:         }
lstm_8/while/lstm_cell_8/Relu_1Relu"lstm_8/while/lstm_cell_8/add_1:z:0*
T0*'
_output_shapes
:         о
lstm_8/while/lstm_cell_8/mul_2Mul&lstm_8/while/lstm_cell_8/Sigmoid_2:y:0-lstm_8/while/lstm_cell_8/Relu_1:activations:0*
T0*'
_output_shapes
:         y
7lstm_8/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : И
1lstm_8/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_8_while_placeholder_1@lstm_8/while/TensorArrayV2Write/TensorListSetItem/index:output:0"lstm_8/while/lstm_cell_8/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥T
lstm_8/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :q
lstm_8/while/addAddV2lstm_8_while_placeholderlstm_8/while/add/y:output:0*
T0*
_output_shapes
: V
lstm_8/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Г
lstm_8/while/add_1AddV2&lstm_8_while_lstm_8_while_loop_counterlstm_8/while/add_1/y:output:0*
T0*
_output_shapes
: n
lstm_8/while/IdentityIdentitylstm_8/while/add_1:z:0^lstm_8/while/NoOp*
T0*
_output_shapes
: Ж
lstm_8/while/Identity_1Identity,lstm_8_while_lstm_8_while_maximum_iterations^lstm_8/while/NoOp*
T0*
_output_shapes
: n
lstm_8/while/Identity_2Identitylstm_8/while/add:z:0^lstm_8/while/NoOp*
T0*
_output_shapes
: Ы
lstm_8/while/Identity_3IdentityAlstm_8/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_8/while/NoOp*
T0*
_output_shapes
: Н
lstm_8/while/Identity_4Identity"lstm_8/while/lstm_cell_8/mul_2:z:0^lstm_8/while/NoOp*
T0*'
_output_shapes
:         Н
lstm_8/while/Identity_5Identity"lstm_8/while/lstm_cell_8/add_1:z:0^lstm_8/while/NoOp*
T0*'
_output_shapes
:         щ
lstm_8/while/NoOpNoOp0^lstm_8/while/lstm_cell_8/BiasAdd/ReadVariableOp/^lstm_8/while/lstm_cell_8/MatMul/ReadVariableOp1^lstm_8/while/lstm_cell_8/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "7
lstm_8_while_identitylstm_8/while/Identity:output:0";
lstm_8_while_identity_1 lstm_8/while/Identity_1:output:0";
lstm_8_while_identity_2 lstm_8/while/Identity_2:output:0";
lstm_8_while_identity_3 lstm_8/while/Identity_3:output:0";
lstm_8_while_identity_4 lstm_8/while/Identity_4:output:0";
lstm_8_while_identity_5 lstm_8/while/Identity_5:output:0"L
#lstm_8_while_lstm_8_strided_slice_1%lstm_8_while_lstm_8_strided_slice_1_0"v
8lstm_8_while_lstm_cell_8_biasadd_readvariableop_resource:lstm_8_while_lstm_cell_8_biasadd_readvariableop_resource_0"x
9lstm_8_while_lstm_cell_8_matmul_1_readvariableop_resource;lstm_8_while_lstm_cell_8_matmul_1_readvariableop_resource_0"t
7lstm_8_while_lstm_cell_8_matmul_readvariableop_resource9lstm_8_while_lstm_cell_8_matmul_readvariableop_resource_0"─
_lstm_8_while_tensorarrayv2read_tensorlistgetitem_lstm_8_tensorarrayunstack_tensorlistfromtensoralstm_8_while_tensorarrayv2read_tensorlistgetitem_lstm_8_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2b
/lstm_8/while/lstm_cell_8/BiasAdd/ReadVariableOp/lstm_8/while/lstm_cell_8/BiasAdd/ReadVariableOp2`
.lstm_8/while/lstm_cell_8/MatMul/ReadVariableOp.lstm_8/while/lstm_cell_8/MatMul/ReadVariableOp2d
0lstm_8/while/lstm_cell_8/MatMul_1/ReadVariableOp0lstm_8/while/lstm_cell_8/MatMul_1/ReadVariableOp:Q M

_output_shapes
: 
3
_user_specified_namelstm_8/while/loop_counter:WS

_output_shapes
: 
9
_user_specified_name!lstm_8/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
: 
Ь8
└
while_body_86009
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
2while_lstm_cell_7_matmul_readvariableop_resource_0: F
4while_lstm_cell_7_matmul_1_readvariableop_resource_0: A
3while_lstm_cell_7_biasadd_readvariableop_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
0while_lstm_cell_7_matmul_readvariableop_resource: D
2while_lstm_cell_7_matmul_1_readvariableop_resource: ?
1while_lstm_cell_7_biasadd_readvariableop_resource: Ив(while/lstm_cell_7/BiasAdd/ReadVariableOpв'while/lstm_cell_7/MatMul/ReadVariableOpв)while/lstm_cell_7/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ъ
'while/lstm_cell_7/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_7_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0╖
while/lstm_cell_7/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Ю
)while/lstm_cell_7/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_7_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0Ю
while/lstm_cell_7/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Ъ
while/lstm_cell_7/addAddV2"while/lstm_cell_7/MatMul:product:0$while/lstm_cell_7/MatMul_1:product:0*
T0*'
_output_shapes
:          Ш
(while/lstm_cell_7/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_7_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0г
while/lstm_cell_7/BiasAddBiasAddwhile/lstm_cell_7/add:z:00while/lstm_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          c
!while/lstm_cell_7/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ь
while/lstm_cell_7/splitSplit*while/lstm_cell_7/split/split_dim:output:0"while/lstm_cell_7/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitx
while/lstm_cell_7/SigmoidSigmoid while/lstm_cell_7/split:output:0*
T0*'
_output_shapes
:         z
while/lstm_cell_7/Sigmoid_1Sigmoid while/lstm_cell_7/split:output:1*
T0*'
_output_shapes
:         Д
while/lstm_cell_7/mulMulwhile/lstm_cell_7/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         r
while/lstm_cell_7/ReluRelu while/lstm_cell_7/split:output:2*
T0*'
_output_shapes
:         Х
while/lstm_cell_7/mul_1Mulwhile/lstm_cell_7/Sigmoid:y:0$while/lstm_cell_7/Relu:activations:0*
T0*'
_output_shapes
:         К
while/lstm_cell_7/add_1AddV2while/lstm_cell_7/mul:z:0while/lstm_cell_7/mul_1:z:0*
T0*'
_output_shapes
:         z
while/lstm_cell_7/Sigmoid_2Sigmoid while/lstm_cell_7/split:output:3*
T0*'
_output_shapes
:         o
while/lstm_cell_7/Relu_1Reluwhile/lstm_cell_7/add_1:z:0*
T0*'
_output_shapes
:         Щ
while/lstm_cell_7/mul_2Mulwhile/lstm_cell_7/Sigmoid_2:y:0&while/lstm_cell_7/Relu_1:activations:0*
T0*'
_output_shapes
:         ─
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_7/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/lstm_cell_7/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         x
while/Identity_5Identitywhile/lstm_cell_7/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         ═

while/NoOpNoOp)^while/lstm_cell_7/BiasAdd/ReadVariableOp(^while/lstm_cell_7/MatMul/ReadVariableOp*^while/lstm_cell_7/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_7_biasadd_readvariableop_resource3while_lstm_cell_7_biasadd_readvariableop_resource_0"j
2while_lstm_cell_7_matmul_1_readvariableop_resource4while_lstm_cell_7_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_7_matmul_readvariableop_resource2while_lstm_cell_7_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2T
(while/lstm_cell_7/BiasAdd/ReadVariableOp(while/lstm_cell_7/BiasAdd/ReadVariableOp2R
'while/lstm_cell_7/MatMul/ReadVariableOp'while/lstm_cell_7/MatMul/ReadVariableOp2V
)while/lstm_cell_7/MatMul_1/ReadVariableOp)while/lstm_cell_7/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
: 
Т	
╛
while_cond_87087
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_87087___redundant_placeholder03
/while_while_cond_87087___redundant_placeholder13
/while_while_cond_87087___redundant_placeholder23
/while_while_cond_87087___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
:
╤
Б
F__inference_lstm_cell_7_layer_call_and_return_conditional_losses_87430

inputs
states_0
states_10
matmul_readvariableop_resource: 2
 matmul_1_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity

identity_1

identity_2ИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpвMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:          r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╢
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         N
ReluRelusplit:output:2*
T0*'
_output_shapes
:         _
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         С
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         :         : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:QM
'
_output_shapes
:         
"
_user_specified_name
states_0:QM
'
_output_shapes
:         
"
_user_specified_name
states_1
Т	
╛
while_cond_85508
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_85508___redundant_placeholder03
/while_while_cond_85508___redundant_placeholder13
/while_while_cond_85508___redundant_placeholder23
/while_while_cond_85508___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
:
Ё
░
&__inference_lstm_8_layer_call_fn_86582

inputs
unknown: 
	unknown_0: 
	unknown_1: 
identityИвStatefulPartitionedCallу
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_lstm_8_layer_call_and_return_conditional_losses_83365o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
┤

c
D__inference_dropout_8_layer_call_and_return_conditional_losses_85901

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?h
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:         Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::э╧Р
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:         *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=к
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:         T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ч
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*+
_output_shapes
:         e
IdentityIdentitydropout/SelectV2:output:0*
T0*+
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         :S O
+
_output_shapes
:         
 
_user_specified_nameinputs
Ь8
└
while_body_86438
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
2while_lstm_cell_7_matmul_readvariableop_resource_0: F
4while_lstm_cell_7_matmul_1_readvariableop_resource_0: A
3while_lstm_cell_7_biasadd_readvariableop_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
0while_lstm_cell_7_matmul_readvariableop_resource: D
2while_lstm_cell_7_matmul_1_readvariableop_resource: ?
1while_lstm_cell_7_biasadd_readvariableop_resource: Ив(while/lstm_cell_7/BiasAdd/ReadVariableOpв'while/lstm_cell_7/MatMul/ReadVariableOpв)while/lstm_cell_7/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ъ
'while/lstm_cell_7/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_7_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0╖
while/lstm_cell_7/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Ю
)while/lstm_cell_7/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_7_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0Ю
while/lstm_cell_7/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Ъ
while/lstm_cell_7/addAddV2"while/lstm_cell_7/MatMul:product:0$while/lstm_cell_7/MatMul_1:product:0*
T0*'
_output_shapes
:          Ш
(while/lstm_cell_7/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_7_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0г
while/lstm_cell_7/BiasAddBiasAddwhile/lstm_cell_7/add:z:00while/lstm_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          c
!while/lstm_cell_7/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ь
while/lstm_cell_7/splitSplit*while/lstm_cell_7/split/split_dim:output:0"while/lstm_cell_7/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitx
while/lstm_cell_7/SigmoidSigmoid while/lstm_cell_7/split:output:0*
T0*'
_output_shapes
:         z
while/lstm_cell_7/Sigmoid_1Sigmoid while/lstm_cell_7/split:output:1*
T0*'
_output_shapes
:         Д
while/lstm_cell_7/mulMulwhile/lstm_cell_7/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         r
while/lstm_cell_7/ReluRelu while/lstm_cell_7/split:output:2*
T0*'
_output_shapes
:         Х
while/lstm_cell_7/mul_1Mulwhile/lstm_cell_7/Sigmoid:y:0$while/lstm_cell_7/Relu:activations:0*
T0*'
_output_shapes
:         К
while/lstm_cell_7/add_1AddV2while/lstm_cell_7/mul:z:0while/lstm_cell_7/mul_1:z:0*
T0*'
_output_shapes
:         z
while/lstm_cell_7/Sigmoid_2Sigmoid while/lstm_cell_7/split:output:3*
T0*'
_output_shapes
:         o
while/lstm_cell_7/Relu_1Reluwhile/lstm_cell_7/add_1:z:0*
T0*'
_output_shapes
:         Щ
while/lstm_cell_7/mul_2Mulwhile/lstm_cell_7/Sigmoid_2:y:0&while/lstm_cell_7/Relu_1:activations:0*
T0*'
_output_shapes
:         ─
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_7/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/lstm_cell_7/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         x
while/Identity_5Identitywhile/lstm_cell_7/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         ═

while/NoOpNoOp)^while/lstm_cell_7/BiasAdd/ReadVariableOp(^while/lstm_cell_7/MatMul/ReadVariableOp*^while/lstm_cell_7/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_7_biasadd_readvariableop_resource3while_lstm_cell_7_biasadd_readvariableop_resource_0"j
2while_lstm_cell_7_matmul_1_readvariableop_resource4while_lstm_cell_7_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_7_matmul_readvariableop_resource2while_lstm_cell_7_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2T
(while/lstm_cell_7/BiasAdd/ReadVariableOp(while/lstm_cell_7/BiasAdd/ReadVariableOp2R
'while/lstm_cell_7/MatMul/ReadVariableOp'while/lstm_cell_7/MatMul/ReadVariableOp2V
)while/lstm_cell_7/MatMul_1/ReadVariableOp)while/lstm_cell_7/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
: 
Т	
╛
while_cond_86151
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_86151___redundant_placeholder03
/while_while_cond_86151___redundant_placeholder13
/while_while_cond_86151___redundant_placeholder23
/while_while_cond_86151___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
:
ЯK
Т
A__inference_lstm_8_layer_call_and_return_conditional_losses_86738
inputs_0<
*lstm_cell_8_matmul_readvariableop_resource: >
,lstm_cell_8_matmul_1_readvariableop_resource: 9
+lstm_cell_8_biasadd_readvariableop_resource: 
identityИв"lstm_cell_8/BiasAdd/ReadVariableOpв!lstm_cell_8/MatMul/ReadVariableOpв#lstm_cell_8/MatMul_1/ReadVariableOpвwhileK
ShapeShapeinputs_0*
T0*
_output_shapes
::э╧]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :                  R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::э╧_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskМ
!lstm_cell_8/MatMul/ReadVariableOpReadVariableOp*lstm_cell_8_matmul_readvariableop_resource*
_output_shapes

: *
dtype0У
lstm_cell_8/MatMulMatMulstrided_slice_2:output:0)lstm_cell_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Р
#lstm_cell_8/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_8_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0Н
lstm_cell_8/MatMul_1MatMulzeros:output:0+lstm_cell_8/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          И
lstm_cell_8/addAddV2lstm_cell_8/MatMul:product:0lstm_cell_8/MatMul_1:product:0*
T0*'
_output_shapes
:          К
"lstm_cell_8/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_8_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0С
lstm_cell_8/BiasAddBiasAddlstm_cell_8/add:z:0*lstm_cell_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ]
lstm_cell_8/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :┌
lstm_cell_8/splitSplit$lstm_cell_8/split/split_dim:output:0lstm_cell_8/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitl
lstm_cell_8/SigmoidSigmoidlstm_cell_8/split:output:0*
T0*'
_output_shapes
:         n
lstm_cell_8/Sigmoid_1Sigmoidlstm_cell_8/split:output:1*
T0*'
_output_shapes
:         u
lstm_cell_8/mulMullstm_cell_8/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         f
lstm_cell_8/ReluRelulstm_cell_8/split:output:2*
T0*'
_output_shapes
:         Г
lstm_cell_8/mul_1Mullstm_cell_8/Sigmoid:y:0lstm_cell_8/Relu:activations:0*
T0*'
_output_shapes
:         x
lstm_cell_8/add_1AddV2lstm_cell_8/mul:z:0lstm_cell_8/mul_1:z:0*
T0*'
_output_shapes
:         n
lstm_cell_8/Sigmoid_2Sigmoidlstm_cell_8/split:output:3*
T0*'
_output_shapes
:         c
lstm_cell_8/Relu_1Relulstm_cell_8/add_1:z:0*
T0*'
_output_shapes
:         З
lstm_cell_8/mul_2Mullstm_cell_8/Sigmoid_2:y:0 lstm_cell_8/Relu_1:activations:0*
T0*'
_output_shapes
:         n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ¤
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_8_matmul_readvariableop_resource,lstm_cell_8_matmul_1_readvariableop_resource+lstm_cell_8_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_86653*
condR
while_cond_86652*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╓
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         *
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:         ╜
NoOpNoOp#^lstm_cell_8/BiasAdd/ReadVariableOp"^lstm_cell_8/MatMul/ReadVariableOp$^lstm_cell_8/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2H
"lstm_cell_8/BiasAdd/ReadVariableOp"lstm_cell_8/BiasAdd/ReadVariableOp2F
!lstm_cell_8/MatMul/ReadVariableOp!lstm_cell_8/MatMul/ReadVariableOp2J
#lstm_cell_8/MatMul_1/ReadVariableOp#lstm_cell_8/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs_0
∙8
∙
A__inference_lstm_8_layer_call_and_return_conditional_losses_82684

inputs#
lstm_cell_8_82600: #
lstm_cell_8_82602: 
lstm_cell_8_82604: 
identityИв#lstm_cell_8/StatefulPartitionedCallвwhileI
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::э╧_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskь
#lstm_cell_8/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_8_82600lstm_cell_8_82602lstm_cell_8_82604*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         :         :         *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_lstm_cell_8_layer_call_and_return_conditional_losses_82599n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : п
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_8_82600lstm_cell_8_82602lstm_cell_8_82604*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_82614*
condR
while_cond_82613*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╓
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         *
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:         t
NoOpNoOp$^lstm_cell_8/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2J
#lstm_cell_8/StatefulPartitionedCall#lstm_cell_8/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs
ф

╩
lstm_8_while_cond_84708*
&lstm_8_while_lstm_8_while_loop_counter0
,lstm_8_while_lstm_8_while_maximum_iterations
lstm_8_while_placeholder
lstm_8_while_placeholder_1
lstm_8_while_placeholder_2
lstm_8_while_placeholder_3,
(lstm_8_while_less_lstm_8_strided_slice_1A
=lstm_8_while_lstm_8_while_cond_84708___redundant_placeholder0A
=lstm_8_while_lstm_8_while_cond_84708___redundant_placeholder1A
=lstm_8_while_lstm_8_while_cond_84708___redundant_placeholder2A
=lstm_8_while_lstm_8_while_cond_84708___redundant_placeholder3
lstm_8_while_identity
~
lstm_8/while/LessLesslstm_8_while_placeholder(lstm_8_while_less_lstm_8_strided_slice_1*
T0*
_output_shapes
: Y
lstm_8/while/IdentityIdentitylstm_8/while/Less:z:0*
T0
*
_output_shapes
: "7
lstm_8_while_identitylstm_8/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : :::::Q M

_output_shapes
: 
3
_user_specified_namelstm_8/while/loop_counter:WS

_output_shapes
: 
9
_user_specified_name!lstm_8/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
:
О8
∙
A__inference_lstm_6_layer_call_and_return_conditional_losses_82127

inputs#
lstm_cell_6_82045: #
lstm_cell_6_82047: 
lstm_cell_6_82049: 
identityИв#lstm_cell_6/StatefulPartitionedCallвwhileI
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::э╧_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskь
#lstm_cell_6/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_6_82045lstm_cell_6_82047lstm_cell_6_82049*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         :         :         *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_lstm_cell_6_layer_call_and_return_conditional_losses_82044n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : п
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_6_82045lstm_cell_6_82047lstm_cell_6_82049*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_82058*
condR
while_cond_82057*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Я
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  t
NoOpNoOp$^lstm_cell_6/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2J
#lstm_cell_6/StatefulPartitionedCall#lstm_cell_6/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs
ф

╩
lstm_8_while_cond_85162*
&lstm_8_while_lstm_8_while_loop_counter0
,lstm_8_while_lstm_8_while_maximum_iterations
lstm_8_while_placeholder
lstm_8_while_placeholder_1
lstm_8_while_placeholder_2
lstm_8_while_placeholder_3,
(lstm_8_while_less_lstm_8_strided_slice_1A
=lstm_8_while_lstm_8_while_cond_85162___redundant_placeholder0A
=lstm_8_while_lstm_8_while_cond_85162___redundant_placeholder1A
=lstm_8_while_lstm_8_while_cond_85162___redundant_placeholder2A
=lstm_8_while_lstm_8_while_cond_85162___redundant_placeholder3
lstm_8_while_identity
~
lstm_8/while/LessLesslstm_8_while_placeholder(lstm_8_while_less_lstm_8_strided_slice_1*
T0*
_output_shapes
: Y
lstm_8/while/IdentityIdentitylstm_8/while/Less:z:0*
T0
*
_output_shapes
: "7
lstm_8_while_identitylstm_8/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : :::::Q M

_output_shapes
: 
3
_user_specified_namelstm_8/while/loop_counter:WS

_output_shapes
: 
9
_user_specified_name!lstm_8/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
:
╔
 
F__inference_lstm_cell_6_layer_call_and_return_conditional_losses_81899

inputs

states
states_10
matmul_readvariableop_resource: 2
 matmul_1_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity

identity_1

identity_2ИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpвMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:          r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╢
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         N
ReluRelusplit:output:2*
T0*'
_output_shapes
:         _
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         С
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         :         : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_namestates:OK
'
_output_shapes
:         
 
_user_specified_namestates
╕9
└
while_body_86943
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
2while_lstm_cell_8_matmul_readvariableop_resource_0: F
4while_lstm_cell_8_matmul_1_readvariableop_resource_0: A
3while_lstm_cell_8_biasadd_readvariableop_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
0while_lstm_cell_8_matmul_readvariableop_resource: D
2while_lstm_cell_8_matmul_1_readvariableop_resource: ?
1while_lstm_cell_8_biasadd_readvariableop_resource: Ив(while/lstm_cell_8/BiasAdd/ReadVariableOpв'while/lstm_cell_8/MatMul/ReadVariableOpв)while/lstm_cell_8/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ъ
'while/lstm_cell_8/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_8_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0╖
while/lstm_cell_8/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Ю
)while/lstm_cell_8/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_8_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0Ю
while/lstm_cell_8/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_8/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Ъ
while/lstm_cell_8/addAddV2"while/lstm_cell_8/MatMul:product:0$while/lstm_cell_8/MatMul_1:product:0*
T0*'
_output_shapes
:          Ш
(while/lstm_cell_8/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_8_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0г
while/lstm_cell_8/BiasAddBiasAddwhile/lstm_cell_8/add:z:00while/lstm_cell_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          c
!while/lstm_cell_8/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ь
while/lstm_cell_8/splitSplit*while/lstm_cell_8/split/split_dim:output:0"while/lstm_cell_8/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitx
while/lstm_cell_8/SigmoidSigmoid while/lstm_cell_8/split:output:0*
T0*'
_output_shapes
:         z
while/lstm_cell_8/Sigmoid_1Sigmoid while/lstm_cell_8/split:output:1*
T0*'
_output_shapes
:         Д
while/lstm_cell_8/mulMulwhile/lstm_cell_8/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         r
while/lstm_cell_8/ReluRelu while/lstm_cell_8/split:output:2*
T0*'
_output_shapes
:         Х
while/lstm_cell_8/mul_1Mulwhile/lstm_cell_8/Sigmoid:y:0$while/lstm_cell_8/Relu:activations:0*
T0*'
_output_shapes
:         К
while/lstm_cell_8/add_1AddV2while/lstm_cell_8/mul:z:0while/lstm_cell_8/mul_1:z:0*
T0*'
_output_shapes
:         z
while/lstm_cell_8/Sigmoid_2Sigmoid while/lstm_cell_8/split:output:3*
T0*'
_output_shapes
:         o
while/lstm_cell_8/Relu_1Reluwhile/lstm_cell_8/add_1:z:0*
T0*'
_output_shapes
:         Щ
while/lstm_cell_8/mul_2Mulwhile/lstm_cell_8/Sigmoid_2:y:0&while/lstm_cell_8/Relu_1:activations:0*
T0*'
_output_shapes
:         r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ь
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_8/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/lstm_cell_8/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         x
while/Identity_5Identitywhile/lstm_cell_8/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         ═

while/NoOpNoOp)^while/lstm_cell_8/BiasAdd/ReadVariableOp(^while/lstm_cell_8/MatMul/ReadVariableOp*^while/lstm_cell_8/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_8_biasadd_readvariableop_resource3while_lstm_cell_8_biasadd_readvariableop_resource_0"j
2while_lstm_cell_8_matmul_1_readvariableop_resource4while_lstm_cell_8_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_8_matmul_readvariableop_resource2while_lstm_cell_8_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2T
(while/lstm_cell_8/BiasAdd/ReadVariableOp(while/lstm_cell_8/BiasAdd/ReadVariableOp2R
'while/lstm_cell_8/MatMul/ReadVariableOp'while/lstm_cell_8/MatMul/ReadVariableOp2V
)while/lstm_cell_8/MatMul_1/ReadVariableOp)while/lstm_cell_8/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
: 
в
▓
&__inference_lstm_6_layer_call_fn_85274
inputs_0
unknown: 
	unknown_0: 
	unknown_1: 
identityИвStatefulPartitionedCallЄ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_lstm_6_layer_call_and_return_conditional_losses_81982|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :                  `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs_0
╤
Б
F__inference_lstm_cell_6_layer_call_and_return_conditional_losses_87332

inputs
states_0
states_10
matmul_readvariableop_resource: 2
 matmul_1_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity

identity_1

identity_2ИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpвMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:          r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╢
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         N
ReluRelusplit:output:2*
T0*'
_output_shapes
:         _
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         С
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         :         : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:QM
'
_output_shapes
:         
"
_user_specified_name
states_0:QM
'
_output_shapes
:         
"
_user_specified_name
states_1
Л-
п
G__inference_sequential_2_layer_call_and_return_conditional_losses_83967

inputs
lstm_6_83931: 
lstm_6_83933: 
lstm_6_83935: 
lstm_7_83939: 
lstm_7_83941: 
lstm_7_83943: 
lstm_8_83947: 
lstm_8_83949: 
lstm_8_83951: 
dense_4_83955:
dense_4_83957:
dense_5_83961:
dense_5_83963:
identityИвdense_4/StatefulPartitionedCallвdense_5/StatefulPartitionedCallв"dropout_10/StatefulPartitionedCallв"dropout_11/StatefulPartitionedCallв!dropout_8/StatefulPartitionedCallв!dropout_9/StatefulPartitionedCallвlstm_6/StatefulPartitionedCallвlstm_7/StatefulPartitionedCallвlstm_8/StatefulPartitionedCall∙
lstm_6/StatefulPartitionedCallStatefulPartitionedCallinputslstm_6_83931lstm_6_83933lstm_6_83935*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_lstm_6_layer_call_and_return_conditional_losses_83035ю
!dropout_8/StatefulPartitionedCallStatefulPartitionedCall'lstm_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_8_layer_call_and_return_conditional_losses_83055Э
lstm_7/StatefulPartitionedCallStatefulPartitionedCall*dropout_8/StatefulPartitionedCall:output:0lstm_7_83939lstm_7_83941lstm_7_83943*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_lstm_7_layer_call_and_return_conditional_losses_83199Т
!dropout_9/StatefulPartitionedCallStatefulPartitionedCall'lstm_7/StatefulPartitionedCall:output:0"^dropout_8/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_9_layer_call_and_return_conditional_losses_83219Щ
lstm_8/StatefulPartitionedCallStatefulPartitionedCall*dropout_9/StatefulPartitionedCall:output:0lstm_8_83947lstm_8_83949lstm_8_83951*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_lstm_8_layer_call_and_return_conditional_losses_83365Р
"dropout_10/StatefulPartitionedCallStatefulPartitionedCall'lstm_8/StatefulPartitionedCall:output:0"^dropout_9/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dropout_10_layer_call_and_return_conditional_losses_83385О
dense_4/StatefulPartitionedCallStatefulPartitionedCall+dropout_10/StatefulPartitionedCall:output:0dense_4_83955dense_4_83957*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_83398Т
"dropout_11/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0#^dropout_10/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dropout_11_layer_call_and_return_conditional_losses_83416О
dense_5/StatefulPartitionedCallStatefulPartitionedCall+dropout_11/StatefulPartitionedCall:output:0dense_5_83961dense_5_83963*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_5_layer_call_and_return_conditional_losses_83428w
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:          
NoOpNoOp ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall#^dropout_10/StatefulPartitionedCall#^dropout_11/StatefulPartitionedCall"^dropout_8/StatefulPartitionedCall"^dropout_9/StatefulPartitionedCall^lstm_6/StatefulPartitionedCall^lstm_7/StatefulPartitionedCall^lstm_8/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:         : : : : : : : : : : : : : 2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2H
"dropout_10/StatefulPartitionedCall"dropout_10/StatefulPartitionedCall2H
"dropout_11/StatefulPartitionedCall"dropout_11/StatefulPartitionedCall2F
!dropout_8/StatefulPartitionedCall!dropout_8/StatefulPartitionedCall2F
!dropout_9/StatefulPartitionedCall!dropout_9/StatefulPartitionedCall2@
lstm_6/StatefulPartitionedCalllstm_6/StatefulPartitionedCall2@
lstm_7/StatefulPartitionedCalllstm_7/StatefulPartitionedCall2@
lstm_8/StatefulPartitionedCalllstm_8/StatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
°
░
&__inference_lstm_7_layer_call_fn_85939

inputs
unknown: 
	unknown_0: 
	unknown_1: 
identityИвStatefulPartitionedCallч
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_lstm_7_layer_call_and_return_conditional_losses_83199s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
°
░
&__inference_lstm_7_layer_call_fn_85950

inputs
unknown: 
	unknown_0: 
	unknown_1: 
identityИвStatefulPartitionedCallч
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_lstm_7_layer_call_and_return_conditional_losses_83736s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
К
╟
#__inference_signature_wrapper_84293
lstm_6_input
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: 
	unknown_5: 
	unknown_6: 
	unknown_7: 
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:
identityИвStatefulPartitionedCall╠
StatefulPartitionedCallStatefulPartitionedCalllstm_6_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         */
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *)
f$R"
 __inference__wrapped_model_81835o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:         : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
+
_output_shapes
:         
&
_user_specified_namelstm_6_input
ЎI
Р
A__inference_lstm_7_layer_call_and_return_conditional_losses_83199

inputs<
*lstm_cell_7_matmul_readvariableop_resource: >
,lstm_cell_7_matmul_1_readvariableop_resource: 9
+lstm_cell_7_biasadd_readvariableop_resource: 
identityИв"lstm_cell_7/BiasAdd/ReadVariableOpв!lstm_cell_7/MatMul/ReadVariableOpв#lstm_cell_7/MatMul_1/ReadVariableOpвwhileI
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::э╧_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskМ
!lstm_cell_7/MatMul/ReadVariableOpReadVariableOp*lstm_cell_7_matmul_readvariableop_resource*
_output_shapes

: *
dtype0У
lstm_cell_7/MatMulMatMulstrided_slice_2:output:0)lstm_cell_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Р
#lstm_cell_7/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_7_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0Н
lstm_cell_7/MatMul_1MatMulzeros:output:0+lstm_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          И
lstm_cell_7/addAddV2lstm_cell_7/MatMul:product:0lstm_cell_7/MatMul_1:product:0*
T0*'
_output_shapes
:          К
"lstm_cell_7/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_7_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0С
lstm_cell_7/BiasAddBiasAddlstm_cell_7/add:z:0*lstm_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ]
lstm_cell_7/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :┌
lstm_cell_7/splitSplit$lstm_cell_7/split/split_dim:output:0lstm_cell_7/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitl
lstm_cell_7/SigmoidSigmoidlstm_cell_7/split:output:0*
T0*'
_output_shapes
:         n
lstm_cell_7/Sigmoid_1Sigmoidlstm_cell_7/split:output:1*
T0*'
_output_shapes
:         u
lstm_cell_7/mulMullstm_cell_7/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         f
lstm_cell_7/ReluRelulstm_cell_7/split:output:2*
T0*'
_output_shapes
:         Г
lstm_cell_7/mul_1Mullstm_cell_7/Sigmoid:y:0lstm_cell_7/Relu:activations:0*
T0*'
_output_shapes
:         x
lstm_cell_7/add_1AddV2lstm_cell_7/mul:z:0lstm_cell_7/mul_1:z:0*
T0*'
_output_shapes
:         n
lstm_cell_7/Sigmoid_2Sigmoidlstm_cell_7/split:output:3*
T0*'
_output_shapes
:         c
lstm_cell_7/Relu_1Relulstm_cell_7/add_1:z:0*
T0*'
_output_shapes
:         З
lstm_cell_7/mul_2Mullstm_cell_7/Sigmoid_2:y:0 lstm_cell_7/Relu_1:activations:0*
T0*'
_output_shapes
:         n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ¤
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_7_matmul_readvariableop_resource,lstm_cell_7_matmul_1_readvariableop_resource+lstm_cell_7_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_83115*
condR
while_cond_83114*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:         ╜
NoOpNoOp#^lstm_cell_7/BiasAdd/ReadVariableOp"^lstm_cell_7/MatMul/ReadVariableOp$^lstm_cell_7/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 2H
"lstm_cell_7/BiasAdd/ReadVariableOp"lstm_cell_7/BiasAdd/ReadVariableOp2F
!lstm_cell_7/MatMul/ReadVariableOp!lstm_cell_7/MatMul/ReadVariableOp2J
#lstm_cell_7/MatMul_1/ReadVariableOp#lstm_cell_7/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
╔
 
F__inference_lstm_cell_7_layer_call_and_return_conditional_losses_82394

inputs

states
states_10
matmul_readvariableop_resource: 2
 matmul_1_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity

identity_1

identity_2ИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpвMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:          r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╢
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         N
ReluRelusplit:output:2*
T0*'
_output_shapes
:         _
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         С
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         :         : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_namestates:OK
'
_output_shapes
:         
 
_user_specified_namestates
ф
ё
+__inference_lstm_cell_8_layer_call_fn_87496

inputs
states_0
states_1
unknown: 
	unknown_0: 
	unknown_1: 
identity

identity_1

identity_2ИвStatefulPartitionedCallж
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         :         :         *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_lstm_cell_8_layer_call_and_return_conditional_losses_82746o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:         q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         :         : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:QM
'
_output_shapes
:         
"
_user_specified_name
states_0:QM
'
_output_shapes
:         
"
_user_specified_name
states_1
Ь8
└
while_body_83652
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
2while_lstm_cell_7_matmul_readvariableop_resource_0: F
4while_lstm_cell_7_matmul_1_readvariableop_resource_0: A
3while_lstm_cell_7_biasadd_readvariableop_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
0while_lstm_cell_7_matmul_readvariableop_resource: D
2while_lstm_cell_7_matmul_1_readvariableop_resource: ?
1while_lstm_cell_7_biasadd_readvariableop_resource: Ив(while/lstm_cell_7/BiasAdd/ReadVariableOpв'while/lstm_cell_7/MatMul/ReadVariableOpв)while/lstm_cell_7/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ъ
'while/lstm_cell_7/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_7_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0╖
while/lstm_cell_7/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Ю
)while/lstm_cell_7/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_7_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0Ю
while/lstm_cell_7/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Ъ
while/lstm_cell_7/addAddV2"while/lstm_cell_7/MatMul:product:0$while/lstm_cell_7/MatMul_1:product:0*
T0*'
_output_shapes
:          Ш
(while/lstm_cell_7/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_7_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0г
while/lstm_cell_7/BiasAddBiasAddwhile/lstm_cell_7/add:z:00while/lstm_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          c
!while/lstm_cell_7/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ь
while/lstm_cell_7/splitSplit*while/lstm_cell_7/split/split_dim:output:0"while/lstm_cell_7/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitx
while/lstm_cell_7/SigmoidSigmoid while/lstm_cell_7/split:output:0*
T0*'
_output_shapes
:         z
while/lstm_cell_7/Sigmoid_1Sigmoid while/lstm_cell_7/split:output:1*
T0*'
_output_shapes
:         Д
while/lstm_cell_7/mulMulwhile/lstm_cell_7/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         r
while/lstm_cell_7/ReluRelu while/lstm_cell_7/split:output:2*
T0*'
_output_shapes
:         Х
while/lstm_cell_7/mul_1Mulwhile/lstm_cell_7/Sigmoid:y:0$while/lstm_cell_7/Relu:activations:0*
T0*'
_output_shapes
:         К
while/lstm_cell_7/add_1AddV2while/lstm_cell_7/mul:z:0while/lstm_cell_7/mul_1:z:0*
T0*'
_output_shapes
:         z
while/lstm_cell_7/Sigmoid_2Sigmoid while/lstm_cell_7/split:output:3*
T0*'
_output_shapes
:         o
while/lstm_cell_7/Relu_1Reluwhile/lstm_cell_7/add_1:z:0*
T0*'
_output_shapes
:         Щ
while/lstm_cell_7/mul_2Mulwhile/lstm_cell_7/Sigmoid_2:y:0&while/lstm_cell_7/Relu_1:activations:0*
T0*'
_output_shapes
:         ─
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_7/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/lstm_cell_7/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         x
while/Identity_5Identitywhile/lstm_cell_7/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         ═

while/NoOpNoOp)^while/lstm_cell_7/BiasAdd/ReadVariableOp(^while/lstm_cell_7/MatMul/ReadVariableOp*^while/lstm_cell_7/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_7_biasadd_readvariableop_resource3while_lstm_cell_7_biasadd_readvariableop_resource_0"j
2while_lstm_cell_7_matmul_1_readvariableop_resource4while_lstm_cell_7_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_7_matmul_readvariableop_resource2while_lstm_cell_7_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2T
(while/lstm_cell_7/BiasAdd/ReadVariableOp(while/lstm_cell_7/BiasAdd/ReadVariableOp2R
'while/lstm_cell_7/MatMul/ReadVariableOp'while/lstm_cell_7/MatMul/ReadVariableOp2V
)while/lstm_cell_7/MatMul_1/ReadVariableOp)while/lstm_cell_7/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
: 
Ь8
└
while_body_86295
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
2while_lstm_cell_7_matmul_readvariableop_resource_0: F
4while_lstm_cell_7_matmul_1_readvariableop_resource_0: A
3while_lstm_cell_7_biasadd_readvariableop_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
0while_lstm_cell_7_matmul_readvariableop_resource: D
2while_lstm_cell_7_matmul_1_readvariableop_resource: ?
1while_lstm_cell_7_biasadd_readvariableop_resource: Ив(while/lstm_cell_7/BiasAdd/ReadVariableOpв'while/lstm_cell_7/MatMul/ReadVariableOpв)while/lstm_cell_7/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ъ
'while/lstm_cell_7/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_7_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0╖
while/lstm_cell_7/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Ю
)while/lstm_cell_7/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_7_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0Ю
while/lstm_cell_7/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Ъ
while/lstm_cell_7/addAddV2"while/lstm_cell_7/MatMul:product:0$while/lstm_cell_7/MatMul_1:product:0*
T0*'
_output_shapes
:          Ш
(while/lstm_cell_7/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_7_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0г
while/lstm_cell_7/BiasAddBiasAddwhile/lstm_cell_7/add:z:00while/lstm_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          c
!while/lstm_cell_7/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ь
while/lstm_cell_7/splitSplit*while/lstm_cell_7/split/split_dim:output:0"while/lstm_cell_7/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitx
while/lstm_cell_7/SigmoidSigmoid while/lstm_cell_7/split:output:0*
T0*'
_output_shapes
:         z
while/lstm_cell_7/Sigmoid_1Sigmoid while/lstm_cell_7/split:output:1*
T0*'
_output_shapes
:         Д
while/lstm_cell_7/mulMulwhile/lstm_cell_7/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         r
while/lstm_cell_7/ReluRelu while/lstm_cell_7/split:output:2*
T0*'
_output_shapes
:         Х
while/lstm_cell_7/mul_1Mulwhile/lstm_cell_7/Sigmoid:y:0$while/lstm_cell_7/Relu:activations:0*
T0*'
_output_shapes
:         К
while/lstm_cell_7/add_1AddV2while/lstm_cell_7/mul:z:0while/lstm_cell_7/mul_1:z:0*
T0*'
_output_shapes
:         z
while/lstm_cell_7/Sigmoid_2Sigmoid while/lstm_cell_7/split:output:3*
T0*'
_output_shapes
:         o
while/lstm_cell_7/Relu_1Reluwhile/lstm_cell_7/add_1:z:0*
T0*'
_output_shapes
:         Щ
while/lstm_cell_7/mul_2Mulwhile/lstm_cell_7/Sigmoid_2:y:0&while/lstm_cell_7/Relu_1:activations:0*
T0*'
_output_shapes
:         ─
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_7/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/lstm_cell_7/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         x
while/Identity_5Identitywhile/lstm_cell_7/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         ═

while/NoOpNoOp)^while/lstm_cell_7/BiasAdd/ReadVariableOp(^while/lstm_cell_7/MatMul/ReadVariableOp*^while/lstm_cell_7/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_7_biasadd_readvariableop_resource3while_lstm_cell_7_biasadd_readvariableop_resource_0"j
2while_lstm_cell_7_matmul_1_readvariableop_resource4while_lstm_cell_7_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_7_matmul_readvariableop_resource2while_lstm_cell_7_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2T
(while/lstm_cell_7/BiasAdd/ReadVariableOp(while/lstm_cell_7/BiasAdd/ReadVariableOp2R
'while/lstm_cell_7/MatMul/ReadVariableOp'while/lstm_cell_7/MatMul/ReadVariableOp2V
)while/lstm_cell_7/MatMul_1/ReadVariableOp)while/lstm_cell_7/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
: 
№J
Р
A__inference_lstm_8_layer_call_and_return_conditional_losses_87173

inputs<
*lstm_cell_8_matmul_readvariableop_resource: >
,lstm_cell_8_matmul_1_readvariableop_resource: 9
+lstm_cell_8_biasadd_readvariableop_resource: 
identityИв"lstm_cell_8/BiasAdd/ReadVariableOpв!lstm_cell_8/MatMul/ReadVariableOpв#lstm_cell_8/MatMul_1/ReadVariableOpвwhileI
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::э╧_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskМ
!lstm_cell_8/MatMul/ReadVariableOpReadVariableOp*lstm_cell_8_matmul_readvariableop_resource*
_output_shapes

: *
dtype0У
lstm_cell_8/MatMulMatMulstrided_slice_2:output:0)lstm_cell_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Р
#lstm_cell_8/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_8_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0Н
lstm_cell_8/MatMul_1MatMulzeros:output:0+lstm_cell_8/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          И
lstm_cell_8/addAddV2lstm_cell_8/MatMul:product:0lstm_cell_8/MatMul_1:product:0*
T0*'
_output_shapes
:          К
"lstm_cell_8/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_8_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0С
lstm_cell_8/BiasAddBiasAddlstm_cell_8/add:z:0*lstm_cell_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ]
lstm_cell_8/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :┌
lstm_cell_8/splitSplit$lstm_cell_8/split/split_dim:output:0lstm_cell_8/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitl
lstm_cell_8/SigmoidSigmoidlstm_cell_8/split:output:0*
T0*'
_output_shapes
:         n
lstm_cell_8/Sigmoid_1Sigmoidlstm_cell_8/split:output:1*
T0*'
_output_shapes
:         u
lstm_cell_8/mulMullstm_cell_8/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         f
lstm_cell_8/ReluRelulstm_cell_8/split:output:2*
T0*'
_output_shapes
:         Г
lstm_cell_8/mul_1Mullstm_cell_8/Sigmoid:y:0lstm_cell_8/Relu:activations:0*
T0*'
_output_shapes
:         x
lstm_cell_8/add_1AddV2lstm_cell_8/mul:z:0lstm_cell_8/mul_1:z:0*
T0*'
_output_shapes
:         n
lstm_cell_8/Sigmoid_2Sigmoidlstm_cell_8/split:output:3*
T0*'
_output_shapes
:         c
lstm_cell_8/Relu_1Relulstm_cell_8/add_1:z:0*
T0*'
_output_shapes
:         З
lstm_cell_8/mul_2Mullstm_cell_8/Sigmoid_2:y:0 lstm_cell_8/Relu_1:activations:0*
T0*'
_output_shapes
:         n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ¤
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_8_matmul_readvariableop_resource,lstm_cell_8_matmul_1_readvariableop_resource+lstm_cell_8_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_87088*
condR
while_cond_87087*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╓
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         *
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:         ╜
NoOpNoOp#^lstm_cell_8/BiasAdd/ReadVariableOp"^lstm_cell_8/MatMul/ReadVariableOp$^lstm_cell_8/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 2H
"lstm_cell_8/BiasAdd/ReadVariableOp"lstm_cell_8/BiasAdd/ReadVariableOp2F
!lstm_cell_8/MatMul/ReadVariableOp!lstm_cell_8/MatMul/ReadVariableOp2J
#lstm_cell_8/MatMul_1/ReadVariableOp#lstm_cell_8/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
╠@
а

lstm_7_while_body_85022*
&lstm_7_while_lstm_7_while_loop_counter0
,lstm_7_while_lstm_7_while_maximum_iterations
lstm_7_while_placeholder
lstm_7_while_placeholder_1
lstm_7_while_placeholder_2
lstm_7_while_placeholder_3)
%lstm_7_while_lstm_7_strided_slice_1_0e
alstm_7_while_tensorarrayv2read_tensorlistgetitem_lstm_7_tensorarrayunstack_tensorlistfromtensor_0K
9lstm_7_while_lstm_cell_7_matmul_readvariableop_resource_0: M
;lstm_7_while_lstm_cell_7_matmul_1_readvariableop_resource_0: H
:lstm_7_while_lstm_cell_7_biasadd_readvariableop_resource_0: 
lstm_7_while_identity
lstm_7_while_identity_1
lstm_7_while_identity_2
lstm_7_while_identity_3
lstm_7_while_identity_4
lstm_7_while_identity_5'
#lstm_7_while_lstm_7_strided_slice_1c
_lstm_7_while_tensorarrayv2read_tensorlistgetitem_lstm_7_tensorarrayunstack_tensorlistfromtensorI
7lstm_7_while_lstm_cell_7_matmul_readvariableop_resource: K
9lstm_7_while_lstm_cell_7_matmul_1_readvariableop_resource: F
8lstm_7_while_lstm_cell_7_biasadd_readvariableop_resource: Ив/lstm_7/while/lstm_cell_7/BiasAdd/ReadVariableOpв.lstm_7/while/lstm_cell_7/MatMul/ReadVariableOpв0lstm_7/while/lstm_cell_7/MatMul_1/ReadVariableOpП
>lstm_7/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╔
0lstm_7/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_7_while_tensorarrayv2read_tensorlistgetitem_lstm_7_tensorarrayunstack_tensorlistfromtensor_0lstm_7_while_placeholderGlstm_7/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0и
.lstm_7/while/lstm_cell_7/MatMul/ReadVariableOpReadVariableOp9lstm_7_while_lstm_cell_7_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0╠
lstm_7/while/lstm_cell_7/MatMulMatMul7lstm_7/while/TensorArrayV2Read/TensorListGetItem:item:06lstm_7/while/lstm_cell_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          м
0lstm_7/while/lstm_cell_7/MatMul_1/ReadVariableOpReadVariableOp;lstm_7_while_lstm_cell_7_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0│
!lstm_7/while/lstm_cell_7/MatMul_1MatMullstm_7_while_placeholder_28lstm_7/while/lstm_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          п
lstm_7/while/lstm_cell_7/addAddV2)lstm_7/while/lstm_cell_7/MatMul:product:0+lstm_7/while/lstm_cell_7/MatMul_1:product:0*
T0*'
_output_shapes
:          ж
/lstm_7/while/lstm_cell_7/BiasAdd/ReadVariableOpReadVariableOp:lstm_7_while_lstm_cell_7_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0╕
 lstm_7/while/lstm_cell_7/BiasAddBiasAdd lstm_7/while/lstm_cell_7/add:z:07lstm_7/while/lstm_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          j
(lstm_7/while/lstm_cell_7/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Б
lstm_7/while/lstm_cell_7/splitSplit1lstm_7/while/lstm_cell_7/split/split_dim:output:0)lstm_7/while/lstm_cell_7/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitЖ
 lstm_7/while/lstm_cell_7/SigmoidSigmoid'lstm_7/while/lstm_cell_7/split:output:0*
T0*'
_output_shapes
:         И
"lstm_7/while/lstm_cell_7/Sigmoid_1Sigmoid'lstm_7/while/lstm_cell_7/split:output:1*
T0*'
_output_shapes
:         Щ
lstm_7/while/lstm_cell_7/mulMul&lstm_7/while/lstm_cell_7/Sigmoid_1:y:0lstm_7_while_placeholder_3*
T0*'
_output_shapes
:         А
lstm_7/while/lstm_cell_7/ReluRelu'lstm_7/while/lstm_cell_7/split:output:2*
T0*'
_output_shapes
:         к
lstm_7/while/lstm_cell_7/mul_1Mul$lstm_7/while/lstm_cell_7/Sigmoid:y:0+lstm_7/while/lstm_cell_7/Relu:activations:0*
T0*'
_output_shapes
:         Я
lstm_7/while/lstm_cell_7/add_1AddV2 lstm_7/while/lstm_cell_7/mul:z:0"lstm_7/while/lstm_cell_7/mul_1:z:0*
T0*'
_output_shapes
:         И
"lstm_7/while/lstm_cell_7/Sigmoid_2Sigmoid'lstm_7/while/lstm_cell_7/split:output:3*
T0*'
_output_shapes
:         }
lstm_7/while/lstm_cell_7/Relu_1Relu"lstm_7/while/lstm_cell_7/add_1:z:0*
T0*'
_output_shapes
:         о
lstm_7/while/lstm_cell_7/mul_2Mul&lstm_7/while/lstm_cell_7/Sigmoid_2:y:0-lstm_7/while/lstm_cell_7/Relu_1:activations:0*
T0*'
_output_shapes
:         р
1lstm_7/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_7_while_placeholder_1lstm_7_while_placeholder"lstm_7/while/lstm_cell_7/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥T
lstm_7/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :q
lstm_7/while/addAddV2lstm_7_while_placeholderlstm_7/while/add/y:output:0*
T0*
_output_shapes
: V
lstm_7/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Г
lstm_7/while/add_1AddV2&lstm_7_while_lstm_7_while_loop_counterlstm_7/while/add_1/y:output:0*
T0*
_output_shapes
: n
lstm_7/while/IdentityIdentitylstm_7/while/add_1:z:0^lstm_7/while/NoOp*
T0*
_output_shapes
: Ж
lstm_7/while/Identity_1Identity,lstm_7_while_lstm_7_while_maximum_iterations^lstm_7/while/NoOp*
T0*
_output_shapes
: n
lstm_7/while/Identity_2Identitylstm_7/while/add:z:0^lstm_7/while/NoOp*
T0*
_output_shapes
: Ы
lstm_7/while/Identity_3IdentityAlstm_7/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_7/while/NoOp*
T0*
_output_shapes
: Н
lstm_7/while/Identity_4Identity"lstm_7/while/lstm_cell_7/mul_2:z:0^lstm_7/while/NoOp*
T0*'
_output_shapes
:         Н
lstm_7/while/Identity_5Identity"lstm_7/while/lstm_cell_7/add_1:z:0^lstm_7/while/NoOp*
T0*'
_output_shapes
:         щ
lstm_7/while/NoOpNoOp0^lstm_7/while/lstm_cell_7/BiasAdd/ReadVariableOp/^lstm_7/while/lstm_cell_7/MatMul/ReadVariableOp1^lstm_7/while/lstm_cell_7/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "7
lstm_7_while_identitylstm_7/while/Identity:output:0";
lstm_7_while_identity_1 lstm_7/while/Identity_1:output:0";
lstm_7_while_identity_2 lstm_7/while/Identity_2:output:0";
lstm_7_while_identity_3 lstm_7/while/Identity_3:output:0";
lstm_7_while_identity_4 lstm_7/while/Identity_4:output:0";
lstm_7_while_identity_5 lstm_7/while/Identity_5:output:0"L
#lstm_7_while_lstm_7_strided_slice_1%lstm_7_while_lstm_7_strided_slice_1_0"v
8lstm_7_while_lstm_cell_7_biasadd_readvariableop_resource:lstm_7_while_lstm_cell_7_biasadd_readvariableop_resource_0"x
9lstm_7_while_lstm_cell_7_matmul_1_readvariableop_resource;lstm_7_while_lstm_cell_7_matmul_1_readvariableop_resource_0"t
7lstm_7_while_lstm_cell_7_matmul_readvariableop_resource9lstm_7_while_lstm_cell_7_matmul_readvariableop_resource_0"─
_lstm_7_while_tensorarrayv2read_tensorlistgetitem_lstm_7_tensorarrayunstack_tensorlistfromtensoralstm_7_while_tensorarrayv2read_tensorlistgetitem_lstm_7_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2b
/lstm_7/while/lstm_cell_7/BiasAdd/ReadVariableOp/lstm_7/while/lstm_cell_7/BiasAdd/ReadVariableOp2`
.lstm_7/while/lstm_cell_7/MatMul/ReadVariableOp.lstm_7/while/lstm_cell_7/MatMul/ReadVariableOp2d
0lstm_7/while/lstm_cell_7/MatMul_1/ReadVariableOp0lstm_7/while/lstm_cell_7/MatMul_1/ReadVariableOp:Q M

_output_shapes
: 
3
_user_specified_namelstm_7/while/loop_counter:WS

_output_shapes
: 
9
_user_specified_name!lstm_7/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
: 
ЎI
Р
A__inference_lstm_6_layer_call_and_return_conditional_losses_83035

inputs<
*lstm_cell_6_matmul_readvariableop_resource: >
,lstm_cell_6_matmul_1_readvariableop_resource: 9
+lstm_cell_6_biasadd_readvariableop_resource: 
identityИв"lstm_cell_6/BiasAdd/ReadVariableOpв!lstm_cell_6/MatMul/ReadVariableOpв#lstm_cell_6/MatMul_1/ReadVariableOpвwhileI
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::э╧_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskМ
!lstm_cell_6/MatMul/ReadVariableOpReadVariableOp*lstm_cell_6_matmul_readvariableop_resource*
_output_shapes

: *
dtype0У
lstm_cell_6/MatMulMatMulstrided_slice_2:output:0)lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Р
#lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_6_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0Н
lstm_cell_6/MatMul_1MatMulzeros:output:0+lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          И
lstm_cell_6/addAddV2lstm_cell_6/MatMul:product:0lstm_cell_6/MatMul_1:product:0*
T0*'
_output_shapes
:          К
"lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_6_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0С
lstm_cell_6/BiasAddBiasAddlstm_cell_6/add:z:0*lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ]
lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :┌
lstm_cell_6/splitSplit$lstm_cell_6/split/split_dim:output:0lstm_cell_6/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitl
lstm_cell_6/SigmoidSigmoidlstm_cell_6/split:output:0*
T0*'
_output_shapes
:         n
lstm_cell_6/Sigmoid_1Sigmoidlstm_cell_6/split:output:1*
T0*'
_output_shapes
:         u
lstm_cell_6/mulMullstm_cell_6/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         f
lstm_cell_6/ReluRelulstm_cell_6/split:output:2*
T0*'
_output_shapes
:         Г
lstm_cell_6/mul_1Mullstm_cell_6/Sigmoid:y:0lstm_cell_6/Relu:activations:0*
T0*'
_output_shapes
:         x
lstm_cell_6/add_1AddV2lstm_cell_6/mul:z:0lstm_cell_6/mul_1:z:0*
T0*'
_output_shapes
:         n
lstm_cell_6/Sigmoid_2Sigmoidlstm_cell_6/split:output:3*
T0*'
_output_shapes
:         c
lstm_cell_6/Relu_1Relulstm_cell_6/add_1:z:0*
T0*'
_output_shapes
:         З
lstm_cell_6/mul_2Mullstm_cell_6/Sigmoid_2:y:0 lstm_cell_6/Relu_1:activations:0*
T0*'
_output_shapes
:         n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ¤
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_6_matmul_readvariableop_resource,lstm_cell_6_matmul_1_readvariableop_resource+lstm_cell_6_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_82951*
condR
while_cond_82950*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:         ╜
NoOpNoOp#^lstm_cell_6/BiasAdd/ReadVariableOp"^lstm_cell_6/MatMul/ReadVariableOp$^lstm_cell_6/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 2H
"lstm_cell_6/BiasAdd/ReadVariableOp"lstm_cell_6/BiasAdd/ReadVariableOp2F
!lstm_cell_6/MatMul/ReadVariableOp!lstm_cell_6/MatMul/ReadVariableOp2J
#lstm_cell_6/MatMul_1/ReadVariableOp#lstm_cell_6/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
в
▓
&__inference_lstm_7_layer_call_fn_85917
inputs_0
unknown: 
	unknown_0: 
	unknown_1: 
identityИвStatefulPartitionedCallЄ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_lstm_7_layer_call_and_return_conditional_losses_82332|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :                  `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs_0
Т	
╛
while_cond_83808
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_83808___redundant_placeholder03
/while_while_cond_83808___redundant_placeholder13
/while_while_cond_83808___redundant_placeholder23
/while_while_cond_83808___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
:
и
╩
,__inference_sequential_2_layer_call_fn_84355

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: 
	unknown_5: 
	unknown_6: 
	unknown_7: 
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:
identityИвStatefulPartitionedCallэ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         */
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_sequential_2_layer_call_and_return_conditional_losses_84037o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:         : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
ЎI
Р
A__inference_lstm_6_layer_call_and_return_conditional_losses_83580

inputs<
*lstm_cell_6_matmul_readvariableop_resource: >
,lstm_cell_6_matmul_1_readvariableop_resource: 9
+lstm_cell_6_biasadd_readvariableop_resource: 
identityИв"lstm_cell_6/BiasAdd/ReadVariableOpв!lstm_cell_6/MatMul/ReadVariableOpв#lstm_cell_6/MatMul_1/ReadVariableOpвwhileI
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::э╧_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskМ
!lstm_cell_6/MatMul/ReadVariableOpReadVariableOp*lstm_cell_6_matmul_readvariableop_resource*
_output_shapes

: *
dtype0У
lstm_cell_6/MatMulMatMulstrided_slice_2:output:0)lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Р
#lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_6_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0Н
lstm_cell_6/MatMul_1MatMulzeros:output:0+lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          И
lstm_cell_6/addAddV2lstm_cell_6/MatMul:product:0lstm_cell_6/MatMul_1:product:0*
T0*'
_output_shapes
:          К
"lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_6_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0С
lstm_cell_6/BiasAddBiasAddlstm_cell_6/add:z:0*lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ]
lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :┌
lstm_cell_6/splitSplit$lstm_cell_6/split/split_dim:output:0lstm_cell_6/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitl
lstm_cell_6/SigmoidSigmoidlstm_cell_6/split:output:0*
T0*'
_output_shapes
:         n
lstm_cell_6/Sigmoid_1Sigmoidlstm_cell_6/split:output:1*
T0*'
_output_shapes
:         u
lstm_cell_6/mulMullstm_cell_6/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         f
lstm_cell_6/ReluRelulstm_cell_6/split:output:2*
T0*'
_output_shapes
:         Г
lstm_cell_6/mul_1Mullstm_cell_6/Sigmoid:y:0lstm_cell_6/Relu:activations:0*
T0*'
_output_shapes
:         x
lstm_cell_6/add_1AddV2lstm_cell_6/mul:z:0lstm_cell_6/mul_1:z:0*
T0*'
_output_shapes
:         n
lstm_cell_6/Sigmoid_2Sigmoidlstm_cell_6/split:output:3*
T0*'
_output_shapes
:         c
lstm_cell_6/Relu_1Relulstm_cell_6/add_1:z:0*
T0*'
_output_shapes
:         З
lstm_cell_6/mul_2Mullstm_cell_6/Sigmoid_2:y:0 lstm_cell_6/Relu_1:activations:0*
T0*'
_output_shapes
:         n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ¤
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_6_matmul_readvariableop_resource,lstm_cell_6_matmul_1_readvariableop_resource+lstm_cell_6_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_83496*
condR
while_cond_83495*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:         ╜
NoOpNoOp#^lstm_cell_6/BiasAdd/ReadVariableOp"^lstm_cell_6/MatMul/ReadVariableOp$^lstm_cell_6/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 2H
"lstm_cell_6/BiasAdd/ReadVariableOp"lstm_cell_6/BiasAdd/ReadVariableOp2F
!lstm_cell_6/MatMul/ReadVariableOp!lstm_cell_6/MatMul/ReadVariableOp2J
#lstm_cell_6/MatMul_1/ReadVariableOp#lstm_cell_6/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
╔
 
F__inference_lstm_cell_8_layer_call_and_return_conditional_losses_82599

inputs

states
states_10
matmul_readvariableop_resource: 2
 matmul_1_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity

identity_1

identity_2ИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpвMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:          r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╢
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         N
ReluRelusplit:output:2*
T0*'
_output_shapes
:         _
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         С
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         :         : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_namestates:OK
'
_output_shapes
:         
 
_user_specified_namestates
╛
Ф
'__inference_dense_5_layer_call_fn_87256

inputs
unknown:
	unknown_0:
identityИвStatefulPartitionedCall╫
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_5_layer_call_and_return_conditional_losses_83428o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
┤

c
D__inference_dropout_9_layer_call_and_return_conditional_losses_86544

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?h
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:         Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::э╧Р
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:         *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=к
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:         T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ч
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*+
_output_shapes
:         e
IdentityIdentitydropout/SelectV2:output:0*
T0*+
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         :S O
+
_output_shapes
:         
 
_user_specified_nameinputs
Т	
╛
while_cond_85365
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_85365___redundant_placeholder03
/while_while_cond_85365___redundant_placeholder13
/while_while_cond_85365___redundant_placeholder23
/while_while_cond_85365___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
:
╪
c
E__inference_dropout_11_layer_call_and_return_conditional_losses_87247

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:         [

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:         "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs
 
b
)__inference_dropout_9_layer_call_fn_86527

inputs
identityИвStatefulPartitionedCall├
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_9_layer_call_and_return_conditional_losses_83219s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
╬╣
┼
 __inference__wrapped_model_81835
lstm_6_inputP
>sequential_2_lstm_6_lstm_cell_6_matmul_readvariableop_resource: R
@sequential_2_lstm_6_lstm_cell_6_matmul_1_readvariableop_resource: M
?sequential_2_lstm_6_lstm_cell_6_biasadd_readvariableop_resource: P
>sequential_2_lstm_7_lstm_cell_7_matmul_readvariableop_resource: R
@sequential_2_lstm_7_lstm_cell_7_matmul_1_readvariableop_resource: M
?sequential_2_lstm_7_lstm_cell_7_biasadd_readvariableop_resource: P
>sequential_2_lstm_8_lstm_cell_8_matmul_readvariableop_resource: R
@sequential_2_lstm_8_lstm_cell_8_matmul_1_readvariableop_resource: M
?sequential_2_lstm_8_lstm_cell_8_biasadd_readvariableop_resource: E
3sequential_2_dense_4_matmul_readvariableop_resource:B
4sequential_2_dense_4_biasadd_readvariableop_resource:E
3sequential_2_dense_5_matmul_readvariableop_resource:B
4sequential_2_dense_5_biasadd_readvariableop_resource:
identityИв+sequential_2/dense_4/BiasAdd/ReadVariableOpв*sequential_2/dense_4/MatMul/ReadVariableOpв+sequential_2/dense_5/BiasAdd/ReadVariableOpв*sequential_2/dense_5/MatMul/ReadVariableOpв6sequential_2/lstm_6/lstm_cell_6/BiasAdd/ReadVariableOpв5sequential_2/lstm_6/lstm_cell_6/MatMul/ReadVariableOpв7sequential_2/lstm_6/lstm_cell_6/MatMul_1/ReadVariableOpвsequential_2/lstm_6/whileв6sequential_2/lstm_7/lstm_cell_7/BiasAdd/ReadVariableOpв5sequential_2/lstm_7/lstm_cell_7/MatMul/ReadVariableOpв7sequential_2/lstm_7/lstm_cell_7/MatMul_1/ReadVariableOpвsequential_2/lstm_7/whileв6sequential_2/lstm_8/lstm_cell_8/BiasAdd/ReadVariableOpв5sequential_2/lstm_8/lstm_cell_8/MatMul/ReadVariableOpв7sequential_2/lstm_8/lstm_cell_8/MatMul_1/ReadVariableOpвsequential_2/lstm_8/whilec
sequential_2/lstm_6/ShapeShapelstm_6_input*
T0*
_output_shapes
::э╧q
'sequential_2/lstm_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)sequential_2/lstm_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)sequential_2/lstm_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╡
!sequential_2/lstm_6/strided_sliceStridedSlice"sequential_2/lstm_6/Shape:output:00sequential_2/lstm_6/strided_slice/stack:output:02sequential_2/lstm_6/strided_slice/stack_1:output:02sequential_2/lstm_6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskd
"sequential_2/lstm_6/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :п
 sequential_2/lstm_6/zeros/packedPack*sequential_2/lstm_6/strided_slice:output:0+sequential_2/lstm_6/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:d
sequential_2/lstm_6/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    и
sequential_2/lstm_6/zerosFill)sequential_2/lstm_6/zeros/packed:output:0(sequential_2/lstm_6/zeros/Const:output:0*
T0*'
_output_shapes
:         f
$sequential_2/lstm_6/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :│
"sequential_2/lstm_6/zeros_1/packedPack*sequential_2/lstm_6/strided_slice:output:0-sequential_2/lstm_6/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:f
!sequential_2/lstm_6/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    о
sequential_2/lstm_6/zeros_1Fill+sequential_2/lstm_6/zeros_1/packed:output:0*sequential_2/lstm_6/zeros_1/Const:output:0*
T0*'
_output_shapes
:         w
"sequential_2/lstm_6/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ы
sequential_2/lstm_6/transpose	Transposelstm_6_input+sequential_2/lstm_6/transpose/perm:output:0*
T0*+
_output_shapes
:         z
sequential_2/lstm_6/Shape_1Shape!sequential_2/lstm_6/transpose:y:0*
T0*
_output_shapes
::э╧s
)sequential_2/lstm_6/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_2/lstm_6/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_2/lstm_6/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┐
#sequential_2/lstm_6/strided_slice_1StridedSlice$sequential_2/lstm_6/Shape_1:output:02sequential_2/lstm_6/strided_slice_1/stack:output:04sequential_2/lstm_6/strided_slice_1/stack_1:output:04sequential_2/lstm_6/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskz
/sequential_2/lstm_6/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         Ё
!sequential_2/lstm_6/TensorArrayV2TensorListReserve8sequential_2/lstm_6/TensorArrayV2/element_shape:output:0,sequential_2/lstm_6/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ъ
Isequential_2/lstm_6/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Ь
;sequential_2/lstm_6/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor!sequential_2/lstm_6/transpose:y:0Rsequential_2/lstm_6/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥s
)sequential_2/lstm_6/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_2/lstm_6/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_2/lstm_6/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:═
#sequential_2/lstm_6/strided_slice_2StridedSlice!sequential_2/lstm_6/transpose:y:02sequential_2/lstm_6/strided_slice_2/stack:output:04sequential_2/lstm_6/strided_slice_2/stack_1:output:04sequential_2/lstm_6/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_mask┤
5sequential_2/lstm_6/lstm_cell_6/MatMul/ReadVariableOpReadVariableOp>sequential_2_lstm_6_lstm_cell_6_matmul_readvariableop_resource*
_output_shapes

: *
dtype0╧
&sequential_2/lstm_6/lstm_cell_6/MatMulMatMul,sequential_2/lstm_6/strided_slice_2:output:0=sequential_2/lstm_6/lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ╕
7sequential_2/lstm_6/lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp@sequential_2_lstm_6_lstm_cell_6_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0╔
(sequential_2/lstm_6/lstm_cell_6/MatMul_1MatMul"sequential_2/lstm_6/zeros:output:0?sequential_2/lstm_6/lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ─
#sequential_2/lstm_6/lstm_cell_6/addAddV20sequential_2/lstm_6/lstm_cell_6/MatMul:product:02sequential_2/lstm_6/lstm_cell_6/MatMul_1:product:0*
T0*'
_output_shapes
:          ▓
6sequential_2/lstm_6/lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp?sequential_2_lstm_6_lstm_cell_6_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0═
'sequential_2/lstm_6/lstm_cell_6/BiasAddBiasAdd'sequential_2/lstm_6/lstm_cell_6/add:z:0>sequential_2/lstm_6/lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          q
/sequential_2/lstm_6/lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ц
%sequential_2/lstm_6/lstm_cell_6/splitSplit8sequential_2/lstm_6/lstm_cell_6/split/split_dim:output:00sequential_2/lstm_6/lstm_cell_6/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitФ
'sequential_2/lstm_6/lstm_cell_6/SigmoidSigmoid.sequential_2/lstm_6/lstm_cell_6/split:output:0*
T0*'
_output_shapes
:         Ц
)sequential_2/lstm_6/lstm_cell_6/Sigmoid_1Sigmoid.sequential_2/lstm_6/lstm_cell_6/split:output:1*
T0*'
_output_shapes
:         ▒
#sequential_2/lstm_6/lstm_cell_6/mulMul-sequential_2/lstm_6/lstm_cell_6/Sigmoid_1:y:0$sequential_2/lstm_6/zeros_1:output:0*
T0*'
_output_shapes
:         О
$sequential_2/lstm_6/lstm_cell_6/ReluRelu.sequential_2/lstm_6/lstm_cell_6/split:output:2*
T0*'
_output_shapes
:         ┐
%sequential_2/lstm_6/lstm_cell_6/mul_1Mul+sequential_2/lstm_6/lstm_cell_6/Sigmoid:y:02sequential_2/lstm_6/lstm_cell_6/Relu:activations:0*
T0*'
_output_shapes
:         ┤
%sequential_2/lstm_6/lstm_cell_6/add_1AddV2'sequential_2/lstm_6/lstm_cell_6/mul:z:0)sequential_2/lstm_6/lstm_cell_6/mul_1:z:0*
T0*'
_output_shapes
:         Ц
)sequential_2/lstm_6/lstm_cell_6/Sigmoid_2Sigmoid.sequential_2/lstm_6/lstm_cell_6/split:output:3*
T0*'
_output_shapes
:         Л
&sequential_2/lstm_6/lstm_cell_6/Relu_1Relu)sequential_2/lstm_6/lstm_cell_6/add_1:z:0*
T0*'
_output_shapes
:         ├
%sequential_2/lstm_6/lstm_cell_6/mul_2Mul-sequential_2/lstm_6/lstm_cell_6/Sigmoid_2:y:04sequential_2/lstm_6/lstm_cell_6/Relu_1:activations:0*
T0*'
_output_shapes
:         В
1sequential_2/lstm_6/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Ї
#sequential_2/lstm_6/TensorArrayV2_1TensorListReserve:sequential_2/lstm_6/TensorArrayV2_1/element_shape:output:0,sequential_2/lstm_6/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Z
sequential_2/lstm_6/timeConst*
_output_shapes
: *
dtype0*
value	B : w
,sequential_2/lstm_6/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         h
&sequential_2/lstm_6/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Х
sequential_2/lstm_6/whileWhile/sequential_2/lstm_6/while/loop_counter:output:05sequential_2/lstm_6/while/maximum_iterations:output:0!sequential_2/lstm_6/time:output:0,sequential_2/lstm_6/TensorArrayV2_1:handle:0"sequential_2/lstm_6/zeros:output:0$sequential_2/lstm_6/zeros_1:output:0,sequential_2/lstm_6/strided_slice_1:output:0Ksequential_2/lstm_6/TensorArrayUnstack/TensorListFromTensor:output_handle:0>sequential_2_lstm_6_lstm_cell_6_matmul_readvariableop_resource@sequential_2_lstm_6_lstm_cell_6_matmul_1_readvariableop_resource?sequential_2_lstm_6_lstm_cell_6_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *0
body(R&
$sequential_2_lstm_6_while_body_81454*0
cond(R&
$sequential_2_lstm_6_while_cond_81453*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Х
Dsequential_2/lstm_6/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ■
6sequential_2/lstm_6/TensorArrayV2Stack/TensorListStackTensorListStack"sequential_2/lstm_6/while:output:3Msequential_2/lstm_6/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         *
element_dtype0|
)sequential_2/lstm_6/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         u
+sequential_2/lstm_6/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: u
+sequential_2/lstm_6/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ы
#sequential_2/lstm_6/strided_slice_3StridedSlice?sequential_2/lstm_6/TensorArrayV2Stack/TensorListStack:tensor:02sequential_2/lstm_6/strided_slice_3/stack:output:04sequential_2/lstm_6/strided_slice_3/stack_1:output:04sequential_2/lstm_6/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_masky
$sequential_2/lstm_6/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ╥
sequential_2/lstm_6/transpose_1	Transpose?sequential_2/lstm_6/TensorArrayV2Stack/TensorListStack:tensor:0-sequential_2/lstm_6/transpose_1/perm:output:0*
T0*+
_output_shapes
:         o
sequential_2/lstm_6/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    Ж
sequential_2/dropout_8/IdentityIdentity#sequential_2/lstm_6/transpose_1:y:0*
T0*+
_output_shapes
:         
sequential_2/lstm_7/ShapeShape(sequential_2/dropout_8/Identity:output:0*
T0*
_output_shapes
::э╧q
'sequential_2/lstm_7/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)sequential_2/lstm_7/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)sequential_2/lstm_7/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╡
!sequential_2/lstm_7/strided_sliceStridedSlice"sequential_2/lstm_7/Shape:output:00sequential_2/lstm_7/strided_slice/stack:output:02sequential_2/lstm_7/strided_slice/stack_1:output:02sequential_2/lstm_7/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskd
"sequential_2/lstm_7/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :п
 sequential_2/lstm_7/zeros/packedPack*sequential_2/lstm_7/strided_slice:output:0+sequential_2/lstm_7/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:d
sequential_2/lstm_7/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    и
sequential_2/lstm_7/zerosFill)sequential_2/lstm_7/zeros/packed:output:0(sequential_2/lstm_7/zeros/Const:output:0*
T0*'
_output_shapes
:         f
$sequential_2/lstm_7/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :│
"sequential_2/lstm_7/zeros_1/packedPack*sequential_2/lstm_7/strided_slice:output:0-sequential_2/lstm_7/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:f
!sequential_2/lstm_7/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    о
sequential_2/lstm_7/zeros_1Fill+sequential_2/lstm_7/zeros_1/packed:output:0*sequential_2/lstm_7/zeros_1/Const:output:0*
T0*'
_output_shapes
:         w
"sequential_2/lstm_7/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ╖
sequential_2/lstm_7/transpose	Transpose(sequential_2/dropout_8/Identity:output:0+sequential_2/lstm_7/transpose/perm:output:0*
T0*+
_output_shapes
:         z
sequential_2/lstm_7/Shape_1Shape!sequential_2/lstm_7/transpose:y:0*
T0*
_output_shapes
::э╧s
)sequential_2/lstm_7/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_2/lstm_7/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_2/lstm_7/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┐
#sequential_2/lstm_7/strided_slice_1StridedSlice$sequential_2/lstm_7/Shape_1:output:02sequential_2/lstm_7/strided_slice_1/stack:output:04sequential_2/lstm_7/strided_slice_1/stack_1:output:04sequential_2/lstm_7/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskz
/sequential_2/lstm_7/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         Ё
!sequential_2/lstm_7/TensorArrayV2TensorListReserve8sequential_2/lstm_7/TensorArrayV2/element_shape:output:0,sequential_2/lstm_7/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ъ
Isequential_2/lstm_7/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Ь
;sequential_2/lstm_7/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor!sequential_2/lstm_7/transpose:y:0Rsequential_2/lstm_7/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥s
)sequential_2/lstm_7/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_2/lstm_7/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_2/lstm_7/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:═
#sequential_2/lstm_7/strided_slice_2StridedSlice!sequential_2/lstm_7/transpose:y:02sequential_2/lstm_7/strided_slice_2/stack:output:04sequential_2/lstm_7/strided_slice_2/stack_1:output:04sequential_2/lstm_7/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_mask┤
5sequential_2/lstm_7/lstm_cell_7/MatMul/ReadVariableOpReadVariableOp>sequential_2_lstm_7_lstm_cell_7_matmul_readvariableop_resource*
_output_shapes

: *
dtype0╧
&sequential_2/lstm_7/lstm_cell_7/MatMulMatMul,sequential_2/lstm_7/strided_slice_2:output:0=sequential_2/lstm_7/lstm_cell_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ╕
7sequential_2/lstm_7/lstm_cell_7/MatMul_1/ReadVariableOpReadVariableOp@sequential_2_lstm_7_lstm_cell_7_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0╔
(sequential_2/lstm_7/lstm_cell_7/MatMul_1MatMul"sequential_2/lstm_7/zeros:output:0?sequential_2/lstm_7/lstm_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ─
#sequential_2/lstm_7/lstm_cell_7/addAddV20sequential_2/lstm_7/lstm_cell_7/MatMul:product:02sequential_2/lstm_7/lstm_cell_7/MatMul_1:product:0*
T0*'
_output_shapes
:          ▓
6sequential_2/lstm_7/lstm_cell_7/BiasAdd/ReadVariableOpReadVariableOp?sequential_2_lstm_7_lstm_cell_7_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0═
'sequential_2/lstm_7/lstm_cell_7/BiasAddBiasAdd'sequential_2/lstm_7/lstm_cell_7/add:z:0>sequential_2/lstm_7/lstm_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          q
/sequential_2/lstm_7/lstm_cell_7/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ц
%sequential_2/lstm_7/lstm_cell_7/splitSplit8sequential_2/lstm_7/lstm_cell_7/split/split_dim:output:00sequential_2/lstm_7/lstm_cell_7/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitФ
'sequential_2/lstm_7/lstm_cell_7/SigmoidSigmoid.sequential_2/lstm_7/lstm_cell_7/split:output:0*
T0*'
_output_shapes
:         Ц
)sequential_2/lstm_7/lstm_cell_7/Sigmoid_1Sigmoid.sequential_2/lstm_7/lstm_cell_7/split:output:1*
T0*'
_output_shapes
:         ▒
#sequential_2/lstm_7/lstm_cell_7/mulMul-sequential_2/lstm_7/lstm_cell_7/Sigmoid_1:y:0$sequential_2/lstm_7/zeros_1:output:0*
T0*'
_output_shapes
:         О
$sequential_2/lstm_7/lstm_cell_7/ReluRelu.sequential_2/lstm_7/lstm_cell_7/split:output:2*
T0*'
_output_shapes
:         ┐
%sequential_2/lstm_7/lstm_cell_7/mul_1Mul+sequential_2/lstm_7/lstm_cell_7/Sigmoid:y:02sequential_2/lstm_7/lstm_cell_7/Relu:activations:0*
T0*'
_output_shapes
:         ┤
%sequential_2/lstm_7/lstm_cell_7/add_1AddV2'sequential_2/lstm_7/lstm_cell_7/mul:z:0)sequential_2/lstm_7/lstm_cell_7/mul_1:z:0*
T0*'
_output_shapes
:         Ц
)sequential_2/lstm_7/lstm_cell_7/Sigmoid_2Sigmoid.sequential_2/lstm_7/lstm_cell_7/split:output:3*
T0*'
_output_shapes
:         Л
&sequential_2/lstm_7/lstm_cell_7/Relu_1Relu)sequential_2/lstm_7/lstm_cell_7/add_1:z:0*
T0*'
_output_shapes
:         ├
%sequential_2/lstm_7/lstm_cell_7/mul_2Mul-sequential_2/lstm_7/lstm_cell_7/Sigmoid_2:y:04sequential_2/lstm_7/lstm_cell_7/Relu_1:activations:0*
T0*'
_output_shapes
:         В
1sequential_2/lstm_7/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Ї
#sequential_2/lstm_7/TensorArrayV2_1TensorListReserve:sequential_2/lstm_7/TensorArrayV2_1/element_shape:output:0,sequential_2/lstm_7/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Z
sequential_2/lstm_7/timeConst*
_output_shapes
: *
dtype0*
value	B : w
,sequential_2/lstm_7/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         h
&sequential_2/lstm_7/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Х
sequential_2/lstm_7/whileWhile/sequential_2/lstm_7/while/loop_counter:output:05sequential_2/lstm_7/while/maximum_iterations:output:0!sequential_2/lstm_7/time:output:0,sequential_2/lstm_7/TensorArrayV2_1:handle:0"sequential_2/lstm_7/zeros:output:0$sequential_2/lstm_7/zeros_1:output:0,sequential_2/lstm_7/strided_slice_1:output:0Ksequential_2/lstm_7/TensorArrayUnstack/TensorListFromTensor:output_handle:0>sequential_2_lstm_7_lstm_cell_7_matmul_readvariableop_resource@sequential_2_lstm_7_lstm_cell_7_matmul_1_readvariableop_resource?sequential_2_lstm_7_lstm_cell_7_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *0
body(R&
$sequential_2_lstm_7_while_body_81594*0
cond(R&
$sequential_2_lstm_7_while_cond_81593*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Х
Dsequential_2/lstm_7/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ■
6sequential_2/lstm_7/TensorArrayV2Stack/TensorListStackTensorListStack"sequential_2/lstm_7/while:output:3Msequential_2/lstm_7/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         *
element_dtype0|
)sequential_2/lstm_7/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         u
+sequential_2/lstm_7/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: u
+sequential_2/lstm_7/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ы
#sequential_2/lstm_7/strided_slice_3StridedSlice?sequential_2/lstm_7/TensorArrayV2Stack/TensorListStack:tensor:02sequential_2/lstm_7/strided_slice_3/stack:output:04sequential_2/lstm_7/strided_slice_3/stack_1:output:04sequential_2/lstm_7/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_masky
$sequential_2/lstm_7/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ╥
sequential_2/lstm_7/transpose_1	Transpose?sequential_2/lstm_7/TensorArrayV2Stack/TensorListStack:tensor:0-sequential_2/lstm_7/transpose_1/perm:output:0*
T0*+
_output_shapes
:         o
sequential_2/lstm_7/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    Ж
sequential_2/dropout_9/IdentityIdentity#sequential_2/lstm_7/transpose_1:y:0*
T0*+
_output_shapes
:         
sequential_2/lstm_8/ShapeShape(sequential_2/dropout_9/Identity:output:0*
T0*
_output_shapes
::э╧q
'sequential_2/lstm_8/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)sequential_2/lstm_8/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)sequential_2/lstm_8/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╡
!sequential_2/lstm_8/strided_sliceStridedSlice"sequential_2/lstm_8/Shape:output:00sequential_2/lstm_8/strided_slice/stack:output:02sequential_2/lstm_8/strided_slice/stack_1:output:02sequential_2/lstm_8/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskd
"sequential_2/lstm_8/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :п
 sequential_2/lstm_8/zeros/packedPack*sequential_2/lstm_8/strided_slice:output:0+sequential_2/lstm_8/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:d
sequential_2/lstm_8/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    и
sequential_2/lstm_8/zerosFill)sequential_2/lstm_8/zeros/packed:output:0(sequential_2/lstm_8/zeros/Const:output:0*
T0*'
_output_shapes
:         f
$sequential_2/lstm_8/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :│
"sequential_2/lstm_8/zeros_1/packedPack*sequential_2/lstm_8/strided_slice:output:0-sequential_2/lstm_8/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:f
!sequential_2/lstm_8/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    о
sequential_2/lstm_8/zeros_1Fill+sequential_2/lstm_8/zeros_1/packed:output:0*sequential_2/lstm_8/zeros_1/Const:output:0*
T0*'
_output_shapes
:         w
"sequential_2/lstm_8/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ╖
sequential_2/lstm_8/transpose	Transpose(sequential_2/dropout_9/Identity:output:0+sequential_2/lstm_8/transpose/perm:output:0*
T0*+
_output_shapes
:         z
sequential_2/lstm_8/Shape_1Shape!sequential_2/lstm_8/transpose:y:0*
T0*
_output_shapes
::э╧s
)sequential_2/lstm_8/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_2/lstm_8/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_2/lstm_8/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┐
#sequential_2/lstm_8/strided_slice_1StridedSlice$sequential_2/lstm_8/Shape_1:output:02sequential_2/lstm_8/strided_slice_1/stack:output:04sequential_2/lstm_8/strided_slice_1/stack_1:output:04sequential_2/lstm_8/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskz
/sequential_2/lstm_8/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         Ё
!sequential_2/lstm_8/TensorArrayV2TensorListReserve8sequential_2/lstm_8/TensorArrayV2/element_shape:output:0,sequential_2/lstm_8/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ъ
Isequential_2/lstm_8/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Ь
;sequential_2/lstm_8/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor!sequential_2/lstm_8/transpose:y:0Rsequential_2/lstm_8/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥s
)sequential_2/lstm_8/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_2/lstm_8/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_2/lstm_8/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:═
#sequential_2/lstm_8/strided_slice_2StridedSlice!sequential_2/lstm_8/transpose:y:02sequential_2/lstm_8/strided_slice_2/stack:output:04sequential_2/lstm_8/strided_slice_2/stack_1:output:04sequential_2/lstm_8/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_mask┤
5sequential_2/lstm_8/lstm_cell_8/MatMul/ReadVariableOpReadVariableOp>sequential_2_lstm_8_lstm_cell_8_matmul_readvariableop_resource*
_output_shapes

: *
dtype0╧
&sequential_2/lstm_8/lstm_cell_8/MatMulMatMul,sequential_2/lstm_8/strided_slice_2:output:0=sequential_2/lstm_8/lstm_cell_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ╕
7sequential_2/lstm_8/lstm_cell_8/MatMul_1/ReadVariableOpReadVariableOp@sequential_2_lstm_8_lstm_cell_8_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0╔
(sequential_2/lstm_8/lstm_cell_8/MatMul_1MatMul"sequential_2/lstm_8/zeros:output:0?sequential_2/lstm_8/lstm_cell_8/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ─
#sequential_2/lstm_8/lstm_cell_8/addAddV20sequential_2/lstm_8/lstm_cell_8/MatMul:product:02sequential_2/lstm_8/lstm_cell_8/MatMul_1:product:0*
T0*'
_output_shapes
:          ▓
6sequential_2/lstm_8/lstm_cell_8/BiasAdd/ReadVariableOpReadVariableOp?sequential_2_lstm_8_lstm_cell_8_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0═
'sequential_2/lstm_8/lstm_cell_8/BiasAddBiasAdd'sequential_2/lstm_8/lstm_cell_8/add:z:0>sequential_2/lstm_8/lstm_cell_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          q
/sequential_2/lstm_8/lstm_cell_8/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ц
%sequential_2/lstm_8/lstm_cell_8/splitSplit8sequential_2/lstm_8/lstm_cell_8/split/split_dim:output:00sequential_2/lstm_8/lstm_cell_8/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitФ
'sequential_2/lstm_8/lstm_cell_8/SigmoidSigmoid.sequential_2/lstm_8/lstm_cell_8/split:output:0*
T0*'
_output_shapes
:         Ц
)sequential_2/lstm_8/lstm_cell_8/Sigmoid_1Sigmoid.sequential_2/lstm_8/lstm_cell_8/split:output:1*
T0*'
_output_shapes
:         ▒
#sequential_2/lstm_8/lstm_cell_8/mulMul-sequential_2/lstm_8/lstm_cell_8/Sigmoid_1:y:0$sequential_2/lstm_8/zeros_1:output:0*
T0*'
_output_shapes
:         О
$sequential_2/lstm_8/lstm_cell_8/ReluRelu.sequential_2/lstm_8/lstm_cell_8/split:output:2*
T0*'
_output_shapes
:         ┐
%sequential_2/lstm_8/lstm_cell_8/mul_1Mul+sequential_2/lstm_8/lstm_cell_8/Sigmoid:y:02sequential_2/lstm_8/lstm_cell_8/Relu:activations:0*
T0*'
_output_shapes
:         ┤
%sequential_2/lstm_8/lstm_cell_8/add_1AddV2'sequential_2/lstm_8/lstm_cell_8/mul:z:0)sequential_2/lstm_8/lstm_cell_8/mul_1:z:0*
T0*'
_output_shapes
:         Ц
)sequential_2/lstm_8/lstm_cell_8/Sigmoid_2Sigmoid.sequential_2/lstm_8/lstm_cell_8/split:output:3*
T0*'
_output_shapes
:         Л
&sequential_2/lstm_8/lstm_cell_8/Relu_1Relu)sequential_2/lstm_8/lstm_cell_8/add_1:z:0*
T0*'
_output_shapes
:         ├
%sequential_2/lstm_8/lstm_cell_8/mul_2Mul-sequential_2/lstm_8/lstm_cell_8/Sigmoid_2:y:04sequential_2/lstm_8/lstm_cell_8/Relu_1:activations:0*
T0*'
_output_shapes
:         В
1sequential_2/lstm_8/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       r
0sequential_2/lstm_8/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Б
#sequential_2/lstm_8/TensorArrayV2_1TensorListReserve:sequential_2/lstm_8/TensorArrayV2_1/element_shape:output:09sequential_2/lstm_8/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Z
sequential_2/lstm_8/timeConst*
_output_shapes
: *
dtype0*
value	B : w
,sequential_2/lstm_8/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         h
&sequential_2/lstm_8/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Х
sequential_2/lstm_8/whileWhile/sequential_2/lstm_8/while/loop_counter:output:05sequential_2/lstm_8/while/maximum_iterations:output:0!sequential_2/lstm_8/time:output:0,sequential_2/lstm_8/TensorArrayV2_1:handle:0"sequential_2/lstm_8/zeros:output:0$sequential_2/lstm_8/zeros_1:output:0,sequential_2/lstm_8/strided_slice_1:output:0Ksequential_2/lstm_8/TensorArrayUnstack/TensorListFromTensor:output_handle:0>sequential_2_lstm_8_lstm_cell_8_matmul_readvariableop_resource@sequential_2_lstm_8_lstm_cell_8_matmul_1_readvariableop_resource?sequential_2_lstm_8_lstm_cell_8_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *0
body(R&
$sequential_2_lstm_8_while_body_81735*0
cond(R&
$sequential_2_lstm_8_while_cond_81734*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Х
Dsequential_2/lstm_8/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Т
6sequential_2/lstm_8/TensorArrayV2Stack/TensorListStackTensorListStack"sequential_2/lstm_8/while:output:3Msequential_2/lstm_8/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         *
element_dtype0*
num_elements|
)sequential_2/lstm_8/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         u
+sequential_2/lstm_8/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: u
+sequential_2/lstm_8/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ы
#sequential_2/lstm_8/strided_slice_3StridedSlice?sequential_2/lstm_8/TensorArrayV2Stack/TensorListStack:tensor:02sequential_2/lstm_8/strided_slice_3/stack:output:04sequential_2/lstm_8/strided_slice_3/stack_1:output:04sequential_2/lstm_8/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_masky
$sequential_2/lstm_8/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ╥
sequential_2/lstm_8/transpose_1	Transpose?sequential_2/lstm_8/TensorArrayV2Stack/TensorListStack:tensor:0-sequential_2/lstm_8/transpose_1/perm:output:0*
T0*+
_output_shapes
:         o
sequential_2/lstm_8/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    М
 sequential_2/dropout_10/IdentityIdentity,sequential_2/lstm_8/strided_slice_3:output:0*
T0*'
_output_shapes
:         Ю
*sequential_2/dense_4/MatMul/ReadVariableOpReadVariableOp3sequential_2_dense_4_matmul_readvariableop_resource*
_output_shapes

:*
dtype0╢
sequential_2/dense_4/MatMulMatMul)sequential_2/dropout_10/Identity:output:02sequential_2/dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Ь
+sequential_2/dense_4/BiasAdd/ReadVariableOpReadVariableOp4sequential_2_dense_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0╡
sequential_2/dense_4/BiasAddBiasAdd%sequential_2/dense_4/MatMul:product:03sequential_2/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         z
sequential_2/dense_4/ReluRelu%sequential_2/dense_4/BiasAdd:output:0*
T0*'
_output_shapes
:         З
 sequential_2/dropout_11/IdentityIdentity'sequential_2/dense_4/Relu:activations:0*
T0*'
_output_shapes
:         Ю
*sequential_2/dense_5/MatMul/ReadVariableOpReadVariableOp3sequential_2_dense_5_matmul_readvariableop_resource*
_output_shapes

:*
dtype0╢
sequential_2/dense_5/MatMulMatMul)sequential_2/dropout_11/Identity:output:02sequential_2/dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Ь
+sequential_2/dense_5/BiasAdd/ReadVariableOpReadVariableOp4sequential_2_dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0╡
sequential_2/dense_5/BiasAddBiasAdd%sequential_2/dense_5/MatMul:product:03sequential_2/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         t
IdentityIdentity%sequential_2/dense_5/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         ╤
NoOpNoOp,^sequential_2/dense_4/BiasAdd/ReadVariableOp+^sequential_2/dense_4/MatMul/ReadVariableOp,^sequential_2/dense_5/BiasAdd/ReadVariableOp+^sequential_2/dense_5/MatMul/ReadVariableOp7^sequential_2/lstm_6/lstm_cell_6/BiasAdd/ReadVariableOp6^sequential_2/lstm_6/lstm_cell_6/MatMul/ReadVariableOp8^sequential_2/lstm_6/lstm_cell_6/MatMul_1/ReadVariableOp^sequential_2/lstm_6/while7^sequential_2/lstm_7/lstm_cell_7/BiasAdd/ReadVariableOp6^sequential_2/lstm_7/lstm_cell_7/MatMul/ReadVariableOp8^sequential_2/lstm_7/lstm_cell_7/MatMul_1/ReadVariableOp^sequential_2/lstm_7/while7^sequential_2/lstm_8/lstm_cell_8/BiasAdd/ReadVariableOp6^sequential_2/lstm_8/lstm_cell_8/MatMul/ReadVariableOp8^sequential_2/lstm_8/lstm_cell_8/MatMul_1/ReadVariableOp^sequential_2/lstm_8/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:         : : : : : : : : : : : : : 2Z
+sequential_2/dense_4/BiasAdd/ReadVariableOp+sequential_2/dense_4/BiasAdd/ReadVariableOp2X
*sequential_2/dense_4/MatMul/ReadVariableOp*sequential_2/dense_4/MatMul/ReadVariableOp2Z
+sequential_2/dense_5/BiasAdd/ReadVariableOp+sequential_2/dense_5/BiasAdd/ReadVariableOp2X
*sequential_2/dense_5/MatMul/ReadVariableOp*sequential_2/dense_5/MatMul/ReadVariableOp2p
6sequential_2/lstm_6/lstm_cell_6/BiasAdd/ReadVariableOp6sequential_2/lstm_6/lstm_cell_6/BiasAdd/ReadVariableOp2n
5sequential_2/lstm_6/lstm_cell_6/MatMul/ReadVariableOp5sequential_2/lstm_6/lstm_cell_6/MatMul/ReadVariableOp2r
7sequential_2/lstm_6/lstm_cell_6/MatMul_1/ReadVariableOp7sequential_2/lstm_6/lstm_cell_6/MatMul_1/ReadVariableOp26
sequential_2/lstm_6/whilesequential_2/lstm_6/while2p
6sequential_2/lstm_7/lstm_cell_7/BiasAdd/ReadVariableOp6sequential_2/lstm_7/lstm_cell_7/BiasAdd/ReadVariableOp2n
5sequential_2/lstm_7/lstm_cell_7/MatMul/ReadVariableOp5sequential_2/lstm_7/lstm_cell_7/MatMul/ReadVariableOp2r
7sequential_2/lstm_7/lstm_cell_7/MatMul_1/ReadVariableOp7sequential_2/lstm_7/lstm_cell_7/MatMul_1/ReadVariableOp26
sequential_2/lstm_7/whilesequential_2/lstm_7/while2p
6sequential_2/lstm_8/lstm_cell_8/BiasAdd/ReadVariableOp6sequential_2/lstm_8/lstm_cell_8/BiasAdd/ReadVariableOp2n
5sequential_2/lstm_8/lstm_cell_8/MatMul/ReadVariableOp5sequential_2/lstm_8/lstm_cell_8/MatMul/ReadVariableOp2r
7sequential_2/lstm_8/lstm_cell_8/MatMul_1/ReadVariableOp7sequential_2/lstm_8/lstm_cell_8/MatMul_1/ReadVariableOp26
sequential_2/lstm_8/whilesequential_2/lstm_8/while:Y U
+
_output_shapes
:         
&
_user_specified_namelstm_6_input
МP
└
$sequential_2_lstm_6_while_body_81454D
@sequential_2_lstm_6_while_sequential_2_lstm_6_while_loop_counterJ
Fsequential_2_lstm_6_while_sequential_2_lstm_6_while_maximum_iterations)
%sequential_2_lstm_6_while_placeholder+
'sequential_2_lstm_6_while_placeholder_1+
'sequential_2_lstm_6_while_placeholder_2+
'sequential_2_lstm_6_while_placeholder_3C
?sequential_2_lstm_6_while_sequential_2_lstm_6_strided_slice_1_0
{sequential_2_lstm_6_while_tensorarrayv2read_tensorlistgetitem_sequential_2_lstm_6_tensorarrayunstack_tensorlistfromtensor_0X
Fsequential_2_lstm_6_while_lstm_cell_6_matmul_readvariableop_resource_0: Z
Hsequential_2_lstm_6_while_lstm_cell_6_matmul_1_readvariableop_resource_0: U
Gsequential_2_lstm_6_while_lstm_cell_6_biasadd_readvariableop_resource_0: &
"sequential_2_lstm_6_while_identity(
$sequential_2_lstm_6_while_identity_1(
$sequential_2_lstm_6_while_identity_2(
$sequential_2_lstm_6_while_identity_3(
$sequential_2_lstm_6_while_identity_4(
$sequential_2_lstm_6_while_identity_5A
=sequential_2_lstm_6_while_sequential_2_lstm_6_strided_slice_1}
ysequential_2_lstm_6_while_tensorarrayv2read_tensorlistgetitem_sequential_2_lstm_6_tensorarrayunstack_tensorlistfromtensorV
Dsequential_2_lstm_6_while_lstm_cell_6_matmul_readvariableop_resource: X
Fsequential_2_lstm_6_while_lstm_cell_6_matmul_1_readvariableop_resource: S
Esequential_2_lstm_6_while_lstm_cell_6_biasadd_readvariableop_resource: Ив<sequential_2/lstm_6/while/lstm_cell_6/BiasAdd/ReadVariableOpв;sequential_2/lstm_6/while/lstm_cell_6/MatMul/ReadVariableOpв=sequential_2/lstm_6/while/lstm_cell_6/MatMul_1/ReadVariableOpЬ
Ksequential_2/lstm_6/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       К
=sequential_2/lstm_6/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem{sequential_2_lstm_6_while_tensorarrayv2read_tensorlistgetitem_sequential_2_lstm_6_tensorarrayunstack_tensorlistfromtensor_0%sequential_2_lstm_6_while_placeholderTsequential_2/lstm_6/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0┬
;sequential_2/lstm_6/while/lstm_cell_6/MatMul/ReadVariableOpReadVariableOpFsequential_2_lstm_6_while_lstm_cell_6_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0є
,sequential_2/lstm_6/while/lstm_cell_6/MatMulMatMulDsequential_2/lstm_6/while/TensorArrayV2Read/TensorListGetItem:item:0Csequential_2/lstm_6/while/lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ╞
=sequential_2/lstm_6/while/lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOpHsequential_2_lstm_6_while_lstm_cell_6_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0┌
.sequential_2/lstm_6/while/lstm_cell_6/MatMul_1MatMul'sequential_2_lstm_6_while_placeholder_2Esequential_2/lstm_6/while/lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ╓
)sequential_2/lstm_6/while/lstm_cell_6/addAddV26sequential_2/lstm_6/while/lstm_cell_6/MatMul:product:08sequential_2/lstm_6/while/lstm_cell_6/MatMul_1:product:0*
T0*'
_output_shapes
:          └
<sequential_2/lstm_6/while/lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOpGsequential_2_lstm_6_while_lstm_cell_6_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0▀
-sequential_2/lstm_6/while/lstm_cell_6/BiasAddBiasAdd-sequential_2/lstm_6/while/lstm_cell_6/add:z:0Dsequential_2/lstm_6/while/lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          w
5sequential_2/lstm_6/while/lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :и
+sequential_2/lstm_6/while/lstm_cell_6/splitSplit>sequential_2/lstm_6/while/lstm_cell_6/split/split_dim:output:06sequential_2/lstm_6/while/lstm_cell_6/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitа
-sequential_2/lstm_6/while/lstm_cell_6/SigmoidSigmoid4sequential_2/lstm_6/while/lstm_cell_6/split:output:0*
T0*'
_output_shapes
:         в
/sequential_2/lstm_6/while/lstm_cell_6/Sigmoid_1Sigmoid4sequential_2/lstm_6/while/lstm_cell_6/split:output:1*
T0*'
_output_shapes
:         └
)sequential_2/lstm_6/while/lstm_cell_6/mulMul3sequential_2/lstm_6/while/lstm_cell_6/Sigmoid_1:y:0'sequential_2_lstm_6_while_placeholder_3*
T0*'
_output_shapes
:         Ъ
*sequential_2/lstm_6/while/lstm_cell_6/ReluRelu4sequential_2/lstm_6/while/lstm_cell_6/split:output:2*
T0*'
_output_shapes
:         ╤
+sequential_2/lstm_6/while/lstm_cell_6/mul_1Mul1sequential_2/lstm_6/while/lstm_cell_6/Sigmoid:y:08sequential_2/lstm_6/while/lstm_cell_6/Relu:activations:0*
T0*'
_output_shapes
:         ╞
+sequential_2/lstm_6/while/lstm_cell_6/add_1AddV2-sequential_2/lstm_6/while/lstm_cell_6/mul:z:0/sequential_2/lstm_6/while/lstm_cell_6/mul_1:z:0*
T0*'
_output_shapes
:         в
/sequential_2/lstm_6/while/lstm_cell_6/Sigmoid_2Sigmoid4sequential_2/lstm_6/while/lstm_cell_6/split:output:3*
T0*'
_output_shapes
:         Ч
,sequential_2/lstm_6/while/lstm_cell_6/Relu_1Relu/sequential_2/lstm_6/while/lstm_cell_6/add_1:z:0*
T0*'
_output_shapes
:         ╒
+sequential_2/lstm_6/while/lstm_cell_6/mul_2Mul3sequential_2/lstm_6/while/lstm_cell_6/Sigmoid_2:y:0:sequential_2/lstm_6/while/lstm_cell_6/Relu_1:activations:0*
T0*'
_output_shapes
:         Ф
>sequential_2/lstm_6/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem'sequential_2_lstm_6_while_placeholder_1%sequential_2_lstm_6_while_placeholder/sequential_2/lstm_6/while/lstm_cell_6/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥a
sequential_2/lstm_6/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Ш
sequential_2/lstm_6/while/addAddV2%sequential_2_lstm_6_while_placeholder(sequential_2/lstm_6/while/add/y:output:0*
T0*
_output_shapes
: c
!sequential_2/lstm_6/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :╖
sequential_2/lstm_6/while/add_1AddV2@sequential_2_lstm_6_while_sequential_2_lstm_6_while_loop_counter*sequential_2/lstm_6/while/add_1/y:output:0*
T0*
_output_shapes
: Х
"sequential_2/lstm_6/while/IdentityIdentity#sequential_2/lstm_6/while/add_1:z:0^sequential_2/lstm_6/while/NoOp*
T0*
_output_shapes
: ║
$sequential_2/lstm_6/while/Identity_1IdentityFsequential_2_lstm_6_while_sequential_2_lstm_6_while_maximum_iterations^sequential_2/lstm_6/while/NoOp*
T0*
_output_shapes
: Х
$sequential_2/lstm_6/while/Identity_2Identity!sequential_2/lstm_6/while/add:z:0^sequential_2/lstm_6/while/NoOp*
T0*
_output_shapes
: ┬
$sequential_2/lstm_6/while/Identity_3IdentityNsequential_2/lstm_6/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^sequential_2/lstm_6/while/NoOp*
T0*
_output_shapes
: ┤
$sequential_2/lstm_6/while/Identity_4Identity/sequential_2/lstm_6/while/lstm_cell_6/mul_2:z:0^sequential_2/lstm_6/while/NoOp*
T0*'
_output_shapes
:         ┤
$sequential_2/lstm_6/while/Identity_5Identity/sequential_2/lstm_6/while/lstm_cell_6/add_1:z:0^sequential_2/lstm_6/while/NoOp*
T0*'
_output_shapes
:         Э
sequential_2/lstm_6/while/NoOpNoOp=^sequential_2/lstm_6/while/lstm_cell_6/BiasAdd/ReadVariableOp<^sequential_2/lstm_6/while/lstm_cell_6/MatMul/ReadVariableOp>^sequential_2/lstm_6/while/lstm_cell_6/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Q
"sequential_2_lstm_6_while_identity+sequential_2/lstm_6/while/Identity:output:0"U
$sequential_2_lstm_6_while_identity_1-sequential_2/lstm_6/while/Identity_1:output:0"U
$sequential_2_lstm_6_while_identity_2-sequential_2/lstm_6/while/Identity_2:output:0"U
$sequential_2_lstm_6_while_identity_3-sequential_2/lstm_6/while/Identity_3:output:0"U
$sequential_2_lstm_6_while_identity_4-sequential_2/lstm_6/while/Identity_4:output:0"U
$sequential_2_lstm_6_while_identity_5-sequential_2/lstm_6/while/Identity_5:output:0"Р
Esequential_2_lstm_6_while_lstm_cell_6_biasadd_readvariableop_resourceGsequential_2_lstm_6_while_lstm_cell_6_biasadd_readvariableop_resource_0"Т
Fsequential_2_lstm_6_while_lstm_cell_6_matmul_1_readvariableop_resourceHsequential_2_lstm_6_while_lstm_cell_6_matmul_1_readvariableop_resource_0"О
Dsequential_2_lstm_6_while_lstm_cell_6_matmul_readvariableop_resourceFsequential_2_lstm_6_while_lstm_cell_6_matmul_readvariableop_resource_0"А
=sequential_2_lstm_6_while_sequential_2_lstm_6_strided_slice_1?sequential_2_lstm_6_while_sequential_2_lstm_6_strided_slice_1_0"°
ysequential_2_lstm_6_while_tensorarrayv2read_tensorlistgetitem_sequential_2_lstm_6_tensorarrayunstack_tensorlistfromtensor{sequential_2_lstm_6_while_tensorarrayv2read_tensorlistgetitem_sequential_2_lstm_6_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2|
<sequential_2/lstm_6/while/lstm_cell_6/BiasAdd/ReadVariableOp<sequential_2/lstm_6/while/lstm_cell_6/BiasAdd/ReadVariableOp2z
;sequential_2/lstm_6/while/lstm_cell_6/MatMul/ReadVariableOp;sequential_2/lstm_6/while/lstm_cell_6/MatMul/ReadVariableOp2~
=sequential_2/lstm_6/while/lstm_cell_6/MatMul_1/ReadVariableOp=sequential_2/lstm_6/while/lstm_cell_6/MatMul_1/ReadVariableOp:^ Z

_output_shapes
: 
@
_user_specified_name(&sequential_2/lstm_6/while/loop_counter:d`

_output_shapes
: 
F
_user_specified_name.,sequential_2/lstm_6/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
: 
┤J
Т
A__inference_lstm_6_layer_call_and_return_conditional_losses_85593
inputs_0<
*lstm_cell_6_matmul_readvariableop_resource: >
,lstm_cell_6_matmul_1_readvariableop_resource: 9
+lstm_cell_6_biasadd_readvariableop_resource: 
identityИв"lstm_cell_6/BiasAdd/ReadVariableOpв!lstm_cell_6/MatMul/ReadVariableOpв#lstm_cell_6/MatMul_1/ReadVariableOpвwhileK
ShapeShapeinputs_0*
T0*
_output_shapes
::э╧]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :                  R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::э╧_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskМ
!lstm_cell_6/MatMul/ReadVariableOpReadVariableOp*lstm_cell_6_matmul_readvariableop_resource*
_output_shapes

: *
dtype0У
lstm_cell_6/MatMulMatMulstrided_slice_2:output:0)lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Р
#lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_6_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0Н
lstm_cell_6/MatMul_1MatMulzeros:output:0+lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          И
lstm_cell_6/addAddV2lstm_cell_6/MatMul:product:0lstm_cell_6/MatMul_1:product:0*
T0*'
_output_shapes
:          К
"lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_6_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0С
lstm_cell_6/BiasAddBiasAddlstm_cell_6/add:z:0*lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ]
lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :┌
lstm_cell_6/splitSplit$lstm_cell_6/split/split_dim:output:0lstm_cell_6/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitl
lstm_cell_6/SigmoidSigmoidlstm_cell_6/split:output:0*
T0*'
_output_shapes
:         n
lstm_cell_6/Sigmoid_1Sigmoidlstm_cell_6/split:output:1*
T0*'
_output_shapes
:         u
lstm_cell_6/mulMullstm_cell_6/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         f
lstm_cell_6/ReluRelulstm_cell_6/split:output:2*
T0*'
_output_shapes
:         Г
lstm_cell_6/mul_1Mullstm_cell_6/Sigmoid:y:0lstm_cell_6/Relu:activations:0*
T0*'
_output_shapes
:         x
lstm_cell_6/add_1AddV2lstm_cell_6/mul:z:0lstm_cell_6/mul_1:z:0*
T0*'
_output_shapes
:         n
lstm_cell_6/Sigmoid_2Sigmoidlstm_cell_6/split:output:3*
T0*'
_output_shapes
:         c
lstm_cell_6/Relu_1Relulstm_cell_6/add_1:z:0*
T0*'
_output_shapes
:         З
lstm_cell_6/mul_2Mullstm_cell_6/Sigmoid_2:y:0 lstm_cell_6/Relu_1:activations:0*
T0*'
_output_shapes
:         n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ¤
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_6_matmul_readvariableop_resource,lstm_cell_6_matmul_1_readvariableop_resource+lstm_cell_6_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_85509*
condR
while_cond_85508*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Я
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  ╜
NoOpNoOp#^lstm_cell_6/BiasAdd/ReadVariableOp"^lstm_cell_6/MatMul/ReadVariableOp$^lstm_cell_6/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2H
"lstm_cell_6/BiasAdd/ReadVariableOp"lstm_cell_6/BiasAdd/ReadVariableOp2F
!lstm_cell_6/MatMul/ReadVariableOp!lstm_cell_6/MatMul/ReadVariableOp2J
#lstm_cell_6/MatMul_1/ReadVariableOp#lstm_cell_6/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs_0
Ь8
└
while_body_83115
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
2while_lstm_cell_7_matmul_readvariableop_resource_0: F
4while_lstm_cell_7_matmul_1_readvariableop_resource_0: A
3while_lstm_cell_7_biasadd_readvariableop_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
0while_lstm_cell_7_matmul_readvariableop_resource: D
2while_lstm_cell_7_matmul_1_readvariableop_resource: ?
1while_lstm_cell_7_biasadd_readvariableop_resource: Ив(while/lstm_cell_7/BiasAdd/ReadVariableOpв'while/lstm_cell_7/MatMul/ReadVariableOpв)while/lstm_cell_7/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ъ
'while/lstm_cell_7/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_7_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0╖
while/lstm_cell_7/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Ю
)while/lstm_cell_7/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_7_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0Ю
while/lstm_cell_7/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Ъ
while/lstm_cell_7/addAddV2"while/lstm_cell_7/MatMul:product:0$while/lstm_cell_7/MatMul_1:product:0*
T0*'
_output_shapes
:          Ш
(while/lstm_cell_7/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_7_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0г
while/lstm_cell_7/BiasAddBiasAddwhile/lstm_cell_7/add:z:00while/lstm_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          c
!while/lstm_cell_7/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ь
while/lstm_cell_7/splitSplit*while/lstm_cell_7/split/split_dim:output:0"while/lstm_cell_7/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitx
while/lstm_cell_7/SigmoidSigmoid while/lstm_cell_7/split:output:0*
T0*'
_output_shapes
:         z
while/lstm_cell_7/Sigmoid_1Sigmoid while/lstm_cell_7/split:output:1*
T0*'
_output_shapes
:         Д
while/lstm_cell_7/mulMulwhile/lstm_cell_7/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         r
while/lstm_cell_7/ReluRelu while/lstm_cell_7/split:output:2*
T0*'
_output_shapes
:         Х
while/lstm_cell_7/mul_1Mulwhile/lstm_cell_7/Sigmoid:y:0$while/lstm_cell_7/Relu:activations:0*
T0*'
_output_shapes
:         К
while/lstm_cell_7/add_1AddV2while/lstm_cell_7/mul:z:0while/lstm_cell_7/mul_1:z:0*
T0*'
_output_shapes
:         z
while/lstm_cell_7/Sigmoid_2Sigmoid while/lstm_cell_7/split:output:3*
T0*'
_output_shapes
:         o
while/lstm_cell_7/Relu_1Reluwhile/lstm_cell_7/add_1:z:0*
T0*'
_output_shapes
:         Щ
while/lstm_cell_7/mul_2Mulwhile/lstm_cell_7/Sigmoid_2:y:0&while/lstm_cell_7/Relu_1:activations:0*
T0*'
_output_shapes
:         ─
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_7/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/lstm_cell_7/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         x
while/Identity_5Identitywhile/lstm_cell_7/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         ═

while/NoOpNoOp)^while/lstm_cell_7/BiasAdd/ReadVariableOp(^while/lstm_cell_7/MatMul/ReadVariableOp*^while/lstm_cell_7/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_7_biasadd_readvariableop_resource3while_lstm_cell_7_biasadd_readvariableop_resource_0"j
2while_lstm_cell_7_matmul_1_readvariableop_resource4while_lstm_cell_7_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_7_matmul_readvariableop_resource2while_lstm_cell_7_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2T
(while/lstm_cell_7/BiasAdd/ReadVariableOp(while/lstm_cell_7/BiasAdd/ReadVariableOp2R
'while/lstm_cell_7/MatMul/ReadVariableOp'while/lstm_cell_7/MatMul/ReadVariableOp2V
)while/lstm_cell_7/MatMul_1/ReadVariableOp)while/lstm_cell_7/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
: 
Т	
╛
while_cond_86942
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_86942___redundant_placeholder03
/while_while_cond_86942___redundant_placeholder13
/while_while_cond_86942___redundant_placeholder23
/while_while_cond_86942___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
:
ч
b
D__inference_dropout_8_layer_call_and_return_conditional_losses_83592

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:         _

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:         "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         :S O
+
_output_shapes
:         
 
_user_specified_nameinputs
Ь8
└
while_body_83496
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
2while_lstm_cell_6_matmul_readvariableop_resource_0: F
4while_lstm_cell_6_matmul_1_readvariableop_resource_0: A
3while_lstm_cell_6_biasadd_readvariableop_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
0while_lstm_cell_6_matmul_readvariableop_resource: D
2while_lstm_cell_6_matmul_1_readvariableop_resource: ?
1while_lstm_cell_6_biasadd_readvariableop_resource: Ив(while/lstm_cell_6/BiasAdd/ReadVariableOpв'while/lstm_cell_6/MatMul/ReadVariableOpв)while/lstm_cell_6/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ъ
'while/lstm_cell_6/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_6_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0╖
while/lstm_cell_6/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Ю
)while/lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_6_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0Ю
while/lstm_cell_6/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Ъ
while/lstm_cell_6/addAddV2"while/lstm_cell_6/MatMul:product:0$while/lstm_cell_6/MatMul_1:product:0*
T0*'
_output_shapes
:          Ш
(while/lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_6_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0г
while/lstm_cell_6/BiasAddBiasAddwhile/lstm_cell_6/add:z:00while/lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          c
!while/lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ь
while/lstm_cell_6/splitSplit*while/lstm_cell_6/split/split_dim:output:0"while/lstm_cell_6/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitx
while/lstm_cell_6/SigmoidSigmoid while/lstm_cell_6/split:output:0*
T0*'
_output_shapes
:         z
while/lstm_cell_6/Sigmoid_1Sigmoid while/lstm_cell_6/split:output:1*
T0*'
_output_shapes
:         Д
while/lstm_cell_6/mulMulwhile/lstm_cell_6/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         r
while/lstm_cell_6/ReluRelu while/lstm_cell_6/split:output:2*
T0*'
_output_shapes
:         Х
while/lstm_cell_6/mul_1Mulwhile/lstm_cell_6/Sigmoid:y:0$while/lstm_cell_6/Relu:activations:0*
T0*'
_output_shapes
:         К
while/lstm_cell_6/add_1AddV2while/lstm_cell_6/mul:z:0while/lstm_cell_6/mul_1:z:0*
T0*'
_output_shapes
:         z
while/lstm_cell_6/Sigmoid_2Sigmoid while/lstm_cell_6/split:output:3*
T0*'
_output_shapes
:         o
while/lstm_cell_6/Relu_1Reluwhile/lstm_cell_6/add_1:z:0*
T0*'
_output_shapes
:         Щ
while/lstm_cell_6/mul_2Mulwhile/lstm_cell_6/Sigmoid_2:y:0&while/lstm_cell_6/Relu_1:activations:0*
T0*'
_output_shapes
:         ─
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_6/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/lstm_cell_6/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         x
while/Identity_5Identitywhile/lstm_cell_6/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         ═

while/NoOpNoOp)^while/lstm_cell_6/BiasAdd/ReadVariableOp(^while/lstm_cell_6/MatMul/ReadVariableOp*^while/lstm_cell_6/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_6_biasadd_readvariableop_resource3while_lstm_cell_6_biasadd_readvariableop_resource_0"j
2while_lstm_cell_6_matmul_1_readvariableop_resource4while_lstm_cell_6_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_6_matmul_readvariableop_resource2while_lstm_cell_6_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2T
(while/lstm_cell_6/BiasAdd/ReadVariableOp(while/lstm_cell_6/BiasAdd/ReadVariableOp2R
'while/lstm_cell_6/MatMul/ReadVariableOp'while/lstm_cell_6/MatMul/ReadVariableOp2V
)while/lstm_cell_6/MatMul_1/ReadVariableOp)while/lstm_cell_6/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
: 
Щ

є
B__inference_dense_4_layer_call_and_return_conditional_losses_83398

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:         a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
№J
Р
A__inference_lstm_8_layer_call_and_return_conditional_losses_83894

inputs<
*lstm_cell_8_matmul_readvariableop_resource: >
,lstm_cell_8_matmul_1_readvariableop_resource: 9
+lstm_cell_8_biasadd_readvariableop_resource: 
identityИв"lstm_cell_8/BiasAdd/ReadVariableOpв!lstm_cell_8/MatMul/ReadVariableOpв#lstm_cell_8/MatMul_1/ReadVariableOpвwhileI
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::э╧_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskМ
!lstm_cell_8/MatMul/ReadVariableOpReadVariableOp*lstm_cell_8_matmul_readvariableop_resource*
_output_shapes

: *
dtype0У
lstm_cell_8/MatMulMatMulstrided_slice_2:output:0)lstm_cell_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Р
#lstm_cell_8/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_8_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0Н
lstm_cell_8/MatMul_1MatMulzeros:output:0+lstm_cell_8/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          И
lstm_cell_8/addAddV2lstm_cell_8/MatMul:product:0lstm_cell_8/MatMul_1:product:0*
T0*'
_output_shapes
:          К
"lstm_cell_8/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_8_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0С
lstm_cell_8/BiasAddBiasAddlstm_cell_8/add:z:0*lstm_cell_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ]
lstm_cell_8/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :┌
lstm_cell_8/splitSplit$lstm_cell_8/split/split_dim:output:0lstm_cell_8/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitl
lstm_cell_8/SigmoidSigmoidlstm_cell_8/split:output:0*
T0*'
_output_shapes
:         n
lstm_cell_8/Sigmoid_1Sigmoidlstm_cell_8/split:output:1*
T0*'
_output_shapes
:         u
lstm_cell_8/mulMullstm_cell_8/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         f
lstm_cell_8/ReluRelulstm_cell_8/split:output:2*
T0*'
_output_shapes
:         Г
lstm_cell_8/mul_1Mullstm_cell_8/Sigmoid:y:0lstm_cell_8/Relu:activations:0*
T0*'
_output_shapes
:         x
lstm_cell_8/add_1AddV2lstm_cell_8/mul:z:0lstm_cell_8/mul_1:z:0*
T0*'
_output_shapes
:         n
lstm_cell_8/Sigmoid_2Sigmoidlstm_cell_8/split:output:3*
T0*'
_output_shapes
:         c
lstm_cell_8/Relu_1Relulstm_cell_8/add_1:z:0*
T0*'
_output_shapes
:         З
lstm_cell_8/mul_2Mullstm_cell_8/Sigmoid_2:y:0 lstm_cell_8/Relu_1:activations:0*
T0*'
_output_shapes
:         n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ¤
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_8_matmul_readvariableop_resource,lstm_cell_8_matmul_1_readvariableop_resource+lstm_cell_8_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_83809*
condR
while_cond_83808*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╓
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         *
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:         ╜
NoOpNoOp#^lstm_cell_8/BiasAdd/ReadVariableOp"^lstm_cell_8/MatMul/ReadVariableOp$^lstm_cell_8/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 2H
"lstm_cell_8/BiasAdd/ReadVariableOp"lstm_cell_8/BiasAdd/ReadVariableOp2F
!lstm_cell_8/MatMul/ReadVariableOp!lstm_cell_8/MatMul/ReadVariableOp2J
#lstm_cell_8/MatMul_1/ReadVariableOp#lstm_cell_8/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
ЎI
Р
A__inference_lstm_6_layer_call_and_return_conditional_losses_85736

inputs<
*lstm_cell_6_matmul_readvariableop_resource: >
,lstm_cell_6_matmul_1_readvariableop_resource: 9
+lstm_cell_6_biasadd_readvariableop_resource: 
identityИв"lstm_cell_6/BiasAdd/ReadVariableOpв!lstm_cell_6/MatMul/ReadVariableOpв#lstm_cell_6/MatMul_1/ReadVariableOpвwhileI
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::э╧_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskМ
!lstm_cell_6/MatMul/ReadVariableOpReadVariableOp*lstm_cell_6_matmul_readvariableop_resource*
_output_shapes

: *
dtype0У
lstm_cell_6/MatMulMatMulstrided_slice_2:output:0)lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Р
#lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_6_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0Н
lstm_cell_6/MatMul_1MatMulzeros:output:0+lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          И
lstm_cell_6/addAddV2lstm_cell_6/MatMul:product:0lstm_cell_6/MatMul_1:product:0*
T0*'
_output_shapes
:          К
"lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_6_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0С
lstm_cell_6/BiasAddBiasAddlstm_cell_6/add:z:0*lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ]
lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :┌
lstm_cell_6/splitSplit$lstm_cell_6/split/split_dim:output:0lstm_cell_6/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitl
lstm_cell_6/SigmoidSigmoidlstm_cell_6/split:output:0*
T0*'
_output_shapes
:         n
lstm_cell_6/Sigmoid_1Sigmoidlstm_cell_6/split:output:1*
T0*'
_output_shapes
:         u
lstm_cell_6/mulMullstm_cell_6/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         f
lstm_cell_6/ReluRelulstm_cell_6/split:output:2*
T0*'
_output_shapes
:         Г
lstm_cell_6/mul_1Mullstm_cell_6/Sigmoid:y:0lstm_cell_6/Relu:activations:0*
T0*'
_output_shapes
:         x
lstm_cell_6/add_1AddV2lstm_cell_6/mul:z:0lstm_cell_6/mul_1:z:0*
T0*'
_output_shapes
:         n
lstm_cell_6/Sigmoid_2Sigmoidlstm_cell_6/split:output:3*
T0*'
_output_shapes
:         c
lstm_cell_6/Relu_1Relulstm_cell_6/add_1:z:0*
T0*'
_output_shapes
:         З
lstm_cell_6/mul_2Mullstm_cell_6/Sigmoid_2:y:0 lstm_cell_6/Relu_1:activations:0*
T0*'
_output_shapes
:         n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ¤
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_6_matmul_readvariableop_resource,lstm_cell_6_matmul_1_readvariableop_resource+lstm_cell_6_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_85652*
condR
while_cond_85651*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:         ╜
NoOpNoOp#^lstm_cell_6/BiasAdd/ReadVariableOp"^lstm_cell_6/MatMul/ReadVariableOp$^lstm_cell_6/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 2H
"lstm_cell_6/BiasAdd/ReadVariableOp"lstm_cell_6/BiasAdd/ReadVariableOp2F
!lstm_cell_6/MatMul/ReadVariableOp!lstm_cell_6/MatMul/ReadVariableOp2J
#lstm_cell_6/MatMul_1/ReadVariableOp#lstm_cell_6/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
Т	
╛
while_cond_83495
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_83495___redundant_placeholder03
/while_while_cond_83495___redundant_placeholder13
/while_while_cond_83495___redundant_placeholder23
/while_while_cond_83495___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
:
ф

╩
lstm_7_while_cond_85021*
&lstm_7_while_lstm_7_while_loop_counter0
,lstm_7_while_lstm_7_while_maximum_iterations
lstm_7_while_placeholder
lstm_7_while_placeholder_1
lstm_7_while_placeholder_2
lstm_7_while_placeholder_3,
(lstm_7_while_less_lstm_7_strided_slice_1A
=lstm_7_while_lstm_7_while_cond_85021___redundant_placeholder0A
=lstm_7_while_lstm_7_while_cond_85021___redundant_placeholder1A
=lstm_7_while_lstm_7_while_cond_85021___redundant_placeholder2A
=lstm_7_while_lstm_7_while_cond_85021___redundant_placeholder3
lstm_7_while_identity
~
lstm_7/while/LessLesslstm_7_while_placeholder(lstm_7_while_less_lstm_7_strided_slice_1*
T0*
_output_shapes
: Y
lstm_7/while/IdentityIdentitylstm_7/while/Less:z:0*
T0
*
_output_shapes
: "7
lstm_7_while_identitylstm_7/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : :::::Q M

_output_shapes
: 
3
_user_specified_namelstm_7/while/loop_counter:WS

_output_shapes
: 
9
_user_specified_name!lstm_7/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
:
╪
c
E__inference_dropout_10_layer_call_and_return_conditional_losses_83906

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:         [

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:         "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs
ф
ё
+__inference_lstm_cell_6_layer_call_fn_87300

inputs
states_0
states_1
unknown: 
	unknown_0: 
	unknown_1: 
identity

identity_1

identity_2ИвStatefulPartitionedCallж
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         :         :         *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_lstm_cell_6_layer_call_and_return_conditional_losses_82044o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:         q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         :         : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:QM
'
_output_shapes
:         
"
_user_specified_name
states_0:QM
'
_output_shapes
:         
"
_user_specified_name
states_1
ЎI
Р
A__inference_lstm_7_layer_call_and_return_conditional_losses_86522

inputs<
*lstm_cell_7_matmul_readvariableop_resource: >
,lstm_cell_7_matmul_1_readvariableop_resource: 9
+lstm_cell_7_biasadd_readvariableop_resource: 
identityИв"lstm_cell_7/BiasAdd/ReadVariableOpв!lstm_cell_7/MatMul/ReadVariableOpв#lstm_cell_7/MatMul_1/ReadVariableOpвwhileI
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::э╧_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskМ
!lstm_cell_7/MatMul/ReadVariableOpReadVariableOp*lstm_cell_7_matmul_readvariableop_resource*
_output_shapes

: *
dtype0У
lstm_cell_7/MatMulMatMulstrided_slice_2:output:0)lstm_cell_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Р
#lstm_cell_7/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_7_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0Н
lstm_cell_7/MatMul_1MatMulzeros:output:0+lstm_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          И
lstm_cell_7/addAddV2lstm_cell_7/MatMul:product:0lstm_cell_7/MatMul_1:product:0*
T0*'
_output_shapes
:          К
"lstm_cell_7/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_7_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0С
lstm_cell_7/BiasAddBiasAddlstm_cell_7/add:z:0*lstm_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ]
lstm_cell_7/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :┌
lstm_cell_7/splitSplit$lstm_cell_7/split/split_dim:output:0lstm_cell_7/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitl
lstm_cell_7/SigmoidSigmoidlstm_cell_7/split:output:0*
T0*'
_output_shapes
:         n
lstm_cell_7/Sigmoid_1Sigmoidlstm_cell_7/split:output:1*
T0*'
_output_shapes
:         u
lstm_cell_7/mulMullstm_cell_7/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         f
lstm_cell_7/ReluRelulstm_cell_7/split:output:2*
T0*'
_output_shapes
:         Г
lstm_cell_7/mul_1Mullstm_cell_7/Sigmoid:y:0lstm_cell_7/Relu:activations:0*
T0*'
_output_shapes
:         x
lstm_cell_7/add_1AddV2lstm_cell_7/mul:z:0lstm_cell_7/mul_1:z:0*
T0*'
_output_shapes
:         n
lstm_cell_7/Sigmoid_2Sigmoidlstm_cell_7/split:output:3*
T0*'
_output_shapes
:         c
lstm_cell_7/Relu_1Relulstm_cell_7/add_1:z:0*
T0*'
_output_shapes
:         З
lstm_cell_7/mul_2Mullstm_cell_7/Sigmoid_2:y:0 lstm_cell_7/Relu_1:activations:0*
T0*'
_output_shapes
:         n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ¤
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_7_matmul_readvariableop_resource,lstm_cell_7_matmul_1_readvariableop_resource+lstm_cell_7_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_86438*
condR
while_cond_86437*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:         ╜
NoOpNoOp#^lstm_cell_7/BiasAdd/ReadVariableOp"^lstm_cell_7/MatMul/ReadVariableOp$^lstm_cell_7/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 2H
"lstm_cell_7/BiasAdd/ReadVariableOp"lstm_cell_7/BiasAdd/ReadVariableOp2F
!lstm_cell_7/MatMul/ReadVariableOp!lstm_cell_7/MatMul/ReadVariableOp2J
#lstm_cell_7/MatMul_1/ReadVariableOp#lstm_cell_7/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
Ь8
└
while_body_85795
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
2while_lstm_cell_6_matmul_readvariableop_resource_0: F
4while_lstm_cell_6_matmul_1_readvariableop_resource_0: A
3while_lstm_cell_6_biasadd_readvariableop_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
0while_lstm_cell_6_matmul_readvariableop_resource: D
2while_lstm_cell_6_matmul_1_readvariableop_resource: ?
1while_lstm_cell_6_biasadd_readvariableop_resource: Ив(while/lstm_cell_6/BiasAdd/ReadVariableOpв'while/lstm_cell_6/MatMul/ReadVariableOpв)while/lstm_cell_6/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ъ
'while/lstm_cell_6/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_6_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0╖
while/lstm_cell_6/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Ю
)while/lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_6_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0Ю
while/lstm_cell_6/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Ъ
while/lstm_cell_6/addAddV2"while/lstm_cell_6/MatMul:product:0$while/lstm_cell_6/MatMul_1:product:0*
T0*'
_output_shapes
:          Ш
(while/lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_6_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0г
while/lstm_cell_6/BiasAddBiasAddwhile/lstm_cell_6/add:z:00while/lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          c
!while/lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ь
while/lstm_cell_6/splitSplit*while/lstm_cell_6/split/split_dim:output:0"while/lstm_cell_6/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitx
while/lstm_cell_6/SigmoidSigmoid while/lstm_cell_6/split:output:0*
T0*'
_output_shapes
:         z
while/lstm_cell_6/Sigmoid_1Sigmoid while/lstm_cell_6/split:output:1*
T0*'
_output_shapes
:         Д
while/lstm_cell_6/mulMulwhile/lstm_cell_6/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         r
while/lstm_cell_6/ReluRelu while/lstm_cell_6/split:output:2*
T0*'
_output_shapes
:         Х
while/lstm_cell_6/mul_1Mulwhile/lstm_cell_6/Sigmoid:y:0$while/lstm_cell_6/Relu:activations:0*
T0*'
_output_shapes
:         К
while/lstm_cell_6/add_1AddV2while/lstm_cell_6/mul:z:0while/lstm_cell_6/mul_1:z:0*
T0*'
_output_shapes
:         z
while/lstm_cell_6/Sigmoid_2Sigmoid while/lstm_cell_6/split:output:3*
T0*'
_output_shapes
:         o
while/lstm_cell_6/Relu_1Reluwhile/lstm_cell_6/add_1:z:0*
T0*'
_output_shapes
:         Щ
while/lstm_cell_6/mul_2Mulwhile/lstm_cell_6/Sigmoid_2:y:0&while/lstm_cell_6/Relu_1:activations:0*
T0*'
_output_shapes
:         ─
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_6/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/lstm_cell_6/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         x
while/Identity_5Identitywhile/lstm_cell_6/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         ═

while/NoOpNoOp)^while/lstm_cell_6/BiasAdd/ReadVariableOp(^while/lstm_cell_6/MatMul/ReadVariableOp*^while/lstm_cell_6/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_6_biasadd_readvariableop_resource3while_lstm_cell_6_biasadd_readvariableop_resource_0"j
2while_lstm_cell_6_matmul_1_readvariableop_resource4while_lstm_cell_6_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_6_matmul_readvariableop_resource2while_lstm_cell_6_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2T
(while/lstm_cell_6/BiasAdd/ReadVariableOp(while/lstm_cell_6/BiasAdd/ReadVariableOp2R
'while/lstm_cell_6/MatMul/ReadVariableOp'while/lstm_cell_6/MatMul/ReadVariableOp2V
)while/lstm_cell_6/MatMul_1/ReadVariableOp)while/lstm_cell_6/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
: "є
L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*╕
serving_defaultд
I
lstm_6_input9
serving_default_lstm_6_input:0         ;
dense_50
StatefulPartitionedCall:0         tensorflow/serving/predict:╦╡
▌
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer_with_weights-3
layer-6
layer-7
	layer_with_weights-4
	layer-8

	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
┌
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator
cell

state_spec"
_tf_keras_rnn_layer
╝
	variables
trainable_variables
regularization_losses
	keras_api
 __call__
*!&call_and_return_all_conditional_losses
"_random_generator"
_tf_keras_layer
┌
#	variables
$trainable_variables
%regularization_losses
&	keras_api
'__call__
*(&call_and_return_all_conditional_losses
)_random_generator
*cell
+
state_spec"
_tf_keras_rnn_layer
╝
,	variables
-trainable_variables
.regularization_losses
/	keras_api
0__call__
*1&call_and_return_all_conditional_losses
2_random_generator"
_tf_keras_layer
┌
3	variables
4trainable_variables
5regularization_losses
6	keras_api
7__call__
*8&call_and_return_all_conditional_losses
9_random_generator
:cell
;
state_spec"
_tf_keras_rnn_layer
╝
<	variables
=trainable_variables
>regularization_losses
?	keras_api
@__call__
*A&call_and_return_all_conditional_losses
B_random_generator"
_tf_keras_layer
╗
C	variables
Dtrainable_variables
Eregularization_losses
F	keras_api
G__call__
*H&call_and_return_all_conditional_losses

Ikernel
Jbias"
_tf_keras_layer
╝
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
O__call__
*P&call_and_return_all_conditional_losses
Q_random_generator"
_tf_keras_layer
╗
R	variables
Strainable_variables
Tregularization_losses
U	keras_api
V__call__
*W&call_and_return_all_conditional_losses

Xkernel
Ybias"
_tf_keras_layer
~
Z0
[1
\2
]3
^4
_5
`6
a7
b8
I9
J10
X11
Y12"
trackable_list_wrapper
~
Z0
[1
\2
]3
^4
_5
`6
a7
b8
I9
J10
X11
Y12"
trackable_list_wrapper
 "
trackable_list_wrapper
╩
cnon_trainable_variables

dlayers
emetrics
flayer_regularization_losses
glayer_metrics

	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
█
htrace_0
itrace_1
jtrace_2
ktrace_32Ё
,__inference_sequential_2_layer_call_fn_83996
,__inference_sequential_2_layer_call_fn_84066
,__inference_sequential_2_layer_call_fn_84324
,__inference_sequential_2_layer_call_fn_84355╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zhtrace_0zitrace_1zjtrace_2zktrace_3
╟
ltrace_0
mtrace_1
ntrace_2
otrace_32▄
G__inference_sequential_2_layer_call_and_return_conditional_losses_83435
G__inference_sequential_2_layer_call_and_return_conditional_losses_83925
G__inference_sequential_2_layer_call_and_return_conditional_losses_84823
G__inference_sequential_2_layer_call_and_return_conditional_losses_85263╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zltrace_0zmtrace_1zntrace_2zotrace_3
╨B═
 __inference__wrapped_model_81835lstm_6_input"Ш
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
Ь
p
_variables
q_iterations
r_learning_rate
s_index_dict
t
_momentums
u_velocities
v_update_step_xla"
experimentalOptimizer
,
wserving_default"
signature_map
5
Z0
[1
\2"
trackable_list_wrapper
5
Z0
[1
\2"
trackable_list_wrapper
 "
trackable_list_wrapper
╣

xstates
ynon_trainable_variables

zlayers
{metrics
|layer_regularization_losses
}layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
▄
~trace_0
trace_1
Аtrace_2
Бtrace_32э
&__inference_lstm_6_layer_call_fn_85274
&__inference_lstm_6_layer_call_fn_85285
&__inference_lstm_6_layer_call_fn_85296
&__inference_lstm_6_layer_call_fn_85307╩
├▓┐
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsв

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z~trace_0ztrace_1zАtrace_2zБtrace_3
╠
Вtrace_0
Гtrace_1
Дtrace_2
Еtrace_32┘
A__inference_lstm_6_layer_call_and_return_conditional_losses_85450
A__inference_lstm_6_layer_call_and_return_conditional_losses_85593
A__inference_lstm_6_layer_call_and_return_conditional_losses_85736
A__inference_lstm_6_layer_call_and_return_conditional_losses_85879╩
├▓┐
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsв

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zВtrace_0zГtrace_1zДtrace_2zЕtrace_3
"
_generic_user_object
А
Ж	variables
Зtrainable_variables
Иregularization_losses
Й	keras_api
К__call__
+Л&call_and_return_all_conditional_losses
М_random_generator
Н
state_size

Zkernel
[recurrent_kernel
\bias"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Оnon_trainable_variables
Пlayers
Рmetrics
 Сlayer_regularization_losses
Тlayer_metrics
	variables
trainable_variables
regularization_losses
 __call__
*!&call_and_return_all_conditional_losses
&!"call_and_return_conditional_losses"
_generic_user_object
╜
Уtrace_0
Фtrace_12В
)__inference_dropout_8_layer_call_fn_85884
)__inference_dropout_8_layer_call_fn_85889й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zУtrace_0zФtrace_1
є
Хtrace_0
Цtrace_12╕
D__inference_dropout_8_layer_call_and_return_conditional_losses_85901
D__inference_dropout_8_layer_call_and_return_conditional_losses_85906й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zХtrace_0zЦtrace_1
"
_generic_user_object
5
]0
^1
_2"
trackable_list_wrapper
5
]0
^1
_2"
trackable_list_wrapper
 "
trackable_list_wrapper
┐
Чstates
Шnon_trainable_variables
Щlayers
Ъmetrics
 Ыlayer_regularization_losses
Ьlayer_metrics
#	variables
$trainable_variables
%regularization_losses
'__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses"
_generic_user_object
р
Эtrace_0
Юtrace_1
Яtrace_2
аtrace_32э
&__inference_lstm_7_layer_call_fn_85917
&__inference_lstm_7_layer_call_fn_85928
&__inference_lstm_7_layer_call_fn_85939
&__inference_lstm_7_layer_call_fn_85950╩
├▓┐
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsв

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЭtrace_0zЮtrace_1zЯtrace_2zаtrace_3
╠
бtrace_0
вtrace_1
гtrace_2
дtrace_32┘
A__inference_lstm_7_layer_call_and_return_conditional_losses_86093
A__inference_lstm_7_layer_call_and_return_conditional_losses_86236
A__inference_lstm_7_layer_call_and_return_conditional_losses_86379
A__inference_lstm_7_layer_call_and_return_conditional_losses_86522╩
├▓┐
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsв

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zбtrace_0zвtrace_1zгtrace_2zдtrace_3
"
_generic_user_object
А
е	variables
жtrainable_variables
зregularization_losses
и	keras_api
й__call__
+к&call_and_return_all_conditional_losses
л_random_generator
м
state_size

]kernel
^recurrent_kernel
_bias"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
нnon_trainable_variables
оlayers
пmetrics
 ░layer_regularization_losses
▒layer_metrics
,	variables
-trainable_variables
.regularization_losses
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses"
_generic_user_object
╜
▓trace_0
│trace_12В
)__inference_dropout_9_layer_call_fn_86527
)__inference_dropout_9_layer_call_fn_86532й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z▓trace_0z│trace_1
є
┤trace_0
╡trace_12╕
D__inference_dropout_9_layer_call_and_return_conditional_losses_86544
D__inference_dropout_9_layer_call_and_return_conditional_losses_86549й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z┤trace_0z╡trace_1
"
_generic_user_object
5
`0
a1
b2"
trackable_list_wrapper
5
`0
a1
b2"
trackable_list_wrapper
 "
trackable_list_wrapper
┐
╢states
╖non_trainable_variables
╕layers
╣metrics
 ║layer_regularization_losses
╗layer_metrics
3	variables
4trainable_variables
5regularization_losses
7__call__
*8&call_and_return_all_conditional_losses
&8"call_and_return_conditional_losses"
_generic_user_object
р
╝trace_0
╜trace_1
╛trace_2
┐trace_32э
&__inference_lstm_8_layer_call_fn_86560
&__inference_lstm_8_layer_call_fn_86571
&__inference_lstm_8_layer_call_fn_86582
&__inference_lstm_8_layer_call_fn_86593╩
├▓┐
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsв

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╝trace_0z╜trace_1z╛trace_2z┐trace_3
╠
└trace_0
┴trace_1
┬trace_2
├trace_32┘
A__inference_lstm_8_layer_call_and_return_conditional_losses_86738
A__inference_lstm_8_layer_call_and_return_conditional_losses_86883
A__inference_lstm_8_layer_call_and_return_conditional_losses_87028
A__inference_lstm_8_layer_call_and_return_conditional_losses_87173╩
├▓┐
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsв

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z└trace_0z┴trace_1z┬trace_2z├trace_3
"
_generic_user_object
А
─	variables
┼trainable_variables
╞regularization_losses
╟	keras_api
╚__call__
+╔&call_and_return_all_conditional_losses
╩_random_generator
╦
state_size

`kernel
arecurrent_kernel
bbias"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
╠non_trainable_variables
═layers
╬metrics
 ╧layer_regularization_losses
╨layer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses"
_generic_user_object
┐
╤trace_0
╥trace_12Д
*__inference_dropout_10_layer_call_fn_87178
*__inference_dropout_10_layer_call_fn_87183й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╤trace_0z╥trace_1
ї
╙trace_0
╘trace_12║
E__inference_dropout_10_layer_call_and_return_conditional_losses_87195
E__inference_dropout_10_layer_call_and_return_conditional_losses_87200й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╙trace_0z╘trace_1
"
_generic_user_object
.
I0
J1"
trackable_list_wrapper
.
I0
J1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
╒non_trainable_variables
╓layers
╫metrics
 ╪layer_regularization_losses
┘layer_metrics
C	variables
Dtrainable_variables
Eregularization_losses
G__call__
*H&call_and_return_all_conditional_losses
&H"call_and_return_conditional_losses"
_generic_user_object
у
┌trace_02─
'__inference_dense_4_layer_call_fn_87209Ш
С▓Н
FullArgSpec
argsЪ

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
annotationsк *
 z┌trace_0
■
█trace_02▀
B__inference_dense_4_layer_call_and_return_conditional_losses_87220Ш
С▓Н
FullArgSpec
argsЪ

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
annotationsк *
 z█trace_0
 :2dense_4/kernel
:2dense_4/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
▄non_trainable_variables
▌layers
▐metrics
 ▀layer_regularization_losses
рlayer_metrics
K	variables
Ltrainable_variables
Mregularization_losses
O__call__
*P&call_and_return_all_conditional_losses
&P"call_and_return_conditional_losses"
_generic_user_object
┐
сtrace_0
тtrace_12Д
*__inference_dropout_11_layer_call_fn_87225
*__inference_dropout_11_layer_call_fn_87230й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zсtrace_0zтtrace_1
ї
уtrace_0
фtrace_12║
E__inference_dropout_11_layer_call_and_return_conditional_losses_87242
E__inference_dropout_11_layer_call_and_return_conditional_losses_87247й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zуtrace_0zфtrace_1
"
_generic_user_object
.
X0
Y1"
trackable_list_wrapper
.
X0
Y1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
хnon_trainable_variables
цlayers
чmetrics
 шlayer_regularization_losses
щlayer_metrics
R	variables
Strainable_variables
Tregularization_losses
V__call__
*W&call_and_return_all_conditional_losses
&W"call_and_return_conditional_losses"
_generic_user_object
у
ъtrace_02─
'__inference_dense_5_layer_call_fn_87256Ш
С▓Н
FullArgSpec
argsЪ

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
annotationsк *
 zъtrace_0
■
ыtrace_02▀
B__inference_dense_5_layer_call_and_return_conditional_losses_87266Ш
С▓Н
FullArgSpec
argsЪ

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
annotationsк *
 zыtrace_0
 :2dense_5/kernel
:2dense_5/bias
+:) 2lstm_6/lstm_cell_6/kernel
5:3 2#lstm_6/lstm_cell_6/recurrent_kernel
%:# 2lstm_6/lstm_cell_6/bias
+:) 2lstm_7/lstm_cell_7/kernel
5:3 2#lstm_7/lstm_cell_7/recurrent_kernel
%:# 2lstm_7/lstm_cell_7/bias
+:) 2lstm_8/lstm_cell_8/kernel
5:3 2#lstm_8/lstm_cell_8/recurrent_kernel
%:# 2lstm_8/lstm_cell_8/bias
 "
trackable_list_wrapper
_
0
1
2
3
4
5
6
7
	8"
trackable_list_wrapper
0
ь0
э1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
∙BЎ
,__inference_sequential_2_layer_call_fn_83996lstm_6_input"╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
∙BЎ
,__inference_sequential_2_layer_call_fn_84066lstm_6_input"╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
єBЁ
,__inference_sequential_2_layer_call_fn_84324inputs"╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
єBЁ
,__inference_sequential_2_layer_call_fn_84355inputs"╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ФBС
G__inference_sequential_2_layer_call_and_return_conditional_losses_83435lstm_6_input"╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ФBС
G__inference_sequential_2_layer_call_and_return_conditional_losses_83925lstm_6_input"╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ОBЛ
G__inference_sequential_2_layer_call_and_return_conditional_losses_84823inputs"╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ОBЛ
G__inference_sequential_2_layer_call_and_return_conditional_losses_85263inputs"╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
И
q0
ю1
я2
Ё3
ё4
Є5
є6
Ї7
ї8
Ў9
ў10
°11
∙12
·13
√14
№15
¤16
■17
 18
А19
Б20
В21
Г22
Д23
Е24
Ж25
З26"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
Л
ю0
Ё1
Є2
Ї3
Ў4
°5
·6
№7
■8
А9
В10
Д11
Ж12"
trackable_list_wrapper
Л
я0
ё1
є2
ї3
ў4
∙5
√6
¤7
 8
Б9
Г10
Е11
З12"
trackable_list_wrapper
╡2▓п
ж▓в
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
╧B╠
#__inference_signature_wrapper_84293lstm_6_input"Ф
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
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ДBБ
&__inference_lstm_6_layer_call_fn_85274inputs_0"╩
├▓┐
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsв

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ДBБ
&__inference_lstm_6_layer_call_fn_85285inputs_0"╩
├▓┐
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsв

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ВB 
&__inference_lstm_6_layer_call_fn_85296inputs"╩
├▓┐
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsв

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ВB 
&__inference_lstm_6_layer_call_fn_85307inputs"╩
├▓┐
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsв

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЯBЬ
A__inference_lstm_6_layer_call_and_return_conditional_losses_85450inputs_0"╩
├▓┐
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsв

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЯBЬ
A__inference_lstm_6_layer_call_and_return_conditional_losses_85593inputs_0"╩
├▓┐
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsв

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЭBЪ
A__inference_lstm_6_layer_call_and_return_conditional_losses_85736inputs"╩
├▓┐
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsв

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЭBЪ
A__inference_lstm_6_layer_call_and_return_conditional_losses_85879inputs"╩
├▓┐
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsв

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
5
Z0
[1
\2"
trackable_list_wrapper
5
Z0
[1
\2"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Иnon_trainable_variables
Йlayers
Кmetrics
 Лlayer_regularization_losses
Мlayer_metrics
Ж	variables
Зtrainable_variables
Иregularization_losses
К__call__
+Л&call_and_return_all_conditional_losses
'Л"call_and_return_conditional_losses"
_generic_user_object
╦
Нtrace_0
Оtrace_12Р
+__inference_lstm_cell_6_layer_call_fn_87283
+__inference_lstm_cell_6_layer_call_fn_87300│
м▓и
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zНtrace_0zОtrace_1
Б
Пtrace_0
Рtrace_12╞
F__inference_lstm_cell_6_layer_call_and_return_conditional_losses_87332
F__inference_lstm_cell_6_layer_call_and_return_conditional_losses_87364│
м▓и
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zПtrace_0zРtrace_1
"
_generic_user_object
 "
trackable_list_wrapper
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
фBс
)__inference_dropout_8_layer_call_fn_85884inputs"й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
фBс
)__inference_dropout_8_layer_call_fn_85889inputs"й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 B№
D__inference_dropout_8_layer_call_and_return_conditional_losses_85901inputs"й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 B№
D__inference_dropout_8_layer_call_and_return_conditional_losses_85906inputs"й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
*0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ДBБ
&__inference_lstm_7_layer_call_fn_85917inputs_0"╩
├▓┐
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsв

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ДBБ
&__inference_lstm_7_layer_call_fn_85928inputs_0"╩
├▓┐
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsв

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ВB 
&__inference_lstm_7_layer_call_fn_85939inputs"╩
├▓┐
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsв

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ВB 
&__inference_lstm_7_layer_call_fn_85950inputs"╩
├▓┐
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsв

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЯBЬ
A__inference_lstm_7_layer_call_and_return_conditional_losses_86093inputs_0"╩
├▓┐
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsв

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЯBЬ
A__inference_lstm_7_layer_call_and_return_conditional_losses_86236inputs_0"╩
├▓┐
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsв

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЭBЪ
A__inference_lstm_7_layer_call_and_return_conditional_losses_86379inputs"╩
├▓┐
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsв

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЭBЪ
A__inference_lstm_7_layer_call_and_return_conditional_losses_86522inputs"╩
├▓┐
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsв

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
5
]0
^1
_2"
trackable_list_wrapper
5
]0
^1
_2"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Сnon_trainable_variables
Тlayers
Уmetrics
 Фlayer_regularization_losses
Хlayer_metrics
е	variables
жtrainable_variables
зregularization_losses
й__call__
+к&call_and_return_all_conditional_losses
'к"call_and_return_conditional_losses"
_generic_user_object
╦
Цtrace_0
Чtrace_12Р
+__inference_lstm_cell_7_layer_call_fn_87381
+__inference_lstm_cell_7_layer_call_fn_87398│
м▓и
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЦtrace_0zЧtrace_1
Б
Шtrace_0
Щtrace_12╞
F__inference_lstm_cell_7_layer_call_and_return_conditional_losses_87430
F__inference_lstm_cell_7_layer_call_and_return_conditional_losses_87462│
м▓и
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zШtrace_0zЩtrace_1
"
_generic_user_object
 "
trackable_list_wrapper
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
фBс
)__inference_dropout_9_layer_call_fn_86527inputs"й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
фBс
)__inference_dropout_9_layer_call_fn_86532inputs"й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 B№
D__inference_dropout_9_layer_call_and_return_conditional_losses_86544inputs"й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 B№
D__inference_dropout_9_layer_call_and_return_conditional_losses_86549inputs"й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
:0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ДBБ
&__inference_lstm_8_layer_call_fn_86560inputs_0"╩
├▓┐
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsв

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ДBБ
&__inference_lstm_8_layer_call_fn_86571inputs_0"╩
├▓┐
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsв

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ВB 
&__inference_lstm_8_layer_call_fn_86582inputs"╩
├▓┐
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsв

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ВB 
&__inference_lstm_8_layer_call_fn_86593inputs"╩
├▓┐
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsв

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЯBЬ
A__inference_lstm_8_layer_call_and_return_conditional_losses_86738inputs_0"╩
├▓┐
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsв

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЯBЬ
A__inference_lstm_8_layer_call_and_return_conditional_losses_86883inputs_0"╩
├▓┐
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsв

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЭBЪ
A__inference_lstm_8_layer_call_and_return_conditional_losses_87028inputs"╩
├▓┐
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsв

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЭBЪ
A__inference_lstm_8_layer_call_and_return_conditional_losses_87173inputs"╩
├▓┐
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsв

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
5
`0
a1
b2"
trackable_list_wrapper
5
`0
a1
b2"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Ъnon_trainable_variables
Ыlayers
Ьmetrics
 Эlayer_regularization_losses
Юlayer_metrics
─	variables
┼trainable_variables
╞regularization_losses
╚__call__
+╔&call_and_return_all_conditional_losses
'╔"call_and_return_conditional_losses"
_generic_user_object
╦
Яtrace_0
аtrace_12Р
+__inference_lstm_cell_8_layer_call_fn_87479
+__inference_lstm_cell_8_layer_call_fn_87496│
м▓и
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЯtrace_0zаtrace_1
Б
бtrace_0
вtrace_12╞
F__inference_lstm_cell_8_layer_call_and_return_conditional_losses_87528
F__inference_lstm_cell_8_layer_call_and_return_conditional_losses_87560│
м▓и
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zбtrace_0zвtrace_1
"
_generic_user_object
 "
trackable_list_wrapper
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
хBт
*__inference_dropout_10_layer_call_fn_87178inputs"й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
хBт
*__inference_dropout_10_layer_call_fn_87183inputs"й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
АB¤
E__inference_dropout_10_layer_call_and_return_conditional_losses_87195inputs"й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
АB¤
E__inference_dropout_10_layer_call_and_return_conditional_losses_87200inputs"й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

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
╤B╬
'__inference_dense_4_layer_call_fn_87209inputs"Ш
С▓Н
FullArgSpec
argsЪ

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
annotationsк *
 
ьBщ
B__inference_dense_4_layer_call_and_return_conditional_losses_87220inputs"Ш
С▓Н
FullArgSpec
argsЪ

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
хBт
*__inference_dropout_11_layer_call_fn_87225inputs"й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
хBт
*__inference_dropout_11_layer_call_fn_87230inputs"й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
АB¤
E__inference_dropout_11_layer_call_and_return_conditional_losses_87242inputs"й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
АB¤
E__inference_dropout_11_layer_call_and_return_conditional_losses_87247inputs"й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

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
╤B╬
'__inference_dense_5_layer_call_fn_87256inputs"Ш
С▓Н
FullArgSpec
argsЪ

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
annotationsк *
 
ьBщ
B__inference_dense_5_layer_call_and_return_conditional_losses_87266inputs"Ш
С▓Н
FullArgSpec
argsЪ

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
annotationsк *
 
R
г	variables
д	keras_api

еtotal

жcount"
_tf_keras_metric
c
з	variables
и	keras_api

йtotal

кcount
л
_fn_kwargs"
_tf_keras_metric
0:. 2 Adam/m/lstm_6/lstm_cell_6/kernel
0:. 2 Adam/v/lstm_6/lstm_cell_6/kernel
::8 2*Adam/m/lstm_6/lstm_cell_6/recurrent_kernel
::8 2*Adam/v/lstm_6/lstm_cell_6/recurrent_kernel
*:( 2Adam/m/lstm_6/lstm_cell_6/bias
*:( 2Adam/v/lstm_6/lstm_cell_6/bias
0:. 2 Adam/m/lstm_7/lstm_cell_7/kernel
0:. 2 Adam/v/lstm_7/lstm_cell_7/kernel
::8 2*Adam/m/lstm_7/lstm_cell_7/recurrent_kernel
::8 2*Adam/v/lstm_7/lstm_cell_7/recurrent_kernel
*:( 2Adam/m/lstm_7/lstm_cell_7/bias
*:( 2Adam/v/lstm_7/lstm_cell_7/bias
0:. 2 Adam/m/lstm_8/lstm_cell_8/kernel
0:. 2 Adam/v/lstm_8/lstm_cell_8/kernel
::8 2*Adam/m/lstm_8/lstm_cell_8/recurrent_kernel
::8 2*Adam/v/lstm_8/lstm_cell_8/recurrent_kernel
*:( 2Adam/m/lstm_8/lstm_cell_8/bias
*:( 2Adam/v/lstm_8/lstm_cell_8/bias
%:#2Adam/m/dense_4/kernel
%:#2Adam/v/dense_4/kernel
:2Adam/m/dense_4/bias
:2Adam/v/dense_4/bias
%:#2Adam/m/dense_5/kernel
%:#2Adam/v/dense_5/kernel
:2Adam/m/dense_5/bias
:2Adam/v/dense_5/bias
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
ДBБ
+__inference_lstm_cell_6_layer_call_fn_87283inputsstates_0states_1"│
м▓и
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ДBБ
+__inference_lstm_cell_6_layer_call_fn_87300inputsstates_0states_1"│
м▓и
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЯBЬ
F__inference_lstm_cell_6_layer_call_and_return_conditional_losses_87332inputsstates_0states_1"│
м▓и
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЯBЬ
F__inference_lstm_cell_6_layer_call_and_return_conditional_losses_87364inputsstates_0states_1"│
м▓и
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsв
p 

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
ДBБ
+__inference_lstm_cell_7_layer_call_fn_87381inputsstates_0states_1"│
м▓и
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ДBБ
+__inference_lstm_cell_7_layer_call_fn_87398inputsstates_0states_1"│
м▓и
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЯBЬ
F__inference_lstm_cell_7_layer_call_and_return_conditional_losses_87430inputsstates_0states_1"│
м▓и
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЯBЬ
F__inference_lstm_cell_7_layer_call_and_return_conditional_losses_87462inputsstates_0states_1"│
м▓и
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsв
p 

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
ДBБ
+__inference_lstm_cell_8_layer_call_fn_87479inputsstates_0states_1"│
м▓и
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ДBБ
+__inference_lstm_cell_8_layer_call_fn_87496inputsstates_0states_1"│
м▓и
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЯBЬ
F__inference_lstm_cell_8_layer_call_and_return_conditional_losses_87528inputsstates_0states_1"│
м▓и
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЯBЬ
F__inference_lstm_cell_8_layer_call_and_return_conditional_losses_87560inputsstates_0states_1"│
м▓и
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
0
е0
ж1"
trackable_list_wrapper
.
г	variables"
_generic_user_object
:  (2total
:  (2count
0
й0
к1"
trackable_list_wrapper
.
з	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapperб
 __inference__wrapped_model_81835}Z[\]^_`abIJXY9в6
/в,
*К'
lstm_6_input         
к "1к.
,
dense_5!К
dense_5         й
B__inference_dense_4_layer_call_and_return_conditional_losses_87220cIJ/в,
%в"
 К
inputs         
к ",в)
"К
tensor_0         
Ъ Г
'__inference_dense_4_layer_call_fn_87209XIJ/в,
%в"
 К
inputs         
к "!К
unknown         й
B__inference_dense_5_layer_call_and_return_conditional_losses_87266cXY/в,
%в"
 К
inputs         
к ",в)
"К
tensor_0         
Ъ Г
'__inference_dense_5_layer_call_fn_87256XXY/в,
%в"
 К
inputs         
к "!К
unknown         м
E__inference_dropout_10_layer_call_and_return_conditional_losses_87195c3в0
)в&
 К
inputs         
p
к ",в)
"К
tensor_0         
Ъ м
E__inference_dropout_10_layer_call_and_return_conditional_losses_87200c3в0
)в&
 К
inputs         
p 
к ",в)
"К
tensor_0         
Ъ Ж
*__inference_dropout_10_layer_call_fn_87178X3в0
)в&
 К
inputs         
p
к "!К
unknown         Ж
*__inference_dropout_10_layer_call_fn_87183X3в0
)в&
 К
inputs         
p 
к "!К
unknown         м
E__inference_dropout_11_layer_call_and_return_conditional_losses_87242c3в0
)в&
 К
inputs         
p
к ",в)
"К
tensor_0         
Ъ м
E__inference_dropout_11_layer_call_and_return_conditional_losses_87247c3в0
)в&
 К
inputs         
p 
к ",в)
"К
tensor_0         
Ъ Ж
*__inference_dropout_11_layer_call_fn_87225X3в0
)в&
 К
inputs         
p
к "!К
unknown         Ж
*__inference_dropout_11_layer_call_fn_87230X3в0
)в&
 К
inputs         
p 
к "!К
unknown         │
D__inference_dropout_8_layer_call_and_return_conditional_losses_85901k7в4
-в*
$К!
inputs         
p
к "0в-
&К#
tensor_0         
Ъ │
D__inference_dropout_8_layer_call_and_return_conditional_losses_85906k7в4
-в*
$К!
inputs         
p 
к "0в-
&К#
tensor_0         
Ъ Н
)__inference_dropout_8_layer_call_fn_85884`7в4
-в*
$К!
inputs         
p
к "%К"
unknown         Н
)__inference_dropout_8_layer_call_fn_85889`7в4
-в*
$К!
inputs         
p 
к "%К"
unknown         │
D__inference_dropout_9_layer_call_and_return_conditional_losses_86544k7в4
-в*
$К!
inputs         
p
к "0в-
&К#
tensor_0         
Ъ │
D__inference_dropout_9_layer_call_and_return_conditional_losses_86549k7в4
-в*
$К!
inputs         
p 
к "0в-
&К#
tensor_0         
Ъ Н
)__inference_dropout_9_layer_call_fn_86527`7в4
-в*
$К!
inputs         
p
к "%К"
unknown         Н
)__inference_dropout_9_layer_call_fn_86532`7в4
-в*
$К!
inputs         
p 
к "%К"
unknown         ╫
A__inference_lstm_6_layer_call_and_return_conditional_losses_85450СZ[\OвL
EвB
4Ъ1
/К,
inputs_0                  

 
p

 
к "9в6
/К,
tensor_0                  
Ъ ╫
A__inference_lstm_6_layer_call_and_return_conditional_losses_85593СZ[\OвL
EвB
4Ъ1
/К,
inputs_0                  

 
p 

 
к "9в6
/К,
tensor_0                  
Ъ ╜
A__inference_lstm_6_layer_call_and_return_conditional_losses_85736xZ[\?в<
5в2
$К!
inputs         

 
p

 
к "0в-
&К#
tensor_0         
Ъ ╜
A__inference_lstm_6_layer_call_and_return_conditional_losses_85879xZ[\?в<
5в2
$К!
inputs         

 
p 

 
к "0в-
&К#
tensor_0         
Ъ ▒
&__inference_lstm_6_layer_call_fn_85274ЖZ[\OвL
EвB
4Ъ1
/К,
inputs_0                  

 
p

 
к ".К+
unknown                  ▒
&__inference_lstm_6_layer_call_fn_85285ЖZ[\OвL
EвB
4Ъ1
/К,
inputs_0                  

 
p 

 
к ".К+
unknown                  Ч
&__inference_lstm_6_layer_call_fn_85296mZ[\?в<
5в2
$К!
inputs         

 
p

 
к "%К"
unknown         Ч
&__inference_lstm_6_layer_call_fn_85307mZ[\?в<
5в2
$К!
inputs         

 
p 

 
к "%К"
unknown         ╫
A__inference_lstm_7_layer_call_and_return_conditional_losses_86093С]^_OвL
EвB
4Ъ1
/К,
inputs_0                  

 
p

 
к "9в6
/К,
tensor_0                  
Ъ ╫
A__inference_lstm_7_layer_call_and_return_conditional_losses_86236С]^_OвL
EвB
4Ъ1
/К,
inputs_0                  

 
p 

 
к "9в6
/К,
tensor_0                  
Ъ ╜
A__inference_lstm_7_layer_call_and_return_conditional_losses_86379x]^_?в<
5в2
$К!
inputs         

 
p

 
к "0в-
&К#
tensor_0         
Ъ ╜
A__inference_lstm_7_layer_call_and_return_conditional_losses_86522x]^_?в<
5в2
$К!
inputs         

 
p 

 
к "0в-
&К#
tensor_0         
Ъ ▒
&__inference_lstm_7_layer_call_fn_85917Ж]^_OвL
EвB
4Ъ1
/К,
inputs_0                  

 
p

 
к ".К+
unknown                  ▒
&__inference_lstm_7_layer_call_fn_85928Ж]^_OвL
EвB
4Ъ1
/К,
inputs_0                  

 
p 

 
к ".К+
unknown                  Ч
&__inference_lstm_7_layer_call_fn_85939m]^_?в<
5в2
$К!
inputs         

 
p

 
к "%К"
unknown         Ч
&__inference_lstm_7_layer_call_fn_85950m]^_?в<
5в2
$К!
inputs         

 
p 

 
к "%К"
unknown         ╩
A__inference_lstm_8_layer_call_and_return_conditional_losses_86738Д`abOвL
EвB
4Ъ1
/К,
inputs_0                  

 
p

 
к ",в)
"К
tensor_0         
Ъ ╩
A__inference_lstm_8_layer_call_and_return_conditional_losses_86883Д`abOвL
EвB
4Ъ1
/К,
inputs_0                  

 
p 

 
к ",в)
"К
tensor_0         
Ъ ╣
A__inference_lstm_8_layer_call_and_return_conditional_losses_87028t`ab?в<
5в2
$К!
inputs         

 
p

 
к ",в)
"К
tensor_0         
Ъ ╣
A__inference_lstm_8_layer_call_and_return_conditional_losses_87173t`ab?в<
5в2
$К!
inputs         

 
p 

 
к ",в)
"К
tensor_0         
Ъ г
&__inference_lstm_8_layer_call_fn_86560y`abOвL
EвB
4Ъ1
/К,
inputs_0                  

 
p

 
к "!К
unknown         г
&__inference_lstm_8_layer_call_fn_86571y`abOвL
EвB
4Ъ1
/К,
inputs_0                  

 
p 

 
к "!К
unknown         У
&__inference_lstm_8_layer_call_fn_86582i`ab?в<
5в2
$К!
inputs         

 
p

 
к "!К
unknown         У
&__inference_lstm_8_layer_call_fn_86593i`ab?в<
5в2
$К!
inputs         

 
p 

 
к "!К
unknown         ▀
F__inference_lstm_cell_6_layer_call_and_return_conditional_losses_87332ФZ[\Ав}
vвs
 К
inputs         
KвH
"К
states_0         
"К
states_1         
p
к "ЙвЕ
~в{
$К!

tensor_0_0         
SЪP
&К#
tensor_0_1_0         
&К#
tensor_0_1_1         
Ъ ▀
F__inference_lstm_cell_6_layer_call_and_return_conditional_losses_87364ФZ[\Ав}
vвs
 К
inputs         
KвH
"К
states_0         
"К
states_1         
p 
к "ЙвЕ
~в{
$К!

tensor_0_0         
SЪP
&К#
tensor_0_1_0         
&К#
tensor_0_1_1         
Ъ ▓
+__inference_lstm_cell_6_layer_call_fn_87283ВZ[\Ав}
vвs
 К
inputs         
KвH
"К
states_0         
"К
states_1         
p
к "xвu
"К
tensor_0         
OЪL
$К!

tensor_1_0         
$К!

tensor_1_1         ▓
+__inference_lstm_cell_6_layer_call_fn_87300ВZ[\Ав}
vвs
 К
inputs         
KвH
"К
states_0         
"К
states_1         
p 
к "xвu
"К
tensor_0         
OЪL
$К!

tensor_1_0         
$К!

tensor_1_1         ▀
F__inference_lstm_cell_7_layer_call_and_return_conditional_losses_87430Ф]^_Ав}
vвs
 К
inputs         
KвH
"К
states_0         
"К
states_1         
p
к "ЙвЕ
~в{
$К!

tensor_0_0         
SЪP
&К#
tensor_0_1_0         
&К#
tensor_0_1_1         
Ъ ▀
F__inference_lstm_cell_7_layer_call_and_return_conditional_losses_87462Ф]^_Ав}
vвs
 К
inputs         
KвH
"К
states_0         
"К
states_1         
p 
к "ЙвЕ
~в{
$К!

tensor_0_0         
SЪP
&К#
tensor_0_1_0         
&К#
tensor_0_1_1         
Ъ ▓
+__inference_lstm_cell_7_layer_call_fn_87381В]^_Ав}
vвs
 К
inputs         
KвH
"К
states_0         
"К
states_1         
p
к "xвu
"К
tensor_0         
OЪL
$К!

tensor_1_0         
$К!

tensor_1_1         ▓
+__inference_lstm_cell_7_layer_call_fn_87398В]^_Ав}
vвs
 К
inputs         
KвH
"К
states_0         
"К
states_1         
p 
к "xвu
"К
tensor_0         
OЪL
$К!

tensor_1_0         
$К!

tensor_1_1         ▀
F__inference_lstm_cell_8_layer_call_and_return_conditional_losses_87528Ф`abАв}
vвs
 К
inputs         
KвH
"К
states_0         
"К
states_1         
p
к "ЙвЕ
~в{
$К!

tensor_0_0         
SЪP
&К#
tensor_0_1_0         
&К#
tensor_0_1_1         
Ъ ▀
F__inference_lstm_cell_8_layer_call_and_return_conditional_losses_87560Ф`abАв}
vвs
 К
inputs         
KвH
"К
states_0         
"К
states_1         
p 
к "ЙвЕ
~в{
$К!

tensor_0_0         
SЪP
&К#
tensor_0_1_0         
&К#
tensor_0_1_1         
Ъ ▓
+__inference_lstm_cell_8_layer_call_fn_87479В`abАв}
vвs
 К
inputs         
KвH
"К
states_0         
"К
states_1         
p
к "xвu
"К
tensor_0         
OЪL
$К!

tensor_1_0         
$К!

tensor_1_1         ▓
+__inference_lstm_cell_8_layer_call_fn_87496В`abАв}
vвs
 К
inputs         
KвH
"К
states_0         
"К
states_1         
p 
к "xвu
"К
tensor_0         
OЪL
$К!

tensor_1_0         
$К!

tensor_1_1         ╠
G__inference_sequential_2_layer_call_and_return_conditional_losses_83435АZ[\]^_`abIJXYAв>
7в4
*К'
lstm_6_input         
p

 
к ",в)
"К
tensor_0         
Ъ ╠
G__inference_sequential_2_layer_call_and_return_conditional_losses_83925АZ[\]^_`abIJXYAв>
7в4
*К'
lstm_6_input         
p 

 
к ",в)
"К
tensor_0         
Ъ ┼
G__inference_sequential_2_layer_call_and_return_conditional_losses_84823zZ[\]^_`abIJXY;в8
1в.
$К!
inputs         
p

 
к ",в)
"К
tensor_0         
Ъ ┼
G__inference_sequential_2_layer_call_and_return_conditional_losses_85263zZ[\]^_`abIJXY;в8
1в.
$К!
inputs         
p 

 
к ",в)
"К
tensor_0         
Ъ е
,__inference_sequential_2_layer_call_fn_83996uZ[\]^_`abIJXYAв>
7в4
*К'
lstm_6_input         
p

 
к "!К
unknown         е
,__inference_sequential_2_layer_call_fn_84066uZ[\]^_`abIJXYAв>
7в4
*К'
lstm_6_input         
p 

 
к "!К
unknown         Я
,__inference_sequential_2_layer_call_fn_84324oZ[\]^_`abIJXY;в8
1в.
$К!
inputs         
p

 
к "!К
unknown         Я
,__inference_sequential_2_layer_call_fn_84355oZ[\]^_`abIJXY;в8
1в.
$К!
inputs         
p 

 
к "!К
unknown         ╡
#__inference_signature_wrapper_84293НZ[\]^_`abIJXYIвF
в 
?к<
:
lstm_6_input*К'
lstm_6_input         "1к.
,
dense_5!К
dense_5         