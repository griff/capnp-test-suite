@0xd20baf1304ecd97d;

###########################################
# Expected struct list found Void list
###########################################
struct ExpectedStructListFoundVoidList {
    item @0 :List(Void);
}

const expectedStructListFoundVoidList :ExpectedStructListFoundVoidList = (
    item = [void, void, void, void]
);

###########################################
# Expected struct list found Byte list
###########################################
struct ExpectedStructListFoundByteList {
    item @0 :List(Int8);
}
const expectedStructListFoundByteList :ExpectedStructListFoundByteList = (
    item = [1, 2, 3, 4, 5, 55]
);

###########################################
# Expected struct list found 2-Byte list
###########################################
struct ExpectedStructListFound2ByteList {
    item @0 :List(Int16);
}
const expectedStructListFound2ByteList :ExpectedStructListFound2ByteList = (
    item = [1, 2, 4000, 5000, 8000]
);

###########################################
# Expected struct list found 4-Byte list
###########################################
struct ExpectedStructListFound4ByteList {
    item @0 :List(Int32);
}
const expectedStructListFound4ByteList :ExpectedStructListFound4ByteList = (
    item = [4000, 5000, 100000]
);

###########################################
# Expected struct list found 8-Byte list
###########################################
struct ExpectedStructListFound8ByteList {
    item @0 :List(Int64);
}
const expectedStructListFound8ByteList :ExpectedStructListFound8ByteList = (
    item = [4294967395, 42949672950]
);

###########################################
# Expected struct list found Data
###########################################
struct ExpectedStructListFoundDataList {
    item @0 :List(Data);
}
const expectedStructListFoundDataList :ExpectedStructListFoundDataList = (
    item = ["garply", "waldo", "fred"]
);

###########################################
# Expected struct list found List of Lists
###########################################
struct ExpectedStructListFoundListOfLists {
    item @0 :List(List(Text));
}
const expectedStructListFoundListOfLists :ExpectedStructListFoundListOfLists = (
    item = [[], ["Muh", "der", "over"], ["all", "the", "kings", "men"]]
);