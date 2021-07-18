GEN_SCHEMA?=schema.capnp
SCHEMA?=schema.capnp
tests := $(shell jq -r 'keys | map("messages/" + . + ".type" ) | join(" ")' tests.json)
extracted = $(tests:.type=.bin)
packed = $(tests:.type=.packed)
json = $(tests:.type=.json)
.PHONY: build clean
build: $(tests) $(extracted) $(packed) $(json)
clean:
	rm -rf messages 
messages:
	mkdir messages
messages/%.packed: $(GEN_SCHEMA) messages/%.type
	capnp eval $(GEN_SCHEMA) -opacked $* > messages/$*.packed
messages/%.bin: $(GEN_SCHEMA) messages/%.type
	capnp eval $(GEN_SCHEMA) -obinary $* > messages/$*.bin
messages/%.json: $(SCHEMA) messages/%.type
	cat "messages/$*.bin" | capnp convert binary:json $(SCHEMA) $(file <messages/$*.type) > "messages/$*.json" 2> "messages/$*.error"
	[ -s "messages/$*.error" ] || rm "messages/$*.error"
messages/%.type: tests.json messages
	jq -r .$* tests.json > messages/$*.type
