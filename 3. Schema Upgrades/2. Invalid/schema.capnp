@0x93ef95225b0abb46;

##############################################################################
# Found data-only composite list where pointer list was expected
##############################################################################

struct FoundDataOnlyCompositeListWherePointerListWasExpected {
    items @0 :List(Text);
}

##############################################################################
# Found primitive list where composite list was expected but first data field
# does not match primitive list
#   Found Void list
#   Found Byte list
#   Found 2 Byte list
#   Found 4 Byte list
#   Found 8 Byte list
##############################################################################

######################
#   Found Void list
######################
struct FoundVoidListWhereCompositeListWasExpected {
    items @0 :List(NotVoidStruct);
}
struct NotVoidStruct {
    field @0 :Int8;
}

######################
#   Found Byte list
######################
struct FoundByteListWhereCompositeListWasExpected {
    items @0 :List(NotByteStruct);
}
struct NotByteStruct {
    field @0 :Int16;
}


######################
#   Found 2 Byte list
######################
struct Found2ByteListWhereCompositeListWasExpected {
    items @0 :List(Not2ByteStruct);
}
struct Not2ByteStruct {
    field @0 :Int32;
}

######################
#   Found 4 Byte list
######################
struct Found4ByteListWhereCompositeListWasExpected {
    items @0 :List(Not4ByteStruct);
}
struct Not4ByteStruct {
    field @0 :Int64;
}

######################
#   Found 8 Byte list
######################
struct Found8ByteListWhereCompositeListWasExpected {
    items @0 :List(Not8ByteStruct);
}
struct Not8ByteStruct {
    field @0 :Int8;
}

##############################################################################
# Found composite list where bit list was expected
##############################################################################
struct FoundCompositeListWhereBitListWasExpected {
    items @0 :List(Bool);
}

##############################################################################
# Found pointer-only composite list where primitive list was expected
#   Expected Void list
#   Expected Byte list
#   Expected 2 Byte list
#   Expected 4 Byte list
#   Expected 8 Byte list
##############################################################################

#########################
#   Expected Void list
#########################
struct FoundPointerOnlyCompositeListWhereVoidListWasExpected {
    items @0 :List(Void);
}

#########################
#   Expected Byte list
#########################
struct FoundPointerOnlyCompositeListWhereByteListWasExpected {
    items @0 :List(Int8);
}

#########################
#   Expected 2 Byte list
#########################
struct FoundPointerOnlyCompositeListWhere2ByteListWasExpected {
    items @0 :List(Int16);
}

#########################
#   Expected 4 Byte list
#########################
struct FoundPointerOnlyCompositeListWhere4ByteListWasExpected {
    items @0 :List(Int32);
}

#########################
#   Expected 8 Byte list
#########################
struct FoundPointerOnlyCompositeListWhere8ByteListWasExpected {
    items @0 :List(Int64);
}

##############################################################################
# Found list of pointers where data-only struct list was expected
##############################################################################

struct DataOnlyStruct {
    fielding @0 :Int8;
}

struct FoundListOfPointersWhereDataOnlyStructListWasExpected {
    items @0 :List(DataOnlyStruct);
}

##############################################################################
# You cannot move an existing field into or out of an existing union
##############################################################################

##############################################################################
# You can not form a new union containing more than one existing field.
##############################################################################
