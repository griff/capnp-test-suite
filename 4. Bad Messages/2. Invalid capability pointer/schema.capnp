@0xc5772291f0f5b3d3;

struct TestBigStruct @0x8f015307b5edbb88 {  # 48 bytes, 2 ptrs
  voidField    @0  :Void;  # bits[0, 0)
  boolField    @1  :Bool;  # bits[0, 1)
  int8Field    @2  :Int8;  # bits[8, 16)
  int16Field   @3  :Int16;  # bits[16, 32)
  int32Field   @4  :Int32;  # bits[32, 64)
  int64Field   @5  :Int64;  # bits[64, 128)
  uint8Field   @6  :UInt8;  # bits[128, 136)
  uint16Field  @7  :UInt16;  # bits[144, 160)
  uint32Field  @8  :UInt32;  # bits[160, 192)
  uint64Field  @9  :UInt64;  # bits[192, 256)
  float32Field @10 :Float32;  # bits[256, 288)
  float64Field @11 :Float64;  # bits[320, 384)

  structField @12 :Inner;  # ptr[0]
  anotherStructField @13 :Inner;  # ptr[1]

  struct Inner @0xc73173a78dfd76fe {  # 32 bytes, 0 ptrs
    uint32Field  @0 :UInt32;  # bits[0, 32)
    uint64Field  @1 :UInt64;  # bits[64, 128)
    float32Field @2 :Float32;  # bits[32, 64)
    float64Field @3 :Float64;  # bits[128, 192)
    boolFieldA   @4 :Bool;  # bits[192, 193)
    boolFieldB   @5 :Bool;  # bits[193, 194)
    boolFieldC   @6 :Bool;  # bits[194, 195)
    boolFieldD   @7 :Bool;  # bits[195, 196)
  }
}

interface TestInterface @0x872b180b8f982017 {
  foo @0 (i :UInt32, j :Bool) -> (x :Text);
  bar @1 () -> ();
  baz @2 (s :TestBigStruct) -> ();
  bazz @3 (s :TestBigStruct) -> (r :TestBigStruct);
}

struct TestType @0xc6738e0cb39afdd9 {  # 0 bytes, 1 ptrs
  foo @0 :List(TestInterface);  # ptr[0]
}
