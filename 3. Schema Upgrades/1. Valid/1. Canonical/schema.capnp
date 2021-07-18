@0xe60efe011d3fc8e6;

################################
# Add field to existing struct
################################

struct AddFieldToStruct @0xd772aa5f84d373cd {  # 8 bytes, 0 ptrs
  boolField @0 :Bool;  # bits[0, 1)
  int8Field @1 :Int8;  # bits[8, 16)
  int16Field @2 :Int16;  # bits[16, 32)
  int32Field @3 :Int32 = 15;  # bits[32, 64)
}


#################################
# Add enumerant to existing enum
#################################

struct AddEnumerant @0x9fd214c36b4492d4 {  # 8 bytes, 0 ptrs
  enumField @0 :MyEnum; # bits[0, 16)

  enum MyEnum @0xab648d644671a357 {
    start @0;
    later @1;
    finished @2;
  }
}


#################################
# Replace field with union
#################################

struct ReplaceFieldWithUnion @0x814bf7a6462d59ed {  # 8 bytes, 2 ptrs
  textField2 @1 :Text;  # ptr[1]
  variable :union {  # tag bits [0, 16)
      textField @0 :Text;  # ptr[0], union tag = 0
      selfEmployed @2 :Void;  # bits[0, 0), union tag = 1
  }
}


#################################
# Replace field with group
#################################

struct ReplaceFieldWithGroup @0x98eab73fae5904cb {  # 0 bytes, 3 ptrs
  textField2 @1 :Text;  # ptr[1]
  address :group {
    street @0 :Text;  # ptr[0]
    postcode @2 :Text;  # ptr[2]
  }
}


#################################
# Make non-genric type generic
#################################

struct MakeNonGenericTypeGeneric @0x93477df57ca8d9b5 {  # 0 bytes, 1 ptrs
  map  @0 :Map(Text, List(Text));  # ptr[0]
}

struct Map @0xb460d0ec3696bc1c (Key, Value) {  # 0 bytes, 1 ptrs
  entries @0 :List(Entry);  # ptr[0]
  struct Entry @0x9414c53ca9ece437 {  # 0 bytes, 2 ptrs
    key @0 :Key;  # ptr[0]
    value @1 :Value;  # ptr[1]
  }
}


#################################################
# Add generic parameter to existing generic type
#################################################

struct AddGenericParameterToExistingGenericType @0xc4db3760001b6824 {  # 0 bytes, 1 ptrs
  map  @0 :Map2(Text, List(Text));  # ptr[0]
}

struct Map2 @0x843d58faf796fbdb (Key, Value) {  # 0 bytes, 1 ptrs
  entries @0 :List(Entry);  # ptr[0]
  struct Entry @0xf8e0026afa4b2282 {  # 0 bytes, 2 ptrs
    key @0 :Key;  # ptr[0]
    value @1 :Value;  # ptr[1]
  }
}

#        - [ ] Add method to interface
#        - [ ] Add new parameter to method (must be at end and have default value)
