×

Ý
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
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

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

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
delete_old_dirsbool(
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
Á
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
executor_typestring ¨
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

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.8.02v2.8.0-rc1-32-g3f878cff5b68	

conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d/kernel
x
!conv2d/kernel/Read/ReadVariableOpReadVariableOpconv2d/kernel*'
_output_shapes
:*
dtype0
o
conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d/bias
h
conv2d/bias/Read/ReadVariableOpReadVariableOpconv2d/bias*
_output_shapes	
:*
dtype0

conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:P* 
shared_nameconv2d_1/kernel
|
#conv2d_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_1/kernel*'
_output_shapes
:P*
dtype0
r
conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:P*
shared_nameconv2d_1/bias
k
!conv2d_1/bias/Read/ReadVariableOpReadVariableOpconv2d_1/bias*
_output_shapes
:P*
dtype0

conv2d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:P2* 
shared_nameconv2d_2/kernel
{
#conv2d_2/kernel/Read/ReadVariableOpReadVariableOpconv2d_2/kernel*&
_output_shapes
:P2*
dtype0
r
conv2d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*
shared_nameconv2d_2/bias
k
!conv2d_2/bias/Read/ReadVariableOpReadVariableOpconv2d_2/bias*
_output_shapes
:2*
dtype0
v
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
½d*
shared_namedense/kernel
o
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel* 
_output_shapes
:
½d*
dtype0
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:d*
dtype0
x
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d2*
shared_namedense_1/kernel
q
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes

:d2*
dtype0
p
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:2*
dtype0
x
dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*
shared_namedense_2/kernel
q
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*
_output_shapes

:2*
dtype0
p
dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_2/bias
i
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
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

Adam/conv2d/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv2d/kernel/m

(Adam/conv2d/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d/kernel/m*'
_output_shapes
:*
dtype0
}
Adam/conv2d/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/conv2d/bias/m
v
&Adam/conv2d/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d/bias/m*
_output_shapes	
:*
dtype0

Adam/conv2d_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:P*'
shared_nameAdam/conv2d_1/kernel/m

*Adam/conv2d_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_1/kernel/m*'
_output_shapes
:P*
dtype0

Adam/conv2d_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:P*%
shared_nameAdam/conv2d_1/bias/m
y
(Adam/conv2d_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_1/bias/m*
_output_shapes
:P*
dtype0

Adam/conv2d_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:P2*'
shared_nameAdam/conv2d_2/kernel/m

*Adam/conv2d_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_2/kernel/m*&
_output_shapes
:P2*
dtype0

Adam/conv2d_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*%
shared_nameAdam/conv2d_2/bias/m
y
(Adam/conv2d_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_2/bias/m*
_output_shapes
:2*
dtype0

Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
½d*$
shared_nameAdam/dense/kernel/m
}
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m* 
_output_shapes
:
½d*
dtype0
z
Adam/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*"
shared_nameAdam/dense/bias/m
s
%Adam/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense/bias/m*
_output_shapes
:d*
dtype0

Adam/dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d2*&
shared_nameAdam/dense_1/kernel/m

)Adam/dense_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/m*
_output_shapes

:d2*
dtype0
~
Adam/dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*$
shared_nameAdam/dense_1/bias/m
w
'Adam/dense_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/m*
_output_shapes
:2*
dtype0

Adam/dense_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*&
shared_nameAdam/dense_2/kernel/m

)Adam/dense_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/m*
_output_shapes

:2*
dtype0
~
Adam/dense_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_2/bias/m
w
'Adam/dense_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/m*
_output_shapes
:*
dtype0

Adam/conv2d/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv2d/kernel/v

(Adam/conv2d/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d/kernel/v*'
_output_shapes
:*
dtype0
}
Adam/conv2d/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/conv2d/bias/v
v
&Adam/conv2d/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d/bias/v*
_output_shapes	
:*
dtype0

Adam/conv2d_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:P*'
shared_nameAdam/conv2d_1/kernel/v

*Adam/conv2d_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_1/kernel/v*'
_output_shapes
:P*
dtype0

Adam/conv2d_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:P*%
shared_nameAdam/conv2d_1/bias/v
y
(Adam/conv2d_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_1/bias/v*
_output_shapes
:P*
dtype0

Adam/conv2d_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:P2*'
shared_nameAdam/conv2d_2/kernel/v

*Adam/conv2d_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_2/kernel/v*&
_output_shapes
:P2*
dtype0

Adam/conv2d_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*%
shared_nameAdam/conv2d_2/bias/v
y
(Adam/conv2d_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_2/bias/v*
_output_shapes
:2*
dtype0

Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
½d*$
shared_nameAdam/dense/kernel/v
}
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v* 
_output_shapes
:
½d*
dtype0
z
Adam/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*"
shared_nameAdam/dense/bias/v
s
%Adam/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense/bias/v*
_output_shapes
:d*
dtype0

Adam/dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d2*&
shared_nameAdam/dense_1/kernel/v

)Adam/dense_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/v*
_output_shapes

:d2*
dtype0
~
Adam/dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*$
shared_nameAdam/dense_1/bias/v
w
'Adam/dense_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/v*
_output_shapes
:2*
dtype0

Adam/dense_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*&
shared_nameAdam/dense_2/kernel/v

)Adam/dense_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/v*
_output_shapes

:2*
dtype0
~
Adam/dense_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_2/bias/v
w
'Adam/dense_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
ý[
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*¸[
value®[B«[ B¤[
ê
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer-4
layer-5
layer_with_weights-3
layer-6
layer_with_weights-4
layer-7
	layer-8

layer_with_weights-5

layer-9
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
¦

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*

	variables
trainable_variables
regularization_losses
	keras_api
 __call__
*!&call_and_return_all_conditional_losses* 
¦

"kernel
#bias
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses*
¦

*kernel
+bias
,	variables
-trainable_variables
.regularization_losses
/	keras_api
0__call__
*1&call_and_return_all_conditional_losses*

2	variables
3trainable_variables
4regularization_losses
5	keras_api
6__call__
*7&call_and_return_all_conditional_losses* 

8	variables
9trainable_variables
:regularization_losses
;	keras_api
<__call__
*=&call_and_return_all_conditional_losses* 
¦

>kernel
?bias
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
D__call__
*E&call_and_return_all_conditional_losses*
¦

Fkernel
Gbias
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api
L__call__
*M&call_and_return_all_conditional_losses*
¥
N	variables
Otrainable_variables
Pregularization_losses
Q	keras_api
R_random_generator
S__call__
*T&call_and_return_all_conditional_losses* 
¦

Ukernel
Vbias
W	variables
Xtrainable_variables
Yregularization_losses
Z	keras_api
[__call__
*\&call_and_return_all_conditional_losses*
´
]iter

^beta_1

_beta_2
	`decay
alearning_ratem¥m¦"m§#m¨*m©+mª>m«?m¬Fm­Gm®Um¯Vm°v±v²"v³#v´*vµ+v¶>v·?v¸Fv¹GvºUv»Vv¼*
Z
0
1
"2
#3
*4
+5
>6
?7
F8
G9
U10
V11*
Z
0
1
"2
#3
*4
+5
>6
?7
F8
G9
U10
V11*
* 
°
bnon_trainable_variables

clayers
dmetrics
elayer_regularization_losses
flayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 

gserving_default* 
]W
VARIABLE_VALUEconv2d/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEconv2d/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 

hnon_trainable_variables

ilayers
jmetrics
klayer_regularization_losses
llayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

mnon_trainable_variables

nlayers
ometrics
player_regularization_losses
qlayer_metrics
	variables
trainable_variables
regularization_losses
 __call__
*!&call_and_return_all_conditional_losses
&!"call_and_return_conditional_losses* 
* 
* 
_Y
VARIABLE_VALUEconv2d_1/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_1/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

"0
#1*

"0
#1*
* 

rnon_trainable_variables

slayers
tmetrics
ulayer_regularization_losses
vlayer_metrics
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses*
* 
* 
_Y
VARIABLE_VALUEconv2d_2/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_2/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

*0
+1*

*0
+1*
* 

wnon_trainable_variables

xlayers
ymetrics
zlayer_regularization_losses
{layer_metrics
,	variables
-trainable_variables
.regularization_losses
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

|non_trainable_variables

}layers
~metrics
layer_regularization_losses
layer_metrics
2	variables
3trainable_variables
4regularization_losses
6__call__
*7&call_and_return_all_conditional_losses
&7"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
8	variables
9trainable_variables
:regularization_losses
<__call__
*=&call_and_return_all_conditional_losses
&="call_and_return_conditional_losses* 
* 
* 
\V
VARIABLE_VALUEdense/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
dense/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*

>0
?1*

>0
?1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
@	variables
Atrainable_variables
Bregularization_losses
D__call__
*E&call_and_return_all_conditional_losses
&E"call_and_return_conditional_losses*
* 
* 
^X
VARIABLE_VALUEdense_1/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_1/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*

F0
G1*

F0
G1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
H	variables
Itrainable_variables
Jregularization_losses
L__call__
*M&call_and_return_all_conditional_losses
&M"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
N	variables
Otrainable_variables
Pregularization_losses
S__call__
*T&call_and_return_all_conditional_losses
&T"call_and_return_conditional_losses* 
* 
* 
* 
^X
VARIABLE_VALUEdense_2/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_2/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*

U0
V1*

U0
V1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
W	variables
Xtrainable_variables
Yregularization_losses
[__call__
*\&call_and_return_all_conditional_losses
&\"call_and_return_conditional_losses*
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
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
0
1*
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

total

count
	variables
	keras_api*
M

 total

¡count
¢
_fn_kwargs
£	variables
¤	keras_api*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

 0
¡1*

£	variables*
z
VARIABLE_VALUEAdam/conv2d/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/conv2d/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/conv2d_1/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv2d_1/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/conv2d_2/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv2d_2/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/dense/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/dense_1/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_1/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/dense_2/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_2/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/conv2d/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/conv2d/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/conv2d_1/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv2d_1/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/conv2d_2/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv2d_2/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/dense/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/dense_1/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_1/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/dense_2/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_2/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

serving_default_conv2d_inputPlaceholder*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd*
dtype0*$
shape:ÿÿÿÿÿÿÿÿÿdd
ÿ
StatefulPartitionedCallStatefulPartitionedCallserving_default_conv2d_inputconv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasconv2d_2/kernelconv2d_2/biasdense/kernel
dense/biasdense_1/kerneldense_1/biasdense_2/kerneldense_2/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *+
f&R$
"__inference_signature_wrapper_4943
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
í
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename!conv2d/kernel/Read/ReadVariableOpconv2d/bias/Read/ReadVariableOp#conv2d_1/kernel/Read/ReadVariableOp!conv2d_1/bias/Read/ReadVariableOp#conv2d_2/kernel/Read/ReadVariableOp!conv2d_2/bias/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOp"dense_2/kernel/Read/ReadVariableOp dense_2/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp(Adam/conv2d/kernel/m/Read/ReadVariableOp&Adam/conv2d/bias/m/Read/ReadVariableOp*Adam/conv2d_1/kernel/m/Read/ReadVariableOp(Adam/conv2d_1/bias/m/Read/ReadVariableOp*Adam/conv2d_2/kernel/m/Read/ReadVariableOp(Adam/conv2d_2/bias/m/Read/ReadVariableOp'Adam/dense/kernel/m/Read/ReadVariableOp%Adam/dense/bias/m/Read/ReadVariableOp)Adam/dense_1/kernel/m/Read/ReadVariableOp'Adam/dense_1/bias/m/Read/ReadVariableOp)Adam/dense_2/kernel/m/Read/ReadVariableOp'Adam/dense_2/bias/m/Read/ReadVariableOp(Adam/conv2d/kernel/v/Read/ReadVariableOp&Adam/conv2d/bias/v/Read/ReadVariableOp*Adam/conv2d_1/kernel/v/Read/ReadVariableOp(Adam/conv2d_1/bias/v/Read/ReadVariableOp*Adam/conv2d_2/kernel/v/Read/ReadVariableOp(Adam/conv2d_2/bias/v/Read/ReadVariableOp'Adam/dense/kernel/v/Read/ReadVariableOp%Adam/dense/bias/v/Read/ReadVariableOp)Adam/dense_1/kernel/v/Read/ReadVariableOp'Adam/dense_1/bias/v/Read/ReadVariableOp)Adam/dense_2/kernel/v/Read/ReadVariableOp'Adam/dense_2/bias/v/Read/ReadVariableOpConst*:
Tin3
12/	*
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
GPU 2J 8 *&
f!R
__inference__traced_save_5279
ä
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasconv2d_2/kernelconv2d_2/biasdense/kernel
dense/biasdense_1/kerneldense_1/biasdense_2/kerneldense_2/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/conv2d/kernel/mAdam/conv2d/bias/mAdam/conv2d_1/kernel/mAdam/conv2d_1/bias/mAdam/conv2d_2/kernel/mAdam/conv2d_2/bias/mAdam/dense/kernel/mAdam/dense/bias/mAdam/dense_1/kernel/mAdam/dense_1/bias/mAdam/dense_2/kernel/mAdam/dense_2/bias/mAdam/conv2d/kernel/vAdam/conv2d/bias/vAdam/conv2d_1/kernel/vAdam/conv2d_1/bias/vAdam/conv2d_2/kernel/vAdam/conv2d_2/bias/vAdam/dense/kernel/vAdam/dense/bias/vAdam/dense_1/kernel/vAdam/dense_1/bias/vAdam/dense_2/kernel/vAdam/dense_2/bias/v*9
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
GPU 2J 8 *)
f$R"
 __inference__traced_restore_5424 ¿


ò
A__inference_dense_1_layer_call_and_return_conditional_losses_5074

inputs0
matmul_readvariableop_resource:d2-
biasadd_readvariableop_resource:2
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿd: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs

c
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_4973

inputs
identity¢
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

ü
B__inference_conv2d_1_layer_call_and_return_conditional_losses_4331

inputs9
conv2d_readvariableop_resource:P-
biasadd_readvariableop_resource:P
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:P*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ//P*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:P*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ//PX
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ//Pi
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ//Pw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ11: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ11
 
_user_specified_nameinputs

Â
)__inference_sequential_layer_call_fn_4774

inputs"
unknown:
	unknown_0:	$
	unknown_1:P
	unknown_2:P#
	unknown_3:P2
	unknown_4:2
	unknown_5:
½d
	unknown_6:d
	unknown_7:d2
	unknown_8:2
	unknown_9:2

unknown_10:
identity¢StatefulPartitionedCallÜ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_4422o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿdd: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
 
_user_specified_nameinputs
ª[

__inference__traced_save_5279
file_prefix,
(savev2_conv2d_kernel_read_readvariableop*
&savev2_conv2d_bias_read_readvariableop.
*savev2_conv2d_1_kernel_read_readvariableop,
(savev2_conv2d_1_bias_read_readvariableop.
*savev2_conv2d_2_kernel_read_readvariableop,
(savev2_conv2d_2_bias_read_readvariableop+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop-
)savev2_dense_2_kernel_read_readvariableop+
'savev2_dense_2_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop3
/savev2_adam_conv2d_kernel_m_read_readvariableop1
-savev2_adam_conv2d_bias_m_read_readvariableop5
1savev2_adam_conv2d_1_kernel_m_read_readvariableop3
/savev2_adam_conv2d_1_bias_m_read_readvariableop5
1savev2_adam_conv2d_2_kernel_m_read_readvariableop3
/savev2_adam_conv2d_2_bias_m_read_readvariableop2
.savev2_adam_dense_kernel_m_read_readvariableop0
,savev2_adam_dense_bias_m_read_readvariableop4
0savev2_adam_dense_1_kernel_m_read_readvariableop2
.savev2_adam_dense_1_bias_m_read_readvariableop4
0savev2_adam_dense_2_kernel_m_read_readvariableop2
.savev2_adam_dense_2_bias_m_read_readvariableop3
/savev2_adam_conv2d_kernel_v_read_readvariableop1
-savev2_adam_conv2d_bias_v_read_readvariableop5
1savev2_adam_conv2d_1_kernel_v_read_readvariableop3
/savev2_adam_conv2d_1_bias_v_read_readvariableop5
1savev2_adam_conv2d_2_kernel_v_read_readvariableop3
/savev2_adam_conv2d_2_bias_v_read_readvariableop2
.savev2_adam_dense_kernel_v_read_readvariableop0
,savev2_adam_dense_bias_v_read_readvariableop4
0savev2_adam_dense_1_kernel_v_read_readvariableop2
.savev2_adam_dense_1_bias_v_read_readvariableop4
0savev2_adam_dense_2_kernel_v_read_readvariableop2
.savev2_adam_dense_2_bias_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpointsw
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
_temp/part
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
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: £
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:.*
dtype0*Ì
valueÂB¿.B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHÉ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:.*
dtype0*o
valuefBd.B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ¿
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0(savev2_conv2d_kernel_read_readvariableop&savev2_conv2d_bias_read_readvariableop*savev2_conv2d_1_kernel_read_readvariableop(savev2_conv2d_1_bias_read_readvariableop*savev2_conv2d_2_kernel_read_readvariableop(savev2_conv2d_2_bias_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop)savev2_dense_2_kernel_read_readvariableop'savev2_dense_2_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop/savev2_adam_conv2d_kernel_m_read_readvariableop-savev2_adam_conv2d_bias_m_read_readvariableop1savev2_adam_conv2d_1_kernel_m_read_readvariableop/savev2_adam_conv2d_1_bias_m_read_readvariableop1savev2_adam_conv2d_2_kernel_m_read_readvariableop/savev2_adam_conv2d_2_bias_m_read_readvariableop.savev2_adam_dense_kernel_m_read_readvariableop,savev2_adam_dense_bias_m_read_readvariableop0savev2_adam_dense_1_kernel_m_read_readvariableop.savev2_adam_dense_1_bias_m_read_readvariableop0savev2_adam_dense_2_kernel_m_read_readvariableop.savev2_adam_dense_2_bias_m_read_readvariableop/savev2_adam_conv2d_kernel_v_read_readvariableop-savev2_adam_conv2d_bias_v_read_readvariableop1savev2_adam_conv2d_1_kernel_v_read_readvariableop/savev2_adam_conv2d_1_bias_v_read_readvariableop1savev2_adam_conv2d_2_kernel_v_read_readvariableop/savev2_adam_conv2d_2_bias_v_read_readvariableop.savev2_adam_dense_kernel_v_read_readvariableop,savev2_adam_dense_bias_v_read_readvariableop0savev2_adam_dense_1_kernel_v_read_readvariableop.savev2_adam_dense_1_bias_v_read_readvariableop0savev2_adam_dense_2_kernel_v_read_readvariableop.savev2_adam_dense_2_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *<
dtypes2
02.	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
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

identity_1Identity_1:output:0*¢
_input_shapes
: :::P:P:P2:2:
½d:d:d2:2:2:: : : : : : : : : :::P:P:P2:2:
½d:d:d2:2:2::::P:P:P2:2:
½d:d:d2:2:2:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:-)
'
_output_shapes
::!

_output_shapes	
::-)
'
_output_shapes
:P: 

_output_shapes
:P:,(
&
_output_shapes
:P2: 

_output_shapes
:2:&"
 
_output_shapes
:
½d: 

_output_shapes
:d:$	 

_output_shapes

:d2: 


_output_shapes
:2:$ 

_output_shapes

:2: 

_output_shapes
::
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
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
::!

_output_shapes	
::-)
'
_output_shapes
:P: 

_output_shapes
:P:,(
&
_output_shapes
:P2: 

_output_shapes
:2:&"
 
_output_shapes
:
½d: 

_output_shapes
:d:$ 

_output_shapes

:d2: 

_output_shapes
:2:$  

_output_shapes

:2: !

_output_shapes
::-")
'
_output_shapes
::!#

_output_shapes	
::-$)
'
_output_shapes
:P: %

_output_shapes
:P:,&(
&
_output_shapes
:P2: '

_output_shapes
:2:&("
 
_output_shapes
:
½d: )

_output_shapes
:d:$* 

_output_shapes

:d2: +

_output_shapes
:2:$, 

_output_shapes

:2: -

_output_shapes
::.

_output_shapes
: 


ò
?__inference_dense_layer_call_and_return_conditional_losses_4374

inputs2
matmul_readvariableop_resource:
½d-
biasadd_readvariableop_resource:d
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
½d*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿda
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:ÿÿÿÿÿÿÿÿÿ½: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ½
 
_user_specified_nameinputs


ò
A__inference_dense_2_layer_call_and_return_conditional_losses_4415

inputs0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs

B
&__inference_dropout_layer_call_fn_5079

inputs
identity¬
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dropout_layer_call_and_return_conditional_losses_4402`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
æ

'__inference_conv2d_2_layer_call_fn_5002

inputs!
unknown:P2
	unknown_0:2
identity¢StatefulPartitionedCallß
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ--2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_conv2d_2_layer_call_and_return_conditional_losses_4348w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ--2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ//P: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ//P
 
_user_specified_nameinputs
é
_
&__inference_dropout_layer_call_fn_5084

inputs
identity¢StatefulPartitionedCall¼
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dropout_layer_call_and_return_conditional_losses_4479o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ222
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
±G

__inference__wrapped_model_4271
conv2d_inputK
0sequential_conv2d_conv2d_readvariableop_resource:@
1sequential_conv2d_biasadd_readvariableop_resource:	M
2sequential_conv2d_1_conv2d_readvariableop_resource:PA
3sequential_conv2d_1_biasadd_readvariableop_resource:PL
2sequential_conv2d_2_conv2d_readvariableop_resource:P2A
3sequential_conv2d_2_biasadd_readvariableop_resource:2C
/sequential_dense_matmul_readvariableop_resource:
½d>
0sequential_dense_biasadd_readvariableop_resource:dC
1sequential_dense_1_matmul_readvariableop_resource:d2@
2sequential_dense_1_biasadd_readvariableop_resource:2C
1sequential_dense_2_matmul_readvariableop_resource:2@
2sequential_dense_2_biasadd_readvariableop_resource:
identity¢(sequential/conv2d/BiasAdd/ReadVariableOp¢'sequential/conv2d/Conv2D/ReadVariableOp¢*sequential/conv2d_1/BiasAdd/ReadVariableOp¢)sequential/conv2d_1/Conv2D/ReadVariableOp¢*sequential/conv2d_2/BiasAdd/ReadVariableOp¢)sequential/conv2d_2/Conv2D/ReadVariableOp¢'sequential/dense/BiasAdd/ReadVariableOp¢&sequential/dense/MatMul/ReadVariableOp¢)sequential/dense_1/BiasAdd/ReadVariableOp¢(sequential/dense_1/MatMul/ReadVariableOp¢)sequential/dense_2/BiasAdd/ReadVariableOp¢(sequential/dense_2/MatMul/ReadVariableOp¡
'sequential/conv2d/Conv2D/ReadVariableOpReadVariableOp0sequential_conv2d_conv2d_readvariableop_resource*'
_output_shapes
:*
dtype0Å
sequential/conv2d/Conv2DConv2Dconv2d_input/sequential/conv2d/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿbb*
paddingVALID*
strides

(sequential/conv2d/BiasAdd/ReadVariableOpReadVariableOp1sequential_conv2d_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0´
sequential/conv2d/BiasAddBiasAdd!sequential/conv2d/Conv2D:output:00sequential/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿbb}
sequential/conv2d/ReluRelu"sequential/conv2d/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿbb¿
 sequential/max_pooling2d/MaxPoolMaxPool$sequential/conv2d/Relu:activations:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ11*
ksize
*
paddingVALID*
strides
¥
)sequential/conv2d_1/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_1_conv2d_readvariableop_resource*'
_output_shapes
:P*
dtype0å
sequential/conv2d_1/Conv2DConv2D)sequential/max_pooling2d/MaxPool:output:01sequential/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ//P*
paddingVALID*
strides

*sequential/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype0¹
sequential/conv2d_1/BiasAddBiasAdd#sequential/conv2d_1/Conv2D:output:02sequential/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ//P
sequential/conv2d_1/ReluRelu$sequential/conv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ//P¤
)sequential/conv2d_2/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
:P2*
dtype0â
sequential/conv2d_2/Conv2DConv2D&sequential/conv2d_1/Relu:activations:01sequential/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ--2*
paddingVALID*
strides

*sequential/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0¹
sequential/conv2d_2/BiasAddBiasAdd#sequential/conv2d_2/Conv2D:output:02sequential/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ--2
sequential/conv2d_2/ReluRelu$sequential/conv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ--2Â
"sequential/max_pooling2d_1/MaxPoolMaxPool&sequential/conv2d_2/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
ksize
*
paddingVALID*
strides
i
sequential/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ^  ©
sequential/flatten/ReshapeReshape+sequential/max_pooling2d_1/MaxPool:output:0!sequential/flatten/Const:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ½
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource* 
_output_shapes
:
½d*
dtype0¨
sequential/dense/MatMulMatMul#sequential/flatten/Reshape:output:0.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0©
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdr
sequential/dense/ReluRelu!sequential/dense/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
(sequential/dense_1/MatMul/ReadVariableOpReadVariableOp1sequential_dense_1_matmul_readvariableop_resource*
_output_shapes

:d2*
dtype0¬
sequential/dense_1/MatMulMatMul#sequential/dense/Relu:activations:00sequential/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
)sequential/dense_1/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_1_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0¯
sequential/dense_1/BiasAddBiasAdd#sequential/dense_1/MatMul:product:01sequential/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2v
sequential/dense_1/ReluRelu#sequential/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential/dropout/IdentityIdentity%sequential/dense_1/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
(sequential/dense_2/MatMul/ReadVariableOpReadVariableOp1sequential_dense_2_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0­
sequential/dense_2/MatMulMatMul$sequential/dropout/Identity:output:00sequential/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)sequential/dense_2/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¯
sequential/dense_2/BiasAddBiasAdd#sequential/dense_2/MatMul:product:01sequential/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
sequential/dense_2/SoftmaxSoftmax#sequential/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
IdentityIdentity$sequential/dense_2/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÎ
NoOpNoOp)^sequential/conv2d/BiasAdd/ReadVariableOp(^sequential/conv2d/Conv2D/ReadVariableOp+^sequential/conv2d_1/BiasAdd/ReadVariableOp*^sequential/conv2d_1/Conv2D/ReadVariableOp+^sequential/conv2d_2/BiasAdd/ReadVariableOp*^sequential/conv2d_2/Conv2D/ReadVariableOp(^sequential/dense/BiasAdd/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp*^sequential/dense_1/BiasAdd/ReadVariableOp)^sequential/dense_1/MatMul/ReadVariableOp*^sequential/dense_2/BiasAdd/ReadVariableOp)^sequential/dense_2/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿdd: : : : : : : : : : : : 2T
(sequential/conv2d/BiasAdd/ReadVariableOp(sequential/conv2d/BiasAdd/ReadVariableOp2R
'sequential/conv2d/Conv2D/ReadVariableOp'sequential/conv2d/Conv2D/ReadVariableOp2X
*sequential/conv2d_1/BiasAdd/ReadVariableOp*sequential/conv2d_1/BiasAdd/ReadVariableOp2V
)sequential/conv2d_1/Conv2D/ReadVariableOp)sequential/conv2d_1/Conv2D/ReadVariableOp2X
*sequential/conv2d_2/BiasAdd/ReadVariableOp*sequential/conv2d_2/BiasAdd/ReadVariableOp2V
)sequential/conv2d_2/Conv2D/ReadVariableOp)sequential/conv2d_2/Conv2D/ReadVariableOp2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2P
&sequential/dense/MatMul/ReadVariableOp&sequential/dense/MatMul/ReadVariableOp2V
)sequential/dense_1/BiasAdd/ReadVariableOp)sequential/dense_1/BiasAdd/ReadVariableOp2T
(sequential/dense_1/MatMul/ReadVariableOp(sequential/dense_1/MatMul/ReadVariableOp2V
)sequential/dense_2/BiasAdd/ReadVariableOp)sequential/dense_2/BiasAdd/ReadVariableOp2T
(sequential/dense_2/MatMul/ReadVariableOp(sequential/dense_2/MatMul/ReadVariableOp:] Y
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
&
_user_specified_nameconv2d_input
¼

&__inference_dense_2_layer_call_fn_5110

inputs
unknown:2
	unknown_0:
identity¢StatefulPartitionedCallÖ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_4415o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs

c
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_4280

inputs
identity¢
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
é

'__inference_conv2d_1_layer_call_fn_4982

inputs"
unknown:P
	unknown_0:P
identity¢StatefulPartitionedCallß
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ//P*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_conv2d_1_layer_call_and_return_conditional_losses_4331w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ//P`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ11: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ11
 
_user_specified_nameinputs
æ

%__inference_conv2d_layer_call_fn_4952

inputs"
unknown:
	unknown_0:	
identity¢StatefulPartitionedCallÞ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿbb*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_conv2d_layer_call_and_return_conditional_losses_4313x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿbb`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿdd: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
 
_user_specified_nameinputs
+
·
D__inference_sequential_layer_call_and_return_conditional_losses_4701
conv2d_input&
conv2d_4666:
conv2d_4668:	(
conv2d_1_4672:P
conv2d_1_4674:P'
conv2d_2_4677:P2
conv2d_2_4679:2

dense_4684:
½d

dense_4686:d
dense_1_4689:d2
dense_1_4691:2
dense_2_4695:2
dense_2_4697:
identity¢conv2d/StatefulPartitionedCall¢ conv2d_1/StatefulPartitionedCall¢ conv2d_2/StatefulPartitionedCall¢dense/StatefulPartitionedCall¢dense_1/StatefulPartitionedCall¢dense_2/StatefulPartitionedCallñ
conv2d/StatefulPartitionedCallStatefulPartitionedCallconv2d_inputconv2d_4666conv2d_4668*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿbb*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_conv2d_layer_call_and_return_conditional_losses_4313ê
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ11* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_4280
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_1_4672conv2d_1_4674*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ//P*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_conv2d_1_layer_call_and_return_conditional_losses_4331
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0conv2d_2_4677conv2d_2_4679*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ--2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_conv2d_2_layer_call_and_return_conditional_losses_4348ï
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_4292Ø
flatten/PartitionedCallPartitionedCall(max_pooling2d_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ½* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_4361ø
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0
dense_4684
dense_4686*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_4374
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_4689dense_1_4691*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_4391Ö
dropout/PartitionedCallPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dropout_layer_call_and_return_conditional_losses_4402
dense_2/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0dense_2_4695dense_2_4697*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_4415w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿdd: : : : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall:] Y
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
&
_user_specified_nameconv2d_input
Ô
_
A__inference_dropout_layer_call_and_return_conditional_losses_5089

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
Å
]
A__inference_flatten_layer_call_and_return_conditional_losses_4361

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ^  ^
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ½Z
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ½"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
ÌB
¨	
D__inference_sequential_layer_call_and_return_conditional_losses_4912

inputs@
%conv2d_conv2d_readvariableop_resource:5
&conv2d_biasadd_readvariableop_resource:	B
'conv2d_1_conv2d_readvariableop_resource:P6
(conv2d_1_biasadd_readvariableop_resource:PA
'conv2d_2_conv2d_readvariableop_resource:P26
(conv2d_2_biasadd_readvariableop_resource:28
$dense_matmul_readvariableop_resource:
½d3
%dense_biasadd_readvariableop_resource:d8
&dense_1_matmul_readvariableop_resource:d25
'dense_1_biasadd_readvariableop_resource:28
&dense_2_matmul_readvariableop_resource:25
'dense_2_biasadd_readvariableop_resource:
identity¢conv2d/BiasAdd/ReadVariableOp¢conv2d/Conv2D/ReadVariableOp¢conv2d_1/BiasAdd/ReadVariableOp¢conv2d_1/Conv2D/ReadVariableOp¢conv2d_2/BiasAdd/ReadVariableOp¢conv2d_2/Conv2D/ReadVariableOp¢dense/BiasAdd/ReadVariableOp¢dense/MatMul/ReadVariableOp¢dense_1/BiasAdd/ReadVariableOp¢dense_1/MatMul/ReadVariableOp¢dense_2/BiasAdd/ReadVariableOp¢dense_2/MatMul/ReadVariableOp
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*'
_output_shapes
:*
dtype0©
conv2d/Conv2DConv2Dinputs$conv2d/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿbb*
paddingVALID*
strides

conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿbbg
conv2d/ReluReluconv2d/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿbb©
max_pooling2d/MaxPoolMaxPoolconv2d/Relu:activations:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ11*
ksize
*
paddingVALID*
strides

conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*'
_output_shapes
:P*
dtype0Ä
conv2d_1/Conv2DConv2Dmax_pooling2d/MaxPool:output:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ//P*
paddingVALID*
strides

conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype0
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ//Pj
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ//P
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
:P2*
dtype0Á
conv2d_2/Conv2DConv2Dconv2d_1/Relu:activations:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ--2*
paddingVALID*
strides

conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ--2j
conv2d_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ--2¬
max_pooling2d_1/MaxPoolMaxPoolconv2d_2/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
ksize
*
paddingVALID*
strides
^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ^  
flatten/ReshapeReshape max_pooling2d_1/MaxPool:output:0flatten/Const:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ½
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
½d*
dtype0
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd\

dense/ReluReludense/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

:d2*
dtype0
dense_1/MatMulMatMuldense/Relu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2`
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Z
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *«ªª?
dropout/dropout/MulMuldense_1/Relu:activations:0dropout/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2_
dropout/dropout/ShapeShapedense_1/Relu:activations:0*
T0*
_output_shapes
:
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0c
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  >¾
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0
dense_2/MatMulMatMuldropout/dropout/Mul_1:z:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
dense_2/SoftmaxSoftmaxdense_2/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
IdentityIdentitydense_2/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÊ
NoOpNoOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿdd: : : : : : : : : : : : 2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
 
_user_specified_nameinputs

e
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_5023

inputs
identity¢
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¼

&__inference_dense_1_layer_call_fn_5063

inputs
unknown:d2
	unknown_0:2
identity¢StatefulPartitionedCallÖ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_4391o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿd: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs

Â
)__inference_sequential_layer_call_fn_4803

inputs"
unknown:
	unknown_0:	$
	unknown_1:P
	unknown_2:P#
	unknown_3:P2
	unknown_4:2
	unknown_5:
½d
	unknown_6:d
	unknown_7:d2
	unknown_8:2
	unknown_9:2

unknown_10:
identity¢StatefulPartitionedCallÜ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_4607o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿdd: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
 
_user_specified_nameinputs
°
H
,__inference_max_pooling2d_layer_call_fn_4968

inputs
identityÕ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_4280
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
§
È
)__inference_sequential_layer_call_fn_4449
conv2d_input"
unknown:
	unknown_0:	$
	unknown_1:P
	unknown_2:P#
	unknown_3:P2
	unknown_4:2
	unknown_5:
½d
	unknown_6:d
	unknown_7:d2
	unknown_8:2
	unknown_9:2

unknown_10:
identity¢StatefulPartitionedCallâ
StatefulPartitionedCallStatefulPartitionedCallconv2d_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_4422o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿdd: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
&
_user_specified_nameconv2d_input
¨,
Ù
D__inference_sequential_layer_call_and_return_conditional_losses_4739
conv2d_input&
conv2d_4704:
conv2d_4706:	(
conv2d_1_4710:P
conv2d_1_4712:P'
conv2d_2_4715:P2
conv2d_2_4717:2

dense_4722:
½d

dense_4724:d
dense_1_4727:d2
dense_1_4729:2
dense_2_4733:2
dense_2_4735:
identity¢conv2d/StatefulPartitionedCall¢ conv2d_1/StatefulPartitionedCall¢ conv2d_2/StatefulPartitionedCall¢dense/StatefulPartitionedCall¢dense_1/StatefulPartitionedCall¢dense_2/StatefulPartitionedCall¢dropout/StatefulPartitionedCallñ
conv2d/StatefulPartitionedCallStatefulPartitionedCallconv2d_inputconv2d_4704conv2d_4706*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿbb*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_conv2d_layer_call_and_return_conditional_losses_4313ê
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ11* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_4280
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_1_4710conv2d_1_4712*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ//P*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_conv2d_1_layer_call_and_return_conditional_losses_4331
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0conv2d_2_4715conv2d_2_4717*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ--2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_conv2d_2_layer_call_and_return_conditional_losses_4348ï
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_4292Ø
flatten/PartitionedCallPartitionedCall(max_pooling2d_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ½* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_4361ø
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0
dense_4722
dense_4724*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_4374
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_4727dense_1_4729*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_4391æ
dropout/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dropout_layer_call_and_return_conditional_losses_4479
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0dense_2_4733dense_2_4735*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_4415w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ³
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dropout/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿdd: : : : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall:] Y
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
&
_user_specified_nameconv2d_input
Å
]
A__inference_flatten_layer_call_and_return_conditional_losses_5034

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ^  ^
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ½Z
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ½"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
ï	
`
A__inference_dropout_layer_call_and_return_conditional_losses_4479

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *«ªª?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  >¦
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
¾

$__inference_dense_layer_call_fn_5043

inputs
unknown:
½d
	unknown_0:d
identity¢StatefulPartitionedCallÔ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_4374o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:ÿÿÿÿÿÿÿÿÿ½: : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ½
 
_user_specified_nameinputs
Ô
_
A__inference_dropout_layer_call_and_return_conditional_losses_4402

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs

ü
B__inference_conv2d_1_layer_call_and_return_conditional_losses_4993

inputs9
conv2d_readvariableop_resource:P-
biasadd_readvariableop_resource:P
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:P*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ//P*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:P*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ//PX
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ//Pi
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ//Pw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ11: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ11
 
_user_specified_nameinputs

û
@__inference_conv2d_layer_call_and_return_conditional_losses_4313

inputs9
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿbb*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿbbY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿbbj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿbbw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿdd: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
 
_user_specified_nameinputs
ö*
±
D__inference_sequential_layer_call_and_return_conditional_losses_4422

inputs&
conv2d_4314:
conv2d_4316:	(
conv2d_1_4332:P
conv2d_1_4334:P'
conv2d_2_4349:P2
conv2d_2_4351:2

dense_4375:
½d

dense_4377:d
dense_1_4392:d2
dense_1_4394:2
dense_2_4416:2
dense_2_4418:
identity¢conv2d/StatefulPartitionedCall¢ conv2d_1/StatefulPartitionedCall¢ conv2d_2/StatefulPartitionedCall¢dense/StatefulPartitionedCall¢dense_1/StatefulPartitionedCall¢dense_2/StatefulPartitionedCallë
conv2d/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_4314conv2d_4316*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿbb*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_conv2d_layer_call_and_return_conditional_losses_4313ê
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ11* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_4280
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_1_4332conv2d_1_4334*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ//P*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_conv2d_1_layer_call_and_return_conditional_losses_4331
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0conv2d_2_4349conv2d_2_4351*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ--2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_conv2d_2_layer_call_and_return_conditional_losses_4348ï
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_4292Ø
flatten/PartitionedCallPartitionedCall(max_pooling2d_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ½* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_4361ø
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0
dense_4375
dense_4377*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_4374
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_4392dense_1_4394*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_4391Ö
dropout/PartitionedCallPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dropout_layer_call_and_return_conditional_losses_4402
dense_2/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0dense_2_4416dense_2_4418*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_4415w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿdd: : : : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
 
_user_specified_nameinputs
´
J
.__inference_max_pooling2d_1_layer_call_fn_5018

inputs
identity×
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_4292
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

e
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_4292

inputs
identity¢
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
§
È
)__inference_sequential_layer_call_fn_4663
conv2d_input"
unknown:
	unknown_0:	$
	unknown_1:P
	unknown_2:P#
	unknown_3:P2
	unknown_4:2
	unknown_5:
½d
	unknown_6:d
	unknown_7:d2
	unknown_8:2
	unknown_9:2

unknown_10:
identity¢StatefulPartitionedCallâ
StatefulPartitionedCallStatefulPartitionedCallconv2d_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_4607o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿdd: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
&
_user_specified_nameconv2d_input
,
Ó
D__inference_sequential_layer_call_and_return_conditional_losses_4607

inputs&
conv2d_4572:
conv2d_4574:	(
conv2d_1_4578:P
conv2d_1_4580:P'
conv2d_2_4583:P2
conv2d_2_4585:2

dense_4590:
½d

dense_4592:d
dense_1_4595:d2
dense_1_4597:2
dense_2_4601:2
dense_2_4603:
identity¢conv2d/StatefulPartitionedCall¢ conv2d_1/StatefulPartitionedCall¢ conv2d_2/StatefulPartitionedCall¢dense/StatefulPartitionedCall¢dense_1/StatefulPartitionedCall¢dense_2/StatefulPartitionedCall¢dropout/StatefulPartitionedCallë
conv2d/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_4572conv2d_4574*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿbb*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_conv2d_layer_call_and_return_conditional_losses_4313ê
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ11* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_4280
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_1_4578conv2d_1_4580*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ//P*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_conv2d_1_layer_call_and_return_conditional_losses_4331
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0conv2d_2_4583conv2d_2_4585*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ--2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_conv2d_2_layer_call_and_return_conditional_losses_4348ï
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_4292Ø
flatten/PartitionedCallPartitionedCall(max_pooling2d_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ½* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_4361ø
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0
dense_4590
dense_4592*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_4374
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_4595dense_1_4597*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_4391æ
dropout/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dropout_layer_call_and_return_conditional_losses_4479
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0dense_2_4601dense_2_4603*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_4415w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ³
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dropout/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿdd: : : : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
 
_user_specified_nameinputs
ï	
`
A__inference_dropout_layer_call_and_return_conditional_losses_5101

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *«ªª?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  >¦
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs

û
@__inference_conv2d_layer_call_and_return_conditional_losses_4963

inputs9
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿbb*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿbbY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿbbj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿbbw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿdd: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
 
_user_specified_nameinputs


ò
?__inference_dense_layer_call_and_return_conditional_losses_5054

inputs2
matmul_readvariableop_resource:
½d-
biasadd_readvariableop_resource:d
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
½d*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿda
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:ÿÿÿÿÿÿÿÿÿ½: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ½
 
_user_specified_nameinputs
«
B
&__inference_flatten_layer_call_fn_5028

inputs
identity®
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ½* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_4361b
IdentityIdentityPartitionedCall:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ½"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs


ò
A__inference_dense_1_layer_call_and_return_conditional_losses_4391

inputs0
matmul_readvariableop_resource:d2-
biasadd_readvariableop_resource:2
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿd: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs

û
B__inference_conv2d_2_layer_call_and_return_conditional_losses_4348

inputs8
conv2d_readvariableop_resource:P2-
biasadd_readvariableop_resource:2
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:P2*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ--2*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ--2X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ--2i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ--2w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ//P: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ//P
 
_user_specified_nameinputs
³
¥
 __inference__traced_restore_5424
file_prefix9
assignvariableop_conv2d_kernel:-
assignvariableop_1_conv2d_bias:	=
"assignvariableop_2_conv2d_1_kernel:P.
 assignvariableop_3_conv2d_1_bias:P<
"assignvariableop_4_conv2d_2_kernel:P2.
 assignvariableop_5_conv2d_2_bias:23
assignvariableop_6_dense_kernel:
½d+
assignvariableop_7_dense_bias:d3
!assignvariableop_8_dense_1_kernel:d2-
assignvariableop_9_dense_1_bias:24
"assignvariableop_10_dense_2_kernel:2.
 assignvariableop_11_dense_2_bias:'
assignvariableop_12_adam_iter:	 )
assignvariableop_13_adam_beta_1: )
assignvariableop_14_adam_beta_2: (
assignvariableop_15_adam_decay: 0
&assignvariableop_16_adam_learning_rate: #
assignvariableop_17_total: #
assignvariableop_18_count: %
assignvariableop_19_total_1: %
assignvariableop_20_count_1: C
(assignvariableop_21_adam_conv2d_kernel_m:5
&assignvariableop_22_adam_conv2d_bias_m:	E
*assignvariableop_23_adam_conv2d_1_kernel_m:P6
(assignvariableop_24_adam_conv2d_1_bias_m:PD
*assignvariableop_25_adam_conv2d_2_kernel_m:P26
(assignvariableop_26_adam_conv2d_2_bias_m:2;
'assignvariableop_27_adam_dense_kernel_m:
½d3
%assignvariableop_28_adam_dense_bias_m:d;
)assignvariableop_29_adam_dense_1_kernel_m:d25
'assignvariableop_30_adam_dense_1_bias_m:2;
)assignvariableop_31_adam_dense_2_kernel_m:25
'assignvariableop_32_adam_dense_2_bias_m:C
(assignvariableop_33_adam_conv2d_kernel_v:5
&assignvariableop_34_adam_conv2d_bias_v:	E
*assignvariableop_35_adam_conv2d_1_kernel_v:P6
(assignvariableop_36_adam_conv2d_1_bias_v:PD
*assignvariableop_37_adam_conv2d_2_kernel_v:P26
(assignvariableop_38_adam_conv2d_2_bias_v:2;
'assignvariableop_39_adam_dense_kernel_v:
½d3
%assignvariableop_40_adam_dense_bias_v:d;
)assignvariableop_41_adam_dense_1_kernel_v:d25
'assignvariableop_42_adam_dense_1_bias_v:2;
)assignvariableop_43_adam_dense_2_kernel_v:25
'assignvariableop_44_adam_dense_2_bias_v:
identity_46¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_32¢AssignVariableOp_33¢AssignVariableOp_34¢AssignVariableOp_35¢AssignVariableOp_36¢AssignVariableOp_37¢AssignVariableOp_38¢AssignVariableOp_39¢AssignVariableOp_4¢AssignVariableOp_40¢AssignVariableOp_41¢AssignVariableOp_42¢AssignVariableOp_43¢AssignVariableOp_44¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9¦
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:.*
dtype0*Ì
valueÂB¿.B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHÌ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:.*
dtype0*o
valuefBd.B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*Î
_output_shapes»
¸::::::::::::::::::::::::::::::::::::::::::::::*<
dtypes2
02.	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOpassignvariableop_conv2d_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOpassignvariableop_1_conv2d_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp"assignvariableop_2_conv2d_1_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOp assignvariableop_3_conv2d_1_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOp"assignvariableop_4_conv2d_2_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOp assignvariableop_5_conv2d_2_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOpassignvariableop_6_dense_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOpassignvariableop_7_dense_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOp!assignvariableop_8_dense_1_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOpassignvariableop_9_dense_1_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_10AssignVariableOp"assignvariableop_10_dense_2_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOp assignvariableop_11_dense_2_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_12AssignVariableOpassignvariableop_12_adam_iterIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOpassignvariableop_13_adam_beta_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_14AssignVariableOpassignvariableop_14_adam_beta_2Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOpassignvariableop_15_adam_decayIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOp&assignvariableop_16_adam_learning_rateIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOpassignvariableop_17_totalIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOpassignvariableop_18_countIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOpassignvariableop_19_total_1Identity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_20AssignVariableOpassignvariableop_20_count_1Identity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_21AssignVariableOp(assignvariableop_21_adam_conv2d_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_22AssignVariableOp&assignvariableop_22_adam_conv2d_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_23AssignVariableOp*assignvariableop_23_adam_conv2d_1_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_24AssignVariableOp(assignvariableop_24_adam_conv2d_1_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_25AssignVariableOp*assignvariableop_25_adam_conv2d_2_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_26AssignVariableOp(assignvariableop_26_adam_conv2d_2_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_27AssignVariableOp'assignvariableop_27_adam_dense_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_28AssignVariableOp%assignvariableop_28_adam_dense_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_29AssignVariableOp)assignvariableop_29_adam_dense_1_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_30AssignVariableOp'assignvariableop_30_adam_dense_1_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_31AssignVariableOp)assignvariableop_31_adam_dense_2_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_32AssignVariableOp'assignvariableop_32_adam_dense_2_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_33AssignVariableOp(assignvariableop_33_adam_conv2d_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_34AssignVariableOp&assignvariableop_34_adam_conv2d_bias_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_35AssignVariableOp*assignvariableop_35_adam_conv2d_1_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_36AssignVariableOp(assignvariableop_36_adam_conv2d_1_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_37AssignVariableOp*assignvariableop_37_adam_conv2d_2_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_38AssignVariableOp(assignvariableop_38_adam_conv2d_2_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_39AssignVariableOp'assignvariableop_39_adam_dense_kernel_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_40AssignVariableOp%assignvariableop_40_adam_dense_bias_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_41AssignVariableOp)assignvariableop_41_adam_dense_1_kernel_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_42AssignVariableOp'assignvariableop_42_adam_dense_1_bias_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_43AssignVariableOp)assignvariableop_43_adam_dense_2_kernel_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_44AssignVariableOp'assignvariableop_44_adam_dense_2_bias_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ­
Identity_45Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_46IdentityIdentity_45:output:0^NoOp_1*
T0*
_output_shapes
: 
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
û

Á
"__inference_signature_wrapper_4943
conv2d_input"
unknown:
	unknown_0:	$
	unknown_1:P
	unknown_2:P#
	unknown_3:P2
	unknown_4:2
	unknown_5:
½d
	unknown_6:d
	unknown_7:d2
	unknown_8:2
	unknown_9:2

unknown_10:
identity¢StatefulPartitionedCall½
StatefulPartitionedCallStatefulPartitionedCallconv2d_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference__wrapped_model_4271o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿdd: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
&
_user_specified_nameconv2d_input
¦;
¨	
D__inference_sequential_layer_call_and_return_conditional_losses_4854

inputs@
%conv2d_conv2d_readvariableop_resource:5
&conv2d_biasadd_readvariableop_resource:	B
'conv2d_1_conv2d_readvariableop_resource:P6
(conv2d_1_biasadd_readvariableop_resource:PA
'conv2d_2_conv2d_readvariableop_resource:P26
(conv2d_2_biasadd_readvariableop_resource:28
$dense_matmul_readvariableop_resource:
½d3
%dense_biasadd_readvariableop_resource:d8
&dense_1_matmul_readvariableop_resource:d25
'dense_1_biasadd_readvariableop_resource:28
&dense_2_matmul_readvariableop_resource:25
'dense_2_biasadd_readvariableop_resource:
identity¢conv2d/BiasAdd/ReadVariableOp¢conv2d/Conv2D/ReadVariableOp¢conv2d_1/BiasAdd/ReadVariableOp¢conv2d_1/Conv2D/ReadVariableOp¢conv2d_2/BiasAdd/ReadVariableOp¢conv2d_2/Conv2D/ReadVariableOp¢dense/BiasAdd/ReadVariableOp¢dense/MatMul/ReadVariableOp¢dense_1/BiasAdd/ReadVariableOp¢dense_1/MatMul/ReadVariableOp¢dense_2/BiasAdd/ReadVariableOp¢dense_2/MatMul/ReadVariableOp
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*'
_output_shapes
:*
dtype0©
conv2d/Conv2DConv2Dinputs$conv2d/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿbb*
paddingVALID*
strides

conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿbbg
conv2d/ReluReluconv2d/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿbb©
max_pooling2d/MaxPoolMaxPoolconv2d/Relu:activations:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ11*
ksize
*
paddingVALID*
strides

conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*'
_output_shapes
:P*
dtype0Ä
conv2d_1/Conv2DConv2Dmax_pooling2d/MaxPool:output:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ//P*
paddingVALID*
strides

conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype0
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ//Pj
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ//P
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
:P2*
dtype0Á
conv2d_2/Conv2DConv2Dconv2d_1/Relu:activations:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ--2*
paddingVALID*
strides

conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ--2j
conv2d_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ--2¬
max_pooling2d_1/MaxPoolMaxPoolconv2d_2/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
ksize
*
paddingVALID*
strides
^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ^  
flatten/ReshapeReshape max_pooling2d_1/MaxPool:output:0flatten/Const:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ½
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
½d*
dtype0
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd\

dense/ReluReludense/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

:d2*
dtype0
dense_1/MatMulMatMuldense/Relu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2`
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2j
dropout/IdentityIdentitydense_1/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0
dense_2/MatMulMatMuldropout/Identity:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
dense_2/SoftmaxSoftmaxdense_2/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
IdentityIdentitydense_2/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÊ
NoOpNoOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿdd: : : : : : : : : : : : 2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
 
_user_specified_nameinputs

û
B__inference_conv2d_2_layer_call_and_return_conditional_losses_5013

inputs8
conv2d_readvariableop_resource:P2-
biasadd_readvariableop_resource:2
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:P2*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ--2*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ--2X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ--2i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ--2w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ//P: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ//P
 
_user_specified_nameinputs


ò
A__inference_dense_2_layer_call_and_return_conditional_losses_5121

inputs0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs"ÛL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*¼
serving_default¨
M
conv2d_input=
serving_default_conv2d_input:0ÿÿÿÿÿÿÿÿÿdd;
dense_20
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:ï±

layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer-4
layer-5
layer_with_weights-3
layer-6
layer_with_weights-4
layer-7
	layer-8

layer_with_weights-5

layer-9
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_sequential
»

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
¥
	variables
trainable_variables
regularization_losses
	keras_api
 __call__
*!&call_and_return_all_conditional_losses"
_tf_keras_layer
»

"kernel
#bias
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses"
_tf_keras_layer
»

*kernel
+bias
,	variables
-trainable_variables
.regularization_losses
/	keras_api
0__call__
*1&call_and_return_all_conditional_losses"
_tf_keras_layer
¥
2	variables
3trainable_variables
4regularization_losses
5	keras_api
6__call__
*7&call_and_return_all_conditional_losses"
_tf_keras_layer
¥
8	variables
9trainable_variables
:regularization_losses
;	keras_api
<__call__
*=&call_and_return_all_conditional_losses"
_tf_keras_layer
»

>kernel
?bias
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
D__call__
*E&call_and_return_all_conditional_losses"
_tf_keras_layer
»

Fkernel
Gbias
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api
L__call__
*M&call_and_return_all_conditional_losses"
_tf_keras_layer
¼
N	variables
Otrainable_variables
Pregularization_losses
Q	keras_api
R_random_generator
S__call__
*T&call_and_return_all_conditional_losses"
_tf_keras_layer
»

Ukernel
Vbias
W	variables
Xtrainable_variables
Yregularization_losses
Z	keras_api
[__call__
*\&call_and_return_all_conditional_losses"
_tf_keras_layer
Ã
]iter

^beta_1

_beta_2
	`decay
alearning_ratem¥m¦"m§#m¨*m©+mª>m«?m¬Fm­Gm®Um¯Vm°v±v²"v³#v´*vµ+v¶>v·?v¸Fv¹GvºUv»Vv¼"
	optimizer
v
0
1
"2
#3
*4
+5
>6
?7
F8
G9
U10
V11"
trackable_list_wrapper
v
0
1
"2
#3
*4
+5
>6
?7
F8
G9
U10
V11"
trackable_list_wrapper
 "
trackable_list_wrapper
Ê
bnon_trainable_variables

clayers
dmetrics
elayer_regularization_losses
flayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ò2ï
)__inference_sequential_layer_call_fn_4449
)__inference_sequential_layer_call_fn_4774
)__inference_sequential_layer_call_fn_4803
)__inference_sequential_layer_call_fn_4663À
·²³
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
kwonlydefaultsª 
annotationsª *
 
Þ2Û
D__inference_sequential_layer_call_and_return_conditional_losses_4854
D__inference_sequential_layer_call_and_return_conditional_losses_4912
D__inference_sequential_layer_call_and_return_conditional_losses_4701
D__inference_sequential_layer_call_and_return_conditional_losses_4739À
·²³
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
kwonlydefaultsª 
annotationsª *
 
ÏBÌ
__inference__wrapped_model_4271conv2d_input"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
,
gserving_default"
signature_map
(:&2conv2d/kernel
:2conv2d/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
hnon_trainable_variables

ilayers
jmetrics
klayer_regularization_losses
llayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Ï2Ì
%__inference_conv2d_layer_call_fn_4952¢
²
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
annotationsª *
 
ê2ç
@__inference_conv2d_layer_call_and_return_conditional_losses_4963¢
²
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
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
mnon_trainable_variables

nlayers
ometrics
player_regularization_losses
qlayer_metrics
	variables
trainable_variables
regularization_losses
 __call__
*!&call_and_return_all_conditional_losses
&!"call_and_return_conditional_losses"
_generic_user_object
Ö2Ó
,__inference_max_pooling2d_layer_call_fn_4968¢
²
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
annotationsª *
 
ñ2î
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_4973¢
²
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
annotationsª *
 
*:(P2conv2d_1/kernel
:P2conv2d_1/bias
.
"0
#1"
trackable_list_wrapper
.
"0
#1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
rnon_trainable_variables

slayers
tmetrics
ulayer_regularization_losses
vlayer_metrics
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses"
_generic_user_object
Ñ2Î
'__inference_conv2d_1_layer_call_fn_4982¢
²
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
annotationsª *
 
ì2é
B__inference_conv2d_1_layer_call_and_return_conditional_losses_4993¢
²
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
annotationsª *
 
):'P22conv2d_2/kernel
:22conv2d_2/bias
.
*0
+1"
trackable_list_wrapper
.
*0
+1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
wnon_trainable_variables

xlayers
ymetrics
zlayer_regularization_losses
{layer_metrics
,	variables
-trainable_variables
.regularization_losses
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses"
_generic_user_object
Ñ2Î
'__inference_conv2d_2_layer_call_fn_5002¢
²
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
annotationsª *
 
ì2é
B__inference_conv2d_2_layer_call_and_return_conditional_losses_5013¢
²
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
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
®
|non_trainable_variables

}layers
~metrics
layer_regularization_losses
layer_metrics
2	variables
3trainable_variables
4regularization_losses
6__call__
*7&call_and_return_all_conditional_losses
&7"call_and_return_conditional_losses"
_generic_user_object
Ø2Õ
.__inference_max_pooling2d_1_layer_call_fn_5018¢
²
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
annotationsª *
 
ó2ð
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_5023¢
²
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
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
8	variables
9trainable_variables
:regularization_losses
<__call__
*=&call_and_return_all_conditional_losses
&="call_and_return_conditional_losses"
_generic_user_object
Ð2Í
&__inference_flatten_layer_call_fn_5028¢
²
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
annotationsª *
 
ë2è
A__inference_flatten_layer_call_and_return_conditional_losses_5034¢
²
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
annotationsª *
 
 :
½d2dense/kernel
:d2
dense/bias
.
>0
?1"
trackable_list_wrapper
.
>0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
@	variables
Atrainable_variables
Bregularization_losses
D__call__
*E&call_and_return_all_conditional_losses
&E"call_and_return_conditional_losses"
_generic_user_object
Î2Ë
$__inference_dense_layer_call_fn_5043¢
²
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
annotationsª *
 
é2æ
?__inference_dense_layer_call_and_return_conditional_losses_5054¢
²
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
annotationsª *
 
 :d22dense_1/kernel
:22dense_1/bias
.
F0
G1"
trackable_list_wrapper
.
F0
G1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
H	variables
Itrainable_variables
Jregularization_losses
L__call__
*M&call_and_return_all_conditional_losses
&M"call_and_return_conditional_losses"
_generic_user_object
Ð2Í
&__inference_dense_1_layer_call_fn_5063¢
²
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
annotationsª *
 
ë2è
A__inference_dense_1_layer_call_and_return_conditional_losses_5074¢
²
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
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
N	variables
Otrainable_variables
Pregularization_losses
S__call__
*T&call_and_return_all_conditional_losses
&T"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
2
&__inference_dropout_layer_call_fn_5079
&__inference_dropout_layer_call_fn_5084´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
À2½
A__inference_dropout_layer_call_and_return_conditional_losses_5089
A__inference_dropout_layer_call_and_return_conditional_losses_5101´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
 :22dense_2/kernel
:2dense_2/bias
.
U0
V1"
trackable_list_wrapper
.
U0
V1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
W	variables
Xtrainable_variables
Yregularization_losses
[__call__
*\&call_and_return_all_conditional_losses
&\"call_and_return_conditional_losses"
_generic_user_object
Ð2Í
&__inference_dense_2_layer_call_fn_5110¢
²
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
annotationsª *
 
ë2è
A__inference_dense_2_layer_call_and_return_conditional_losses_5121¢
²
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
annotationsª *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
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
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ÎBË
"__inference_signature_wrapper_4943conv2d_input"
²
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
annotationsª *
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
R

total

count
	variables
	keras_api"
_tf_keras_metric
c

 total

¡count
¢
_fn_kwargs
£	variables
¤	keras_api"
_tf_keras_metric
:  (2total
:  (2count
0
0
1"
trackable_list_wrapper
.
	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
 0
¡1"
trackable_list_wrapper
.
£	variables"
_generic_user_object
-:+2Adam/conv2d/kernel/m
:2Adam/conv2d/bias/m
/:-P2Adam/conv2d_1/kernel/m
 :P2Adam/conv2d_1/bias/m
.:,P22Adam/conv2d_2/kernel/m
 :22Adam/conv2d_2/bias/m
%:#
½d2Adam/dense/kernel/m
:d2Adam/dense/bias/m
%:#d22Adam/dense_1/kernel/m
:22Adam/dense_1/bias/m
%:#22Adam/dense_2/kernel/m
:2Adam/dense_2/bias/m
-:+2Adam/conv2d/kernel/v
:2Adam/conv2d/bias/v
/:-P2Adam/conv2d_1/kernel/v
 :P2Adam/conv2d_1/bias/v
.:,P22Adam/conv2d_2/kernel/v
 :22Adam/conv2d_2/bias/v
%:#
½d2Adam/dense/kernel/v
:d2Adam/dense/bias/v
%:#d22Adam/dense_1/kernel/v
:22Adam/dense_1/bias/v
%:#22Adam/dense_2/kernel/v
:2Adam/dense_2/bias/v¤
__inference__wrapped_model_4271"#*+>?FGUV=¢:
3¢0
.+
conv2d_inputÿÿÿÿÿÿÿÿÿdd
ª "1ª.
,
dense_2!
dense_2ÿÿÿÿÿÿÿÿÿ³
B__inference_conv2d_1_layer_call_and_return_conditional_losses_4993m"#8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ11
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ//P
 
'__inference_conv2d_1_layer_call_fn_4982`"#8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ11
ª " ÿÿÿÿÿÿÿÿÿ//P²
B__inference_conv2d_2_layer_call_and_return_conditional_losses_5013l*+7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ//P
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ--2
 
'__inference_conv2d_2_layer_call_fn_5002_*+7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ//P
ª " ÿÿÿÿÿÿÿÿÿ--2±
@__inference_conv2d_layer_call_and_return_conditional_losses_4963m7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿdd
ª ".¢+
$!
0ÿÿÿÿÿÿÿÿÿbb
 
%__inference_conv2d_layer_call_fn_4952`7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿdd
ª "!ÿÿÿÿÿÿÿÿÿbb¡
A__inference_dense_1_layer_call_and_return_conditional_losses_5074\FG/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿd
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ2
 y
&__inference_dense_1_layer_call_fn_5063OFG/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿd
ª "ÿÿÿÿÿÿÿÿÿ2¡
A__inference_dense_2_layer_call_and_return_conditional_losses_5121\UV/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ2
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 y
&__inference_dense_2_layer_call_fn_5110OUV/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ2
ª "ÿÿÿÿÿÿÿÿÿ¡
?__inference_dense_layer_call_and_return_conditional_losses_5054^>?1¢.
'¢$
"
inputsÿÿÿÿÿÿÿÿÿ½
ª "%¢"

0ÿÿÿÿÿÿÿÿÿd
 y
$__inference_dense_layer_call_fn_5043Q>?1¢.
'¢$
"
inputsÿÿÿÿÿÿÿÿÿ½
ª "ÿÿÿÿÿÿÿÿÿd¡
A__inference_dropout_layer_call_and_return_conditional_losses_5089\3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ2
p 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ2
 ¡
A__inference_dropout_layer_call_and_return_conditional_losses_5101\3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ2
p
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ2
 y
&__inference_dropout_layer_call_fn_5079O3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ2
p 
ª "ÿÿÿÿÿÿÿÿÿ2y
&__inference_dropout_layer_call_fn_5084O3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ2
p
ª "ÿÿÿÿÿÿÿÿÿ2§
A__inference_flatten_layer_call_and_return_conditional_losses_5034b7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ2
ª "'¢$

0ÿÿÿÿÿÿÿÿÿ½
 
&__inference_flatten_layer_call_fn_5028U7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ2
ª "ÿÿÿÿÿÿÿÿÿ½ì
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_5023R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Ä
.__inference_max_pooling2d_1_layer_call_fn_5018R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿê
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_4973R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Â
,__inference_max_pooling2d_layer_call_fn_4968R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÄ
D__inference_sequential_layer_call_and_return_conditional_losses_4701|"#*+>?FGUVE¢B
;¢8
.+
conv2d_inputÿÿÿÿÿÿÿÿÿdd
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 Ä
D__inference_sequential_layer_call_and_return_conditional_losses_4739|"#*+>?FGUVE¢B
;¢8
.+
conv2d_inputÿÿÿÿÿÿÿÿÿdd
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¾
D__inference_sequential_layer_call_and_return_conditional_losses_4854v"#*+>?FGUV?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿdd
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¾
D__inference_sequential_layer_call_and_return_conditional_losses_4912v"#*+>?FGUV?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿdd
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
)__inference_sequential_layer_call_fn_4449o"#*+>?FGUVE¢B
;¢8
.+
conv2d_inputÿÿÿÿÿÿÿÿÿdd
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
)__inference_sequential_layer_call_fn_4663o"#*+>?FGUVE¢B
;¢8
.+
conv2d_inputÿÿÿÿÿÿÿÿÿdd
p

 
ª "ÿÿÿÿÿÿÿÿÿ
)__inference_sequential_layer_call_fn_4774i"#*+>?FGUV?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿdd
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
)__inference_sequential_layer_call_fn_4803i"#*+>?FGUV?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿdd
p

 
ª "ÿÿÿÿÿÿÿÿÿ·
"__inference_signature_wrapper_4943"#*+>?FGUVM¢J
¢ 
Cª@
>
conv2d_input.+
conv2d_inputÿÿÿÿÿÿÿÿÿdd"1ª.
,
dense_2!
dense_2ÿÿÿÿÿÿÿÿÿ