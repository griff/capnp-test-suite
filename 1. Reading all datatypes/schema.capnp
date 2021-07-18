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

struct TestType @0x8650ceaeb919430b {  # 48 bytes, 20 ptrs
  voidField         @0  : Void;       # bits[0, 0)
  boolField         @1  : Bool;       # bits[0, 1)
  int8Field         @2  : Int8;       # bits[8, 16)
  int16Field        @3  : Int16;      # bits[16, 32)
  int32Field        @4  : Int32;      # bits[32, 64)
  int64Field        @5  : Int64;      # bits[64, 128)
  uInt8Field        @6  : UInt8;      # bits[128, 136)
  uInt16Field       @7  : UInt16;     # bits[144, 160)
  uInt32Field       @8  : UInt32;     # bits[160, 192)
  uInt64Field       @9  : UInt64;     # bits[192, 256)
  float32Field      @10 : Float32;    # bits[256, 288)
  float64Field      @11 : Float64;    # bits[320, 384)
  textField         @12 : Text;       # ptr[0]
  dataField         @13 : Data;       # ptr[1]
  structField       @14 : TestType;   # ptr[2]
  emptyStructField  @34 : EmtyStruct; # ptr[20]
  enumField         @15 : TestEnum;   # bits[288, 304)
  interfaceField    @16 : Void;       # bits[0, 0)  # TODO

  voidList        @17 : List(Void);       # ptr[3]
  boolList        @18 : List(Bool);       # ptr[4]
  int8List        @19 : List(Int8);       # ptr[5]
  int16List       @20 : List(Int16);      # ptr[6]
  int32List       @21 : List(Int32);      # ptr[7]
  int64List       @22 : List(Int64);      # ptr[8]
  uInt8List       @23 : List(UInt8);      # ptr[9]
  uInt16List      @24 : List(UInt16);     # ptr[10]
  uInt32List      @25 : List(UInt32);     # ptr[11]
  uInt64List      @26 : List(UInt64);     # ptr[12]
  float32List     @27 : List(Float32);    # ptr[13]
  float64List     @28 : List(Float64);    # ptr[14]
  textList        @29 : List(Text);       # ptr[15]
  dataList        @30 : List(Data);       # ptr[16]
  structList      @31 : List(TestType);   # ptr[17]
  emptyStructList @35 : List(EmtyStruct); # ptr[21]
  enumList        @32 : List(TestEnum);   # ptr[18]
  interfaceList   @33 : List(Void);       # ptr[19]  # TODO
}

const value    :TestType = (
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
   textField      = "baz",
   dataField      = "qux",
   structField    = (
       textField = "nested",
       structField = (textField = "really nested")),
   emptyStructField = (),
   enumField      = baz,

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
   textList      = ["quux", "corge", "grault"],
   dataList      = ["garply", "waldo", "fred"],
   structList    = [
       (textField = "x structlist 1"),
       (textField = "x structlist 2"),
       (textField = "x structlist 3")],
   emptyStructList = [(), (), ()],
   enumList      = [qux, bar, grault]
);
