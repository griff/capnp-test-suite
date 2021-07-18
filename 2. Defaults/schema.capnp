@0xd6b3b4c559479f0c;

struct EmtyStruct @0xc0348fae8edc6095 {  # 0 bytes, 0 ptrs
}

enum TestEnum @0xca4cf420f252b2ae {
  foo @0;
  bar @1;
  baz @2;
  qux @3;
  quux @4;
  corge @5;
  grault @6;
  garply @7;
}

struct TestType @0x8650ceaeb919430b {  # 8 bytes, 2 ptrs
  voidField    @0 :Void;  # bits[0, 0)
  boolField    @1 :Bool = true;  # bits[0, 1)
  textField    @2 :Text = "baz";  # ptr[0]
  structField  @3 : TestType = (
      textField = "nested",
      structField = (textField = "really nested")); # ptr[1]
}

struct TestPrimitiveType @0xf4f28551d1da2cc4 {  # 48 bytes, 0 ptrs
  voidField    @0 :Void;                        # bits[0, 0)
  boolField    @1 :Bool = true;                 # bits[0, 1)
  int8Field    @2 :Int8 = -12;                  # bits[8, 16)
  int16Field   @3 :Int16 = 3456;                # bits[16, 32)
  int32Field   @4 :Int32 = -78901234;           # bits[32, 64)
  int64Field   @5 :Int64 = 56789012345678;      # bits[64, 128)
  uInt8Field   @6 :UInt8 = 90;                  # bits[128, 136)
  uInt16Field  @7 :UInt16 = 1234;               # bits[144, 160)
  uInt32Field  @8 :UInt32 = 56789012;           # bits[160, 192)
  uInt64Field  @9 :UInt64 = 345678901234567890; # bits[192, 256)
  float32Field @10 :Float32 = -1.25e-10;        # bits[256, 288)
  float64Field @11 :Float64 = 345;              # bits[320, 384)
  enumField    @12 :TestEnum = baz;             # bits[288, 304)
}

struct TestListType @0x874a1e013af1ca9a {  # 0 bytes, 16 ptrs
  textField     @0 :Text = "baz";                                  # ptr[0]
  dataField     @1 :Data = "qux";                                  # ptr[1]
  voidList      @2 :List(Void) = [void, void, void];               # ptr[2]
  boolList      @3 :List(Bool) = [false, true, false, true, true]; # ptr[3]
  int8List      @4 :List(Int8) = [12, -34, -128, 127];             # ptr[4]
  int16List     @5 :List(Int16) = [1234, -5678, -32768, 32767];    # ptr[5]
  int32List     @6 :List(Int32) = [
    12345678, -90123456, -2147483648, 2147483647];                 # ptr[6]
  int64List     @7 :List(Int64) = [
    123456789012345, -678901234567890,
    -9223372036854775808, 9223372036854775807];                   # ptr[7]
  uInt8List     @8 :List(UInt8) = [12, 34, 0, 255];               # ptr[8]
  uInt16List    @9 :List(UInt16) = [1234, 5678, 0, 65535];        # ptr[9]
  uInt32List    @10 :List(UInt32) = [
    12345678, 90123456, 0, 4294967295];                           # ptr[10]
  uInt64List    @11 :List(UInt64) = [
    123456789012345, 678901234567890, 0, 18446744073709551615];   # ptr[11]
  float32List   @12 :List(Float32) = [
    0, 1234567, 1e37, -1e37, 1e-37, -1e-37];                      # ptr[12]
  float64List   @13 :List(Float64) = [
    0, 123456789012345, 1e306, -1e306, 1e-306, -1e-306];          # ptr[13]
  enumList      @14 :List(TestEnum) = [qux, bar, grault];         # ptr[14]
  interfaceList @15 :List(Void) = [void, void, void, void];       # ptr[15]
}

struct TestStructType @0xe18dbb7b88bfe04c {  # 0 bytes, 2 ptrs
  structField       @0 : TestType = (
      textField = "nested",
      structField = (textField = "really nested")); # ptr[0]
  emptyStructField  @1 : EmtyStruct = ();           # ptr[0]
}

struct TestListListType @0xe2fe30c23c24d2e3 {  # 0 bytes, 2 ptrs
  textList @0 :List(Text) = ["quux", "corge", "grault"];  # ptr[0]
  dataList @1 :List(Data) = ["garply", "waldo", "fred"];  # ptr[1]
}

struct TestStructListType @0xbdfc5351dd0e3172 {  # 0 bytes, 2 ptrs
  structList      @0 : List(TestType) = [
    (textField = "x structlist 1"),
    (textField = "x structlist 2"),
    (textField = "x structlist 3")];                    # ptr[0]
  emptyStructList @1 : List(EmtyStruct) = [(), (), ()]; # ptr[1]
}

const primitiveZero    :TestPrimitiveType = (
   voidField      = void,
   boolField      = true,
   int8Field      = -12,
   int16Field     = 3456,
   int32Field     = -78901234,
   int64Field     = 56789012345678,
   uInt8Field     = 90,
   uInt16Field    = 1234,
   uInt32Field    = 56789012,
   uInt64Field    = 345678901234567890,
   float32Field   = -1.25e-10,
   float64Field   = 345,
   enumField      = baz,
);

const primitiveValue    :TestPrimitiveType = (
   voidField      = void,
   boolField      = false,
   int8Field      = -55,
   int16Field     = 3656,
   int32Field     = -78961234,
   int64Field     = 5678342345678,
   uInt8Field     = 67,
   uInt16Field    = 2345,
   uInt32Field    = 567666012,
   uInt64Field    = 347778901234567890,
   float32Field   = -1.26e-10,
   float64Field   = 385,
   enumField      = foo,
);

const listZero    :TestListType = (
   textField     = "baz",
   dataField     = "qux",
   voidList      = [void, void, void],
   boolList      = [false, true, false, true, true],
   int8List      = [12, -34, -0x80, 0x7f],
   int16List     = [1234, -5678, -0x8000, 0x7fff],
   int32List     = [12345678, -90123456, -0x80000000, 0x7fffffff],
   int64List     = [123456789012345, -678901234567890, -0x8000000000000000, 0x7fffffffffffffff],
   uInt8List     = [12, 34, 0, 0xff],
   uInt16List    = [1234, 5678, 0, 0xffff],
   uInt32List    = [12345678, 90123456, 0, 0xffffffff],
   uInt64List    = [123456789012345, 678901234567890, 0, 0xffffffffffffffff],
   float32List   = [0, 1234567, 1e37, -1e37, 1e-37, -1e-37],
   float64List   = [0, 123456789012345, 1e306, -1e306, 1e-306, -1e-306],
   enumList      = [qux, bar, grault]
);

const listValue    :TestListType = (
   textField     = "bar",
   dataField     = "flux",
   voidList      = [void, void],
   boolList      = [false, false, false, false, false],
   int8List      = [12, -110, -0x80, 0x7f],
   int16List     = [1234, -5679, -0x8000, 0x7fff],
   int32List     = [12345678, -90123354, -0x80000000, 0x7fffffff],
   int64List     = [123456789012345, -678901234557894, -0x8000000000000000, 0x7fffffffffffffff],
   uInt8List     = [12, 39, 0, 0xff],
   uInt16List    = [1234, 5630, 0, 0xffff],
   uInt32List    = [12345678, 90155456, 0, 0xffffffff],
   uInt64List    = [123456789012345, 678903454567890, 0, 0xffffffffffffffff],
   float32List   = [0, 1234567, 1e34, -1e34, 1e-34, -1e-34],
   float64List   = [0, 123456789012345, 1e303, -1e303, 1e-303, -1e-303],
   enumList      = [foo, qux, grault]
);

const structZero    :TestStructType = (
   structField    = (
       textField = "nested",
       structField = (textField = "really nested")),
   emptyStructField = (),
);

const structValue    :TestStructType = (
   structField    = (
       textField = "tested",
       boolField = false,
       structField = (textField = "really tested", boolField = false)),
   emptyStructField = (),
);

const listListZero    :TestListListType = (
   textList      = ["quux", "corge", "grault"],
   dataList      = ["garply", "waldo", "fred"],
);

const listListValue    :TestListListType = (
   textList      = ["qux", "corge", "grault"],
   dataList      = ["garply", "faldo", "fred"],
);

const structListZero    :TestStructListType = (
   structList    = [
       (textField = "x structlist 1"),
       (textField = "x structlist 2"),
       (textField = "x structlist 3")],
   emptyStructList = [(), (), ()],
);

const structListValue    :TestStructListType = (
   structList    = [
       (textField = "y structlist 1"),
       (textField = "y structlist 2"),
       (textField = "x structlist 3")],
   emptyStructList = [(), ()],
);
