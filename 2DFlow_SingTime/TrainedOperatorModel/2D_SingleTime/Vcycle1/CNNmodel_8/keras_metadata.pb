
�8root"_tf_keras_network*�7{"name": "model_170", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Functional", "config": {"name": "model_170", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1, 8, 8]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input"}, "name": "input", "inbound_nodes": []}, {"class_name": "RangeConversion", "config": {"layer was saved without config": true}, "name": "range_conversion_170", "inbound_nodes": [[["input", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_714", "trainable": true, "dtype": "float32", "filters": 4, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_first", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "softplus", "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 1}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_714", "inbound_nodes": [[["range_conversion_170", 0, 0, {}]]]}, {"class_name": "AveragePooling2D", "config": {"name": "average_pooling2d_272", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_first"}, "name": "average_pooling2d_272", "inbound_nodes": [[["conv2d_714", 0, 0, {}]]]}, {"class_name": "Reshape", "config": {"name": "reshape_340", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [64]}}, "name": "reshape_340", "inbound_nodes": [[["average_pooling2d_272", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_170", "trainable": true, "dtype": "float32", "units": 64, "activation": "softplus", "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 1}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_170", "inbound_nodes": [[["reshape_340", 0, 0, {}]]]}, {"class_name": "Reshape", "config": {"name": "reshape_341", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [4, 4, 4]}}, "name": "reshape_341", "inbound_nodes": [[["dense_170", 0, 0, {}]]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.reshape_544", "trainable": true, "dtype": "float32", "function": "reshape"}, "name": "tf.reshape_544", "inbound_nodes": [["reshape_341", 0, 0, {"shape": [-1, 4, 4, 1, 4, 1]}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.tile_272", "trainable": true, "dtype": "float32", "function": "tile"}, "name": "tf.tile_272", "inbound_nodes": [["tf.reshape_544", 0, 0, {"multiples": [1, 1, 1, 2, 1, 2], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.reshape_545", "trainable": true, "dtype": "float32", "function": "reshape"}, "name": "tf.reshape_545", "inbound_nodes": [["tf.tile_272", 0, 0, {"shape": [-1, 4, 8, 8]}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.concat_441", "trainable": true, "dtype": "float32", "function": "concat"}, "name": "tf.concat_441", "inbound_nodes": [[["tf.reshape_545", 0, 0, {"axis": 1}], ["conv2d_714", 0, 0, {"axis": 1}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_715", "trainable": true, "dtype": "float32", "filters": 4, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_first", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "softplus", "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 1}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_715", "inbound_nodes": [[["tf.concat_441", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_716", "trainable": true, "dtype": "float32", "filters": 1, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_first", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 12}, "bias_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 12}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_716", "inbound_nodes": [[["conv2d_715", 0, 0, {}]]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.compat.v1.nn.conv2d_1", "trainable": true, "dtype": "float32", "function": "compat.v1.nn.conv2d"}, "name": "tf.compat.v1.nn.conv2d_1", "inbound_nodes": [["conv2d_716", 0, 0, {"filter": [[[[1.0]]]], "strides": [1, 1, 1, 1], "padding": "SAME", "use_cudnn_on_gpu": true, "data_format": "NCHW", "dilations": null, "name": null}]]}], "input_layers": [["input", 0, 0]], "output_layers": [["tf.compat.v1.nn.conv2d_1", 0, 0]]}, "shared_object_id": 15, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 1, 8, 8]}, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 1, 8, 8]}, "is_graph_network": true, "full_save_spec": {"class_name": "__tuple__", "items": [[{"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 1, 8, 8]}, "float32", "input"]}], {}]}, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 1, 8, 8]}, "float32", "input"]}, "keras_version": "2.6.0", "backend": "tensorflow", "model_config": {"class_name": "Functional"}, "training_config": {"loss": "pde_loss", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "pde_loss", "dtype": "float32", "fn": "pde_loss"}, "shared_object_id": 17}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 9.999999747378752e-05, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}2
�root.layer-0"_tf_keras_input_layer*�{"class_name": "InputLayer", "name": "input", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 1, 8, 8]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1, 8, 8]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input"}}2
�root.layer-1"_tf_keras_layer*�{"name": "range_conversion_170", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "RangeConversion", "config": {"layer was saved without config": true}}2
�
root.layer_with_weights-0"_tf_keras_layer*�	{"name": "conv2d_714", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_714", "trainable": true, "dtype": "float32", "filters": 4, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_first", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "softplus", "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 1}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["range_conversion_170", 0, 0, {}]]], "shared_object_id": 2, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-3": 1}}, "shared_object_id": 18}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1, 8, 8]}}2
�root.layer-3"_tf_keras_layer*�{"name": "average_pooling2d_272", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "AveragePooling2D", "config": {"name": "average_pooling2d_272", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_first"}, "inbound_nodes": [[["conv2d_714", 0, 0, {}]]], "shared_object_id": 3, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 19}}2
�root.layer-4"_tf_keras_layer*�{"name": "reshape_340", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Reshape", "config": {"name": "reshape_340", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [64]}}, "inbound_nodes": [[["average_pooling2d_272", 0, 0, {}]]], "shared_object_id": 4}2
�root.layer_with_weights-1"_tf_keras_layer*�{"name": "dense_170", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_170", "trainable": true, "dtype": "float32", "units": 64, "activation": "softplus", "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 1}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["reshape_340", 0, 0, {}]]], "shared_object_id": 5, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}, "shared_object_id": 20}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64]}}2
�root.layer-6"_tf_keras_layer*�{"name": "reshape_341", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Reshape", "config": {"name": "reshape_341", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [4, 4, 4]}}, "inbound_nodes": [[["dense_170", 0, 0, {}]]], "shared_object_id": 6}2
�root.layer-7"_tf_keras_layer*�{"name": "tf.reshape_544", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.reshape_544", "trainable": true, "dtype": "float32", "function": "reshape"}, "inbound_nodes": [["reshape_341", 0, 0, {"shape": [-1, 4, 4, 1, 4, 1]}]], "shared_object_id": 7}2
�	root.layer-8"_tf_keras_layer*�{"name": "tf.tile_272", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.tile_272", "trainable": true, "dtype": "float32", "function": "tile"}, "inbound_nodes": [["tf.reshape_544", 0, 0, {"multiples": [1, 1, 1, 2, 1, 2], "name": null}]], "shared_object_id": 8}2
�
root.layer-9"_tf_keras_layer*�{"name": "tf.reshape_545", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.reshape_545", "trainable": true, "dtype": "float32", "function": "reshape"}, "inbound_nodes": [["tf.tile_272", 0, 0, {"shape": [-1, 4, 8, 8]}]], "shared_object_id": 9}2
�
�
root.layer_with_weights-2"_tf_keras_layer*�	{"name": "conv2d_715", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_715", "trainable": true, "dtype": "float32", "filters": 4, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_first", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "softplus", "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 1}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["tf.concat_441", 0, 0, {}]]], "shared_object_id": 11, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-3": 8}}, "shared_object_id": 21}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 8, 8, 8]}}2
�

�
�troot.keras_api.metrics.0"_tf_keras_metric*�{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 23}2
�uroot.keras_api.metrics.1"_tf_keras_metric*�{"class_name": "MeanMetricWrapper", "name": "pde_loss", "dtype": "float32", "config": {"name": "pde_loss", "dtype": "float32", "fn": "pde_loss"}, "shared_object_id": 17}2