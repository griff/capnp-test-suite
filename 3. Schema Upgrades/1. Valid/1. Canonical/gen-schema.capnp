@0xe60efe011d3fc8e6;

#################################################
# Add field to existing struct
#################################################

struct AddFieldToStruct @0xd772aa5f84d373cd {  # 8 bytes, 0 ptrs
  boolField @0 :Bool;  # bits[0, 1)
  int8Field @1 :Int8;  # bits[8, 16)
  int16Field @2 :Int16;  # bits[16, 32)
}

const addFieldToStruct @0xce02f2dc7411a2ef :AddFieldToStruct = (
    boolField = true,
    int8Field = -32,
    int16Field = -3200
);


#################################################
# Add enumerant to existing enum
#################################################

struct AddEnumerant @0x9fd214c36b4492d4 {  # 8 bytes, 0 ptrs
  enumField @0 :MyEnum; # bits[0, 16)

  enum MyEnum @0xab648d644671a357 {
    start @0;
    later @1;
  }
}

const addEnumerant @0xd3717cc8f6f3c07a :AddEnumerant = (
  enumField = later
);


#################################################
# Replace field with union
#################################################

struct ReplaceFieldWithUnion @0x814bf7a6462d59ed {  # 0 bytes, 2 ptrs
  textField @0 :Text;   # ptr[0]
  textField2 @1 :Text;  # ptr[1]
}
const replaceFieldWithUnion @0xf24d6a655aedcb80 :ReplaceFieldWithUnion = (
  textField = "Testing here",
  textField2 = "More testing"
);


#################################################
# Replace field with group
#################################################

struct ReplaceFieldWithGroup @0x98eab73fae5904cb {  # 0 bytes, 2 ptrs
  textField @0 :Text;  # ptr[0]
  textField2 @1 :Text;  # ptr[1]
}
const replaceFieldWithGroup @0xab2e866d886d3ed1 :ReplaceFieldWithGroup = (
  textField = "Testing more here",
  textField2 = "Did testing"
);


#################################################
# Make non-genric type generic
#################################################

struct MakeNonGenericTypeGeneric @0x93477df57ca8d9b5 {  # 0 bytes, 1 ptrs
  map  @0 :Map;  # ptr[0]
}

struct Map @0xb460d0ec3696bc1c {  # 0 bytes, 1 ptrs
  entries @0 :List(Entry);  # ptr[0]
  struct Entry @0x9414c53ca9ece437 {  # 0 bytes, 2 ptrs
    key @0 :Text;  # ptr[0]
    value @1 :List(Text);  # ptr[1]
  }
}

const makeNonGenericTypeGeneric @0x8bc1bab092f45159 :MakeNonGenericTypeGeneric = (
  map = (
    entries = [
      ( key = "Owner", value = [ "Me", "You" ] ),
      ( key = "Dog", value = ["Good boy"] )
    ]
  )
);


#################################################
# Add generic parameter to existing generic type
#################################################

struct AddGenericParameterToExistingGenericType @0xc4db3760001b6824 {  # 0 bytes, 1 ptrs
  map  @0 :Map2(Text);  # ptr[0]
}

struct Map2 @0x843d58faf796fbdb (Key) {  # 0 bytes, 1 ptrs
  entries @0 :List(Entry);  # ptr[0]
  struct Entry @0xf8e0026afa4b2282 {  # 0 bytes, 2 ptrs
    key @0 :Key;  # ptr[0]
    value @1 :List(Text);  # ptr[1]
  }
}

const addGenericParameterToExistingGenericType @0xe7a8f003d7e8338c :AddGenericParameterToExistingGenericType = (
  map = (
    entries = [
      ( key = "Owner", value = [ "Me", "You" ] ),
      ( key = "Dog", value = ["Good boy"] )
    ]
  )
);

#        - [ ] Add method to interface
#        - [ ] Add new parameter to method (must be at end and have default value)
