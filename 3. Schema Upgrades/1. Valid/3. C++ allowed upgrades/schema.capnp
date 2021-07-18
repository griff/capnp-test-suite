@0xa763cddfff227f5f;

##########################################################
# Found composite list where pointer list was expected.
#
# Uses first pointer.
##########################################################

struct FoundCompositeListWherePointerListExpected {
    items @0 :List(Text);
}

##########################################################
# Found composite list where void list was expected.
#
# Uses first pointer
##########################################################
struct FoundCompositeListWhereVoidListExpected {
    items @0 :List(Void);
}


##########################################################
# Found composite list where primitive list was expected.
#   Asumes @0 of struct matches found list
##########################################################

##########################################################
#   Found composite list where Byte List expected
##########################################################
struct FoundCompositeListWhereByteListExpected {
    items @0 :List(Int8);
}

##########################################################
#   Found composite list where 2-Byte List expected
##########################################################
struct FoundCompositeListWhere2ByteListExpected {
    items @0 :List(Int16);
}

##########################################################
#   Found composite list where 4-Byte List expected
##########################################################
struct FoundCompositeListWhere4ByteListExpected {
    items @0 :List(Int32);
}

##########################################################
#   Found composite list where 8-Byte List expected
##########################################################
struct FoundCompositeListWhere8ByteListExpected {
    items @0 :List(Int64);
}
