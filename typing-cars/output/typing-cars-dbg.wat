(module $typing_cars_wasm.wasm
  (type (;0;) (func (param i32 i64)))
  (type (;1;) (func (param i32 i32 i32)))
  (type (;2;) (func (param i32 i32)))
  (type (;3;) (func (result i32)))
  (type (;4;) (func (param i32 i32) (result i32)))
  (type (;5;) (func (param i32) (result i32)))
  (type (;6;) (func (param i32)))
  (type (;7;) (func (param i32 i32 i32) (result i32)))
  (type (;8;) (func (param i32) (result i64)))
  (type (;9;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;10;) (func))
  (type (;11;) (func (result i64)))
  (type (;12;) (func (param i64)))
  (type (;13;) (func (param i32 i32 i64 i32 i32) (result i32)))
  (type (;14;) (func (param i64 i32)))
  (type (;15;) (func (param i32 i32 i32 i32)))
  (type (;16;) (func (param i32 i32) (result i64)))
  (type (;17;) (func (param i64) (result i32)))
  (import "env" "bigIntSetInt64" (func $bigIntSetInt64 (;0;) (type 0)))
  (import "env" "bigIntAdd" (func $bigIntAdd (;1;) (type 1)))
  (import "env" "signalError" (func $signalError (;2;) (type 2)))
  (import "env" "mBufferNew" (func $mBufferNew (;3;) (type 3)))
  (import "env" "mBufferAppend" (func $mBufferAppend (;4;) (type 4)))
  (import "env" "mBufferFinish" (func $mBufferFinish (;5;) (type 5)))
  (import "env" "mBufferGetLength" (func $mBufferGetLength (;6;) (type 5)))
  (import "env" "managedCaller" (func $managedCaller (;7;) (type 6)))
  (import "env" "bigIntGetCallValue" (func $bigIntGetCallValue (;8;) (type 6)))
  (import "env" "managedGetMultiESDTCallValue" (func $managedGetMultiESDTCallValue (;9;) (type 6)))
  (import "env" "mBufferAppendBytes" (func $mBufferAppendBytes (;10;) (type 7)))
  (import "env" "managedSignalError" (func $managedSignalError (;11;) (type 6)))
  (import "env" "smallIntGetUnsignedArgument" (func $smallIntGetUnsignedArgument (;12;) (type 8)))
  (import "env" "getNumArguments" (func $getNumArguments (;13;) (type 3)))
  (import "env" "mBufferCopyByteSlice" (func $mBufferCopyByteSlice (;14;) (type 9)))
  (import "env" "mBufferSetBytes" (func $mBufferSetBytes (;15;) (type 7)))
  (import "env" "mBufferStorageLoad" (func $mBufferStorageLoad (;16;) (type 4)))
  (import "env" "mBufferStorageStore" (func $mBufferStorageStore (;17;) (type 4)))
  (import "env" "mBufferGetArgument" (func $mBufferGetArgument (;18;) (type 4)))
  (import "env" "mBufferToBigIntUnsigned" (func $mBufferToBigIntUnsigned (;19;) (type 4)))
  (import "env" "mBufferFromBigIntUnsigned" (func $mBufferFromBigIntUnsigned (;20;) (type 4)))
  (import "env" "checkNoPayment" (func $checkNoPayment (;21;) (type 10)))
  (import "env" "getBlockTimestamp" (func $getBlockTimestamp (;22;) (type 11)))
  (import "env" "smallIntFinishUnsigned" (func $smallIntFinishUnsigned (;23;) (type 12)))
  (import "env" "bigIntCmp" (func $bigIntCmp (;24;) (type 4)))
  (import "env" "managedTransferValueExecute" (func $managedTransferValueExecute (;25;) (type 13)))
  (import "env" "mBufferGetByteSlice" (func $mBufferGetByteSlice (;26;) (type 9)))
  (import "env" "mBufferEq" (func $mBufferEq (;27;) (type 4)))
  (memory (;0;) 3)
  (global $__stack_pointer (;0;) (mut i32) i32.const 131072)
  (global (;1;) i32 i32.const 142061)
  (global (;2;) i32 i32.const 142064)
  (export "memory" (memory 0))
  (export "init" (func $init))
  (export "upgrade" (func $upgrade))
  (export "register_player" (func $register_player))
  (export "update_profile" (func $update_profile))
  (export "getPlayerProfile" (func $getPlayerProfile))
  (export "getTotalPlayers" (func $getTotalPlayers))
  (export "createRace" (func $createRace))
  (export "joinRace" (func $joinRace))
  (export "submitResult" (func $submitResult))
  (export "finalizeRace" (func $finalizeRace))
  (export "cancelRace" (func $cancelRace))
  (export "getRaceDetails" (func $getRaceDetails))
  (export "getRaceResults" (func $getRaceResults))
  (export "getTotalRaces" (func $getTotalRaces))
  (export "callBack" (func $callBack))
  (export "__data_end" (global 1))
  (export "__heap_base" (global 2))
  (func $_ZN105_$LT$multiversx_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h88ba7a003ba34397E (;28;) (type 5) (param i32) (result i32)
    (local i32)
    call $_ZN26multiversx_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17he46a460b0edfb039E
    local.tee 1
    i64.const 0
    call $bigIntSetInt64
    local.get 1
    local.get 1
    local.get 0
    call $bigIntAdd
    local.get 1
  )
  (func $_ZN26multiversx_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17he46a460b0edfb039E (;29;) (type 3) (result i32)
    (local i32)
    i32.const 0
    i32.const 0
    i32.load offset=132048
    i32.const -1
    i32.add
    local.tee 0
    i32.store offset=132048
    local.get 0
  )
  (func $_ZN105_$LT$typing_cars..RaceResult$LT$M$GT$$u20$as$u20$multiversx_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h05b5365e0439dfddE (;30;) (type 2) (param i32 i32)
    local.get 1
    local.get 0
    i32.load offset=24
    call $_ZN13multiversx_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$6append17h955c365092c83809E
    local.get 0
    i32.load offset=28
    local.get 1
    call $_ZN19multiversx_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$multiversx_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17h71edc8eb35123a8fE
    local.get 0
    i32.load offset=32
    local.get 1
    call $_ZN19multiversx_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$multiversx_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17h71edc8eb35123a8fE
    local.get 0
    i64.load offset=16
    local.get 1
    call $_ZN19multiversx_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$multiversx_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17h9cead61cac2e6e7bE
    local.get 0
    i32.load8_u offset=40
    local.get 1
    call $_ZN19multiversx_sc_codec14impl_for_types17impl_num_unsigned85_$LT$impl$u20$multiversx_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u8$GT$24dep_encode_or_handle_err17h949fd3b184c857caE
    local.get 0
    local.get 1
    call $_ZN172_$LT$multiversx_sc..types..managed..wrapped..egld_or_esdt_token_payment..EgldOrEsdtTokenPayment$LT$M$GT$$u20$as$u20$multiversx_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h8b34be2b23600cfeE
    local.get 0
    i32.load8_u offset=41
    local.get 1
    call $_ZN19multiversx_sc_codec14impl_for_types17impl_num_unsigned85_$LT$impl$u20$multiversx_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u8$GT$24dep_encode_or_handle_err17h949fd3b184c857caE
    local.get 0
    i32.load offset=36
    local.get 1
    call $_ZN149_$LT$multiversx_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$multiversx_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h6dda945307fb8083E
  )
  (func $_ZN13multiversx_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$6append17h955c365092c83809E (;31;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    call $mBufferAppend
    drop
  )
  (func $_ZN19multiversx_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$multiversx_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17h71edc8eb35123a8fE (;32;) (type 2) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
    i32.const 24
    i32.shl
    local.get 0
    i32.const 65280
    i32.and
    i32.const 8
    i32.shl
    i32.or
    local.get 0
    i32.const 8
    i32.shr_u
    i32.const 65280
    i32.and
    local.get 0
    i32.const 24
    i32.shr_u
    i32.or
    i32.or
    i32.store offset=12
    local.get 1
    local.get 2
    i32.const 12
    i32.add
    i32.const 4
    call $_ZN195_$LT$multiversx_sc..types..managed..wrapped..builder..managed_buffer_builder..ManagedBufferBuilder$LT$M$C$Impl$GT$$u20$as$u20$multiversx_sc_codec..single..nested_en_output..NestedEncodeOutput$GT$5write17hca908dc2e835fec4E
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN19multiversx_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$multiversx_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17h9cead61cac2e6e7bE (;33;) (type 14) (param i64 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
    i64.const 56
    i64.shl
    local.get 0
    i64.const 65280
    i64.and
    i64.const 40
    i64.shl
    i64.or
    local.get 0
    i64.const 16711680
    i64.and
    i64.const 24
    i64.shl
    local.get 0
    i64.const 4278190080
    i64.and
    i64.const 8
    i64.shl
    i64.or
    i64.or
    local.get 0
    i64.const 8
    i64.shr_u
    i64.const 4278190080
    i64.and
    local.get 0
    i64.const 24
    i64.shr_u
    i64.const 16711680
    i64.and
    i64.or
    local.get 0
    i64.const 40
    i64.shr_u
    i64.const 65280
    i64.and
    local.get 0
    i64.const 56
    i64.shr_u
    i64.or
    i64.or
    i64.or
    i64.store offset=8
    local.get 1
    local.get 2
    i32.const 8
    i32.add
    i32.const 8
    call $_ZN195_$LT$multiversx_sc..types..managed..wrapped..builder..managed_buffer_builder..ManagedBufferBuilder$LT$M$C$Impl$GT$$u20$as$u20$multiversx_sc_codec..single..nested_en_output..NestedEncodeOutput$GT$5write17hca908dc2e835fec4E
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN19multiversx_sc_codec14impl_for_types17impl_num_unsigned85_$LT$impl$u20$multiversx_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u8$GT$24dep_encode_or_handle_err17h949fd3b184c857caE (;34;) (type 2) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
    i32.store8 offset=15
    local.get 1
    local.get 2
    i32.const 15
    i32.add
    i32.const 1
    call $_ZN195_$LT$multiversx_sc..types..managed..wrapped..builder..managed_buffer_builder..ManagedBufferBuilder$LT$M$C$Impl$GT$$u20$as$u20$multiversx_sc_codec..single..nested_en_output..NestedEncodeOutput$GT$5write17hca908dc2e835fec4E
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN172_$LT$multiversx_sc..types..managed..wrapped..egld_or_esdt_token_payment..EgldOrEsdtTokenPayment$LT$M$GT$$u20$as$u20$multiversx_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h8b34be2b23600cfeE (;35;) (type 2) (param i32 i32)
    (local i32)
    block ;; label = @1
      block ;; label = @2
        local.get 0
        i32.load offset=8
        local.tee 2
        call $_ZN13multiversx_sc5types7managed7wrapped29egld_or_esdt_token_identifier34EgldOrEsdtTokenIdentifier$LT$M$GT$7is_egld17h53006ec3a4662d32E
        br_if 0 (;@2;)
        local.get 2
        local.get 1
        call $_ZN149_$LT$multiversx_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$multiversx_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h6dda945307fb8083E
        br 1 (;@1;)
      end
      i32.const 4
      local.get 1
      call $_ZN19multiversx_sc_codec14impl_for_types17impl_num_unsigned88_$LT$impl$u20$multiversx_sc_codec..single..nested_en..NestedEncode$u20$for$u20$usize$GT$24dep_encode_or_handle_err17h702795ee178c5305E
      local.get 1
      i32.const 131872
      i32.const 4
      call $_ZN195_$LT$multiversx_sc..types..managed..wrapped..builder..managed_buffer_builder..ManagedBufferBuilder$LT$M$C$Impl$GT$$u20$as$u20$multiversx_sc_codec..single..nested_en_output..NestedEncodeOutput$GT$5write17hca908dc2e835fec4E
    end
    local.get 0
    i64.load
    local.get 1
    call $_ZN19multiversx_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$multiversx_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17h9cead61cac2e6e7bE
    call $_ZN26multiversx_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17he46a460b0edfb039E
    local.tee 2
    local.get 0
    i32.load offset=12
    call $mBufferFromBigIntUnsigned
    drop
    local.get 2
    local.get 1
    call $_ZN149_$LT$multiversx_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$multiversx_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h6dda945307fb8083E
  )
  (func $_ZN149_$LT$multiversx_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$multiversx_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h6dda945307fb8083E (;36;) (type 2) (param i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
    call $_ZN13multiversx_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h842230fed847566cE
    local.tee 3
    i32.const 24
    i32.shl
    local.get 3
    i32.const 65280
    i32.and
    i32.const 8
    i32.shl
    i32.or
    local.get 3
    i32.const 8
    i32.shr_u
    i32.const 65280
    i32.and
    local.get 3
    i32.const 24
    i32.shr_u
    i32.or
    i32.or
    i32.store offset=12
    local.get 1
    local.get 2
    i32.const 12
    i32.add
    i32.const 4
    call $_ZN195_$LT$multiversx_sc..types..managed..wrapped..builder..managed_buffer_builder..ManagedBufferBuilder$LT$M$C$Impl$GT$$u20$as$u20$multiversx_sc_codec..single..nested_en_output..NestedEncodeOutput$GT$5write17hca908dc2e835fec4E
    local.get 1
    local.get 0
    call $_ZN13multiversx_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$6append17h955c365092c83809E
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN106_$LT$$RF$str$u20$as$u20$multiversx_sc..contract_base..wrappers..error_helper..IntoSignalError$LT$M$GT$$GT$25signal_error_with_message17hae23756c4f193c8dE (;37;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    call $signalError
    unreachable
  )
  (func $_ZN115_$LT$multiversx_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h683cf62a8dea998cE (;38;) (type 5) (param i32) (result i32)
    (local i32)
    call $mBufferNew
    local.tee 1
    local.get 0
    call $mBufferAppend
    drop
    local.get 1
  )
  (func $_ZN11typing_cars10TypingCars13player_exists17hfe302ea246296ddaE (;39;) (type 5) (param i32) (result i32)
    local.get 0
    call $_ZN45_$LT$C$u20$as$u20$typing_cars..TypingCars$GT$15player_profiles17h77c44b20bf2ad87cE
    call $_ZN149_$LT$multiversx_sc..storage..mappers..set_mapper..CurrentStorage$u20$as$u20$multiversx_sc..storage..mappers..set_mapper..StorageAddress$LT$SA$GT$$GT$23address_storage_get_len17h23bc4c87b229e114E
    i32.const 0
    i32.ne
  )
  (func $_ZN45_$LT$C$u20$as$u20$typing_cars..TypingCars$GT$15player_profiles17h77c44b20bf2ad87cE (;40;) (type 5) (param i32) (result i32)
    (local i32)
    i32.const 131992
    i32.const 14
    call $_ZN13multiversx_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h72d48f1a03dc0236E
    local.tee 1
    local.get 0
    call $_ZN13multiversx_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$6append17h955c365092c83809E
    local.get 1
  )
  (func $_ZN149_$LT$multiversx_sc..storage..mappers..set_mapper..CurrentStorage$u20$as$u20$multiversx_sc..storage..mappers..set_mapper..StorageAddress$LT$SA$GT$$GT$23address_storage_get_len17h23bc4c87b229e114E (;41;) (type 5) (param i32) (result i32)
    local.get 0
    i32.const -25
    call $mBufferStorageLoad
    drop
    i32.const -25
    call $mBufferGetLength
  )
  (func $_ZN125_$LT$typing_cars..RaceResult$LT$M$GT$$u20$as$u20$multiversx_sc..types..managed..wrapped..managed_vec_item..ManagedVecItem$GT$19borrow_from_payload17h3da2d0e82cf2f619E (;42;) (type 2) (param i32 i32)
    (local i32 i64)
    local.get 0
    local.get 1
    i32.load8_u offset=20
    i32.store8 offset=40
    local.get 0
    local.get 1
    i32.load8_u offset=37
    i32.const 0
    i32.ne
    i32.store8 offset=41
    local.get 0
    local.get 1
    i32.load offset=38 align=1
    local.tee 2
    i32.const 24
    i32.shl
    local.get 2
    i32.const 65280
    i32.and
    i32.const 8
    i32.shl
    i32.or
    local.get 2
    i32.const 8
    i32.shr_u
    i32.const 65280
    i32.and
    local.get 2
    i32.const 24
    i32.shr_u
    i32.or
    i32.or
    i32.store offset=36
    local.get 0
    local.get 1
    i32.load offset=8 align=1
    local.tee 2
    i32.const 24
    i32.shl
    local.get 2
    i32.const 65280
    i32.and
    i32.const 8
    i32.shl
    i32.or
    local.get 2
    i32.const 8
    i32.shr_u
    i32.const 65280
    i32.and
    local.get 2
    i32.const 24
    i32.shr_u
    i32.or
    i32.or
    i32.store offset=32
    local.get 0
    local.get 1
    i32.load offset=4 align=1
    local.tee 2
    i32.const 24
    i32.shl
    local.get 2
    i32.const 65280
    i32.and
    i32.const 8
    i32.shl
    i32.or
    local.get 2
    i32.const 8
    i32.shr_u
    i32.const 65280
    i32.and
    local.get 2
    i32.const 24
    i32.shr_u
    i32.or
    i32.or
    i32.store offset=28
    local.get 0
    local.get 1
    i32.load align=1
    local.tee 2
    i32.const 24
    i32.shl
    local.get 2
    i32.const 65280
    i32.and
    i32.const 8
    i32.shl
    i32.or
    local.get 2
    i32.const 8
    i32.shr_u
    i32.const 65280
    i32.and
    local.get 2
    i32.const 24
    i32.shr_u
    i32.or
    i32.or
    i32.store offset=24
    local.get 0
    local.get 1
    i32.load offset=33 align=1
    local.tee 2
    i32.const 24
    i32.shl
    local.get 2
    i32.const 65280
    i32.and
    i32.const 8
    i32.shl
    i32.or
    local.get 2
    i32.const 8
    i32.shr_u
    i32.const 65280
    i32.and
    local.get 2
    i32.const 24
    i32.shr_u
    i32.or
    i32.or
    i32.store offset=12
    local.get 0
    local.get 1
    i32.load offset=21 align=1
    local.tee 2
    i32.const 24
    i32.shl
    local.get 2
    i32.const 65280
    i32.and
    i32.const 8
    i32.shl
    i32.or
    local.get 2
    i32.const 8
    i32.shr_u
    i32.const 65280
    i32.and
    local.get 2
    i32.const 24
    i32.shr_u
    i32.or
    i32.or
    i32.store offset=8
    local.get 0
    local.get 1
    i64.load offset=12 align=1
    local.tee 3
    i64.const 56
    i64.shl
    local.get 3
    i64.const 65280
    i64.and
    i64.const 40
    i64.shl
    i64.or
    local.get 3
    i64.const 16711680
    i64.and
    i64.const 24
    i64.shl
    local.get 3
    i64.const 4278190080
    i64.and
    i64.const 8
    i64.shl
    i64.or
    i64.or
    local.get 3
    i64.const 8
    i64.shr_u
    i64.const 4278190080
    i64.and
    local.get 3
    i64.const 24
    i64.shr_u
    i64.const 16711680
    i64.and
    i64.or
    local.get 3
    i64.const 40
    i64.shr_u
    i64.const 65280
    i64.and
    local.get 3
    i64.const 56
    i64.shr_u
    i64.or
    i64.or
    i64.or
    i64.store offset=16
    local.get 0
    local.get 1
    i64.load offset=25 align=1
    local.tee 3
    i64.const 56
    i64.shl
    local.get 3
    i64.const 65280
    i64.and
    i64.const 40
    i64.shl
    i64.or
    local.get 3
    i64.const 16711680
    i64.and
    i64.const 24
    i64.shl
    local.get 3
    i64.const 4278190080
    i64.and
    i64.const 8
    i64.shl
    i64.or
    i64.or
    local.get 3
    i64.const 8
    i64.shr_u
    i64.const 4278190080
    i64.and
    local.get 3
    i64.const 24
    i64.shr_u
    i64.const 16711680
    i64.and
    i64.or
    local.get 3
    i64.const 40
    i64.shr_u
    i64.const 65280
    i64.and
    local.get 3
    i64.const 56
    i64.shr_u
    i64.or
    i64.or
    i64.or
    i64.store
  )
  (func $_ZN133_$LT$multiversx_sc..io..finish..ApiOutputAdapter$LT$FA$GT$$u20$as$u20$multiversx_sc_codec..single..top_en_output..TopEncodeOutput$GT$19start_nested_encode17h15af45a888afc9cfE (;43;) (type 3) (result i32)
    i32.const 1
    i32.const 0
    call $_ZN13multiversx_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h72d48f1a03dc0236E
  )
  (func $_ZN13multiversx_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h72d48f1a03dc0236E (;44;) (type 4) (param i32 i32) (result i32)
    (local i32)
    call $_ZN26multiversx_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17he46a460b0edfb039E
    local.tee 2
    local.get 0
    local.get 1
    call $mBufferSetBytes
    drop
    local.get 2
  )
  (func $_ZN133_$LT$multiversx_sc..io..finish..ApiOutputAdapter$LT$FA$GT$$u20$as$u20$multiversx_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17h92228e8f0116d760E (;45;) (type 6) (param i32)
    local.get 0
    call $mBufferFinish
    drop
  )
  (func $_ZN138_$LT$multiversx_sc..types..managed..wrapped..egld_or_esdt_token_payment..EgldOrEsdtTokenPayment$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h3ab0b8b7a41ae99cE (;46;) (type 2) (param i32 i32)
    (local i32 i64)
    local.get 1
    i32.load offset=8
    call $_ZN115_$LT$multiversx_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h683cf62a8dea998cE
    local.set 2
    local.get 1
    i64.load
    local.set 3
    local.get 0
    local.get 1
    i32.load offset=12
    call $_ZN105_$LT$multiversx_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h88ba7a003ba34397E
    i32.store offset=12
    local.get 0
    local.get 3
    i64.store
    local.get 0
    local.get 2
    i32.store offset=8
  )
  (func $_ZN139_$LT$multiversx_sc..storage..storage_get..StorageGetInput$LT$A$GT$$u20$as$u20$multiversx_sc_codec..single..top_de_input..TopDecodeInput$GT$18into_nested_buffer17h42ce8f6a8d15290eE (;47;) (type 2) (param i32 i32)
    (local i32)
    local.get 1
    call $_ZN13multiversx_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17h5dd5e51648db1d97E
    local.tee 2
    call $mBufferGetLength
    local.set 1
    local.get 0
    i32.const 0
    i32.store8 offset=16
    local.get 0
    local.get 1
    i32.store offset=12
    local.get 0
    local.get 2
    i32.store offset=8
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 0
    i32.const 0
    i32.store
  )
  (func $_ZN13multiversx_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17h5dd5e51648db1d97E (;48;) (type 5) (param i32) (result i32)
    (local i32)
    local.get 0
    call $_ZN26multiversx_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17he46a460b0edfb039E
    local.tee 1
    call $mBufferStorageLoad
    drop
    local.get 1
  )
  (func $_ZN13multiversx_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17h5177c34d2bd01882E (;49;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN106_$LT$$RF$str$u20$as$u20$multiversx_sc..contract_base..wrappers..error_helper..IntoSignalError$LT$M$GT$$GT$25signal_error_with_message17hae23756c4f193c8dE
    unreachable
  )
  (func $_ZN13multiversx_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$10get_caller17hde93a62dc2f179ffE (;50;) (type 3) (result i32)
    (local i32)
    call $_ZN26multiversx_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17he46a460b0edfb039E
    local.tee 0
    call $managedCaller
    local.get 0
  )
  (func $_ZN13multiversx_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$19egld_or_single_esdt17h08da37e237007554E (;51;) (type 6) (param i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          block ;; label = @4
            call $_ZN13multiversx_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$28all_esdt_transfers_unchecked17h178199ab5abed9ddE
            local.tee 2
            call $_ZN13multiversx_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17h5694fa7575014d1dE
            br_table 1 (;@3;) 2 (;@2;) 0 (;@4;)
          end
          i32.const 131666
          i32.const 34
          call $signalError
          unreachable
        end
        call $_ZN13multiversx_sc5types7managed7wrapped29egld_or_esdt_token_identifier34EgldOrEsdtTokenIdentifier$LT$M$GT$4egld17he6c08c5f9bbe4a09E
        local.set 2
        local.get 0
        call $_ZN13multiversx_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$22egld_direct_non_strict17h25d45355be069f6eE
        call $_ZN105_$LT$multiversx_sc..types..managed..wrapped..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h88ba7a003ba34397E
        i32.store offset=12
        local.get 0
        i64.const 0
        i64.store
        local.get 0
        local.get 2
        i32.store offset=8
        br 1 (;@1;)
      end
      local.get 1
      local.get 2
      call $_ZN13multiversx_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3get17h6858d4f2b2cad9baE
      local.get 0
      local.get 1
      call $_ZN138_$LT$multiversx_sc..types..managed..wrapped..egld_or_esdt_token_payment..EgldOrEsdtTokenPayment$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h3ab0b8b7a41ae99cE
    end
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN13multiversx_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$28all_esdt_transfers_unchecked17h178199ab5abed9ddE (;52;) (type 3) (result i32)
    block ;; label = @1
      i32.const 2
      call $_ZN13multiversx_sc3api13managed_types14static_var_api16StaticVarApiImpl21flag_is_set_or_update17h197d36be45e99386E
      br_if 0 (;@1;)
      i32.const -38
      call $managedGetMultiESDTCallValue
    end
    i32.const -38
  )
  (func $_ZN13multiversx_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17h5694fa7575014d1dE (;53;) (type 5) (param i32) (result i32)
    local.get 0
    call $_ZN13multiversx_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h842230fed847566cE
    i32.const 4
    i32.shr_u
  )
  (func $_ZN13multiversx_sc5types7managed7wrapped29egld_or_esdt_token_identifier34EgldOrEsdtTokenIdentifier$LT$M$GT$4egld17he6c08c5f9bbe4a09E (;54;) (type 3) (result i32)
    i32.const 131861
    i32.const 11
    call $_ZN13multiversx_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h72d48f1a03dc0236E
  )
  (func $_ZN13multiversx_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$22egld_direct_non_strict17h25d45355be069f6eE (;55;) (type 3) (result i32)
    block ;; label = @1
      i32.const 1
      call $_ZN13multiversx_sc3api13managed_types14static_var_api16StaticVarApiImpl21flag_is_set_or_update17h197d36be45e99386E
      br_if 0 (;@1;)
      i32.const -35
      call $bigIntGetCallValue
    end
    i32.const -35
  )
  (func $_ZN13multiversx_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3get17h6858d4f2b2cad9baE (;56;) (type 2) (param i32 i32)
    (local i32 i64 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 8
    i32.add
    i64.const 0
    i64.store
    local.get 2
    i64.const 0
    i64.store
    block ;; label = @1
      local.get 1
      i32.const 0
      local.get 2
      i32.const 16
      call $_ZN13multiversx_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17hc5056a26e2131429E
      i32.eqz
      br_if 0 (;@1;)
      i32.const 131832
      i32.const 29
      call $signalError
      unreachable
    end
    local.get 2
    i64.load offset=4 align=4
    local.set 3
    local.get 2
    i32.load
    local.set 1
    local.get 0
    local.get 2
    i32.load offset=12
    local.tee 4
    i32.const 24
    i32.shl
    local.get 4
    i32.const 65280
    i32.and
    i32.const 8
    i32.shl
    i32.or
    local.get 4
    i32.const 8
    i32.shr_u
    i32.const 65280
    i32.and
    local.get 4
    i32.const 24
    i32.shr_u
    i32.or
    i32.or
    i32.store offset=12
    local.get 0
    local.get 1
    i32.const 24
    i32.shl
    local.get 1
    i32.const 65280
    i32.and
    i32.const 8
    i32.shl
    i32.or
    local.get 1
    i32.const 8
    i32.shr_u
    i32.const 65280
    i32.and
    local.get 1
    i32.const 24
    i32.shr_u
    i32.or
    i32.or
    i32.store offset=8
    local.get 0
    local.get 3
    i64.const 56
    i64.shl
    local.get 3
    i64.const 65280
    i64.and
    i64.const 40
    i64.shl
    i64.or
    local.get 3
    i64.const 16711680
    i64.and
    i64.const 24
    i64.shl
    local.get 3
    i64.const 4278190080
    i64.and
    i64.const 8
    i64.shl
    i64.or
    i64.or
    local.get 3
    i64.const 8
    i64.shr_u
    i64.const 4278190080
    i64.and
    local.get 3
    i64.const 24
    i64.shr_u
    i64.const 16711680
    i64.and
    i64.or
    local.get 3
    i64.const 40
    i64.shr_u
    i64.const 65280
    i64.and
    local.get 3
    i64.const 56
    i64.shr_u
    i64.or
    i64.or
    i64.or
    i64.store
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN13multiversx_sc3api13managed_types14static_var_api16StaticVarApiImpl21flag_is_set_or_update17h197d36be45e99386E (;57;) (type 5) (param i32) (result i32)
    (local i32 i32)
    block ;; label = @1
      i32.const 0
      i32.load8_u offset=142060
      local.tee 1
      local.get 0
      i32.and
      i32.const 255
      i32.and
      local.get 0
      i32.const 255
      i32.and
      i32.eq
      local.tee 2
      br_if 0 (;@1;)
      i32.const 0
      local.get 1
      local.get 0
      i32.or
      i32.store8 offset=142060
    end
    local.get 2
  )
  (func $_ZN13multiversx_sc2io12signal_error19signal_arg_de_error17hf90f8e9555bc18adE (;58;) (type 15) (param i32 i32 i32 i32)
    (local i32)
    i32.const 131766
    i32.const 23
    call $_ZN13multiversx_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h72d48f1a03dc0236E
    local.tee 4
    local.get 0
    local.get 1
    call $mBufferAppendBytes
    drop
    local.get 4
    i32.const 131789
    i32.const 3
    call $mBufferAppendBytes
    drop
    local.get 4
    local.get 2
    local.get 3
    call $mBufferAppendBytes
    drop
    local.get 4
    call $managedSignalError
    unreachable
  )
  (func $_ZN13multiversx_sc2io15call_value_init12payable_egld17h340f38ad953e5dd2E (;59;) (type 10)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          block ;; label = @4
            block ;; label = @5
              call $_ZN13multiversx_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$28all_esdt_transfers_unchecked17h178199ab5abed9ddE
              local.tee 1
              call $_ZN13multiversx_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17h5694fa7575014d1dE
              br_table 1 (;@4;) 2 (;@3;) 0 (;@5;)
            end
            i32.const 131737
            i32.const 29
            call $signalError
            unreachable
          end
          call $_ZN13multiversx_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$22egld_direct_non_strict17h25d45355be069f6eE
          drop
          br 1 (;@2;)
        end
        local.get 0
        local.get 1
        call $_ZN13multiversx_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3get17h6858d4f2b2cad9baE
        local.get 0
        i32.load offset=8
        call $_ZN13multiversx_sc5types7managed7wrapped29egld_or_esdt_token_identifier34EgldOrEsdtTokenIdentifier$LT$M$GT$7is_egld17h53006ec3a4662d32E
        i32.eqz
        br_if 1 (;@1;)
      end
      local.get 0
      i32.const 16
      i32.add
      global.set $__stack_pointer
      return
    end
    i32.const 131700
    i32.const 37
    call $signalError
    unreachable
  )
  (func $_ZN13multiversx_sc5types7managed7wrapped29egld_or_esdt_token_identifier34EgldOrEsdtTokenIdentifier$LT$M$GT$7is_egld17h53006ec3a4662d32E (;60;) (type 5) (param i32) (result i32)
    i32.const -40
    i32.const 131861
    i32.const 11
    call $mBufferSetBytes
    drop
    i32.const -40
    local.get 0
    call $_ZN26multiversx_sc_wasm_adapter3api13managed_types23managed_buffer_api_node161_$LT$impl$u20$multiversx_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$multiversx_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$5mb_eq17h76101a0c295e676aE
  )
  (func $_ZN13multiversx_sc2io16arg_nested_tuple15load_single_arg17h562e2f2e33a77f88E (;61;) (type 3) (result i32)
    (local i64)
    block ;; label = @1
      i32.const 1
      call $smallIntGetUnsignedArgument
      local.tee 0
      i64.const 256
      i64.lt_u
      br_if 0 (;@1;)
      i32.const 131613
      i32.const 10
      i32.const 131072
      i32.const 14
      call $_ZN13multiversx_sc2io12signal_error19signal_arg_de_error17hf90f8e9555bc18adE
      unreachable
    end
    local.get 0
    i32.wrap_i64
  )
  (func $_ZN13multiversx_sc2io16arg_nested_tuple15load_single_arg17h80405e2ddea19284E (;62;) (type 8) (param i32) (result i64)
    local.get 0
    call $smallIntGetUnsignedArgument
  )
  (func $_ZN13multiversx_sc2io16arg_nested_tuple15load_single_arg17hb4b43271d8440a2fE (;63;) (type 3) (result i32)
    (local i32)
    block ;; label = @1
      i32.const 0
      call $_ZN143_$LT$multiversx_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$multiversx_sc_codec..single..top_de..TopDecode$GT$24top_decode_or_handle_err17h34abf98dc5282befE
      local.tee 0
      call $mBufferGetLength
      i32.const 32
      i32.eq
      br_if 0 (;@1;)
      i32.const 131659
      i32.const 7
      i32.const 131937
      i32.const 16
      call $_ZN13multiversx_sc2io12signal_error19signal_arg_de_error17hf90f8e9555bc18adE
      unreachable
    end
    local.get 0
  )
  (func $_ZN143_$LT$multiversx_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$multiversx_sc_codec..single..top_de..TopDecode$GT$24top_decode_or_handle_err17h34abf98dc5282befE (;64;) (type 5) (param i32) (result i32)
    (local i32)
    local.get 0
    call $_ZN26multiversx_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17he46a460b0edfb039E
    local.tee 1
    call $mBufferGetArgument
    drop
    local.get 1
  )
  (func $_ZN13multiversx_sc2io16arg_nested_tuple15load_single_arg17hb50240af2d4b98acE (;65;) (type 5) (param i32) (result i32)
    local.get 0
    call $_ZN143_$LT$multiversx_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$multiversx_sc_codec..single..top_de..TopDecode$GT$24top_decode_or_handle_err17h34abf98dc5282befE
  )
  (func $_ZN13multiversx_sc2io16arg_nested_tuple15load_single_arg17hbc060316fd0dfe37E (;66;) (type 7) (param i32 i32 i32) (result i32)
    (local i64)
    block ;; label = @1
      local.get 0
      call $smallIntGetUnsignedArgument
      local.tee 3
      i64.const 4294967296
      i64.lt_u
      br_if 0 (;@1;)
      local.get 1
      local.get 2
      i32.const 131072
      i32.const 14
      call $_ZN13multiversx_sc2io12signal_error19signal_arg_de_error17hf90f8e9555bc18adE
      unreachable
    end
    local.get 3
    i32.wrap_i64
  )
  (func $_ZN13multiversx_sc2io16arg_nested_tuple22check_num_arguments_eq17hd03d4298f6221c0cE (;67;) (type 6) (param i32)
    block ;; label = @1
      call $getNumArguments
      local.get 0
      i32.ne
      br_if 0 (;@1;)
      return
    end
    i32.const 131792
    i32.const 25
    call $signalError
    unreachable
  )
  (func $_ZN13multiversx_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h90ea01c3a6d22faeE (;68;) (type 4) (param i32 i32) (result i32)
    local.get 0
    local.get 0
    local.get 1
    call $_ZN19multiversx_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$multiversx_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17hcfa382d0ab99f36cE
    local.get 1
    call $_ZN13multiversx_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$27read_managed_buffer_of_size17h120783a88efbae92E
  )
  (func $_ZN19multiversx_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$multiversx_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17hcfa382d0ab99f36cE (;69;) (type 4) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 0
    i32.store offset=12
    local.get 0
    local.get 2
    i32.const 12
    i32.add
    i32.const 4
    local.get 1
    call $_ZN198_$LT$multiversx_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$multiversx_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17h4030ba6feb6f67e9E
    local.get 2
    i32.load offset=12
    local.set 1
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 1
    i32.const 24
    i32.shl
    local.get 1
    i32.const 65280
    i32.and
    i32.const 8
    i32.shl
    i32.or
    local.get 1
    i32.const 8
    i32.shr_u
    i32.const 65280
    i32.and
    local.get 1
    i32.const 24
    i32.shr_u
    i32.or
    i32.or
  )
  (func $_ZN13multiversx_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$27read_managed_buffer_of_size17h120783a88efbae92E (;70;) (type 7) (param i32 i32 i32) (result i32)
    (local i32 i32)
    local.get 0
    i32.load
    local.set 3
    call $mBufferNew
    local.set 4
    block ;; label = @1
      local.get 0
      i32.load offset=8
      local.get 3
      local.get 1
      local.get 4
      call $mBufferCopyByteSlice
      br_if 0 (;@1;)
      local.get 0
      local.get 3
      local.get 1
      i32.add
      i32.store
      local.get 4
      return
    end
    local.get 2
    i32.const 131817
    i32.const 15
    call $_ZN147_$LT$multiversx_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$multiversx_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hbbb9de0124433bd9E
    unreachable
  )
  (func $_ZN147_$LT$multiversx_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$multiversx_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hbbb9de0124433bd9E (;71;) (type 1) (param i32 i32 i32)
    (local i32)
    i32.const 131910
    i32.const 27
    call $_ZN13multiversx_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h72d48f1a03dc0236E
    local.tee 3
    local.get 0
    call $mBufferAppend
    drop
    local.get 3
    i32.const 131789
    i32.const 3
    call $mBufferAppendBytes
    drop
    local.get 3
    local.get 1
    local.get 2
    call $mBufferAppendBytes
    drop
    local.get 3
    call $managedSignalError
    unreachable
  )
  (func $_ZN13multiversx_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17hc5056a26e2131429E (;72;) (type 9) (param i32 i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $_ZN26multiversx_sc_wasm_adapter3api13managed_types23managed_buffer_api_node161_$LT$impl$u20$multiversx_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$multiversx_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$13mb_load_slice17h62ff902eca3c7ecdE
  )
  (func $_ZN26multiversx_sc_wasm_adapter3api13managed_types23managed_buffer_api_node161_$LT$impl$u20$multiversx_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$multiversx_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$13mb_load_slice17h62ff902eca3c7ecdE (;73;) (type 9) (param i32 i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 3
    local.get 2
    call $mBufferGetByteSlice
    i32.const 0
    i32.ne
  )
  (func $_ZN13multiversx_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h842230fed847566cE (;74;) (type 5) (param i32) (result i32)
    local.get 0
    call $mBufferGetLength
  )
  (func $_ZN13multiversx_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h8f757bae7f22f155E (;75;) (type 3) (result i32)
    i32.const 1
    i32.const 0
    call $_ZN13multiversx_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h72d48f1a03dc0236E
  )
  (func $_ZN13multiversx_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3get17hc41253f30501963eE (;76;) (type 4) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 0
    i32.store offset=12
    block ;; label = @1
      local.get 0
      local.get 1
      i32.const 2
      i32.shl
      local.get 2
      i32.const 12
      i32.add
      i32.const 4
      call $_ZN13multiversx_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17hc5056a26e2131429E
      i32.eqz
      br_if 0 (;@1;)
      i32.const 131832
      i32.const 29
      call $signalError
      unreachable
    end
    local.get 2
    i32.load offset=12
    local.set 1
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 1
    i32.const 24
    i32.shl
    local.get 1
    i32.const 65280
    i32.and
    i32.const 8
    i32.shl
    i32.or
    local.get 1
    i32.const 8
    i32.shr_u
    i32.const 65280
    i32.and
    local.get 1
    i32.const 24
    i32.shr_u
    i32.or
    i32.or
  )
  (func $_ZN13multiversx_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17h0258e0c9ed8d3485E (;77;) (type 5) (param i32) (result i32)
    local.get 0
    call $_ZN13multiversx_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h842230fed847566cE
    i32.const 42
    i32.div_u
  )
  (func $_ZN13multiversx_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17hff0fec0eb99949baE (;78;) (type 5) (param i32) (result i32)
    local.get 0
    call $_ZN13multiversx_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h842230fed847566cE
    i32.const 2
    i32.shr_u
  )
  (func $_ZN13multiversx_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h8234366487601bc3E (;79;) (type 2) (param i32 i32)
    (local i32 i32 i64)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 1
    i32.load8_u offset=40
    i32.store8 offset=24
    local.get 2
    local.get 1
    i32.load8_u offset=41
    i32.store8 offset=41
    local.get 2
    local.get 1
    i32.load offset=24
    local.tee 3
    i32.const 24
    i32.shl
    local.get 3
    i32.const 65280
    i32.and
    i32.const 8
    i32.shl
    i32.or
    local.get 3
    i32.const 8
    i32.shr_u
    i32.const 65280
    i32.and
    local.get 3
    i32.const 24
    i32.shr_u
    i32.or
    i32.or
    i32.store offset=4
    local.get 2
    local.get 1
    i32.load offset=28
    local.tee 3
    i32.const 24
    i32.shl
    local.get 3
    i32.const 65280
    i32.and
    i32.const 8
    i32.shl
    i32.or
    local.get 3
    i32.const 8
    i32.shr_u
    i32.const 65280
    i32.and
    local.get 3
    i32.const 24
    i32.shr_u
    i32.or
    i32.or
    i32.store offset=8
    local.get 2
    local.get 1
    i32.load offset=32
    local.tee 3
    i32.const 24
    i32.shl
    local.get 3
    i32.const 65280
    i32.and
    i32.const 8
    i32.shl
    i32.or
    local.get 3
    i32.const 8
    i32.shr_u
    i32.const 65280
    i32.and
    local.get 3
    i32.const 24
    i32.shr_u
    i32.or
    i32.or
    i32.store offset=12
    local.get 2
    local.get 1
    i32.load offset=12
    local.tee 3
    i32.const 24
    i32.shl
    local.get 3
    i32.const 65280
    i32.and
    i32.const 8
    i32.shl
    i32.or
    local.get 3
    i32.const 8
    i32.shr_u
    i32.const 65280
    i32.and
    local.get 3
    i32.const 24
    i32.shr_u
    i32.or
    i32.or
    i32.store offset=37 align=1
    local.get 2
    local.get 1
    i32.load offset=8
    local.tee 3
    i32.const 24
    i32.shl
    local.get 3
    i32.const 65280
    i32.and
    i32.const 8
    i32.shl
    i32.or
    local.get 3
    i32.const 8
    i32.shr_u
    i32.const 65280
    i32.and
    local.get 3
    i32.const 24
    i32.shr_u
    i32.or
    i32.or
    i32.store offset=25 align=1
    local.get 2
    local.get 1
    i64.load offset=16
    local.tee 4
    i64.const 56
    i64.shl
    local.get 4
    i64.const 65280
    i64.and
    i64.const 40
    i64.shl
    i64.or
    local.get 4
    i64.const 16711680
    i64.and
    i64.const 24
    i64.shl
    local.get 4
    i64.const 4278190080
    i64.and
    i64.const 8
    i64.shl
    i64.or
    i64.or
    local.get 4
    i64.const 8
    i64.shr_u
    i64.const 4278190080
    i64.and
    local.get 4
    i64.const 24
    i64.shr_u
    i64.const 16711680
    i64.and
    i64.or
    local.get 4
    i64.const 40
    i64.shr_u
    i64.const 65280
    i64.and
    local.get 4
    i64.const 56
    i64.shr_u
    i64.or
    i64.or
    i64.or
    i64.store offset=16 align=4
    local.get 2
    local.get 1
    i64.load
    local.tee 4
    i64.const 56
    i64.shl
    local.get 4
    i64.const 65280
    i64.and
    i64.const 40
    i64.shl
    i64.or
    local.get 4
    i64.const 16711680
    i64.and
    i64.const 24
    i64.shl
    local.get 4
    i64.const 4278190080
    i64.and
    i64.const 8
    i64.shl
    i64.or
    i64.or
    local.get 4
    i64.const 8
    i64.shr_u
    i64.const 4278190080
    i64.and
    local.get 4
    i64.const 24
    i64.shr_u
    i64.const 16711680
    i64.and
    i64.or
    local.get 4
    i64.const 40
    i64.shr_u
    i64.const 65280
    i64.and
    local.get 4
    i64.const 56
    i64.shr_u
    i64.or
    i64.or
    i64.or
    i64.store offset=29 align=1
    local.get 2
    local.get 1
    i32.load offset=36
    local.tee 1
    i32.const 24
    i32.shl
    local.get 1
    i32.const 65280
    i32.and
    i32.const 8
    i32.shl
    i32.or
    local.get 1
    i32.const 8
    i32.shr_u
    i32.const 65280
    i32.and
    local.get 1
    i32.const 24
    i32.shr_u
    i32.or
    i32.or
    i32.store offset=42 align=2
    local.get 0
    local.get 2
    i32.const 4
    i32.add
    i32.const 42
    call $mBufferAppendBytes
    drop
    local.get 2
    i32.const 48
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN13multiversx_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hbdb52437f03ae2ceE (;80;) (type 2) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 1
    i32.const 24
    i32.shl
    local.get 1
    i32.const 65280
    i32.and
    i32.const 8
    i32.shl
    i32.or
    local.get 1
    i32.const 8
    i32.shr_u
    i32.const 65280
    i32.and
    local.get 1
    i32.const 24
    i32.shr_u
    i32.or
    i32.or
    i32.store offset=12
    local.get 0
    local.get 2
    i32.const 12
    i32.add
    i32.const 4
    call $mBufferAppendBytes
    drop
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN26multiversx_sc_wasm_adapter3api13managed_types23managed_buffer_api_node161_$LT$impl$u20$multiversx_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$multiversx_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$5mb_eq17h76101a0c295e676aE (;81;) (type 4) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $mBufferEq
    i32.const 0
    i32.gt_s
  )
  (func $_ZN13multiversx_sc7storage7mappers11user_mapper24UserMapper$LT$SA$C$A$GT$11get_user_id17hc8c3a337dc6b8722E (;82;) (type 4) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $_ZN13multiversx_sc7storage7mappers11user_mapper24UserMapper$LT$SA$C$A$GT$15get_user_id_key17h2890726ff6afa886E
    call $_ZN149_$LT$multiversx_sc..storage..mappers..set_mapper..CurrentStorage$u20$as$u20$multiversx_sc..storage..mappers..set_mapper..StorageAddress$LT$SA$GT$$GT$19address_storage_get17h81a41adf28208436E
  )
  (func $_ZN13multiversx_sc7storage7mappers11user_mapper24UserMapper$LT$SA$C$A$GT$15get_user_id_key17h2890726ff6afa886E (;83;) (type 4) (param i32 i32) (result i32)
    local.get 0
    call $_ZN115_$LT$multiversx_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h683cf62a8dea998cE
    local.tee 0
    i32.const 131876
    i32.const 14
    call $mBufferAppendBytes
    drop
    local.get 0
    local.get 1
    call $_ZN13multiversx_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$6append17h955c365092c83809E
    local.get 0
  )
  (func $_ZN149_$LT$multiversx_sc..storage..mappers..set_mapper..CurrentStorage$u20$as$u20$multiversx_sc..storage..mappers..set_mapper..StorageAddress$LT$SA$GT$$GT$19address_storage_get17h81a41adf28208436E (;84;) (type 5) (param i32) (result i32)
    (local i64)
    block ;; label = @1
      local.get 0
      local.get 0
      call $_ZN19multiversx_sc_codec6single12top_de_input14TopDecodeInput8into_u6417hd7cba9b8b30a3257E
      local.tee 1
      i64.const 4294967296
      i64.lt_u
      br_if 0 (;@1;)
      local.get 0
      i32.const 131072
      i32.const 14
      call $_ZN147_$LT$multiversx_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$multiversx_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hbbb9de0124433bd9E
      unreachable
    end
    local.get 1
    i32.wrap_i64
  )
  (func $_ZN13multiversx_sc7storage7mappers11user_mapper24UserMapper$LT$SA$C$A$GT$18get_user_count_key17h5e3b9573e513f023E (;85;) (type 5) (param i32) (result i32)
    local.get 0
    call $_ZN115_$LT$multiversx_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h683cf62a8dea998cE
    local.tee 0
    i32.const 131890
    i32.const 6
    call $mBufferAppendBytes
    drop
    local.get 0
  )
  (func $_ZN13multiversx_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17h158a5cf3ad2637deE (;86;) (type 2) (param i32 i32)
    (local i32)
    call $_ZN133_$LT$multiversx_sc..io..finish..ApiOutputAdapter$LT$FA$GT$$u20$as$u20$multiversx_sc_codec..single..top_en_output..TopEncodeOutput$GT$19start_nested_encode17h15af45a888afc9cfE
    local.tee 2
    local.get 1
    i32.load offset=32
    call $_ZN13multiversx_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$6append17h955c365092c83809E
    local.get 1
    i32.load offset=36
    local.get 2
    call $_ZN149_$LT$multiversx_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$multiversx_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h6dda945307fb8083E
    local.get 1
    i32.load offset=40
    local.get 2
    call $_ZN19multiversx_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$multiversx_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17h71edc8eb35123a8fE
    local.get 1
    i32.load offset=44
    local.get 2
    call $_ZN19multiversx_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$multiversx_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17h71edc8eb35123a8fE
    local.get 1
    i64.load
    local.get 2
    call $_ZN19multiversx_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$multiversx_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17h9cead61cac2e6e7bE
    local.get 1
    i64.load offset=8
    local.get 2
    call $_ZN19multiversx_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$multiversx_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17h9cead61cac2e6e7bE
    local.get 1
    i32.load offset=48
    local.get 2
    call $_ZN19multiversx_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$multiversx_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17h71edc8eb35123a8fE
    local.get 1
    i32.load offset=52
    local.get 2
    call $_ZN19multiversx_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$multiversx_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17h71edc8eb35123a8fE
    local.get 1
    i64.load offset=16
    local.get 2
    call $_ZN19multiversx_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$multiversx_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17h9cead61cac2e6e7bE
    local.get 1
    i64.load offset=24
    local.get 2
    call $_ZN19multiversx_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$multiversx_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17h9cead61cac2e6e7bE
    local.get 0
    local.get 2
    call $_ZN142_$LT$multiversx_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$multiversx_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17hbb85770ddb828d27E
  )
  (func $_ZN142_$LT$multiversx_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$multiversx_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17hbb85770ddb828d27E (;87;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    call $mBufferStorageStore
    drop
  )
  (func $_ZN13multiversx_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17h45fdb12d6e12ba45E (;88;) (type 2) (param i32 i32)
    (local i32)
    call $_ZN133_$LT$multiversx_sc..io..finish..ApiOutputAdapter$LT$FA$GT$$u20$as$u20$multiversx_sc_codec..single..top_en_output..TopEncodeOutput$GT$19start_nested_encode17h15af45a888afc9cfE
    local.set 2
    local.get 1
    i64.load offset=16
    local.get 2
    call $_ZN19multiversx_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$multiversx_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17h9cead61cac2e6e7bE
    local.get 2
    local.get 1
    i32.load offset=40
    call $_ZN13multiversx_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$6append17h955c365092c83809E
    local.get 1
    local.get 2
    call $_ZN172_$LT$multiversx_sc..types..managed..wrapped..egld_or_esdt_token_payment..EgldOrEsdtTokenPayment$LT$M$GT$$u20$as$u20$multiversx_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h8b34be2b23600cfeE
    local.get 1
    i32.load offset=44
    local.get 2
    call $_ZN19multiversx_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$multiversx_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17h71edc8eb35123a8fE
    local.get 1
    i32.load offset=48
    local.get 2
    call $_ZN149_$LT$multiversx_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$multiversx_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h245c9377a21f79d3E
    local.get 1
    i32.load8_u offset=61
    local.get 2
    call $_ZN96_$LT$typing_cars..RaceStatus$u20$as$u20$multiversx_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h90354b1731b3c9e4E
    local.get 1
    i32.load8_u offset=60
    local.get 2
    call $_ZN19multiversx_sc_codec14impl_for_types17impl_num_unsigned85_$LT$impl$u20$multiversx_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u8$GT$24dep_encode_or_handle_err17h949fd3b184c857caE
    local.get 1
    i32.load offset=52
    local.get 2
    call $_ZN19multiversx_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$multiversx_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17h71edc8eb35123a8fE
    local.get 1
    i64.load offset=24
    local.get 2
    call $_ZN19multiversx_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$multiversx_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17h9cead61cac2e6e7bE
    local.get 1
    i64.load offset=32
    local.get 2
    call $_ZN19multiversx_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$multiversx_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17h9cead61cac2e6e7bE
    local.get 1
    i32.load offset=56
    local.get 2
    call $_ZN149_$LT$multiversx_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$multiversx_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h4863fb647ecbc747E
    local.get 0
    local.get 2
    call $_ZN142_$LT$multiversx_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$multiversx_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17hbb85770ddb828d27E
  )
  (func $_ZN149_$LT$multiversx_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$multiversx_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h245c9377a21f79d3E (;89;) (type 2) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    call $_ZN13multiversx_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17hff0fec0eb99949baE
    local.get 1
    call $_ZN19multiversx_sc_codec14impl_for_types17impl_num_unsigned88_$LT$impl$u20$multiversx_sc_codec..single..nested_en..NestedEncode$u20$for$u20$usize$GT$24dep_encode_or_handle_err17h702795ee178c5305E
    local.get 2
    local.get 0
    call $mBufferGetLength
    i32.store offset=28
    local.get 2
    i32.const 0
    i32.store offset=24
    local.get 2
    local.get 0
    i32.store offset=20
    loop ;; label = @1
      local.get 2
      i32.const 8
      i32.add
      local.get 2
      i32.const 20
      i32.add
      call $_ZN155_$LT$multiversx_sc..types..managed..wrapped..managed_vec_iter_ref..ManagedVecRefIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h71bbdbc8696e935eE
      block ;; label = @2
        local.get 2
        i32.load offset=8
        br_if 0 (;@2;)
        local.get 2
        i32.const 32
        i32.add
        global.set $__stack_pointer
        return
      end
      local.get 1
      local.get 2
      i32.load offset=12
      call $_ZN13multiversx_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$6append17h955c365092c83809E
      br 0 (;@1;)
    end
  )
  (func $_ZN96_$LT$typing_cars..RaceStatus$u20$as$u20$multiversx_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h90354b1731b3c9e4E (;90;) (type 2) (param i32 i32)
    local.get 0
    i32.const 255
    i32.and
    i32.const 2
    i32.shl
    i32.const 132016
    i32.add
    i32.load
    i32.load8_u
    local.get 1
    call $_ZN19multiversx_sc_codec14impl_for_types17impl_num_unsigned85_$LT$impl$u20$multiversx_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u8$GT$24dep_encode_or_handle_err17h949fd3b184c857caE
  )
  (func $_ZN149_$LT$multiversx_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$multiversx_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h4863fb647ecbc747E (;91;) (type 2) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    call $_ZN13multiversx_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17h0258e0c9ed8d3485E
    local.get 1
    call $_ZN19multiversx_sc_codec14impl_for_types17impl_num_unsigned88_$LT$impl$u20$multiversx_sc_codec..single..nested_en..NestedEncode$u20$for$u20$usize$GT$24dep_encode_or_handle_err17h702795ee178c5305E
    local.get 2
    local.get 0
    call $mBufferGetLength
    i32.store offset=12
    local.get 2
    i32.const 0
    i32.store offset=8
    local.get 2
    local.get 0
    i32.store offset=4
    loop ;; label = @1
      local.get 2
      i32.const 16
      i32.add
      local.get 2
      i32.const 4
      i32.add
      call $_ZN155_$LT$multiversx_sc..types..managed..wrapped..managed_vec_iter_ref..ManagedVecRefIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h22b0e714a3067a71E
      block ;; label = @2
        local.get 2
        i32.load8_u offset=57
        i32.const 2
        i32.ne
        br_if 0 (;@2;)
        local.get 2
        i32.const 64
        i32.add
        global.set $__stack_pointer
        return
      end
      local.get 2
      i32.const 16
      i32.add
      local.get 1
      call $_ZN105_$LT$typing_cars..RaceResult$LT$M$GT$$u20$as$u20$multiversx_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h05b5365e0439dfddE
      br 0 (;@1;)
    end
  )
  (func $_ZN13multiversx_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17h657983a22719d8d9E (;92;) (type 2) (param i32 i32)
    (local i32 i64 i32 i32 i32 i32 i32 i32 i32 i64 i64 i32 i32 i32 i32 i64 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 112
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 12
    i32.add
    local.get 1
    call $_ZN139_$LT$multiversx_sc..storage..storage_get..StorageGetInput$LT$A$GT$$u20$as$u20$multiversx_sc_codec..single..top_de_input..TopDecodeInput$GT$18into_nested_buffer17h42ce8f6a8d15290eE
    local.get 2
    i32.const 12
    i32.add
    local.get 1
    call $_ZN19multiversx_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$multiversx_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u64$GT$24dep_decode_or_handle_err17he05ab0924a96bc06E
    local.set 3
    local.get 2
    i32.const 12
    i32.add
    local.get 1
    call $_ZN153_$LT$multiversx_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$M$GT$$u20$as$u20$multiversx_sc_codec..single..nested_de..NestedDecode$GT$24dep_decode_or_handle_err17he0d37ed741705bfaE
    local.set 4
    local.get 2
    i32.const 32
    i32.add
    local.get 2
    i32.const 12
    i32.add
    local.get 1
    call $_ZN172_$LT$multiversx_sc..types..managed..wrapped..egld_or_esdt_token_payment..EgldOrEsdtTokenPayment$LT$M$GT$$u20$as$u20$multiversx_sc_codec..single..nested_de..NestedDecode$GT$24dep_decode_or_handle_err17h29772266c51937d2E
    local.get 2
    i32.const 12
    i32.add
    local.get 1
    call $_ZN19multiversx_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$multiversx_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17hcfa382d0ab99f36cE
    local.set 5
    local.get 2
    i32.const 12
    i32.add
    local.get 1
    call $_ZN19multiversx_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$multiversx_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17hcfa382d0ab99f36cE
    local.set 6
    call $_ZN13multiversx_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h8f757bae7f22f155E
    local.set 7
    block ;; label = @1
      loop ;; label = @2
        local.get 6
        i32.eqz
        br_if 1 (;@1;)
        local.get 7
        local.get 2
        i32.const 12
        i32.add
        local.get 1
        call $_ZN153_$LT$multiversx_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$M$GT$$u20$as$u20$multiversx_sc_codec..single..nested_de..NestedDecode$GT$24dep_decode_or_handle_err17he0d37ed741705bfaE
        call $_ZN13multiversx_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hbdb52437f03ae2ceE
        local.get 6
        i32.const -1
        i32.add
        local.set 6
        br 0 (;@2;)
      end
    end
    block ;; label = @1
      block ;; label = @2
        local.get 2
        i32.const 12
        i32.add
        local.get 1
        call $_ZN19multiversx_sc_codec6single15nested_de_input17NestedDecodeInput9read_byte17h2817e5396ef42349E
        local.tee 8
        i32.const 255
        i32.and
        i32.const 4
        i32.ge_u
        br_if 0 (;@2;)
        local.get 2
        i32.const 12
        i32.add
        local.get 1
        call $_ZN19multiversx_sc_codec6single15nested_de_input17NestedDecodeInput9read_byte17h2817e5396ef42349E
        local.set 9
        local.get 2
        i32.const 12
        i32.add
        local.get 1
        call $_ZN19multiversx_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$multiversx_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17hcfa382d0ab99f36cE
        local.set 10
        local.get 2
        i32.const 12
        i32.add
        local.get 1
        call $_ZN19multiversx_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$multiversx_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u64$GT$24dep_decode_or_handle_err17he05ab0924a96bc06E
        local.set 11
        local.get 2
        i32.const 12
        i32.add
        local.get 1
        call $_ZN19multiversx_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$multiversx_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u64$GT$24dep_decode_or_handle_err17he05ab0924a96bc06E
        local.set 12
        local.get 2
        i32.const 12
        i32.add
        local.get 1
        call $_ZN19multiversx_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$multiversx_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17hcfa382d0ab99f36cE
        local.set 6
        call $_ZN13multiversx_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h8f757bae7f22f155E
        local.set 13
        block ;; label = @3
          loop ;; label = @4
            local.get 6
            i32.eqz
            br_if 1 (;@3;)
            local.get 2
            i32.const 12
            i32.add
            local.get 1
            call $_ZN153_$LT$multiversx_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$M$GT$$u20$as$u20$multiversx_sc_codec..single..nested_de..NestedDecode$GT$24dep_decode_or_handle_err17he0d37ed741705bfaE
            local.set 14
            local.get 2
            i32.const 12
            i32.add
            local.get 1
            call $_ZN19multiversx_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$multiversx_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17hcfa382d0ab99f36cE
            local.set 15
            local.get 2
            i32.const 12
            i32.add
            local.get 1
            call $_ZN19multiversx_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$multiversx_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17hcfa382d0ab99f36cE
            local.set 16
            local.get 2
            i32.const 12
            i32.add
            local.get 1
            call $_ZN19multiversx_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$multiversx_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u64$GT$24dep_decode_or_handle_err17he05ab0924a96bc06E
            local.set 17
            local.get 2
            i32.const 12
            i32.add
            local.get 1
            call $_ZN19multiversx_sc_codec6single15nested_de_input17NestedDecodeInput9read_byte17h2817e5396ef42349E
            local.set 18
            local.get 2
            i32.const 96
            i32.add
            local.get 2
            i32.const 12
            i32.add
            local.get 1
            call $_ZN172_$LT$multiversx_sc..types..managed..wrapped..egld_or_esdt_token_payment..EgldOrEsdtTokenPayment$LT$M$GT$$u20$as$u20$multiversx_sc_codec..single..nested_de..NestedDecode$GT$24dep_decode_or_handle_err17h29772266c51937d2E
            i32.const 0
            local.set 19
            block ;; label = @5
              block ;; label = @6
                block ;; label = @7
                  local.get 2
                  i32.const 12
                  i32.add
                  local.get 1
                  call $_ZN19multiversx_sc_codec6single15nested_de_input17NestedDecodeInput9read_byte17h2817e5396ef42349E
                  i32.const 255
                  i32.and
                  br_table 2 (;@5;) 1 (;@6;) 0 (;@7;)
                end
                local.get 1
                i32.const 131953
                i32.const 13
                call $_ZN147_$LT$multiversx_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$multiversx_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hbbb9de0124433bd9E
                unreachable
              end
              i32.const 1
              local.set 19
            end
            local.get 2
            i32.const 12
            i32.add
            local.get 1
            call $_ZN13multiversx_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h90ea01c3a6d22faeE
            local.set 20
            local.get 2
            i32.const 48
            i32.add
            i32.const 8
            i32.add
            local.get 2
            i32.const 96
            i32.add
            i32.const 8
            i32.add
            i64.load
            i64.store
            local.get 2
            local.get 2
            i64.load offset=96
            i64.store offset=48
            local.get 2
            local.get 19
            i32.store8 offset=89
            local.get 2
            local.get 18
            i32.store8 offset=88
            local.get 2
            local.get 20
            i32.store offset=84
            local.get 2
            local.get 16
            i32.store offset=80
            local.get 2
            local.get 15
            i32.store offset=76
            local.get 2
            local.get 14
            i32.store offset=72
            local.get 2
            local.get 17
            i64.store offset=64
            local.get 13
            local.get 2
            i32.const 48
            i32.add
            call $_ZN13multiversx_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h8234366487601bc3E
            local.get 6
            i32.const -1
            i32.add
            local.set 6
            br 0 (;@4;)
          end
        end
        local.get 2
        i32.const 96
        i32.add
        i32.const 8
        i32.add
        local.tee 6
        local.get 2
        i32.const 32
        i32.add
        i32.const 8
        i32.add
        i64.load
        i64.store
        local.get 2
        local.get 2
        i64.load offset=32
        i64.store offset=96
        local.get 2
        i32.load offset=16
        local.get 2
        i32.load offset=12
        i32.ne
        br_if 1 (;@1;)
        local.get 2
        i32.const 48
        i32.add
        i32.const 8
        i32.add
        local.get 6
        i64.load
        i64.store
        local.get 2
        local.get 2
        i64.load offset=96
        i64.store offset=48
        block ;; label = @3
          local.get 2
          i32.load8_u offset=28
          i32.eqz
          br_if 0 (;@3;)
          i32.const 0
          i32.const 0
          i32.store offset=142052
          i32.const 0
          i32.const 0
          i32.store8 offset=142056
        end
        local.get 0
        local.get 2
        i64.load offset=48
        i64.store
        local.get 0
        local.get 8
        i32.store8 offset=61
        local.get 0
        local.get 9
        i32.store8 offset=60
        local.get 0
        local.get 13
        i32.store offset=56
        local.get 0
        local.get 10
        i32.store offset=52
        local.get 0
        local.get 7
        i32.store offset=48
        local.get 0
        local.get 5
        i32.store offset=44
        local.get 0
        local.get 4
        i32.store offset=40
        local.get 0
        local.get 12
        i64.store offset=32
        local.get 0
        local.get 11
        i64.store offset=24
        local.get 0
        local.get 3
        i64.store offset=16
        local.get 0
        i32.const 8
        i32.add
        local.get 2
        i32.const 48
        i32.add
        i32.const 8
        i32.add
        i64.load
        i64.store
        local.get 2
        i32.const 112
        i32.add
        global.set $__stack_pointer
        return
      end
      local.get 1
      i32.const 131953
      i32.const 13
      call $_ZN147_$LT$multiversx_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$multiversx_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hbbb9de0124433bd9E
      unreachable
    end
    local.get 1
    i32.const 131072
    i32.const 14
    call $_ZN147_$LT$multiversx_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$multiversx_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hbbb9de0124433bd9E
    unreachable
  )
  (func $_ZN19multiversx_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$multiversx_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u64$GT$24dep_decode_or_handle_err17he05ab0924a96bc06E (;93;) (type 16) (param i32 i32) (result i64)
    (local i32 i64)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i64.const 0
    i64.store offset=8
    local.get 0
    local.get 2
    i32.const 8
    i32.add
    i32.const 8
    local.get 1
    call $_ZN198_$LT$multiversx_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$multiversx_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17h4030ba6feb6f67e9E
    local.get 2
    i64.load offset=8
    local.set 3
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 3
    i64.const 56
    i64.shl
    local.get 3
    i64.const 65280
    i64.and
    i64.const 40
    i64.shl
    i64.or
    local.get 3
    i64.const 16711680
    i64.and
    i64.const 24
    i64.shl
    local.get 3
    i64.const 4278190080
    i64.and
    i64.const 8
    i64.shl
    i64.or
    i64.or
    local.get 3
    i64.const 8
    i64.shr_u
    i64.const 4278190080
    i64.and
    local.get 3
    i64.const 24
    i64.shr_u
    i64.const 16711680
    i64.and
    i64.or
    local.get 3
    i64.const 40
    i64.shr_u
    i64.const 65280
    i64.and
    local.get 3
    i64.const 56
    i64.shr_u
    i64.or
    i64.or
    i64.or
  )
  (func $_ZN153_$LT$multiversx_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$M$GT$$u20$as$u20$multiversx_sc_codec..single..nested_de..NestedDecode$GT$24dep_decode_or_handle_err17he0d37ed741705bfaE (;94;) (type 4) (param i32 i32) (result i32)
    local.get 0
    i32.const 32
    local.get 1
    call $_ZN13multiversx_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$27read_managed_buffer_of_size17h120783a88efbae92E
  )
  (func $_ZN172_$LT$multiversx_sc..types..managed..wrapped..egld_or_esdt_token_payment..EgldOrEsdtTokenPayment$LT$M$GT$$u20$as$u20$multiversx_sc_codec..single..nested_de..NestedDecode$GT$24dep_decode_or_handle_err17h29772266c51937d2E (;95;) (type 1) (param i32 i32 i32)
    (local i32 i32 i64)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    block ;; label = @1
      local.get 1
      local.get 2
      call $_ZN13multiversx_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h90ea01c3a6d22faeE
      local.tee 4
      call $mBufferGetLength
      i32.const 4
      i32.ne
      br_if 0 (;@1;)
      local.get 3
      i32.const 0
      i32.store offset=12
      local.get 4
      i32.const 0
      local.get 3
      i32.const 12
      i32.add
      i32.const 4
      call $_ZN26multiversx_sc_wasm_adapter3api13managed_types23managed_buffer_api_node161_$LT$impl$u20$multiversx_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$multiversx_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$13mb_load_slice17h62ff902eca3c7ecdE
      drop
      local.get 3
      i32.load offset=12
      i32.const 1145849669
      i32.ne
      br_if 0 (;@1;)
      call $_ZN13multiversx_sc5types7managed7wrapped29egld_or_esdt_token_identifier34EgldOrEsdtTokenIdentifier$LT$M$GT$4egld17he6c08c5f9bbe4a09E
      local.set 4
    end
    local.get 1
    local.get 2
    call $_ZN19multiversx_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$multiversx_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u64$GT$24dep_decode_or_handle_err17he05ab0924a96bc06E
    local.set 5
    local.get 1
    local.get 2
    call $_ZN13multiversx_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h90ea01c3a6d22faeE
    call $_ZN26multiversx_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17he46a460b0edfb039E
    local.tee 2
    call $mBufferToBigIntUnsigned
    drop
    local.get 0
    local.get 2
    i32.store offset=12
    local.get 0
    local.get 4
    i32.store offset=8
    local.get 0
    local.get 5
    i64.store
    local.get 3
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN19multiversx_sc_codec6single15nested_de_input17NestedDecodeInput9read_byte17h2817e5396ef42349E (;96;) (type 4) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 0
    i32.store8 offset=15
    local.get 0
    local.get 2
    i32.const 15
    i32.add
    i32.const 1
    local.get 1
    call $_ZN198_$LT$multiversx_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$multiversx_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17h4030ba6feb6f67e9E
    local.get 2
    i32.load8_u offset=15
    local.set 1
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 1
  )
  (func $_ZN13multiversx_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17hb54aa29cd66df8acE (;97;) (type 8) (param i32) (result i64)
    local.get 0
    local.get 0
    call $_ZN19multiversx_sc_codec6single12top_de_input14TopDecodeInput8into_u6417hd7cba9b8b30a3257E
  )
  (func $_ZN19multiversx_sc_codec6single12top_de_input14TopDecodeInput8into_u6417hd7cba9b8b30a3257E (;98;) (type 16) (param i32 i32) (result i64)
    (local i32 i32 i64)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i64.const 0
    i64.store offset=8
    block ;; label = @1
      local.get 0
      call $_ZN13multiversx_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17h5dd5e51648db1d97E
      local.tee 3
      call $mBufferGetLength
      local.tee 0
      i32.const 9
      i32.lt_u
      br_if 0 (;@1;)
      local.get 1
      i32.const 131072
      i32.const 14
      call $_ZN147_$LT$multiversx_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$multiversx_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hbbb9de0124433bd9E
      unreachable
    end
    local.get 3
    i32.const 0
    local.get 2
    i32.const 8
    i32.add
    local.get 0
    i32.sub
    i32.const 8
    i32.add
    local.get 0
    call $_ZN26multiversx_sc_wasm_adapter3api13managed_types23managed_buffer_api_node161_$LT$impl$u20$multiversx_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$multiversx_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$13mb_load_slice17h62ff902eca3c7ecdE
    drop
    local.get 2
    i64.load offset=8
    local.set 4
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 4
    i64.const 56
    i64.shl
    local.get 4
    i64.const 65280
    i64.and
    i64.const 40
    i64.shl
    i64.or
    local.get 4
    i64.const 16711680
    i64.and
    i64.const 24
    i64.shl
    local.get 4
    i64.const 4278190080
    i64.and
    i64.const 8
    i64.shl
    i64.or
    i64.or
    local.get 4
    i64.const 8
    i64.shr_u
    i64.const 4278190080
    i64.and
    local.get 4
    i64.const 24
    i64.shr_u
    i64.const 16711680
    i64.and
    i64.or
    local.get 4
    i64.const 40
    i64.shr_u
    i64.const 65280
    i64.and
    local.get 4
    i64.const 56
    i64.shr_u
    i64.or
    i64.or
    i64.or
  )
  (func $_ZN13multiversx_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17hd55696634edcc836E (;99;) (type 2) (param i32 i32)
    (local i32 i32 i32 i32 i32 i64 i64 i32 i32 i64 i64)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 12
    i32.add
    local.get 1
    call $_ZN139_$LT$multiversx_sc..storage..storage_get..StorageGetInput$LT$A$GT$$u20$as$u20$multiversx_sc_codec..single..top_de_input..TopDecodeInput$GT$18into_nested_buffer17h42ce8f6a8d15290eE
    local.get 2
    i32.const 12
    i32.add
    local.get 1
    call $_ZN153_$LT$multiversx_sc..types..managed..wrapped..managed_address..ManagedAddress$LT$M$GT$$u20$as$u20$multiversx_sc_codec..single..nested_de..NestedDecode$GT$24dep_decode_or_handle_err17he0d37ed741705bfaE
    local.set 3
    local.get 2
    i32.const 12
    i32.add
    local.get 1
    call $_ZN13multiversx_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h90ea01c3a6d22faeE
    local.set 4
    local.get 2
    i32.const 12
    i32.add
    local.get 1
    call $_ZN19multiversx_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$multiversx_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17hcfa382d0ab99f36cE
    local.set 5
    local.get 2
    i32.const 12
    i32.add
    local.get 1
    call $_ZN19multiversx_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$multiversx_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17hcfa382d0ab99f36cE
    local.set 6
    local.get 2
    i32.const 12
    i32.add
    local.get 1
    call $_ZN19multiversx_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$multiversx_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u64$GT$24dep_decode_or_handle_err17he05ab0924a96bc06E
    local.set 7
    local.get 2
    i32.const 12
    i32.add
    local.get 1
    call $_ZN19multiversx_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$multiversx_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u64$GT$24dep_decode_or_handle_err17he05ab0924a96bc06E
    local.set 8
    local.get 2
    i32.const 12
    i32.add
    local.get 1
    call $_ZN19multiversx_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$multiversx_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17hcfa382d0ab99f36cE
    local.set 9
    local.get 2
    i32.const 12
    i32.add
    local.get 1
    call $_ZN19multiversx_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$multiversx_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u32$GT$24dep_decode_or_handle_err17hcfa382d0ab99f36cE
    local.set 10
    local.get 2
    i32.const 12
    i32.add
    local.get 1
    call $_ZN19multiversx_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$multiversx_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u64$GT$24dep_decode_or_handle_err17he05ab0924a96bc06E
    local.set 11
    local.get 2
    i32.const 12
    i32.add
    local.get 1
    call $_ZN19multiversx_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$multiversx_sc_codec..single..nested_de..NestedDecode$u20$for$u20$u64$GT$24dep_decode_or_handle_err17he05ab0924a96bc06E
    local.set 12
    block ;; label = @1
      local.get 2
      i32.load offset=16
      local.get 2
      i32.load offset=12
      i32.ne
      br_if 0 (;@1;)
      block ;; label = @2
        local.get 2
        i32.load8_u offset=28
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        i32.const 0
        i32.store offset=142052
        i32.const 0
        i32.const 0
        i32.store8 offset=142056
      end
      local.get 0
      local.get 10
      i32.store offset=52
      local.get 0
      local.get 9
      i32.store offset=48
      local.get 0
      local.get 6
      i32.store offset=44
      local.get 0
      local.get 5
      i32.store offset=40
      local.get 0
      local.get 4
      i32.store offset=36
      local.get 0
      local.get 3
      i32.store offset=32
      local.get 0
      local.get 12
      i64.store offset=24
      local.get 0
      local.get 11
      i64.store offset=16
      local.get 0
      local.get 8
      i64.store offset=8
      local.get 0
      local.get 7
      i64.store
      local.get 2
      i32.const 32
      i32.add
      global.set $__stack_pointer
      return
    end
    local.get 1
    i32.const 131072
    i32.const 14
    call $_ZN147_$LT$multiversx_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$multiversx_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hbbb9de0124433bd9E
    unreachable
  )
  (func $_ZN13multiversx_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$8is_empty17h2df5307e5fdd7358E (;100;) (type 5) (param i32) (result i32)
    local.get 0
    call $_ZN149_$LT$multiversx_sc..storage..mappers..set_mapper..CurrentStorage$u20$as$u20$multiversx_sc..storage..mappers..set_mapper..StorageAddress$LT$SA$GT$$GT$23address_storage_get_len17h23bc4c87b229e114E
    i32.eqz
  )
  (func $_ZN195_$LT$multiversx_sc..types..managed..wrapped..builder..managed_buffer_builder..ManagedBufferBuilder$LT$M$C$Impl$GT$$u20$as$u20$multiversx_sc_codec..single..nested_en_output..NestedEncodeOutput$GT$5write17hca908dc2e835fec4E (;101;) (type 1) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $mBufferAppendBytes
    drop
  )
  (func $_ZN19multiversx_sc_codec14impl_for_types17impl_num_unsigned88_$LT$impl$u20$multiversx_sc_codec..single..nested_en..NestedEncode$u20$for$u20$usize$GT$24dep_encode_or_handle_err17h702795ee178c5305E (;102;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN19multiversx_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$multiversx_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17h71edc8eb35123a8fE
  )
  (func $_ZN155_$LT$multiversx_sc..types..managed..wrapped..managed_vec_iter_ref..ManagedVecRefIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h71bbdbc8696e935eE (;103;) (type 2) (param i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block ;; label = @1
      block ;; label = @2
        local.get 1
        i32.load offset=4
        local.tee 3
        local.get 1
        i32.load offset=8
        i32.lt_u
        br_if 0 (;@2;)
        i32.const 0
        local.set 1
        br 1 (;@1;)
      end
      local.get 2
      i32.const 0
      i32.store offset=12
      local.get 1
      i32.load
      local.get 3
      local.get 2
      i32.const 12
      i32.add
      i32.const 4
      call $_ZN26multiversx_sc_wasm_adapter3api13managed_types23managed_buffer_api_node161_$LT$impl$u20$multiversx_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$multiversx_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$13mb_load_slice17h62ff902eca3c7ecdE
      drop
      local.get 1
      local.get 3
      i32.const 4
      i32.add
      i32.store offset=4
      local.get 2
      i32.load offset=12
      local.tee 1
      i32.const 24
      i32.shl
      local.get 1
      i32.const 65280
      i32.and
      i32.const 8
      i32.shl
      i32.or
      local.get 1
      i32.const 8
      i32.shr_u
      i32.const 65280
      i32.and
      local.get 1
      i32.const 24
      i32.shr_u
      i32.or
      i32.or
      local.set 3
      i32.const 1
      local.set 1
    end
    local.get 0
    local.get 3
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN155_$LT$multiversx_sc..types..managed..wrapped..managed_vec_iter_ref..ManagedVecRefIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h22b0e714a3067a71E (;104;) (type 2) (param i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 96
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block ;; label = @1
      block ;; label = @2
        local.get 1
        i32.load offset=4
        local.tee 3
        local.get 1
        i32.load offset=8
        i32.ge_u
        br_if 0 (;@2;)
        local.get 2
        i32.const 54
        i32.add
        i32.const 0
        i32.const 42
        call $memset
        drop
        local.get 1
        i32.load
        local.get 3
        local.get 2
        i32.const 54
        i32.add
        i32.const 42
        call $_ZN26multiversx_sc_wasm_adapter3api13managed_types23managed_buffer_api_node161_$LT$impl$u20$multiversx_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$multiversx_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$13mb_load_slice17h62ff902eca3c7ecdE
        drop
        local.get 1
        local.get 3
        i32.const 42
        i32.add
        i32.store offset=4
        local.get 2
        i32.const 12
        i32.add
        local.get 2
        i32.const 54
        i32.add
        i32.const 42
        call $memcpy
        drop
        local.get 0
        local.get 2
        i32.const 12
        i32.add
        call $_ZN125_$LT$typing_cars..RaceResult$LT$M$GT$$u20$as$u20$multiversx_sc..types..managed..wrapped..managed_vec_item..ManagedVecItem$GT$19borrow_from_payload17h3da2d0e82cf2f619E
        br 1 (;@1;)
      end
      local.get 0
      i32.const 2
      i32.store8 offset=41
    end
    local.get 2
    i32.const 96
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN198_$LT$multiversx_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$multiversx_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17h49ee2c1de0a3aa5fE (;105;) (type 6) (param i32)
    local.get 0
    i32.const 131817
    i32.const 15
    call $_ZN147_$LT$multiversx_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$multiversx_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17hbbb9de0124433bd9E
    unreachable
  )
  (func $_ZN198_$LT$multiversx_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$multiversx_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17h4030ba6feb6f67e9E (;106;) (type 15) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32)
    local.get 0
    i32.load
    local.set 4
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          block ;; label = @4
            block ;; label = @5
              local.get 0
              i32.load8_u offset=16
              local.tee 5
              br_if 0 (;@5;)
              block ;; label = @6
                local.get 0
                i32.load offset=8
                local.tee 6
                call $_ZN13multiversx_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h842230fed847566cE
                local.tee 7
                i32.const 10000
                i32.gt_u
                i32.const 0
                i32.load8_u offset=142056
                i32.or
                local.tee 8
                i32.const 1
                i32.and
                br_if 0 (;@6;)
                i32.const 0
                local.get 7
                i32.store offset=142052
                i32.const 0
                i32.const 1
                i32.store8 offset=142056
                local.get 6
                i32.const 0
                i32.const 132052
                local.get 7
                call $_ZN13multiversx_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17hc5056a26e2131429E
                drop
              end
              local.get 8
              i32.const 1
              i32.xor
              local.set 7
              block ;; label = @6
                local.get 5
                i32.eqz
                br_if 0 (;@6;)
                i32.const 0
                i32.const 0
                i32.store offset=142052
                i32.const 0
                i32.const 0
                i32.store8 offset=142056
              end
              local.get 0
              local.get 7
              i32.const 1
              i32.and
              i32.store8 offset=16
              local.get 8
              i32.const 1
              i32.and
              i32.eqz
              br_if 0 (;@5;)
              local.get 6
              local.get 4
              local.get 1
              local.get 2
              call $_ZN13multiversx_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17hc5056a26e2131429E
              br_if 4 (;@1;)
              local.get 4
              local.get 2
              i32.add
              local.set 5
              br 1 (;@4;)
            end
            local.get 4
            local.get 2
            i32.add
            local.tee 5
            i32.const 0
            i32.load offset=142052
            i32.gt_u
            br_if 3 (;@1;)
            local.get 5
            local.get 4
            i32.lt_u
            br_if 1 (;@3;)
            local.get 5
            i32.const 10000
            i32.gt_u
            br_if 2 (;@2;)
            local.get 1
            local.get 4
            i32.const 132052
            i32.add
            local.get 2
            call $memcpy
            drop
          end
          local.get 0
          local.get 5
          i32.store
          return
        end
        local.get 4
        local.get 5
        call $_ZN4core5slice5index22slice_index_order_fail17h45c0711bdbeba6b0E
        unreachable
      end
      local.get 5
      call $_ZN4core5slice5index24slice_end_index_len_fail17hddeff0f8fd5a93e3E
      unreachable
    end
    local.get 3
    call $_ZN198_$LT$multiversx_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$multiversx_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17h49ee2c1de0a3aa5fE
    unreachable
  )
  (func $_ZN4core5slice5index22slice_index_order_fail17h45c0711bdbeba6b0E (;107;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN4core5slice5index22slice_index_order_fail8do_panic7runtime17h88e230a95f697701E
    unreachable
  )
  (func $_ZN4core5slice5index24slice_end_index_len_fail17hddeff0f8fd5a93e3E (;108;) (type 6) (param i32)
    local.get 0
    call $_ZN4core5slice5index24slice_end_index_len_fail8do_panic7runtime17h7780901f520234faE
    unreachable
  )
  (func $_ZN19multiversx_sc_codec6single13top_en_output15TopEncodeOutput7set_u6417h4b10c9bce818eea6E (;109;) (type 0) (param i32 i64)
    (local i32 i64 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 1
    i64.const 56
    i64.shl
    local.get 1
    i64.const 65280
    i64.and
    i64.const 40
    i64.shl
    i64.or
    local.get 1
    i64.const 16711680
    i64.and
    i64.const 24
    i64.shl
    local.get 1
    i64.const 4278190080
    i64.and
    i64.const 8
    i64.shl
    i64.or
    i64.or
    local.get 1
    i64.const 8
    i64.shr_u
    i64.const 4278190080
    i64.and
    local.get 1
    i64.const 24
    i64.shr_u
    i64.const 16711680
    i64.and
    i64.or
    local.get 1
    i64.const 40
    i64.shr_u
    local.tee 3
    i64.const 65280
    i64.and
    local.get 1
    i64.const 56
    i64.shr_u
    i64.or
    i64.or
    i64.or
    i64.store offset=8
    local.get 0
    local.get 2
    i32.const 8
    i32.add
    i32.const 0
    local.get 1
    i64.const 72057594037927936
    i64.lt_u
    local.tee 4
    local.get 1
    i64.const 48
    i64.shr_u
    i32.wrap_i64
    i32.const 255
    i32.and
    select
    local.tee 5
    local.get 4
    i32.add
    i32.const 0
    local.get 5
    local.get 3
    i32.wrap_i64
    i32.const 255
    i32.and
    select
    local.tee 4
    i32.add
    i32.const 0
    local.get 4
    local.get 1
    i64.const 32
    i64.shr_u
    i32.wrap_i64
    i32.const 255
    i32.and
    select
    local.tee 5
    i32.add
    i32.const 0
    local.get 5
    local.get 1
    i32.wrap_i64
    local.tee 4
    i32.const 24
    i32.shr_u
    select
    local.tee 5
    i32.add
    i32.const 0
    local.get 5
    local.get 4
    i32.const 16
    i32.shr_u
    i32.const 255
    i32.and
    select
    local.tee 5
    i32.add
    i32.const 0
    local.get 5
    local.get 4
    i32.const 8
    i32.shr_u
    i32.const 255
    i32.and
    select
    local.tee 4
    i32.add
    local.get 4
    i32.const 0
    local.get 1
    i64.eqz
    select
    i32.add
    local.tee 4
    i32.add
    i32.const 8
    local.get 4
    i32.sub
    call $_ZN13multiversx_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h72d48f1a03dc0236E
    call $mBufferStorageStore
    drop
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN45_$LT$C$u20$as$u20$typing_cars..TypingCars$GT$11total_races17h69e2874c16871ff9E (;110;) (type 3) (result i32)
    i32.const 131966
    i32.const 10
    call $_ZN13multiversx_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h72d48f1a03dc0236E
  )
  (func $_ZN45_$LT$C$u20$as$u20$typing_cars..TypingCars$GT$11user_mapper17h893f70bff3c4c65bE (;111;) (type 3) (result i32)
    i32.const 131976
    i32.const 4
    call $_ZN13multiversx_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h72d48f1a03dc0236E
  )
  (func $_ZN45_$LT$C$u20$as$u20$typing_cars..TypingCars$GT$13total_players17h87f8fa9fc5af0eb9E (;112;) (type 3) (result i32)
    i32.const 131980
    i32.const 12
    call $_ZN13multiversx_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h72d48f1a03dc0236E
  )
  (func $_ZN45_$LT$C$u20$as$u20$typing_cars..TypingCars$GT$5races17h1629ffd2be11bb00E (;113;) (type 17) (param i64) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    i32.const 132006
    i32.const 5
    call $_ZN13multiversx_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h72d48f1a03dc0236E
    local.set 2
    local.get 1
    local.get 0
    i64.const 56
    i64.shl
    local.get 0
    i64.const 65280
    i64.and
    i64.const 40
    i64.shl
    i64.or
    local.get 0
    i64.const 16711680
    i64.and
    i64.const 24
    i64.shl
    local.get 0
    i64.const 4278190080
    i64.and
    i64.const 8
    i64.shl
    i64.or
    i64.or
    local.get 0
    i64.const 8
    i64.shr_u
    i64.const 4278190080
    i64.and
    local.get 0
    i64.const 24
    i64.shr_u
    i64.const 16711680
    i64.and
    i64.or
    local.get 0
    i64.const 40
    i64.shr_u
    i64.const 65280
    i64.and
    local.get 0
    i64.const 56
    i64.shr_u
    i64.or
    i64.or
    i64.or
    i64.store offset=8
    local.get 2
    local.get 1
    i32.const 8
    i32.add
    i32.const 8
    call $mBufferAppendBytes
    drop
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 2
  )
  (func $rust_begin_unwind (;114;) (type 10)
    call $_ZN26multiversx_sc_wasm_adapter5panic9panic_fmt17hcebb80d3f085ca33E
    unreachable
  )
  (func $_ZN26multiversx_sc_wasm_adapter5panic9panic_fmt17hcebb80d3f085ca33E (;115;) (type 10)
    i32.const 132032
    i32.const 14
    call $signalError
    unreachable
  )
  (func $init (;116;) (type 10)
    call $checkNoPayment
    i32.const 0
    call $_ZN13multiversx_sc2io16arg_nested_tuple22check_num_arguments_eq17hd03d4298f6221c0cE
    call $_ZN45_$LT$C$u20$as$u20$typing_cars..TypingCars$GT$13total_players17h87f8fa9fc5af0eb9E
    i64.const 0
    call $_ZN19multiversx_sc_codec6single13top_en_output15TopEncodeOutput7set_u6417h4b10c9bce818eea6E
    call $_ZN45_$LT$C$u20$as$u20$typing_cars..TypingCars$GT$11total_races17h69e2874c16871ff9E
    i64.const 0
    call $_ZN19multiversx_sc_codec6single13top_en_output15TopEncodeOutput7set_u6417h4b10c9bce818eea6E
  )
  (func $upgrade (;117;) (type 10)
    call $checkNoPayment
    i32.const 0
    call $_ZN13multiversx_sc2io16arg_nested_tuple22check_num_arguments_eq17hd03d4298f6221c0cE
  )
  (func $register_player (;118;) (type 10)
    (local i32 i32 i32 i32 i64 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $_ZN13multiversx_sc2io15call_value_init12payable_egld17h340f38ad953e5dd2E
    i32.const 2
    call $_ZN13multiversx_sc2io16arg_nested_tuple22check_num_arguments_eq17hd03d4298f6221c0cE
    i32.const 0
    call $_ZN13multiversx_sc2io16arg_nested_tuple15load_single_arg17hb50240af2d4b98acE
    local.set 1
    i32.const 1
    i32.const 131650
    i32.const 9
    call $_ZN13multiversx_sc2io16arg_nested_tuple15load_single_arg17hbc060316fd0dfe37E
    local.set 2
    call $_ZN13multiversx_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$10get_caller17hde93a62dc2f179ffE
    local.set 3
    block ;; label = @1
      block ;; label = @2
        call $_ZN45_$LT$C$u20$as$u20$typing_cars..TypingCars$GT$11user_mapper17h893f70bff3c4c65bE
        local.get 3
        call $_ZN13multiversx_sc7storage7mappers11user_mapper24UserMapper$LT$SA$C$A$GT$11get_user_id17hc8c3a337dc6b8722E
        br_if 0 (;@2;)
        local.get 1
        call $mBufferGetLength
        i32.eqz
        br_if 1 (;@1;)
        call $getBlockTimestamp
        local.set 4
        local.get 3
        call $_ZN115_$LT$multiversx_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h683cf62a8dea998cE
        local.set 5
        local.get 0
        i32.const 8
        i32.add
        i64.const 0
        i64.store
        local.get 0
        i32.const 0
        i32.store offset=52
        local.get 0
        i64.const 1000
        i64.store offset=44 align=4
        local.get 0
        local.get 2
        i32.store offset=40
        local.get 0
        local.get 1
        i32.store offset=36
        local.get 0
        local.get 5
        i32.store offset=32
        local.get 0
        i64.const 0
        i64.store
        local.get 0
        local.get 4
        i64.store offset=24
        local.get 0
        local.get 4
        i64.store offset=16
        block ;; label = @3
          call $_ZN45_$LT$C$u20$as$u20$typing_cars..TypingCars$GT$11user_mapper17h893f70bff3c4c65bE
          local.tee 1
          local.get 3
          call $_ZN13multiversx_sc7storage7mappers11user_mapper24UserMapper$LT$SA$C$A$GT$11get_user_id17hc8c3a337dc6b8722E
          br_if 0 (;@3;)
          local.get 1
          call $_ZN13multiversx_sc7storage7mappers11user_mapper24UserMapper$LT$SA$C$A$GT$18get_user_count_key17h5e3b9573e513f023E
          call $_ZN149_$LT$multiversx_sc..storage..mappers..set_mapper..CurrentStorage$u20$as$u20$multiversx_sc..storage..mappers..set_mapper..StorageAddress$LT$SA$GT$$GT$19address_storage_get17h81a41adf28208436E
          local.set 2
          local.get 1
          call $_ZN13multiversx_sc7storage7mappers11user_mapper24UserMapper$LT$SA$C$A$GT$18get_user_count_key17h5e3b9573e513f023E
          local.get 2
          i32.const 1
          i32.add
          local.tee 2
          i64.extend_i32_u
          local.tee 4
          call $_ZN19multiversx_sc_codec6single13top_en_output15TopEncodeOutput7set_u6417h4b10c9bce818eea6E
          local.get 1
          local.get 3
          call $_ZN13multiversx_sc7storage7mappers11user_mapper24UserMapper$LT$SA$C$A$GT$15get_user_id_key17h2890726ff6afa886E
          local.get 4
          call $_ZN19multiversx_sc_codec6single13top_en_output15TopEncodeOutput7set_u6417h4b10c9bce818eea6E
          local.get 1
          call $_ZN115_$LT$multiversx_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h683cf62a8dea998cE
          local.tee 1
          i32.const 131896
          i32.const 14
          call $mBufferAppendBytes
          drop
          local.get 0
          local.get 2
          i32.const 24
          i32.shl
          local.get 2
          i32.const 65280
          i32.and
          i32.const 8
          i32.shl
          i32.or
          local.get 2
          i32.const 8
          i32.shr_u
          i32.const 65280
          i32.and
          local.get 2
          i32.const 24
          i32.shr_u
          i32.or
          i32.or
          i32.store offset=60
          local.get 1
          local.get 0
          i32.const 60
          i32.add
          i32.const 4
          call $mBufferAppendBytes
          drop
          local.get 1
          local.get 3
          call $mBufferStorageStore
          drop
        end
        local.get 3
        call $_ZN45_$LT$C$u20$as$u20$typing_cars..TypingCars$GT$15player_profiles17h77c44b20bf2ad87cE
        local.get 0
        call $_ZN13multiversx_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17h158a5cf3ad2637deE
        call $_ZN45_$LT$C$u20$as$u20$typing_cars..TypingCars$GT$13total_players17h87f8fa9fc5af0eb9E
        call $_ZN13multiversx_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17hb54aa29cd66df8acE
        local.set 4
        call $_ZN45_$LT$C$u20$as$u20$typing_cars..TypingCars$GT$13total_players17h87f8fa9fc5af0eb9E
        local.get 4
        i64.const 1
        i64.add
        call $_ZN19multiversx_sc_codec6single13top_en_output15TopEncodeOutput7set_u6417h4b10c9bce818eea6E
        local.get 0
        i32.const 64
        i32.add
        global.set $__stack_pointer
        return
      end
      i32.const 131478
      i32.const 25
      call $_ZN13multiversx_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17h5177c34d2bd01882E
      unreachable
    end
    i32.const 131454
    i32.const 24
    call $_ZN13multiversx_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17h5177c34d2bd01882E
    unreachable
  )
  (func $update_profile (;119;) (type 10)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 2
    call $_ZN13multiversx_sc2io16arg_nested_tuple22check_num_arguments_eq17hd03d4298f6221c0cE
    i32.const 0
    call $_ZN13multiversx_sc2io16arg_nested_tuple15load_single_arg17hb50240af2d4b98acE
    local.set 1
    i32.const 1
    i32.const 131650
    i32.const 9
    call $_ZN13multiversx_sc2io16arg_nested_tuple15load_single_arg17hbc060316fd0dfe37E
    local.set 2
    block ;; label = @1
      block ;; label = @2
        call $_ZN13multiversx_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$10get_caller17hde93a62dc2f179ffE
        local.tee 3
        call $_ZN11typing_cars10TypingCars13player_exists17hfe302ea246296ddaE
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        call $mBufferGetLength
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.const 8
        i32.add
        local.get 3
        call $_ZN45_$LT$C$u20$as$u20$typing_cars..TypingCars$GT$15player_profiles17h77c44b20bf2ad87cE
        call $_ZN13multiversx_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17hd55696634edcc836E
        local.get 0
        local.get 2
        i32.store offset=48
        local.get 0
        local.get 1
        i32.store offset=44
        local.get 0
        call $getBlockTimestamp
        i64.store offset=32
        local.get 3
        call $_ZN45_$LT$C$u20$as$u20$typing_cars..TypingCars$GT$15player_profiles17h77c44b20bf2ad87cE
        local.get 0
        i32.const 8
        i32.add
        call $_ZN13multiversx_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17h158a5cf3ad2637deE
        local.get 0
        i32.const 64
        i32.add
        global.set $__stack_pointer
        return
      end
      i32.const 131180
      i32.const 21
      call $_ZN13multiversx_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17h5177c34d2bd01882E
      unreachable
    end
    i32.const 131454
    i32.const 24
    call $_ZN13multiversx_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17h5177c34d2bd01882E
    unreachable
  )
  (func $getPlayerProfile (;120;) (type 10)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 1
    call $_ZN13multiversx_sc2io16arg_nested_tuple22check_num_arguments_eq17hd03d4298f6221c0cE
    block ;; label = @1
      call $_ZN13multiversx_sc2io16arg_nested_tuple15load_single_arg17hb4b43271d8440a2fE
      local.tee 1
      call $_ZN11typing_cars10TypingCars13player_exists17hfe302ea246296ddaE
      br_if 0 (;@1;)
      i32.const 131180
      i32.const 21
      call $_ZN13multiversx_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17h5177c34d2bd01882E
      unreachable
    end
    local.get 0
    i32.const 8
    i32.add
    local.get 1
    call $_ZN45_$LT$C$u20$as$u20$typing_cars..TypingCars$GT$15player_profiles17h77c44b20bf2ad87cE
    call $_ZN13multiversx_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17hd55696634edcc836E
    call $_ZN133_$LT$multiversx_sc..io..finish..ApiOutputAdapter$LT$FA$GT$$u20$as$u20$multiversx_sc_codec..single..top_en_output..TopEncodeOutput$GT$19start_nested_encode17h15af45a888afc9cfE
    local.tee 1
    local.get 0
    i32.load offset=40
    call $mBufferAppend
    drop
    local.get 0
    i32.load offset=44
    local.get 1
    call $_ZN149_$LT$multiversx_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$multiversx_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h6dda945307fb8083E
    local.get 0
    i32.load offset=48
    local.get 1
    call $_ZN19multiversx_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$multiversx_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17h71edc8eb35123a8fE
    local.get 0
    i32.load offset=52
    local.get 1
    call $_ZN19multiversx_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$multiversx_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17h71edc8eb35123a8fE
    local.get 0
    i64.load offset=8
    local.get 1
    call $_ZN19multiversx_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$multiversx_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17h9cead61cac2e6e7bE
    local.get 0
    i64.load offset=16
    local.get 1
    call $_ZN19multiversx_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$multiversx_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17h9cead61cac2e6e7bE
    local.get 0
    i32.load offset=56
    local.get 1
    call $_ZN19multiversx_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$multiversx_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17h71edc8eb35123a8fE
    local.get 0
    i32.load offset=60
    local.get 1
    call $_ZN19multiversx_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$multiversx_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17h71edc8eb35123a8fE
    local.get 0
    i64.load offset=24
    local.get 1
    call $_ZN19multiversx_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$multiversx_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17h9cead61cac2e6e7bE
    local.get 0
    i64.load offset=32
    local.get 1
    call $_ZN19multiversx_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$multiversx_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17h9cead61cac2e6e7bE
    local.get 1
    call $_ZN133_$LT$multiversx_sc..io..finish..ApiOutputAdapter$LT$FA$GT$$u20$as$u20$multiversx_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17h92228e8f0116d760E
    local.get 0
    i32.const 64
    i32.add
    global.set $__stack_pointer
  )
  (func $getTotalPlayers (;121;) (type 10)
    call $checkNoPayment
    i32.const 0
    call $_ZN13multiversx_sc2io16arg_nested_tuple22check_num_arguments_eq17hd03d4298f6221c0cE
    call $_ZN45_$LT$C$u20$as$u20$typing_cars..TypingCars$GT$13total_players17h87f8fa9fc5af0eb9E
    call $_ZN13multiversx_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17hb54aa29cd66df8acE
    call $smallIntFinishUnsigned
  )
  (func $createRace (;122;) (type 10)
    (local i32 i32 i32 i32 i32 i64 i32 i32)
    global.get $__stack_pointer
    i32.const 80
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $_ZN13multiversx_sc2io15call_value_init12payable_egld17h340f38ad953e5dd2E
    i32.const 3
    call $_ZN13multiversx_sc2io16arg_nested_tuple22check_num_arguments_eq17hd03d4298f6221c0cE
    i32.const 0
    i32.const 131623
    i32.const 16
    call $_ZN13multiversx_sc2io16arg_nested_tuple15load_single_arg17hbc060316fd0dfe37E
    local.set 1
    call $_ZN13multiversx_sc2io16arg_nested_tuple15load_single_arg17h562e2f2e33a77f88E
    local.set 2
    i32.const 2
    i32.const 131606
    i32.const 7
    call $_ZN13multiversx_sc2io16arg_nested_tuple15load_single_arg17hbc060316fd0dfe37E
    local.set 3
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          call $_ZN13multiversx_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$10get_caller17hde93a62dc2f179ffE
          local.tee 4
          call $_ZN11typing_cars10TypingCars13player_exists17hfe302ea246296ddaE
          i32.eqz
          br_if 0 (;@3;)
          local.get 1
          i32.const -2
          i32.add
          i32.const 9
          i32.ge_u
          br_if 1 (;@2;)
          local.get 2
          i32.const -1
          i32.add
          i32.const 255
          i32.and
          i32.const 5
          i32.ge_u
          br_if 2 (;@1;)
          local.get 0
          call $_ZN13multiversx_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$19egld_or_single_esdt17h08da37e237007554E
          call $_ZN45_$LT$C$u20$as$u20$typing_cars..TypingCars$GT$11total_races17h69e2874c16871ff9E
          call $_ZN13multiversx_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17hb54aa29cd66df8acE
          local.set 5
          local.get 0
          i32.const 16
          i32.add
          local.get 0
          call $_ZN138_$LT$multiversx_sc..types..managed..wrapped..egld_or_esdt_token_payment..EgldOrEsdtTokenPayment$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h3ab0b8b7a41ae99cE
          call $_ZN13multiversx_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h8f757bae7f22f155E
          local.set 6
          call $_ZN13multiversx_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h8f757bae7f22f155E
          local.set 7
          local.get 0
          i32.const 48
          i32.add
          i64.const 0
          i64.store
          local.get 0
          i32.const 0
          i32.store8 offset=77
          local.get 0
          local.get 6
          i32.store offset=64
          local.get 0
          local.get 1
          i32.store offset=60
          local.get 0
          local.get 4
          i32.store offset=56
          local.get 0
          local.get 5
          i64.const 1
          i64.add
          local.tee 5
          i64.store offset=32
          local.get 0
          local.get 2
          i32.store8 offset=76
          local.get 0
          local.get 3
          i32.store offset=68
          local.get 0
          i64.const 0
          i64.store offset=40
          local.get 0
          local.get 7
          i32.store offset=72
          local.get 5
          call $_ZN45_$LT$C$u20$as$u20$typing_cars..TypingCars$GT$5races17h1629ffd2be11bb00E
          local.get 0
          i32.const 16
          i32.add
          call $_ZN13multiversx_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17h45fdb12d6e12ba45E
          call $_ZN45_$LT$C$u20$as$u20$typing_cars..TypingCars$GT$11total_races17h69e2874c16871ff9E
          local.get 5
          call $_ZN19multiversx_sc_codec6single13top_en_output15TopEncodeOutput7set_u6417h4b10c9bce818eea6E
          local.get 5
          call $smallIntFinishUnsigned
          local.get 0
          i32.const 80
          i32.add
          global.set $__stack_pointer
          return
        end
        i32.const 131180
        i32.const 21
        call $_ZN13multiversx_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17h5177c34d2bd01882E
        unreachable
      end
      i32.const 131201
      i32.const 30
      call $_ZN13multiversx_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17h5177c34d2bd01882E
      unreachable
    end
    i32.const 131231
    i32.const 34
    call $_ZN13multiversx_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17h5177c34d2bd01882E
    unreachable
  )
  (func $joinRace (;123;) (type 10)
    (local i32 i64 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 80
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $_ZN13multiversx_sc2io15call_value_init12payable_egld17h340f38ad953e5dd2E
    i32.const 1
    call $_ZN13multiversx_sc2io16arg_nested_tuple22check_num_arguments_eq17hd03d4298f6221c0cE
    i32.const 0
    call $_ZN13multiversx_sc2io16arg_nested_tuple15load_single_arg17h80405e2ddea19284E
    local.set 1
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          block ;; label = @4
            block ;; label = @5
              call $_ZN13multiversx_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$10get_caller17hde93a62dc2f179ffE
              local.tee 2
              call $_ZN11typing_cars10TypingCars13player_exists17hfe302ea246296ddaE
              i32.eqz
              br_if 0 (;@5;)
              local.get 1
              call $_ZN45_$LT$C$u20$as$u20$typing_cars..TypingCars$GT$5races17h1629ffd2be11bb00E
              call $_ZN13multiversx_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$8is_empty17h2df5307e5fdd7358E
              br_if 1 (;@4;)
              local.get 0
              local.get 1
              call $_ZN45_$LT$C$u20$as$u20$typing_cars..TypingCars$GT$5races17h1629ffd2be11bb00E
              call $_ZN13multiversx_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17h657983a22719d8d9E
              local.get 0
              i32.load8_u offset=61
              br_if 2 (;@3;)
              local.get 0
              i32.const 64
              i32.add
              call $_ZN13multiversx_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$19egld_or_single_esdt17h08da37e237007554E
              local.get 0
              i32.load offset=72
              local.get 0
              i32.load offset=8
              call $_ZN26multiversx_sc_wasm_adapter3api13managed_types23managed_buffer_api_node161_$LT$impl$u20$multiversx_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$multiversx_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$5mb_eq17h76101a0c295e676aE
              i32.eqz
              br_if 3 (;@2;)
              local.get 0
              i64.load offset=64
              local.get 0
              i64.load
              i64.ne
              br_if 3 (;@2;)
              local.get 0
              i32.load offset=76
              local.get 0
              i32.load offset=12
              call $bigIntCmp
              br_if 3 (;@2;)
              i32.const 0
              local.set 3
              local.get 2
              call $_ZN115_$LT$multiversx_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h683cf62a8dea998cE
              local.set 4
              local.get 0
              i32.load offset=48
              local.tee 5
              call $_ZN13multiversx_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17hff0fec0eb99949baE
              local.set 6
              loop ;; label = @6
                block ;; label = @7
                  local.get 6
                  local.get 3
                  i32.ne
                  br_if 0 (;@7;)
                  local.get 5
                  call $_ZN13multiversx_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17hff0fec0eb99949baE
                  local.get 0
                  i32.load offset=44
                  local.tee 3
                  i32.ge_u
                  br_if 6 (;@1;)
                  local.get 5
                  local.get 2
                  call $_ZN13multiversx_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hbdb52437f03ae2ceE
                  block ;; label = @8
                    local.get 5
                    call $_ZN13multiversx_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17hff0fec0eb99949baE
                    local.get 3
                    i32.ne
                    br_if 0 (;@8;)
                    local.get 0
                    i32.const 1
                    i32.store8 offset=61
                    local.get 0
                    call $getBlockTimestamp
                    i64.store offset=24
                  end
                  local.get 1
                  call $_ZN45_$LT$C$u20$as$u20$typing_cars..TypingCars$GT$5races17h1629ffd2be11bb00E
                  local.get 0
                  call $_ZN13multiversx_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17h45fdb12d6e12ba45E
                  local.get 0
                  i32.const 80
                  i32.add
                  global.set $__stack_pointer
                  return
                end
                block ;; label = @7
                  local.get 5
                  local.get 3
                  call $_ZN13multiversx_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3get17hc41253f30501963eE
                  call $_ZN115_$LT$multiversx_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h683cf62a8dea998cE
                  local.get 4
                  call $_ZN26multiversx_sc_wasm_adapter3api13managed_types23managed_buffer_api_node161_$LT$impl$u20$multiversx_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$multiversx_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$5mb_eq17h76101a0c295e676aE
                  br_if 0 (;@7;)
                  local.get 3
                  i32.const 1
                  i32.add
                  local.set 3
                  br 1 (;@6;)
                end
              end
              i32.const 131567
              i32.const 39
              call $_ZN13multiversx_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17h5177c34d2bd01882E
              unreachable
            end
            i32.const 131180
            i32.const 21
            call $_ZN13multiversx_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17h5177c34d2bd01882E
            unreachable
          end
          i32.const 131086
          i32.const 19
          call $_ZN13multiversx_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17h5177c34d2bd01882E
          unreachable
        end
        i32.const 131503
        i32.const 33
        call $_ZN13multiversx_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17h5177c34d2bd01882E
        unreachable
      end
      i32.const 131536
      i32.const 19
      call $_ZN13multiversx_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17h5177c34d2bd01882E
      unreachable
    end
    i32.const 131555
    i32.const 12
    call $_ZN13multiversx_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17h5177c34d2bd01882E
    unreachable
  )
  (func $submitResult (;124;) (type 10)
    (local i32 i64 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 176
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 5
    call $_ZN13multiversx_sc2io16arg_nested_tuple22check_num_arguments_eq17hd03d4298f6221c0cE
    i32.const 0
    call $_ZN13multiversx_sc2io16arg_nested_tuple15load_single_arg17h80405e2ddea19284E
    local.set 1
    i32.const 1
    i32.const 131647
    i32.const 3
    call $_ZN13multiversx_sc2io16arg_nested_tuple15load_single_arg17hbc060316fd0dfe37E
    local.set 2
    i32.const 2
    i32.const 131639
    i32.const 8
    call $_ZN13multiversx_sc2io16arg_nested_tuple15load_single_arg17hbc060316fd0dfe37E
    local.set 3
    i32.const 3
    call $_ZN13multiversx_sc2io16arg_nested_tuple15load_single_arg17h80405e2ddea19284E
    local.set 4
    i32.const 4
    call $_ZN13multiversx_sc2io16arg_nested_tuple15load_single_arg17hb50240af2d4b98acE
    local.set 5
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          block ;; label = @4
            block ;; label = @5
              block ;; label = @6
                call $_ZN13multiversx_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$10get_caller17hde93a62dc2f179ffE
                local.tee 6
                call $_ZN11typing_cars10TypingCars13player_exists17hfe302ea246296ddaE
                i32.eqz
                br_if 0 (;@6;)
                local.get 1
                call $_ZN45_$LT$C$u20$as$u20$typing_cars..TypingCars$GT$5races17h1629ffd2be11bb00E
                call $_ZN13multiversx_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$8is_empty17h2df5307e5fdd7358E
                br_if 1 (;@5;)
                local.get 0
                i32.const 8
                i32.add
                local.get 1
                call $_ZN45_$LT$C$u20$as$u20$typing_cars..TypingCars$GT$5races17h1629ffd2be11bb00E
                call $_ZN13multiversx_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17h657983a22719d8d9E
                local.get 0
                i32.load8_u offset=69
                i32.const 1
                i32.ne
                br_if 2 (;@4;)
                i32.const 0
                local.set 7
                local.get 6
                call $_ZN115_$LT$multiversx_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h683cf62a8dea998cE
                local.set 8
                local.get 0
                i32.load offset=56
                local.tee 9
                call $_ZN13multiversx_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17hff0fec0eb99949baE
                local.set 10
                loop ;; label = @7
                  local.get 10
                  local.get 7
                  i32.eq
                  br_if 4 (;@3;)
                  block ;; label = @8
                    local.get 9
                    local.get 7
                    call $_ZN13multiversx_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3get17hc41253f30501963eE
                    call $_ZN115_$LT$multiversx_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h683cf62a8dea998cE
                    local.get 8
                    call $_ZN26multiversx_sc_wasm_adapter3api13managed_types23managed_buffer_api_node161_$LT$impl$u20$multiversx_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$multiversx_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$5mb_eq17h76101a0c295e676aE
                    br_if 0 (;@8;)
                    local.get 7
                    i32.const 1
                    i32.add
                    local.set 7
                    br 1 (;@7;)
                  end
                end
                local.get 0
                i32.load offset=64
                local.tee 11
                call $_ZN13multiversx_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17h0258e0c9ed8d3485E
                i32.const 1
                i32.add
                local.set 10
                i32.const 0
                local.set 7
                block ;; label = @7
                  loop ;; label = @8
                    block ;; label = @9
                      local.get 10
                      i32.const -1
                      i32.add
                      local.tee 10
                      br_if 0 (;@9;)
                      local.get 3
                      i32.const 10001
                      i32.lt_u
                      br_if 2 (;@7;)
                      i32.const 131394
                      i32.const 36
                      call $_ZN13multiversx_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17h5177c34d2bd01882E
                      unreachable
                    end
                    local.get 0
                    i32.const 72
                    i32.add
                    i32.const 0
                    i32.const 42
                    call $memset
                    drop
                    local.get 11
                    local.get 7
                    local.get 0
                    i32.const 72
                    i32.add
                    i32.const 42
                    call $_ZN26multiversx_sc_wasm_adapter3api13managed_types23managed_buffer_api_node161_$LT$impl$u20$multiversx_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$multiversx_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$13mb_load_slice17h62ff902eca3c7ecdE
                    br_if 6 (;@2;)
                    local.get 0
                    i32.const 120
                    i32.add
                    local.get 0
                    i32.const 72
                    i32.add
                    call $_ZN125_$LT$typing_cars..RaceResult$LT$M$GT$$u20$as$u20$multiversx_sc..types..managed..wrapped..managed_vec_item..ManagedVecItem$GT$19borrow_from_payload17h3da2d0e82cf2f619E
                    local.get 0
                    i32.load8_u offset=161
                    i32.const 2
                    i32.eq
                    br_if 6 (;@2;)
                    local.get 7
                    i32.const 42
                    i32.add
                    local.set 7
                    local.get 0
                    i32.load offset=144
                    local.get 8
                    call $_ZN26multiversx_sc_wasm_adapter3api13managed_types23managed_buffer_api_node161_$LT$impl$u20$multiversx_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$multiversx_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$5mb_eq17h76101a0c295e676aE
                    i32.eqz
                    br_if 0 (;@8;)
                  end
                  i32.const 131430
                  i32.const 24
                  call $_ZN13multiversx_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17h5177c34d2bd01882E
                  unreachable
                end
                local.get 11
                call $_ZN13multiversx_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17h0258e0c9ed8d3485E
                local.set 7
                call $_ZN13multiversx_sc5types7managed7wrapped29egld_or_esdt_token_identifier34EgldOrEsdtTokenIdentifier$LT$M$GT$4egld17he6c08c5f9bbe4a09E
                local.set 10
                local.get 6
                call $_ZN115_$LT$multiversx_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h683cf62a8dea998cE
                local.set 8
                call $_ZN26multiversx_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17he46a460b0edfb039E
                local.tee 12
                i64.const 0
                call $bigIntSetInt64
                local.get 0
                local.get 3
                i32.store offset=104
                local.get 0
                local.get 8
                i32.store offset=96
                local.get 0
                local.get 4
                i64.store offset=88
                local.get 0
                local.get 12
                i32.store offset=84
                local.get 0
                local.get 10
                i32.store offset=80
                local.get 0
                i64.const 0
                i64.store offset=72
                local.get 0
                local.get 5
                i32.store offset=108
                local.get 0
                i32.const 1
                i32.store8 offset=113
                local.get 0
                local.get 7
                i32.const 1
                i32.add
                i32.store8 offset=112
                local.get 0
                local.get 2
                i32.store offset=100
                local.get 11
                local.get 0
                i32.const 72
                i32.add
                call $_ZN13multiversx_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h8234366487601bc3E
                local.get 0
                i32.const 120
                i32.add
                local.get 6
                call $_ZN45_$LT$C$u20$as$u20$typing_cars..TypingCars$GT$15player_profiles17h77c44b20bf2ad87cE
                call $_ZN13multiversx_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17hd55696634edcc836E
                local.get 0
                local.get 0
                i64.load offset=120
                local.tee 13
                i64.const 1
                i64.add
                local.tee 4
                i64.store offset=120
                local.get 0
                local.get 0
                i32.load offset=172
                local.tee 7
                local.get 2
                local.get 7
                local.get 2
                i32.gt_u
                select
                i32.store offset=172
                local.get 4
                i64.eqz
                br_if 5 (;@1;)
                local.get 0
                local.get 13
                local.get 0
                i64.load32_u offset=168
                i64.mul
                local.get 2
                i64.extend_i32_u
                i64.add
                local.get 4
                i64.div_u
                i64.store32 offset=168
                local.get 6
                call $_ZN45_$LT$C$u20$as$u20$typing_cars..TypingCars$GT$15player_profiles17h77c44b20bf2ad87cE
                local.get 0
                i32.const 120
                i32.add
                call $_ZN13multiversx_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17h158a5cf3ad2637deE
                block ;; label = @7
                  local.get 11
                  call $_ZN13multiversx_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17h0258e0c9ed8d3485E
                  local.get 9
                  call $_ZN13multiversx_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17hff0fec0eb99949baE
                  i32.ne
                  br_if 0 (;@7;)
                  local.get 0
                  i32.const 2
                  i32.store8 offset=69
                  local.get 0
                  call $getBlockTimestamp
                  i64.store offset=40
                end
                local.get 1
                call $_ZN45_$LT$C$u20$as$u20$typing_cars..TypingCars$GT$5races17h1629ffd2be11bb00E
                local.get 0
                i32.const 8
                i32.add
                call $_ZN13multiversx_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17h45fdb12d6e12ba45E
                local.get 0
                i32.const 176
                i32.add
                global.set $__stack_pointer
                return
              end
              i32.const 131180
              i32.const 21
              call $_ZN13multiversx_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17h5177c34d2bd01882E
              unreachable
            end
            i32.const 131086
            i32.const 19
            call $_ZN13multiversx_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17h5177c34d2bd01882E
            unreachable
          end
          i32.const 131266
          i32.const 18
          call $_ZN13multiversx_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17h5177c34d2bd01882E
          unreachable
        end
        i32.const 131357
        i32.const 37
        call $_ZN13multiversx_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17h5177c34d2bd01882E
        unreachable
      end
      i32.const 131832
      i32.const 29
      call $signalError
      unreachable
    end
    call $_ZN4core9panicking11panic_const23panic_const_div_by_zero17hda97ea85bc24956dE
    unreachable
  )
  (func $_ZN4core9panicking11panic_const23panic_const_div_by_zero17hda97ea85bc24956dE (;125;) (type 10)
    call $_ZN4core9panicking9panic_fmt17h6f4dae69dcc1a6d2E
    unreachable
  )
  (func $finalizeRace (;126;) (type 10)
    (local i32 i64 i32 i64)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 1
    call $_ZN13multiversx_sc2io16arg_nested_tuple22check_num_arguments_eq17hd03d4298f6221c0cE
    i32.const 0
    call $_ZN13multiversx_sc2io16arg_nested_tuple15load_single_arg17h80405e2ddea19284E
    local.set 1
    call $_ZN13multiversx_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$10get_caller17hde93a62dc2f179ffE
    local.set 2
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          block ;; label = @4
            local.get 1
            call $_ZN45_$LT$C$u20$as$u20$typing_cars..TypingCars$GT$5races17h1629ffd2be11bb00E
            call $_ZN13multiversx_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$8is_empty17h2df5307e5fdd7358E
            br_if 0 (;@4;)
            local.get 0
            local.get 1
            call $_ZN45_$LT$C$u20$as$u20$typing_cars..TypingCars$GT$5races17h1629ffd2be11bb00E
            call $_ZN13multiversx_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17h657983a22719d8d9E
            local.get 0
            i32.load8_u offset=61
            i32.const 1
            i32.ne
            br_if 1 (;@3;)
            local.get 0
            i32.load offset=40
            local.get 2
            call $_ZN26multiversx_sc_wasm_adapter3api13managed_types23managed_buffer_api_node161_$LT$impl$u20$multiversx_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$multiversx_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$5mb_eq17h76101a0c295e676aE
            i32.eqz
            br_if 2 (;@2;)
            call $getBlockTimestamp
            local.tee 3
            local.get 0
            i64.load offset=24
            i64.sub
            i64.const 1800
            i64.le_u
            br_if 3 (;@1;)
            local.get 0
            local.get 3
            i64.store offset=32
            local.get 0
            i32.const 2
            i32.store8 offset=61
            local.get 1
            call $_ZN45_$LT$C$u20$as$u20$typing_cars..TypingCars$GT$5races17h1629ffd2be11bb00E
            local.get 0
            call $_ZN13multiversx_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17h45fdb12d6e12ba45E
            local.get 0
            i32.const 64
            i32.add
            global.set $__stack_pointer
            return
          end
          i32.const 131086
          i32.const 19
          call $_ZN13multiversx_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17h5177c34d2bd01882E
          unreachable
        end
        i32.const 131266
        i32.const 18
        call $_ZN13multiversx_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17h5177c34d2bd01882E
        unreachable
      end
      i32.const 131284
      i32.const 30
      call $_ZN13multiversx_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17h5177c34d2bd01882E
      unreachable
    end
    i32.const 131314
    i32.const 43
    call $_ZN13multiversx_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17h5177c34d2bd01882E
    unreachable
  )
  (func $cancelRace (;127;) (type 10)
    (local i32 i64 i32)
    global.get $__stack_pointer
    i32.const 96
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 1
    call $_ZN13multiversx_sc2io16arg_nested_tuple22check_num_arguments_eq17hd03d4298f6221c0cE
    i32.const 0
    call $_ZN13multiversx_sc2io16arg_nested_tuple15load_single_arg17h80405e2ddea19284E
    local.set 1
    call $_ZN13multiversx_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$10get_caller17hde93a62dc2f179ffE
    local.set 2
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          local.get 1
          call $_ZN45_$LT$C$u20$as$u20$typing_cars..TypingCars$GT$5races17h1629ffd2be11bb00E
          call $_ZN13multiversx_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$8is_empty17h2df5307e5fdd7358E
          br_if 0 (;@3;)
          local.get 0
          i32.const 16
          i32.add
          local.get 1
          call $_ZN45_$LT$C$u20$as$u20$typing_cars..TypingCars$GT$5races17h1629ffd2be11bb00E
          call $_ZN13multiversx_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17h657983a22719d8d9E
          local.get 0
          i32.load8_u offset=77
          br_if 1 (;@2;)
          local.get 0
          i32.load offset=56
          local.get 2
          call $_ZN26multiversx_sc_wasm_adapter3api13managed_types23managed_buffer_api_node161_$LT$impl$u20$multiversx_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$multiversx_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$5mb_eq17h76101a0c295e676aE
          i32.eqz
          br_if 2 (;@1;)
          local.get 0
          i32.const 3
          i32.store8 offset=77
          local.get 0
          local.get 0
          i32.load offset=64
          local.tee 2
          call $mBufferGetLength
          i32.store offset=92
          local.get 0
          i32.const 0
          i32.store offset=88
          local.get 0
          local.get 2
          i32.store offset=84
          local.get 0
          i32.load offset=28
          local.set 2
          block ;; label = @4
            loop ;; label = @5
              local.get 0
              i32.const 8
              i32.add
              local.get 0
              i32.const 84
              i32.add
              call $_ZN155_$LT$multiversx_sc..types..managed..wrapped..managed_vec_iter_ref..ManagedVecRefIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h71bbdbc8696e935eE
              local.get 0
              i32.load offset=8
              i32.eqz
              br_if 1 (;@4;)
              local.get 0
              i32.load offset=12
              local.get 2
              i64.const 0
              call $_ZN13multiversx_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h8f757bae7f22f155E
              call $_ZN13multiversx_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h8f757bae7f22f155E
              call $managedTransferValueExecute
              drop
              br 0 (;@5;)
            end
          end
          local.get 1
          call $_ZN45_$LT$C$u20$as$u20$typing_cars..TypingCars$GT$5races17h1629ffd2be11bb00E
          local.get 0
          i32.const 16
          i32.add
          call $_ZN13multiversx_sc7storage7mappers19single_value_mapper31SingleValueMapper$LT$SA$C$T$GT$3set17h45fdb12d6e12ba45E
          local.get 0
          i32.const 96
          i32.add
          global.set $__stack_pointer
          return
        end
        i32.const 131086
        i32.const 19
        call $_ZN13multiversx_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17h5177c34d2bd01882E
        unreachable
      end
      i32.const 131106
      i32.const 46
      call $_ZN13multiversx_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17h5177c34d2bd01882E
      unreachable
    end
    i32.const 131152
    i32.const 28
    call $_ZN13multiversx_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17h5177c34d2bd01882E
    unreachable
  )
  (func $getRaceDetails (;128;) (type 10)
    (local i32 i64 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 1
    call $_ZN13multiversx_sc2io16arg_nested_tuple22check_num_arguments_eq17hd03d4298f6221c0cE
    block ;; label = @1
      i32.const 0
      call $_ZN13multiversx_sc2io16arg_nested_tuple15load_single_arg17h80405e2ddea19284E
      local.tee 1
      call $_ZN45_$LT$C$u20$as$u20$typing_cars..TypingCars$GT$5races17h1629ffd2be11bb00E
      call $_ZN13multiversx_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$8is_empty17h2df5307e5fdd7358E
      i32.eqz
      br_if 0 (;@1;)
      i32.const 131086
      i32.const 19
      call $_ZN13multiversx_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17h5177c34d2bd01882E
      unreachable
    end
    local.get 0
    local.get 1
    call $_ZN45_$LT$C$u20$as$u20$typing_cars..TypingCars$GT$5races17h1629ffd2be11bb00E
    call $_ZN13multiversx_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17h657983a22719d8d9E
    call $_ZN133_$LT$multiversx_sc..io..finish..ApiOutputAdapter$LT$FA$GT$$u20$as$u20$multiversx_sc_codec..single..top_en_output..TopEncodeOutput$GT$19start_nested_encode17h15af45a888afc9cfE
    local.set 2
    local.get 0
    i64.load offset=16
    local.get 2
    call $_ZN19multiversx_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$multiversx_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17h9cead61cac2e6e7bE
    local.get 2
    local.get 0
    i32.load offset=40
    call $mBufferAppend
    drop
    local.get 0
    local.get 2
    call $_ZN172_$LT$multiversx_sc..types..managed..wrapped..egld_or_esdt_token_payment..EgldOrEsdtTokenPayment$LT$M$GT$$u20$as$u20$multiversx_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h8b34be2b23600cfeE
    local.get 0
    i32.load offset=44
    local.get 2
    call $_ZN19multiversx_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$multiversx_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17h71edc8eb35123a8fE
    local.get 0
    i32.load offset=48
    local.get 2
    call $_ZN149_$LT$multiversx_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$multiversx_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h245c9377a21f79d3E
    local.get 0
    i32.load8_u offset=61
    local.get 2
    call $_ZN96_$LT$typing_cars..RaceStatus$u20$as$u20$multiversx_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h90354b1731b3c9e4E
    local.get 0
    i32.load8_u offset=60
    local.get 2
    call $_ZN19multiversx_sc_codec14impl_for_types17impl_num_unsigned85_$LT$impl$u20$multiversx_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u8$GT$24dep_encode_or_handle_err17h949fd3b184c857caE
    local.get 0
    i32.load offset=52
    local.get 2
    call $_ZN19multiversx_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$multiversx_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u32$GT$24dep_encode_or_handle_err17h71edc8eb35123a8fE
    local.get 0
    i64.load offset=24
    local.get 2
    call $_ZN19multiversx_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$multiversx_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17h9cead61cac2e6e7bE
    local.get 0
    i64.load offset=32
    local.get 2
    call $_ZN19multiversx_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$multiversx_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17h9cead61cac2e6e7bE
    local.get 0
    i32.load offset=56
    local.get 2
    call $_ZN149_$LT$multiversx_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$multiversx_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h4863fb647ecbc747E
    local.get 2
    call $_ZN133_$LT$multiversx_sc..io..finish..ApiOutputAdapter$LT$FA$GT$$u20$as$u20$multiversx_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17h92228e8f0116d760E
    local.get 0
    i32.const 64
    i32.add
    global.set $__stack_pointer
  )
  (func $getRaceResults (;129;) (type 10)
    (local i32 i64 i32 i32)
    global.get $__stack_pointer
    i32.const 80
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 1
    call $_ZN13multiversx_sc2io16arg_nested_tuple22check_num_arguments_eq17hd03d4298f6221c0cE
    block ;; label = @1
      i32.const 0
      call $_ZN13multiversx_sc2io16arg_nested_tuple15load_single_arg17h80405e2ddea19284E
      local.tee 1
      call $_ZN45_$LT$C$u20$as$u20$typing_cars..TypingCars$GT$5races17h1629ffd2be11bb00E
      call $_ZN13multiversx_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$8is_empty17h2df5307e5fdd7358E
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      call $_ZN45_$LT$C$u20$as$u20$typing_cars..TypingCars$GT$5races17h1629ffd2be11bb00E
      call $_ZN13multiversx_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17h657983a22719d8d9E
      local.get 0
      i32.load offset=56
      local.set 2
      call $_ZN133_$LT$multiversx_sc..io..finish..ApiOutputAdapter$LT$FA$GT$$u20$as$u20$multiversx_sc_codec..single..top_en_output..TopEncodeOutput$GT$19start_nested_encode17h15af45a888afc9cfE
      local.set 3
      local.get 0
      local.get 2
      call $mBufferGetLength
      i32.store offset=76
      local.get 0
      i32.const 0
      i32.store offset=72
      local.get 0
      local.get 2
      i32.store offset=68
      block ;; label = @2
        loop ;; label = @3
          local.get 0
          local.get 0
          i32.const 68
          i32.add
          call $_ZN155_$LT$multiversx_sc..types..managed..wrapped..managed_vec_iter_ref..ManagedVecRefIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h22b0e714a3067a71E
          local.get 0
          i32.load8_u offset=41
          i32.const 2
          i32.eq
          br_if 1 (;@2;)
          local.get 0
          local.get 3
          call $_ZN105_$LT$typing_cars..RaceResult$LT$M$GT$$u20$as$u20$multiversx_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h05b5365e0439dfddE
          br 0 (;@3;)
        end
      end
      local.get 3
      call $_ZN133_$LT$multiversx_sc..io..finish..ApiOutputAdapter$LT$FA$GT$$u20$as$u20$multiversx_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17h92228e8f0116d760E
      local.get 0
      i32.const 80
      i32.add
      global.set $__stack_pointer
      return
    end
    i32.const 131086
    i32.const 19
    call $_ZN13multiversx_sc13contract_base8wrappers12error_helper20ErrorHelper$LT$M$GT$25signal_error_with_message17h5177c34d2bd01882E
    unreachable
  )
  (func $getTotalRaces (;130;) (type 10)
    call $checkNoPayment
    i32.const 0
    call $_ZN13multiversx_sc2io16arg_nested_tuple22check_num_arguments_eq17hd03d4298f6221c0cE
    call $_ZN45_$LT$C$u20$as$u20$typing_cars..TypingCars$GT$11total_races17h69e2874c16871ff9E
    call $_ZN13multiversx_sc7storage7mappers19single_value_mapper35SingleValueMapper$LT$SA$C$T$C$A$GT$3get17hb54aa29cd66df8acE
    call $smallIntFinishUnsigned
  )
  (func $callBack (;131;) (type 10))
  (func $_ZN4core9panicking9panic_fmt17h6f4dae69dcc1a6d2E (;132;) (type 10)
    call $rust_begin_unwind
    unreachable
  )
  (func $_ZN4core5slice5index24slice_end_index_len_fail8do_panic7runtime17h7780901f520234faE (;133;) (type 6) (param i32)
    call $_ZN4core9panicking9panic_fmt17h6f4dae69dcc1a6d2E
    unreachable
  )
  (func $_ZN4core5slice5index22slice_index_order_fail8do_panic7runtime17h88e230a95f697701E (;134;) (type 2) (param i32 i32)
    call $_ZN4core9panicking9panic_fmt17h6f4dae69dcc1a6d2E
    unreachable
  )
  (func $memset (;135;) (type 7) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32)
    block ;; label = @1
      block ;; label = @2
        local.get 2
        i32.const 16
        i32.ge_u
        br_if 0 (;@2;)
        local.get 0
        local.set 3
        br 1 (;@1;)
      end
      block ;; label = @2
        local.get 0
        i32.const 0
        local.get 0
        i32.sub
        i32.const 3
        i32.and
        local.tee 4
        i32.add
        local.tee 5
        local.get 0
        i32.le_u
        br_if 0 (;@2;)
        local.get 4
        i32.const -1
        i32.add
        local.set 6
        local.get 0
        local.set 3
        block ;; label = @3
          local.get 4
          i32.eqz
          br_if 0 (;@3;)
          local.get 4
          local.set 7
          local.get 0
          local.set 3
          loop ;; label = @4
            local.get 3
            local.get 1
            i32.store8
            local.get 3
            i32.const 1
            i32.add
            local.set 3
            local.get 7
            i32.const -1
            i32.add
            local.tee 7
            br_if 0 (;@4;)
          end
        end
        local.get 6
        i32.const 7
        i32.lt_u
        br_if 0 (;@2;)
        loop ;; label = @3
          local.get 3
          local.get 1
          i32.store8
          local.get 3
          i32.const 7
          i32.add
          local.get 1
          i32.store8
          local.get 3
          i32.const 6
          i32.add
          local.get 1
          i32.store8
          local.get 3
          i32.const 5
          i32.add
          local.get 1
          i32.store8
          local.get 3
          i32.const 4
          i32.add
          local.get 1
          i32.store8
          local.get 3
          i32.const 3
          i32.add
          local.get 1
          i32.store8
          local.get 3
          i32.const 2
          i32.add
          local.get 1
          i32.store8
          local.get 3
          i32.const 1
          i32.add
          local.get 1
          i32.store8
          local.get 3
          i32.const 8
          i32.add
          local.tee 3
          local.get 5
          i32.ne
          br_if 0 (;@3;)
        end
      end
      block ;; label = @2
        local.get 5
        local.get 5
        local.get 2
        local.get 4
        i32.sub
        local.tee 2
        i32.const -4
        i32.and
        i32.add
        local.tee 3
        i32.ge_u
        br_if 0 (;@2;)
        local.get 1
        i32.const 255
        i32.and
        i32.const 16843009
        i32.mul
        local.set 7
        loop ;; label = @3
          local.get 5
          local.get 7
          i32.store
          local.get 5
          i32.const 4
          i32.add
          local.tee 5
          local.get 3
          i32.lt_u
          br_if 0 (;@3;)
        end
      end
      local.get 2
      i32.const 3
      i32.and
      local.set 2
    end
    block ;; label = @1
      local.get 3
      local.get 3
      local.get 2
      i32.add
      local.tee 7
      i32.ge_u
      br_if 0 (;@1;)
      local.get 2
      i32.const -1
      i32.add
      local.set 4
      block ;; label = @2
        local.get 2
        i32.const 7
        i32.and
        local.tee 5
        i32.eqz
        br_if 0 (;@2;)
        loop ;; label = @3
          local.get 3
          local.get 1
          i32.store8
          local.get 3
          i32.const 1
          i32.add
          local.set 3
          local.get 5
          i32.const -1
          i32.add
          local.tee 5
          br_if 0 (;@3;)
        end
      end
      local.get 4
      i32.const 7
      i32.lt_u
      br_if 0 (;@1;)
      loop ;; label = @2
        local.get 3
        local.get 1
        i32.store8
        local.get 3
        i32.const 7
        i32.add
        local.get 1
        i32.store8
        local.get 3
        i32.const 6
        i32.add
        local.get 1
        i32.store8
        local.get 3
        i32.const 5
        i32.add
        local.get 1
        i32.store8
        local.get 3
        i32.const 4
        i32.add
        local.get 1
        i32.store8
        local.get 3
        i32.const 3
        i32.add
        local.get 1
        i32.store8
        local.get 3
        i32.const 2
        i32.add
        local.get 1
        i32.store8
        local.get 3
        i32.const 1
        i32.add
        local.get 1
        i32.store8
        local.get 3
        i32.const 8
        i32.add
        local.tee 3
        local.get 7
        i32.ne
        br_if 0 (;@2;)
      end
    end
    local.get 0
  )
  (func $memcpy (;136;) (type 7) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    block ;; label = @1
      block ;; label = @2
        local.get 2
        i32.const 16
        i32.ge_u
        br_if 0 (;@2;)
        local.get 0
        local.set 3
        br 1 (;@1;)
      end
      block ;; label = @2
        local.get 0
        i32.const 0
        local.get 0
        i32.sub
        i32.const 3
        i32.and
        local.tee 4
        i32.add
        local.tee 5
        local.get 0
        i32.le_u
        br_if 0 (;@2;)
        local.get 4
        i32.const -1
        i32.add
        local.set 6
        local.get 0
        local.set 3
        local.get 1
        local.set 7
        block ;; label = @3
          local.get 4
          i32.eqz
          br_if 0 (;@3;)
          local.get 4
          local.set 8
          local.get 0
          local.set 3
          local.get 1
          local.set 7
          loop ;; label = @4
            local.get 3
            local.get 7
            i32.load8_u
            i32.store8
            local.get 7
            i32.const 1
            i32.add
            local.set 7
            local.get 3
            i32.const 1
            i32.add
            local.set 3
            local.get 8
            i32.const -1
            i32.add
            local.tee 8
            br_if 0 (;@4;)
          end
        end
        local.get 6
        i32.const 7
        i32.lt_u
        br_if 0 (;@2;)
        loop ;; label = @3
          local.get 3
          local.get 7
          i32.load8_u
          i32.store8
          local.get 3
          i32.const 1
          i32.add
          local.get 7
          i32.const 1
          i32.add
          i32.load8_u
          i32.store8
          local.get 3
          i32.const 2
          i32.add
          local.get 7
          i32.const 2
          i32.add
          i32.load8_u
          i32.store8
          local.get 3
          i32.const 3
          i32.add
          local.get 7
          i32.const 3
          i32.add
          i32.load8_u
          i32.store8
          local.get 3
          i32.const 4
          i32.add
          local.get 7
          i32.const 4
          i32.add
          i32.load8_u
          i32.store8
          local.get 3
          i32.const 5
          i32.add
          local.get 7
          i32.const 5
          i32.add
          i32.load8_u
          i32.store8
          local.get 3
          i32.const 6
          i32.add
          local.get 7
          i32.const 6
          i32.add
          i32.load8_u
          i32.store8
          local.get 3
          i32.const 7
          i32.add
          local.get 7
          i32.const 7
          i32.add
          i32.load8_u
          i32.store8
          local.get 7
          i32.const 8
          i32.add
          local.set 7
          local.get 3
          i32.const 8
          i32.add
          local.tee 3
          local.get 5
          i32.ne
          br_if 0 (;@3;)
        end
      end
      local.get 5
      local.get 2
      local.get 4
      i32.sub
      local.tee 8
      i32.const -4
      i32.and
      local.tee 6
      i32.add
      local.set 3
      block ;; label = @2
        block ;; label = @3
          local.get 1
          local.get 4
          i32.add
          local.tee 7
          i32.const 3
          i32.and
          br_if 0 (;@3;)
          local.get 5
          local.get 3
          i32.ge_u
          br_if 1 (;@2;)
          local.get 7
          local.set 1
          loop ;; label = @4
            local.get 5
            local.get 1
            i32.load
            i32.store
            local.get 1
            i32.const 4
            i32.add
            local.set 1
            local.get 5
            i32.const 4
            i32.add
            local.tee 5
            local.get 3
            i32.lt_u
            br_if 0 (;@4;)
            br 2 (;@2;)
          end
        end
        local.get 5
        local.get 3
        i32.ge_u
        br_if 0 (;@2;)
        local.get 7
        i32.const 3
        i32.shl
        local.tee 2
        i32.const 24
        i32.and
        local.set 4
        local.get 7
        i32.const -4
        i32.and
        local.tee 9
        i32.const 4
        i32.add
        local.set 1
        i32.const 0
        local.get 2
        i32.sub
        i32.const 24
        i32.and
        local.set 10
        local.get 9
        i32.load
        local.set 2
        loop ;; label = @3
          local.get 5
          local.get 2
          local.get 4
          i32.shr_u
          local.get 1
          i32.load
          local.tee 2
          local.get 10
          i32.shl
          i32.or
          i32.store
          local.get 1
          i32.const 4
          i32.add
          local.set 1
          local.get 5
          i32.const 4
          i32.add
          local.tee 5
          local.get 3
          i32.lt_u
          br_if 0 (;@3;)
        end
      end
      local.get 8
      i32.const 3
      i32.and
      local.set 2
      local.get 7
      local.get 6
      i32.add
      local.set 1
    end
    block ;; label = @1
      local.get 3
      local.get 3
      local.get 2
      i32.add
      local.tee 5
      i32.ge_u
      br_if 0 (;@1;)
      local.get 2
      i32.const -1
      i32.add
      local.set 8
      block ;; label = @2
        local.get 2
        i32.const 7
        i32.and
        local.tee 7
        i32.eqz
        br_if 0 (;@2;)
        loop ;; label = @3
          local.get 3
          local.get 1
          i32.load8_u
          i32.store8
          local.get 1
          i32.const 1
          i32.add
          local.set 1
          local.get 3
          i32.const 1
          i32.add
          local.set 3
          local.get 7
          i32.const -1
          i32.add
          local.tee 7
          br_if 0 (;@3;)
        end
      end
      local.get 8
      i32.const 7
      i32.lt_u
      br_if 0 (;@1;)
      loop ;; label = @2
        local.get 3
        local.get 1
        i32.load8_u
        i32.store8
        local.get 3
        i32.const 1
        i32.add
        local.get 1
        i32.const 1
        i32.add
        i32.load8_u
        i32.store8
        local.get 3
        i32.const 2
        i32.add
        local.get 1
        i32.const 2
        i32.add
        i32.load8_u
        i32.store8
        local.get 3
        i32.const 3
        i32.add
        local.get 1
        i32.const 3
        i32.add
        i32.load8_u
        i32.store8
        local.get 3
        i32.const 4
        i32.add
        local.get 1
        i32.const 4
        i32.add
        i32.load8_u
        i32.store8
        local.get 3
        i32.const 5
        i32.add
        local.get 1
        i32.const 5
        i32.add
        i32.load8_u
        i32.store8
        local.get 3
        i32.const 6
        i32.add
        local.get 1
        i32.const 6
        i32.add
        i32.load8_u
        i32.store8
        local.get 3
        i32.const 7
        i32.add
        local.get 1
        i32.const 7
        i32.add
        i32.load8_u
        i32.store8
        local.get 1
        i32.const 8
        i32.add
        local.set 1
        local.get 3
        i32.const 8
        i32.add
        local.tee 3
        local.get 5
        i32.ne
        br_if 0 (;@2;)
      end
    end
    local.get 0
  )
  (data $.rodata (;0;) (i32.const 131072) "input too longRace does not exist\00Race can only be cancelled during registrationOnly race creator can cancelPlayer not registeredInvalid number of participantsDifficulty must be between 1 and 5\01Race is not activeOnly race creator can finalizeRace can only be finalized after 30 minutesPlayer not participating in this raceAccuracy cannot be greater than 100%Result already submittedUsername cannot be emptyPlayer already registeredRace is not in registration phaseIncorrect entry feeRace is fullPlayer already registered for this racetext_iddifficultymax_participantsaccuracywpmavatar_idaddressincorrect number of ESDT transfersfunction does not accept ESDT paymentincorrect number of transfersargument decode error (): wrong number of argumentsinput too shortManagedVec index out of rangeEGLD-000000EGLD_address_to_id_count_id_to_addressstorage decode error (key: bad array lengthinvalid valuetotalRacesusertotalPlayersplayerProfilesraces\02\03\00\00\00!\00\02\00\c1\00\02\00\ab\03\02\00\ac\03\02\00panic occurred")
  (data $.data (;1;) (i32.const 132048) "8\ff\ff\ff")
  (@producers
    (language "Rust" "")
    (processed-by "rustc" "1.85.0 (4d91de4e4 2025-02-17)")
  )
  (@custom "target_features" (after data) "\04+\0amultivalue+\0fmutable-globals+\0freference-types+\08sign-ext")
)
