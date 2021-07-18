@0xd5b4d5e5014d1d47;

struct TestType @0xfdc9a51161088d93 {  # 16 bytes, 1 ptrs
  union0 :group {
    union {  # tag bits [0, 16)
      u0f0s0 @0 :Void;  # bits[0, 0), union tag = 0
      u0f0s1 @1 :Bool;  # bits[16, 17), union tag = 1
      u0f0s8 @2 :Int8;  # bits[16, 24), union tag = 2
      u0f0s16 @3 :Int16;  # bits[16, 32), union tag = 3
      u0f0s32 @4 :Int32;  # bits[32, 64), union tag = 4
      u0f0s64 @5 :Int64;  # bits[64, 128), union tag = 5
      u0f0sp @6 :Text;  # ptr[0], union tag = 6
    }
  }
}
