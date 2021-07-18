@0xd20baf1304ecd97d;

###########################################
# Expected struct list found Void list
###########################################
struct ExpectedStructListFoundVoidList {
    item @0 :List(SingleVoidItem);
}

struct SingleVoidItem {
    first @0 :Void;
}

###########################################
# Expected struct list found Byte list
###########################################
struct ExpectedStructListFoundByteList {
    item @0 :List(SingleByteItem);
}

struct SingleByteItem {
    first @0 :Int8;
}

###########################################
# Expected struct list found 2-Byte list
###########################################
struct ExpectedStructListFound2ByteList {
    item @0 :List(Single2ByteItem);
}

struct Single2ByteItem {
    first @0 :Int16;
}

###########################################
# Expected struct list found 4-Byte list
###########################################
struct ExpectedStructListFound4ByteList {
    item @0 :List(Single4ByteItem);
}

struct Single4ByteItem {
    first @0 :Int32;
}

###########################################
# Expected struct list found 8-Byte list
###########################################
struct ExpectedStructListFound8ByteList {
    item @0 :List(Single8ByteItem);
}

struct Single8ByteItem {
    first @0 :Int64;
}

###########################################
# Expected struct list found Data
###########################################
struct ExpectedStructListFoundDataList {
    item @0 :List(SingleDataItem);
}

struct SingleDataItem {
    first @0 :Data;
}

###########################################
# Expected struct list found List of Lists
###########################################
struct ExpectedStructListFoundListOfLists {
    item @0 :List(SingleListItem);
}

struct SingleListItem {
    first @0 :List(Text);
}
