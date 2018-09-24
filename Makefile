TARGET = models/frozen_bsk-model-1.pb
GRAPH = models/bsk-model-1.pb
CHECK_POINT = models/bsk-model-1.ckpt

all: $(TARGET)

$(TARGET): $(GRAPH) $(CHECK_POINT)
	freeze_graph --input_graph=$(GRAPH) --input_checkpoint=$(CHECK_POINT) --output_graph=$(TARGET) --output_node_names=pfc/policy,vfc/value
