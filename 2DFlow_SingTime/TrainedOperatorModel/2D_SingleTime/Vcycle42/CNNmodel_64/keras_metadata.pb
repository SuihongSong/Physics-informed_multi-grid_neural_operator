
��root"_tf_keras_network*��{"name": "model_285", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Functional", "config": {"name": "model_285", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 2, 64, 64]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input"}, "name": "input", "inbound_nodes": []}, {"class_name": "SlicingOpLambda", "config": {"name": "tf.__operators__.getitem_566", "trainable": true, "dtype": "float32", "function": "__operators__.getitem"}, "name": "tf.__operators__.getitem_566", "inbound_nodes": [["input", 0, 0, {"slice_spec": {"class_name": "__tuple__", "items": [{"start": null, "stop": null, "step": null}, {"start": 0, "stop": 1, "step": null}]}}]]}, {"class_name": "RangeConversion", "config": {"layer was saved without config": true}, "name": "range_conversion_285", "inbound_nodes": [[["tf.__operators__.getitem_566", 0, 0, {}]]]}, {"class_name": "SlicingOpLambda", "config": {"name": "tf.__operators__.getitem_567", "trainable": true, "dtype": "float32", "function": "__operators__.getitem"}, "name": "tf.__operators__.getitem_567", "inbound_nodes": [["input", 0, 0, {"slice_spec": {"class_name": "__tuple__", "items": [{"start": null, "stop": null, "step": null}, {"start": 1, "stop": 2, "step": null}]}}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.concat_697", "trainable": true, "dtype": "float32", "function": "concat"}, "name": "tf.concat_697", "inbound_nodes": [[["range_conversion_285", 0, 0, {"axis": 1, "name": "input_rangeconversion"}], ["tf.__operators__.getitem_567", 0, 0, {"axis": 1, "name": "input_rangeconversion"}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_1113", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_first", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "softplus", "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 4}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_1113", "inbound_nodes": [[["tf.concat_697", 0, 0, {}]]]}, {"class_name": "AveragePooling2D", "config": {"name": "average_pooling2d_414", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_first"}, "name": "average_pooling2d_414", "inbound_nodes": [[["conv2d_1113", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_1114", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_first", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "softplus", "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 4}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_1114", "inbound_nodes": [[["average_pooling2d_414", 0, 0, {}]]]}, {"class_name": "AveragePooling2D", "config": {"name": "average_pooling2d_415", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_first"}, "name": "average_pooling2d_415", "inbound_nodes": [[["conv2d_1114", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_1115", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_first", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "softplus", "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 4}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_1115", "inbound_nodes": [[["average_pooling2d_415", 0, 0, {}]]]}, {"class_name": "AveragePooling2D", "config": {"name": "average_pooling2d_416", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_first"}, "name": "average_pooling2d_416", "inbound_nodes": [[["conv2d_1115", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_1116", "trainable": true, "dtype": "float32", "filters": 4, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_first", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "softplus", "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 4}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_1116", "inbound_nodes": [[["average_pooling2d_416", 0, 0, {}]]]}, {"class_name": "AveragePooling2D", "config": {"name": "average_pooling2d_417", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_first"}, "name": "average_pooling2d_417", "inbound_nodes": [[["conv2d_1116", 0, 0, {}]]]}, {"class_name": "Reshape", "config": {"name": "reshape_570", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [64]}}, "name": "reshape_570", "inbound_nodes": [[["average_pooling2d_417", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_285", "trainable": true, "dtype": "float32", "units": 64, "activation": "softplus", "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 4}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_285", "inbound_nodes": [[["reshape_570", 0, 0, {}]]]}, {"class_name": "Reshape", "config": {"name": "reshape_571", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [4, 4, 4]}}, "name": "reshape_571", "inbound_nodes": [[["dense_285", 0, 0, {}]]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.reshape_828", "trainable": true, "dtype": "float32", "function": "reshape"}, "name": "tf.reshape_828", "inbound_nodes": [["reshape_571", 0, 0, {"shape": [-1, 4, 4, 1, 4, 1]}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.tile_414", "trainable": true, "dtype": "float32", "function": "tile"}, "name": "tf.tile_414", "inbound_nodes": [["tf.reshape_828", 0, 0, {"multiples": [1, 1, 1, 2, 1, 2], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.reshape_829", "trainable": true, "dtype": "float32", "function": "reshape"}, "name": "tf.reshape_829", "inbound_nodes": [["tf.tile_414", 0, 0, {"shape": [-1, 4, 8, 8]}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.concat_698", "trainable": true, "dtype": "float32", "function": "concat"}, "name": "tf.concat_698", "inbound_nodes": [[["tf.reshape_829", 0, 0, {"axis": 1}], ["conv2d_1116", 0, 0, {"axis": 1}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_1117", "trainable": true, "dtype": "float32", "filters": 4, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_first", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "softplus", "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 4}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_1117", "inbound_nodes": [[["tf.concat_698", 0, 0, {}]]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.reshape_830", "trainable": true, "dtype": "float32", "function": "reshape"}, "name": "tf.reshape_830", "inbound_nodes": [["conv2d_1117", 0, 0, {"shape": [-1, 4, 8, 1, 8, 1]}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.tile_415", "trainable": true, "dtype": "float32", "function": "tile"}, "name": "tf.tile_415", "inbound_nodes": [["tf.reshape_830", 0, 0, {"multiples": [1, 1, 1, 2, 1, 2], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.reshape_831", "trainable": true, "dtype": "float32", "function": "reshape"}, "name": "tf.reshape_831", "inbound_nodes": [["tf.tile_415", 0, 0, {"shape": [-1, 4, 16, 16]}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.concat_699", "trainable": true, "dtype": "float32", "function": "concat"}, "name": "tf.concat_699", "inbound_nodes": [[["tf.reshape_831", 0, 0, {"axis": 1}], ["conv2d_1115", 0, 0, {"axis": 1}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_1118", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_first", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "softplus", "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 4}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_1118", "inbound_nodes": [[["tf.concat_699", 0, 0, {}]]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.reshape_832", "trainable": true, "dtype": "float32", "function": "reshape"}, "name": "tf.reshape_832", "inbound_nodes": [["conv2d_1118", 0, 0, {"shape": [-1, 8, 16, 1, 16, 1]}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.tile_416", "trainable": true, "dtype": "float32", "function": "tile"}, "name": "tf.tile_416", "inbound_nodes": [["tf.reshape_832", 0, 0, {"multiples": [1, 1, 1, 2, 1, 2], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.reshape_833", "trainable": true, "dtype": "float32", "function": "reshape"}, "name": "tf.reshape_833", "inbound_nodes": [["tf.tile_416", 0, 0, {"shape": [-1, 8, 32, 32]}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.concat_700", "trainable": true, "dtype": "float32", "function": "concat"}, "name": "tf.concat_700", "inbound_nodes": [[["tf.reshape_833", 0, 0, {"axis": 1}], ["conv2d_1114", 0, 0, {"axis": 1}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_1119", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_first", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "softplus", "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 4}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_1119", "inbound_nodes": [[["tf.concat_700", 0, 0, {}]]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.reshape_834", "trainable": true, "dtype": "float32", "function": "reshape"}, "name": "tf.reshape_834", "inbound_nodes": [["conv2d_1119", 0, 0, {"shape": [-1, 16, 32, 1, 32, 1]}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.tile_417", "trainable": true, "dtype": "float32", "function": "tile"}, "name": "tf.tile_417", "inbound_nodes": [["tf.reshape_834", 0, 0, {"multiples": [1, 1, 1, 2, 1, 2], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.reshape_835", "trainable": true, "dtype": "float32", "function": "reshape"}, "name": "tf.reshape_835", "inbound_nodes": [["tf.tile_417", 0, 0, {"shape": [-1, 16, 64, 64]}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.concat_701", "trainable": true, "dtype": "float32", "function": "concat"}, "name": "tf.concat_701", "inbound_nodes": [[["tf.reshape_835", 0, 0, {"axis": 1}], ["conv2d_1113", 0, 0, {"axis": 1}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_1120", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_first", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "softplus", "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 4}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_1120", "inbound_nodes": [[["tf.concat_701", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_1121", "trainable": true, "dtype": "float32", "filters": 1, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_first", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 36}, "bias_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 36}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_1121", "inbound_nodes": [[["conv2d_1120", 0, 0, {}]]]}], "input_layers": [["input", 0, 0]], "output_layers": [["conv2d_1121", 0, 0]]}, "shared_object_id": 38, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 2, 64, 64]}, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 2, 64, 64]}, "is_graph_network": true, "full_save_spec": {"class_name": "__tuple__", "items": [[{"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 2, 64, 64]}, "float32", "input"]}], {}]}, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 2, 64, 64]}, "float32", "input"]}, "keras_version": "2.6.0", "backend": "tensorflow", "model_config": {"class_name": "Functional"}, "training_config": {"loss": "pde_loss", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "pde_loss", "dtype": "float32", "fn": "pde_loss"}, "shared_object_id": 40}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 9.999999747378752e-05, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}2
�root.layer-0"_tf_keras_input_layer*�{"class_name": "InputLayer", "name": "input", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 2, 64, 64]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 2, 64, 64]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input"}}2
�root.layer-1"_tf_keras_layer*�{"name": "tf.__operators__.getitem_566", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "SlicingOpLambda", "config": {"name": "tf.__operators__.getitem_566", "trainable": true, "dtype": "float32", "function": "__operators__.getitem"}, "inbound_nodes": [["input", 0, 0, {"slice_spec": {"class_name": "__tuple__", "items": [{"start": null, "stop": null, "step": null}, {"start": 0, "stop": 1, "step": null}]}}]], "shared_object_id": 1}2
�root.layer-2"_tf_keras_layer*�{"name": "range_conversion_285", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "RangeConversion", "config": {"layer was saved without config": true}}2
�root.layer-3"_tf_keras_layer*�{"name": "tf.__operators__.getitem_567", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "SlicingOpLambda", "config": {"name": "tf.__operators__.getitem_567", "trainable": true, "dtype": "float32", "function": "__operators__.getitem"}, "inbound_nodes": [["input", 0, 0, {"slice_spec": {"class_name": "__tuple__", "items": [{"start": null, "stop": null, "step": null}, {"start": 1, "stop": 2, "step": null}]}}]], "shared_object_id": 2}2
�root.layer-4"_tf_keras_layer*�{"name": "tf.concat_697", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.concat_697", "trainable": true, "dtype": "float32", "function": "concat"}, "inbound_nodes": [[["range_conversion_285", 0, 0, {"axis": 1, "name": "input_rangeconversion"}], ["tf.__operators__.getitem_567", 0, 0, {"axis": 1, "name": "input_rangeconversion"}]]], "shared_object_id": 3}2
�
root.layer_with_weights-0"_tf_keras_layer*�	{"name": "conv2d_1113", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_1113", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_first", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "softplus", "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 4}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["tf.concat_697", 0, 0, {}]]], "shared_object_id": 5, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-3": 2}}, "shared_object_id": 41}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 2, 64, 64]}}2
�root.layer-6"_tf_keras_layer*�{"name": "average_pooling2d_414", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "AveragePooling2D", "config": {"name": "average_pooling2d_414", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_first"}, "inbound_nodes": [[["conv2d_1113", 0, 0, {}]]], "shared_object_id": 6, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 42}}2
�
root.layer_with_weights-1"_tf_keras_layer*�	{"name": "conv2d_1114", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_1114", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_first", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "softplus", "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 4}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["average_pooling2d_414", 0, 0, {}]]], "shared_object_id": 7, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-3": 32}}, "shared_object_id": 43}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 32]}}2
�	root.layer-8"_tf_keras_layer*�{"name": "average_pooling2d_415", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "AveragePooling2D", "config": {"name": "average_pooling2d_415", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_first"}, "inbound_nodes": [[["conv2d_1114", 0, 0, {}]]], "shared_object_id": 8, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 44}}2
�

root.layer_with_weights-2"_tf_keras_layer*�	{"name": "conv2d_1115", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_1115", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_first", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "softplus", "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 4}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["average_pooling2d_415", 0, 0, {}]]], "shared_object_id": 9, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-3": 16}}, "shared_object_id": 45}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16, 16, 16]}}2
�
�
root.layer_with_weights-3"_tf_keras_layer*�	{"name": "conv2d_1116", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_1116", "trainable": true, "dtype": "float32", "filters": 4, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_first", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "softplus", "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 4}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["average_pooling2d_416", 0, 0, {}]]], "shared_object_id": 11, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-3": 8}}, "shared_object_id": 47}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 8, 8, 8]}}2
�
�
�root.layer_with_weights-4"_tf_keras_layer*�{"name": "dense_285", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_285", "trainable": true, "dtype": "float32", "units": 64, "activation": "softplus", "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 4}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["reshape_570", 0, 0, {}]]], "shared_object_id": 14, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}, "shared_object_id": 49}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64]}}2
�
�
�
�
�
�
root.layer_with_weights-5"_tf_keras_layer*�	{"name": "conv2d_1117", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_1117", "trainable": true, "dtype": "float32", "filters": 4, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_first", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "softplus", "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 4}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["tf.concat_698", 0, 0, {}]]], "shared_object_id": 20, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-3": 8}}, "shared_object_id": 50}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 8, 8, 8]}}2
�
�
�
�
�
root.layer_with_weights-6"_tf_keras_layer*�	{"name": "conv2d_1118", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_1118", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_first", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "softplus", "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 4}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["tf.concat_699", 0, 0, {}]]], "shared_object_id": 25, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-3": 12}}, "shared_object_id": 51}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 12, 16, 16]}}2
�
�
�
�
�
root.layer_with_weights-7"_tf_keras_layer*�	{"name": "conv2d_1119", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_1119", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_first", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "softplus", "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 4}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["tf.concat_700", 0, 0, {}]]], "shared_object_id": 30, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-3": 24}}, "shared_object_id": 52}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 24, 32, 32]}}2
� 
�!
�"
�#
�
$root.layer_with_weights-8"_tf_keras_layer*�	{"name": "conv2d_1120", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_1120", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_first", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "softplus", "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 4}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["tf.concat_701", 0, 0, {}]]], "shared_object_id": 35, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-3": 48}}, "shared_object_id": 53}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 48, 64, 64]}}2
�
%root.layer_with_weights-9"_tf_keras_layer*�	{"name": "conv2d_1121", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_1121", "trainable": true, "dtype": "float32", "filters": 1, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_first", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 36}, "bias_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 36}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["conv2d_1120", 0, 0, {}]]], "shared_object_id": 37, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-3": 32}}, "shared_object_id": 54}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 64, 64]}}2
��root.keras_api.metrics.0"_tf_keras_metric*�{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 55}2
��root.keras_api.metrics.1"_tf_keras_metric*�{"class_name": "MeanMetricWrapper", "name": "pde_loss", "dtype": "float32", "config": {"name": "pde_loss", "dtype": "float32", "fn": "pde_loss"}, "shared_object_id": 40}2