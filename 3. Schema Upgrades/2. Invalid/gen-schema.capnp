@0x93ef95225b0abb46;

##############################################################################
# Found data-only composite list where pointer list was expected
##############################################################################

struct FoundDataOnlyCompositeListWherePointerListWasExpected {
    items @0 :List(DataOnlyStruct);
}
struct DataOnlyStruct {
    fielding @0 :Int8;
}
const foundDataOnlyCompositeListWherePointerListWasExpected :FoundDataOnlyCompositeListWherePointerListWasExpected = (
    items = [(fielding = 1),(fielding = 55),(fielding = 10),(fielding = 2)]
);

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
    items @0 :List(Void);
}
const foundVoidListWhereCompositeListWasExpected :FoundVoidListWhereCompositeListWasExpected = (
    items = [void, void, void, void]
);

######################
#   Found Byte list
######################
struct FoundByteListWhereCompositeListWasExpected {
    items @0 :List(Int8);
}
const foundByteListWhereCompositeListWasExpected :FoundByteListWhereCompositeListWasExpected = (
    items = [1, 55, 10, 2]
);


######################
#   Found 2 Byte list
######################
struct Found2ByteListWhereCompositeListWasExpected {
    items @0 :List(Int16);
}
const found2ByteListWhereCompositeListWasExpected :Found2ByteListWhereCompositeListWasExpected = (
    items = [1, 2, 4000, 5000]
);

######################
#   Found 4 Byte list
######################
struct Found4ByteListWhereCompositeListWasExpected {
    items @0 :List(Int32);
}
const found4ByteListWhereCompositeListWasExpected :Found4ByteListWhereCompositeListWasExpected = (
    items = [4000, 5000, 100000]
);

######################
#   Found 8 Byte list
######################
struct Found8ByteListWhereCompositeListWasExpected {
    items @0 :List(Int64);
}
const found8ByteListWhereCompositeListWasExpected :Found8ByteListWhereCompositeListWasExpected = (
    items = [4294967395, 42949672950]
);

##############################################################################
# Found composite list where bit list was expected
##############################################################################
struct FoundCompositeListWhereBitListWasExpected {
    items @0 :List(DataOnlyStruct);
}
const foundCompositeListWhereBitListWasExpected :FoundCompositeListWhereBitListWasExpected = (
    items = [(fielding = 1),(fielding = 2)]
);

##############################################################################
# Found pointer-only composite list where primitive list was expected
#   Expected Void list
#   Expected Byte list
#   Expected 2 Byte list
#   Expected 4 Byte list
#   Expected 8 Byte list
##############################################################################

struct PointerOnlyStruct {
    field @0 :Text;
}

#########################
#   Expected Void list
#########################
struct FoundPointerOnlyCompositeListWhereVoidListWasExpected {
    items @0 :List(PointerOnlyStruct);
}
const foundPointerOnlyCompositeListWhereVoidListWasExpected :FoundPointerOnlyCompositeListWhereVoidListWasExpected = (
    items = [(field = "Hello"), (field="World")]
);

#########################
#   Expected Byte list
#########################
struct FoundPointerOnlyCompositeListWhereByteListWasExpected {
    items @0 :List(PointerOnlyStruct);
}
const foundPointerOnlyCompositeListWhereByteListWasExpected :FoundPointerOnlyCompositeListWhereByteListWasExpected = (
    items = [(field = "Hello"), (field="World")]
);

#########################
#   Expected 2 Byte list
#########################
struct FoundPointerOnlyCompositeListWhere2ByteListWasExpected {
    items @0 :List(PointerOnlyStruct);
}
const foundPointerOnlyCompositeListWhere2ByteListWasExpected :FoundPointerOnlyCompositeListWhere2ByteListWasExpected = (
    items = [(field = "Hello"), (field="World")]
);

#########################
#   Expected 4 Byte list
#########################
struct FoundPointerOnlyCompositeListWhere4ByteListWasExpected {
    items @0 :List(PointerOnlyStruct);
}
const foundPointerOnlyCompositeListWhere4ByteListWasExpected :FoundPointerOnlyCompositeListWhere4ByteListWasExpected = (
    items = [(field = "Hello"), (field="World")]
);

#########################
#   Expected 8 Byte list
#########################
struct FoundPointerOnlyCompositeListWhere8ByteListWasExpected {
    items @0 :List(PointerOnlyStruct);
}
const foundPointerOnlyCompositeListWhere8ByteListWasExpected :FoundPointerOnlyCompositeListWhere8ByteListWasExpected = (
    items = [(field = "Hello"), (field="World")]
);

##############################################################################
# Found list of pointers where data-only struct list was expected
##############################################################################

struct FoundListOfPointersWhereDataOnlyStructListWasExpected {
    items @0 :List(Text);
}
const foundListOfPointersWhereDataOnlyStructListWasExpected :FoundListOfPointersWhereDataOnlyStructListWasExpected = (
    items = ["Hello", "Good", "World"]
);

##############################################################################
# You cannot move an existing field into or out of an existing union
##############################################################################

##############################################################################
# You can not form a new union containing more than one existing field.
##############################################################################
