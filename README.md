# Cap'n Proto test messages

## General file structure

`schema.capnp`
The schema you should use when reading messages

`messages/[test].bin`
A single Cap'n Proto message.

`messages/[test].packed`
A single Cap'n Proto message in packed format.

`messages/[test].type`
A text file with the type from `schema.capnp` that should be used to read the corresponding message.

`messages/[test].json`
The result of using `capnp` to read the message and then converting the message read to
JSON format. You can use this file to compare how your code reads the message to how the
official C++ implementation reads it.

`gen-schema.capnp`
Used to generate most of the messages using the `capnp` tool. When there isn't a `gen-schema.capnp` defined it is because the `schema.capnp` file is used to generate
the messages.

`tests.json`
Used to define what constants and types defined in `gen-schema.capnp` should be
exported as test messages. At the moment the name of the constant is used as the
name of the message but this might change at a later date.

## List of messages

Below you will find a list of different kinds of Cap'n Proto messages an implementation
would at minimum need to handle. The messages are divided into categories and each category corresponds to a directory in this repository.

Not all the messages described in this list are implemented in this repository yet as
marked by them not having a checkmark.

These fall mostly in two categories:
1) Interface related and so are not supported by the `capnp` tool.
2) Badly structured messages that again are not possible to use the `capnp` tool to create.

1. [ ] Reading all datatypes
  - [x] Void field
  - [x] Bool field
  - [x] Int8 field
  - [x] Int16 field
  - [x] Int32 field
  - [x] Int64 field
  - [x] UInt8 field
  - [x] UInt16 field
  - [x] UInt32 field
  - [x] UInt64 field
  - [x] Float32 field
  - [x] Float64 field
  - [x] Text Field
  - [x] Data Field
  - [x] Struct field
  - [x] Zero size struct field
  - [x] Enum field
  - [ ] Interface field
  - [x] Void list
  - [x] Bool list
  - [x] Int8 list
  - [x] Int16 list
  - [x] Int32 list
  - [x] Int64 list
  - [x] UInt8 list
  - [x] UInt16 list
  - [x] UInt32 list
  - [x] UInt64 list
  - [x] Float32 list
  - [x] Float64 list
  - [x] Text list
  - [x] Data list
  - [x] Struct list
  - [x] Zero size struct list
  - [x] Enum list
  - [ ] Interface list
2. [x] Defaults
  - [x] Primitive field defaults
  - [x] Struct default
  - [x] List defaults
    - [x] Primitive list defaults
    - [x] Data default
    - [x] Text default
    - [x] List of lists
    - [x] Struct list
3. [ ] Schema upgrades
  1. [ ] Valid
    1. [ ] Canonical
      - [x] Add field to existing struct
      - [x] Add enumerant to existing enum
      - [ ] Add method to interface
      - [ ] Add new parameter to method (must be at end and have default value)
      - [x] Replace field with union
      - [x] Replace field with group
      - [x] Make non-genric type generic
      - [x] Add generic parameter to existing generic type
    2. [x] Backwards compatible
      - [x] Expected composite list found other list. Change List(T) to List(U) where U is struct with @0 is of type T
        - [x] Found Void list
        - [x] Found Byte list
        - [x] Found 2-Byte list
        - [x] Found 4-Byte list
        - [x] Found 8-Byte list
        - [x] Found Data
        - [x] Found List of Lists
    3. [x] C++ allowed upgrades
      - [x] Found composite list where pointer list was expected. Uses first pointer.
      - [x] Found composite list where void list was expected. Uses first pointer
      - [x] Found composite list where primitive list was expected. Asumes @0 of struct matches found list
        - [x] Byte
        - [x] 2 Bytes
        - [x] 4 Bytes
        - [x] 8 Bytes
  2. [ ] Invalid
    - [x] Found data-only composite list where pointer list was expected
    - [x] Found primitive list where composite list was expected but first data field does not match primitive list
      - [x] Found Void list
      - [x] Found Byte list
      - [x] Found 2 Byte list
      - [x] Found 4 Byte list
      - [x] Found 8 Byte list
    - [x] Found composite list where bit list is expected
    - [x] Found pointer-only composite list where primitive list was expected
      - [x] Expected Void list
      - [x] Expected Byte list
      - [x] Expected 2 Byte list
      - [x] Expected 4 Byte list
      - [x] Expected 8 Byte list
    - [x] Found list of pointers where data-only struct list was expected
    - [ ] You cannot move an existing field into or out of an existing union
    - [ ] You can not form a new union containing more than one existing field.
4. [ ] Bad messages
  1. [x] Message with missing segment
  2. [x] Invalid capability pointer
  3. [ ] Infinite looping struct pointers
  4. [ ] Void list that fills memory
  5. [ ] Inline composite list where tag is not a struct pointer
  6. [ ] Inline composite list where size of struct in tag * element count is larger than list word count
  7. [ ] List of zero size structs that fill memory
  8. [ ] Root object is list pointer
  9. [ ] Root object is far pointer
  10. [ ] Root object is capability pointer

## Rebuilding messages

The Cap'n Proto messages are included in the repository pre-built but
if for some reason you need to rebuild them you can do so using the included
`Makefile` and `capnp`.

To delete existing messages:

```
make clean
```

To build messages:

````
make -k
````

