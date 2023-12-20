
�root"_tf_keras_network*Ȁ{"name": "model_99", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Functional", "config": {"name": "model_99", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 2, 16, 64, 64]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input"}, "name": "input", "inbound_nodes": []}, {"class_name": "SlicingOpLambda", "config": {"name": "tf.__operators__.getitem_534", "trainable": true, "dtype": "float32", "function": "__operators__.getitem"}, "name": "tf.__operators__.getitem_534", "inbound_nodes": [["input", 0, 0, {"slice_spec": {"class_name": "__tuple__", "items": [{"start": null, "stop": null, "step": null}, {"start": 0, "stop": 1, "step": null}]}}]]}, {"class_name": "RangeConversion", "config": {"layer was saved without config": true}, "name": "range_conversion_99", "inbound_nodes": [[["tf.__operators__.getitem_534", 0, 0, {}]]]}, {"class_name": "SlicingOpLambda", "config": {"name": "tf.__operators__.getitem_535", "trainable": true, "dtype": "float32", "function": "__operators__.getitem"}, "name": "tf.__operators__.getitem_535", "inbound_nodes": [["input", 0, 0, {"slice_spec": {"class_name": "__tuple__", "items": [{"start": null, "stop": null, "step": null}, {"start": 1, "stop": 2, "step": null}]}}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.concat_735", "trainable": true, "dtype": "float32", "function": "concat"}, "name": "tf.concat_735", "inbound_nodes": [[["range_conversion_99", 0, 0, {"axis": 1, "name": "input_rangeconversion"}], ["tf.__operators__.getitem_535", 0, 0, {"axis": 1, "name": "input_rangeconversion"}]]]}, {"class_name": "Conv3D", "config": {"name": "conv3d_511", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_first", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "softplus", "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 4}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv3d_511", "inbound_nodes": [[["tf.concat_735", 0, 0, {}]]]}, {"class_name": "AveragePooling3D", "config": {"name": "average_pooling3d_206", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2, 2]}, "data_format": "channels_first"}, "name": "average_pooling3d_206", "inbound_nodes": [[["conv3d_511", 0, 0, {}]]]}, {"class_name": "Conv3D", "config": {"name": "conv3d_512", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_first", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "softplus", "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 4}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv3d_512", "inbound_nodes": [[["average_pooling3d_206", 0, 0, {}]]]}, {"class_name": "AveragePooling3D", "config": {"name": "average_pooling3d_207", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2, 2]}, "data_format": "channels_first"}, "name": "average_pooling3d_207", "inbound_nodes": [[["conv3d_512", 0, 0, {}]]]}, {"class_name": "Conv3D", "config": {"name": "conv3d_513", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_first", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "softplus", "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 4}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv3d_513", "inbound_nodes": [[["average_pooling3d_207", 0, 0, {}]]]}, {"class_name": "AveragePooling3D", "config": {"name": "average_pooling3d_208", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2, 2]}, "data_format": "channels_first"}, "name": "average_pooling3d_208", "inbound_nodes": [[["conv3d_513", 0, 0, {}]]]}, {"class_name": "Conv3D", "config": {"name": "conv3d_514", "trainable": true, "dtype": "float32", "filters": 4, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_first", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "softplus", "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 4}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv3d_514", "inbound_nodes": [[["average_pooling3d_208", 0, 0, {}]]]}, {"class_name": "AveragePooling3D", "config": {"name": "average_pooling3d_209", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2, 2]}, "data_format": "channels_first"}, "name": "average_pooling3d_209", "inbound_nodes": [[["conv3d_514", 0, 0, {}]]]}, {"class_name": "Reshape", "config": {"name": "reshape_198", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [64]}}, "name": "reshape_198", "inbound_nodes": [[["average_pooling3d_209", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_99", "trainable": true, "dtype": "float32", "units": 64, "activation": "softplus", "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 4}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_99", "inbound_nodes": [[["reshape_198", 0, 0, {}]]]}, {"class_name": "Reshape", "config": {"name": "reshape_199", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [4, 1, 4, 4]}}, "name": "reshape_199", "inbound_nodes": [[["dense_99", 0, 0, {}]]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.reshape_936", "trainable": true, "dtype": "float32", "function": "reshape"}, "name": "tf.reshape_936", "inbound_nodes": [["reshape_199", 0, 0, {"shape": [-1, 4, 1, 1, 4, 1, 4, 1]}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.tile_468", "trainable": true, "dtype": "float32", "function": "tile"}, "name": "tf.tile_468", "inbound_nodes": [["tf.reshape_936", 0, 0, {"multiples": [1, 1, 1, 2, 1, 2, 1, 2], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.reshape_937", "trainable": true, "dtype": "float32", "function": "reshape"}, "name": "tf.reshape_937", "inbound_nodes": [["tf.tile_468", 0, 0, {"shape": [-1, 4, 2, 8, 8]}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.concat_736", "trainable": true, "dtype": "float32", "function": "concat"}, "name": "tf.concat_736", "inbound_nodes": [[["tf.reshape_937", 0, 0, {"axis": 1}], ["conv3d_514", 0, 0, {"axis": 1}]]]}, {"class_name": "Conv3D", "config": {"name": "conv3d_515", "trainable": true, "dtype": "float32", "filters": 4, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_first", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "softplus", "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 4}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv3d_515", "inbound_nodes": [[["tf.concat_736", 0, 0, {}]]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.reshape_938", "trainable": true, "dtype": "float32", "function": "reshape"}, "name": "tf.reshape_938", "inbound_nodes": [["conv3d_515", 0, 0, {"shape": [-1, 4, 2, 1, 8, 1, 8, 1]}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.tile_469", "trainable": true, "dtype": "float32", "function": "tile"}, "name": "tf.tile_469", "inbound_nodes": [["tf.reshape_938", 0, 0, {"multiples": [1, 1, 1, 2, 1, 2, 1, 2], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.reshape_939", "trainable": true, "dtype": "float32", "function": "reshape"}, "name": "tf.reshape_939", "inbound_nodes": [["tf.tile_469", 0, 0, {"shape": [-1, 4, 4, 16, 16]}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.concat_737", "trainable": true, "dtype": "float32", "function": "concat"}, "name": "tf.concat_737", "inbound_nodes": [[["tf.reshape_939", 0, 0, {"axis": 1}], ["conv3d_513", 0, 0, {"axis": 1}]]]}, {"class_name": "Conv3D", "config": {"name": "conv3d_516", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_first", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "softplus", "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 4}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv3d_516", "inbound_nodes": [[["tf.concat_737", 0, 0, {}]]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.reshape_940", "trainable": true, "dtype": "float32", "function": "reshape"}, "name": "tf.reshape_940", "inbound_nodes": [["conv3d_516", 0, 0, {"shape": [-1, 8, 4, 1, 16, 1, 16, 1]}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.tile_470", "trainable": true, "dtype": "float32", "function": "tile"}, "name": "tf.tile_470", "inbound_nodes": [["tf.reshape_940", 0, 0, {"multiples": [1, 1, 1, 2, 1, 2, 1, 2], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.reshape_941", "trainable": true, "dtype": "float32", "function": "reshape"}, "name": "tf.reshape_941", "inbound_nodes": [["tf.tile_470", 0, 0, {"shape": [-1, 8, 8, 32, 32]}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.concat_738", "trainable": true, "dtype": "float32", "function": "concat"}, "name": "tf.concat_738", "inbound_nodes": [[["tf.reshape_941", 0, 0, {"axis": 1}], ["conv3d_512", 0, 0, {"axis": 1}]]]}, {"class_name": "Conv3D", "config": {"name": "conv3d_517", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_first", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "softplus", "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 4}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv3d_517", "inbound_nodes": [[["tf.concat_738", 0, 0, {}]]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.reshape_942", "trainable": true, "dtype": "float32", "function": "reshape"}, "name": "tf.reshape_942", "inbound_nodes": [["conv3d_517", 0, 0, {"shape": [-1, 16, 8, 1, 32, 1, 32, 1]}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.tile_471", "trainable": true, "dtype": "float32", "function": "tile"}, "name": "tf.tile_471", "inbound_nodes": [["tf.reshape_942", 0, 0, {"multiples": [1, 1, 1, 2, 1, 2, 1, 2], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.reshape_943", "trainable": true, "dtype": "float32", "function": "reshape"}, "name": "tf.reshape_943", "inbound_nodes": [["tf.tile_471", 0, 0, {"shape": [-1, 16, 16, 64, 64]}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.concat_739", "trainable": true, "dtype": "float32", "function": "concat"}, "name": "tf.concat_739", "inbound_nodes": [[["tf.reshape_943", 0, 0, {"axis": 1}], ["conv3d_511", 0, 0, {"axis": 1}]]]}, {"class_name": "Conv3D", "config": {"name": "conv3d_518", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_first", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "softplus", "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 4}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv3d_518", "inbound_nodes": [[["tf.concat_739", 0, 0, {}]]]}, {"class_name": "Conv3D", "config": {"name": "conv3d_519", "trainable": true, "dtype": "float32", "filters": 1, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_first", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 36}, "bias_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 36}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv3d_519", "inbound_nodes": [[["conv3d_518", 0, 0, {}]]]}], "input_layers": [["input", 0, 0]], "output_layers": [["conv3d_519", 0, 0]]}, "shared_object_id": 38, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 2, 16, 64, 64]}, "ndim": 5, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 2, 16, 64, 64]}, "is_graph_network": true, "full_save_spec": {"class_name": "__tuple__", "items": [[{"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 2, 16, 64, 64]}, "float32", "input"]}], {}]}, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 2, 16, 64, 64]}, "float32", "input"]}, "keras_version": "2.6.0", "backend": "tensorflow", "model_config": {"class_name": "Functional"}}2
�root.layer-0"_tf_keras_input_layer*�{"class_name": "InputLayer", "name": "input", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 2, 16, 64, 64]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 2, 16, 64, 64]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input"}}2
�root.layer-1"_tf_keras_layer*�{"name": "tf.__operators__.getitem_534", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "SlicingOpLambda", "config": {"name": "tf.__operators__.getitem_534", "trainable": true, "dtype": "float32", "function": "__operators__.getitem"}, "inbound_nodes": [["input", 0, 0, {"slice_spec": {"class_name": "__tuple__", "items": [{"start": null, "stop": null, "step": null}, {"start": 0, "stop": 1, "step": null}]}}]], "shared_object_id": 1}2
�root.layer-2"_tf_keras_layer*�{"name": "range_conversion_99", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "RangeConversion", "config": {"layer was saved without config": true}}2
�root.layer-3"_tf_keras_layer*�{"name": "tf.__operators__.getitem_535", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "SlicingOpLambda", "config": {"name": "tf.__operators__.getitem_535", "trainable": true, "dtype": "float32", "function": "__operators__.getitem"}, "inbound_nodes": [["input", 0, 0, {"slice_spec": {"class_name": "__tuple__", "items": [{"start": null, "stop": null, "step": null}, {"start": 1, "stop": 2, "step": null}]}}]], "shared_object_id": 2}2
�root.layer-4"_tf_keras_layer*�{"name": "tf.concat_735", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.concat_735", "trainable": true, "dtype": "float32", "function": "concat"}, "inbound_nodes": [[["range_conversion_99", 0, 0, {"axis": 1, "name": "input_rangeconversion"}], ["tf.__operators__.getitem_535", 0, 0, {"axis": 1, "name": "input_rangeconversion"}]]], "shared_object_id": 3}2
�
root.layer_with_weights-0"_tf_keras_layer*�	{"name": "conv3d_511", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv3D", "config": {"name": "conv3d_511", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_first", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "softplus", "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 4}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["tf.concat_735", 0, 0, {}]]], "shared_object_id": 5, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 5, "axes": {"-4": 2}}, "shared_object_id": 40}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 2, 16, 64, 64]}}2
�root.layer-6"_tf_keras_layer*�{"name": "average_pooling3d_206", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "AveragePooling3D", "config": {"name": "average_pooling3d_206", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2, 2]}, "data_format": "channels_first"}, "inbound_nodes": [[["conv3d_511", 0, 0, {}]]], "shared_object_id": 6, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 5, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 41}}2
�
root.layer_with_weights-1"_tf_keras_layer*�	{"name": "conv3d_512", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv3D", "config": {"name": "conv3d_512", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_first", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "softplus", "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 4}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["average_pooling3d_206", 0, 0, {}]]], "shared_object_id": 7, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 5, "axes": {"-4": 32}}, "shared_object_id": 42}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 8, 32, 32]}}2
�	root.layer-8"_tf_keras_layer*�{"name": "average_pooling3d_207", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "AveragePooling3D", "config": {"name": "average_pooling3d_207", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2, 2]}, "data_format": "channels_first"}, "inbound_nodes": [[["conv3d_512", 0, 0, {}]]], "shared_object_id": 8, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 5, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 43}}2
�

root.layer_with_weights-2"_tf_keras_layer*�	{"name": "conv3d_513", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv3D", "config": {"name": "conv3d_513", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_first", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "softplus", "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 4}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["average_pooling3d_207", 0, 0, {}]]], "shared_object_id": 9, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 5, "axes": {"-4": 16}}, "shared_object_id": 44}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16, 4, 16, 16]}}2
�
�
root.layer_with_weights-3"_tf_keras_layer*�	{"name": "conv3d_514", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv3D", "config": {"name": "conv3d_514", "trainable": true, "dtype": "float32", "filters": 4, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_first", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "softplus", "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 4}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["average_pooling3d_208", 0, 0, {}]]], "shared_object_id": 11, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 5, "axes": {"-4": 8}}, "shared_object_id": 46}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 8, 2, 8, 8]}}2
�
�
�root.layer_with_weights-4"_tf_keras_layer*�{"name": "dense_99", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_99", "trainable": true, "dtype": "float32", "units": 64, "activation": "softplus", "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 4}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["reshape_198", 0, 0, {}]]], "shared_object_id": 14, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}, "shared_object_id": 48}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64]}}2
�
�
�
�
�
�
root.layer_with_weights-5"_tf_keras_layer*�	{"name": "conv3d_515", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv3D", "config": {"name": "conv3d_515", "trainable": true, "dtype": "float32", "filters": 4, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_first", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "softplus", "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 4}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["tf.concat_736", 0, 0, {}]]], "shared_object_id": 20, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 5, "axes": {"-4": 8}}, "shared_object_id": 49}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 8, 2, 8, 8]}}2
�
�
�
�
�
root.layer_with_weights-6"_tf_keras_layer*�	{"name": "conv3d_516", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv3D", "config": {"name": "conv3d_516", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_first", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "softplus", "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 4}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["tf.concat_737", 0, 0, {}]]], "shared_object_id": 25, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 5, "axes": {"-4": 12}}, "shared_object_id": 50}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 12, 4, 16, 16]}}2
�
�
�
�
�
root.layer_with_weights-7"_tf_keras_layer*�	{"name": "conv3d_517", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv3D", "config": {"name": "conv3d_517", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_first", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "softplus", "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 4}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["tf.concat_738", 0, 0, {}]]], "shared_object_id": 30, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 5, "axes": {"-4": 24}}, "shared_object_id": 51}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 24, 8, 32, 32]}}2
� 
�!
�"
�#
�
$root.layer_with_weights-8"_tf_keras_layer*�	{"name": "conv3d_518", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv3D", "config": {"name": "conv3d_518", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_first", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "softplus", "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 4}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["tf.concat_739", 0, 0, {}]]], "shared_object_id": 35, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 5, "axes": {"-4": 48}}, "shared_object_id": 52}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 48, 16, 64, 64]}}2
�
%root.layer_with_weights-9"_tf_keras_layer*�	{"name": "conv3d_519", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv3D", "config": {"name": "conv3d_519", "trainable": true, "dtype": "float32", "filters": 1, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_first", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 36}, "bias_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}, "shared_object_id": 36}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["conv3d_518", 0, 0, {}]]], "shared_object_id": 37, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 5, "axes": {"-4": 32}}, "shared_object_id": 53}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 16, 64, 64]}}2