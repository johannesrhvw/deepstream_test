# deepstream_test

playground for deepstream development

## Docker Dev Container setup

Compile and install the custom YoloV8-Seg parser:

```bash
cd nvdsinfer_custom_impl_Yolo_seg
make
cd ..
```

## TRT-Engine creation

Copy your Yolov8-seg weights into the repository folder.

Export the model to ONNX:

```bash
python utils/export_yoloV8_seg.py --w <your_weights>.pt --batch <your_batch_size> -s <input_size> --simplify
```

Export to TRT-Engine:

```bash
trtexec --onnx=model_in.onnx --fp32 --saveEngine=model_out.engine --verbose 
```

## Adapting the deepstream config files

Adapt the `config_infer_primary_yoloV8_seg.txt` file to your models engine file and size.

Adapt the `deepstream_app_config.txt` file so its source and tile output match batch size and size.
