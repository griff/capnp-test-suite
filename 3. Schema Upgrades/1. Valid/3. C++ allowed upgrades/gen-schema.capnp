@0xa763cddfff227f5f;

##########################################################
# Found composite list where pointer list was expected.
#
# Uses first pointer.
##########################################################

struct FoundCompositeListWherePointerListExpected {
    items @0 :List(OldStructPointer);
}
struct OldStructPointer {
    first @0 :Text;
}
const foundCompositeListWherePointerListExpected :FoundCompositeListWherePointerListExpected = (
    items = [(first = "Hello"), (first="World")]
);


##########################################################
# Found composite list where void list was expected.
#
# Uses first pointer
##########################################################
struct FoundCompositeListWhereVoidListExpected {
    items @0 :List(OldStructVoid);
}
struct OldStructVoid {
    first @0 :Void;
}
const foundCompositeListWhereVoidListExpected :FoundCompositeListWhereVoidListExpected = (
    items = [(first = void), (first = void), (first = void)]
);


##########################################################
# Found composite list where primitive list was expected.
#   Asumes @0 of struct matches found list
##########################################################

##########################################################
#   Found composite list where Byte List expected
##########################################################
struct FoundCompositeListWhereByteListExpected {
    items @0 :List(OldStructByte);
}
struct OldStructByte {
    first @0 :Int8;
}
const foundCompositeListWhereByteListExpected :FoundCompositeListWhereByteListExpected = (
    items = [(first = 1), (first = 2), (first = 3), (first = 55)]
);


##########################################################
#   Found composite list where 2-Byte List expected
##########################################################
struct FoundCompositeListWhere2ByteListExpected {
    items @0 :List(OldStruct2Byte);
}
struct OldStruct2Byte {
    first @0 :Int16;
}
const foundCompositeListWhere2ByteListExpected :FoundCompositeListWhere2ByteListExpected = (
    items = [(first = 1), (first = 2), (first = 4000), (first = 5000)]
);


##########################################################
#   Found composite list where 4-Byte List expected
##########################################################
struct FoundCompositeListWhere4ByteListExpected {
    items @0 :List(OldStruct4Byte);
}
struct OldStruct4Byte {
    first @0 :Int32;
}
const foundCompositeListWhere4ByteListExpected :FoundCompositeListWhere4ByteListExpected = (
    items = [(first = 4000), (first = 5000), (first = 100000)]
);


##########################################################
#   Found composite list where 8-Byte List expected
##########################################################
struct FoundCompositeListWhere8ByteListExpected {
    items @0 :List(OldStruct8Byte);
}
struct OldStruct8Byte {
    first @0 :Int64;
}
const foundCompositeListWhere8ByteListExpected :FoundCompositeListWhere8ByteListExpected = (
    items = [(first = 4294967395), (first = 42949672950)]
);