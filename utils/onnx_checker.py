import onnx
filename = "20240725_1stmodel_1280_hyptuning.onnx"
model = onnx.load(filename)
onnx.checker.check_model(model)
