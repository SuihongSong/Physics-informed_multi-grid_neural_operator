
�Qroot"_tf_keras_network*�Q{"name": "model_23", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Functional", "config": {"name": "model_23", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 2, 4, 16, 16]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input"}, "name": "input", "inbound_nodes": []}, {"class_name": "SlicingOpLambda", "config": {"name": "tf.__operators__.getitem_44", "trainable": true, "dtype": "float32", "function": "__operators__.getitem"}, "name": "tf.__operators__.getitem_44", "inbound_nodes": [["input", 0, 0, {"slice_spec": {"class_name": "__tuple__", "items": [{"start": null, "stop": null, "step": null}, {"start": 0, "stop": 1, "step": null}]}}]]}, {"class_name": "RangeConversion", "config": {"layer was saved without config": true}, "name": "range_conversion_23", "inbound_nodes": [[["tf.__operators__.getitem_44", 0, 0, {}]]]}, {"class_name": "SlicingOpLambda", "config": {"name": "tf.__operators__.getitem_45", "trainable": true, "dtype": "float32", "function": "__operators__.getitem"}, "name": "tf.__operators__.getitem_45", "inbound_nodes": [["input", 0, 0, {"slice_spec": {"class_name": "__tuple__", "items": [{"start": null, "stop": null, "step": null}, {"start": 1, "stop": 2, "step": null}]}}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.concat_39", "trainable": true, "dtype": "float32", "function": "concat"}, "name": "tf.concat_39", "inbound_nodes": [[["range_conversion_23", 0, 0, {"axis": 1, "name": "input_rangeconversion"}], ["tf.__operators__.getitem_45", 0, 0, {"axis": 1, "name": "input_rangeconversion"}]]]}, {"class_name": "Conv3D", "config": {"name": "conv3d_57", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_first", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "softplus", "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 4}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv3d_57", "inbound_nodes": [[["tf.concat_39", 0, 0, {}]]]}, {"class_name": "AveragePooling3D", "config": {"name": "average_pooling3d_17", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2, 2]}, "data_format": "channels_first"}, "name": "average_pooling3d_17", "inbound_nodes": [[["conv3d_57", 0, 0, {}]]]}, {"class_name": "Conv3D", "config": {"name": "conv3d_58", "trainable": true, "dtype": "float32", "filters": 4, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_first", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "softplus", "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 4}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv3d_58", "inbound_nodes": [[["average_pooling3d_17", 0, 0, {}]]]}, {"class_name": "AveragePooling3D", "config": {"name": "average_pooling3d_18", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2, 2]}, "data_format": "channels_first"}, "name": "average_pooling3d_18", "inbound_nodes": [[["conv3d_58", 0, 0, {}]]]}, {"class_name": "Reshape", "config": {"name": "reshape_46", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [64]}}, "name": "reshape_46", "inbound_nodes": [[["average_pooling3d_18", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_23", "trainable": true, "dtype": "float32", "units": 64, "activation": "softplus", "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 4}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_23", "inbound_nodes": [[["reshape_46", 0, 0, {}]]]}, {"class_name": "Reshape", "config": {"name": "reshape_47", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [4, 1, 4, 4]}}, "name": "reshape_47", "inbound_nodes": [[["dense_23", 0, 0, {}]]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.reshape_34", "trainable": true, "dtype": "float32", "function": "reshape"}, "name": "tf.reshape_34", "inbound_nodes": [["reshape_47", 0, 0, {"shape": [-1, 4, 1, 1, 4, 1, 4, 1]}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.tile_17", "trainable": true, "dtype": "float32", "function": "tile"}, "name": "tf.tile_17", "inbound_nodes": [["tf.reshape_34", 0, 0, {"multiples": [1, 1, 1, 2, 1, 2, 1, 2], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.reshape_35", "trainable": true, "dtype": "float32", "function": "reshape"}, "name": "tf.reshape_35", "inbound_nodes": [["tf.tile_17", 0, 0, {"shape": [-1, 4, 2, 8, 8]}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.concat_40", "trainable": true, "dtype": "float32", "function": "concat"}, "name": "tf.concat_40", "inbound_nodes": [[["tf.reshape_35", 0, 0, {"axis": 1}], ["conv3d_58", 0, 0, {"axis": 1}]]]}, {"class_name": "Conv3D", "config": {"name": "conv3d_59", "trainable": true, "dtype": "float32", "filters": 4, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_first", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "softplus", "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 4}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv3d_59", "inbound_nodes": [[["tf.concat_40", 0, 0, {}]]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.reshape_36", "trainable": true, "dtype": "float32", "function": "reshape"}, "name": "tf.reshape_36", "inbound_nodes": [["conv3d_59", 0, 0, {"shape": [-1, 4, 2, 1, 8, 1, 8, 1]}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.tile_18", "trainable": true, "dtype": "float32", "function": "tile"}, "name": "tf.tile_18", "inbound_nodes": [["tf.reshape_36", 0, 0, {"multiples": [1, 1, 1, 2, 1, 2, 1, 2], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.reshape_37", "trainable": true, "dtype": "float32", "function": "reshape"}, "name": "tf.reshape_37", "inbound_nodes": [["tf.tile_18", 0, 0, {"shape": [-1, 4, 4, 16, 16]}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.concat_41", "trainable": true, "dtype": "float32", "function": "concat"}, "name": "tf.concat_41", "inbound_nodes": [[["tf.reshape_37", 0, 0, {"axis": 1}], ["conv3d_57", 0, 0, {"axis": 1}]]]}, {"class_name": "Conv3D", "config": {"name": "conv3d_60", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_first", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "softplus", "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 4}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv3d_60", "inbound_nodes": [[["tf.concat_41", 0, 0, {}]]]}, {"class_name": "Conv3D", "config": {"name": "conv3d_61", "trainable": true, "dtype": "float32", "filters": 1, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_first", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 22}, "bias_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 22}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv3d_61", "inbound_nodes": [[["conv3d_60", 0, 0, {}]]]}], "input_layers": [["input", 0, 0]], "output_layers": [["conv3d_61", 0, 0]]}, "shared_object_id": 24, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 2, 4, 16, 16]}, "ndim": 5, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 2, 4, 16, 16]}, "is_graph_network": true, "full_save_spec": {"class_name": "__tuple__", "items": [[{"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 2, 4, 16, 16]}, "float32", "input"]}], {}]}, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 2, 4, 16, 16]}, "float32", "input"]}, "keras_version": "2.6.0", "backend": "tensorflow", "model_config": {"class_name": "Functional"}}2
�root.layer-0"_tf_keras_input_layer*�{"class_name": "InputLayer", "name": "input", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 2, 4, 16, 16]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 2, 4, 16, 16]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input"}}2
�root.layer-1"_tf_keras_layer*�{"name": "tf.__operators__.getitem_44", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "SlicingOpLambda", "config": {"name": "tf.__operators__.getitem_44", "trainable": true, "dtype": "float32", "function": "__operators__.getitem"}, "inbound_nodes": [["input", 0, 0, {"slice_spec": {"class_name": "__tuple__", "items": [{"start": null, "stop": null, "step": null}, {"start": 0, "stop": 1, "step": null}]}}]], "shared_object_id": 1}2
�root.layer-2"_tf_keras_layer*�{"name": "range_conversion_23", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "RangeConversion", "config": {"layer was saved without config": true}}2
�root.layer-3"_tf_keras_layer*�{"name": "tf.__operators__.getitem_45", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "SlicingOpLambda", "config": {"name": "tf.__operators__.getitem_45", "trainable": true, "dtype": "float32", "function": "__operators__.getitem"}, "inbound_nodes": [["input", 0, 0, {"slice_spec": {"class_name": "__tuple__", "items": [{"start": null, "stop": null, "step": null}, {"start": 1, "stop": 2, "step": null}]}}]], "shared_object_id": 2}2
�root.layer-4"_tf_keras_layer*�{"name": "tf.concat_39", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.concat_39", "trainable": true, "dtype": "float32", "function": "concat"}, "inbound_nodes": [[["range_conversion_23", 0, 0, {"axis": 1, "name": "input_rangeconversion"}], ["tf.__operators__.getitem_45", 0, 0, {"axis": 1, "name": "input_rangeconversion"}]]], "shared_object_id": 3}2
�
root.layer_with_weights-0"_tf_keras_layer*�	{"name": "conv3d_57", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv3D", "config": {"name": "conv3d_57", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_first", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "softplus", "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 4}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["tf.concat_39", 0, 0, {}]]], "shared_object_id": 5, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 5, "axes": {"-4": 2}}, "shared_object_id": 26}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 2, 4, 16, 16]}}2
�root.layer-6"_tf_keras_layer*�{"name": "average_pooling3d_17", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "AveragePooling3D", "config": {"name": "average_pooling3d_17", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2, 2]}, "data_format": "channels_first"}, "inbound_nodes": [[["conv3d_57", 0, 0, {}]]], "shared_object_id": 6, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 5, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 27}}2
�
root.layer_with_weights-1"_tf_keras_layer*�	{"name": "conv3d_58", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv3D", "config": {"name": "conv3d_58", "trainable": true, "dtype": "float32", "filters": 4, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_first", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "softplus", "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 4}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["average_pooling3d_17", 0, 0, {}]]], "shared_object_id": 7, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 5, "axes": {"-4": 8}}, "shared_object_id": 28}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 8, 2, 8, 8]}}2
�	root.layer-8"_tf_keras_layer*�{"name": "average_pooling3d_18", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "AveragePooling3D", "config": {"name": "average_pooling3d_18", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2, 2]}, "data_format": "channels_first"}, "inbound_nodes": [[["conv3d_58", 0, 0, {}]]], "shared_object_id": 8, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 5, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 29}}2
�
root.layer-9"_tf_keras_layer*�{"name": "reshape_46", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Reshape", "config": {"name": "reshape_46", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [64]}}, "inbound_nodes": [[["average_pooling3d_18", 0, 0, {}]]], "shared_object_id": 9}2
�root.layer_with_weights-2"_tf_keras_layer*�{"name": "dense_23", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_23", "trainable": true, "dtype": "float32", "units": 64, "activation": "softplus", "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 4}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["reshape_46", 0, 0, {}]]], "shared_object_id": 10, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}, "shared_object_id": 30}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64]}}2
�
�
�
�
�
�
root.layer_with_weights-3"_tf_keras_layer*�	{"name": "conv3d_59", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv3D", "config": {"name": "conv3d_59", "trainable": true, "dtype": "float32", "filters": 4, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_first", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "softplus", "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 4}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["tf.concat_40", 0, 0, {}]]], "shared_object_id": 16, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 5, "axes": {"-4": 8}}, "shared_object_id": 31}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 8, 2, 8, 8]}}2
�
�
�
�
�
root.layer_with_weights-4"_tf_keras_layer*�	{"name": "conv3d_60", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv3D", "config": {"name": "conv3d_60", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_first", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "softplus", "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 4}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["tf.concat_41", 0, 0, {}]]], "shared_object_id": 21, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 5, "axes": {"-4": 12}}, "shared_object_id": 32}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 12, 4, 16, 16]}}2
�
root.layer_with_weights-5"_tf_keras_layer*�	{"name": "conv3d_61", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv3D", "config": {"name": "conv3d_61", "trainable": true, "dtype": "float32", "filters": 1, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_first", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 22}, "bias_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 22}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["conv3d_60", 0, 0, {}]]], "shared_object_id": 23, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 5, "axes": {"-4": 8}}, "shared_object_id": 33}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 8, 4, 16, 16]}}2