(module
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $none_=>_none (func))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $none_=>_i32 (func (result i32)))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $i64_=>_none (func (param i64)))
 (type $i64_i64_=>_none (func (param i64 i64)))
 (type $i32_i64_=>_none (func (param i32 i64)))
 (type $i64_i64_=>_i64 (func (param i64 i64) (result i64)))
 (type $none_=>_i64 (func (result i64)))
 (type $i32_=>_i64 (func (param i32) (result i64)))
 (type $i64_i64_i64_=>_i64 (func (param i64 i64 i64) (result i64)))
 (type $i32_=>_f64 (func (param i32) (result f64)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_i32_i64_i64_=>_none (func (param i32 i32 i32 i64 i64)))
 (type $i64_i64_i64_i64_i64_i64_i64_=>_none (func (param i64 i64 i64 i64 i64 i64 i64)))
 (type $i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32) (result i32)))
 (type $i32_i32_i32_i32_i64_=>_i32 (func (param i32 i32 i32 i32 i64) (result i32)))
 (type $i32_i32_i32_i32_i64_i32_=>_i32 (func (param i32 i32 i32 i32 i64 i32) (result i32)))
 (type $i32_i32_i32_i64_i32_=>_i32 (func (param i32 i32 i32 i64 i32) (result i32)))
 (type $i32_i64_i64_=>_i32 (func (param i32 i64 i64) (result i32)))
 (type $i64_i64_=>_i32 (func (param i64 i64) (result i32)))
 (type $i64_=>_i64 (func (param i64) (result i64)))
 (type $i32_i32_=>_i64 (func (param i32 i32) (result i64)))
 (type $i64_i64_i64_i64_=>_i64 (func (param i64 i64 i64 i64) (result i64)))
 (type $i64_i64_i64_i64_i64_=>_i64 (func (param i64 i64 i64 i64 i64) (result i64)))
 (type $i64_i64_i64_i64_i64_i64_i64_i64_=>_i64 (func (param i64 i64 i64 i64 i64 i64 i64 i64) (result i64)))
 (type $i64_i64_i64_i64_i64_i64_i64_i64_i64_=>_i64 (func (param i64 i64 i64 i64 i64 i64 i64 i64 i64) (result i64)))
 (type $f64_i32_=>_f64 (func (param f64 i32) (result f64)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "env" "input" (func $~lib/near-sdk-core/env/env/env.input (param i64)))
 (import "env" "register_len" (func $~lib/near-sdk-core/env/env/env.register_len (param i64) (result i64)))
 (import "env" "panic" (func $~lib/near-sdk-core/env/env/env.panic))
 (import "env" "read_register" (func $~lib/near-sdk-core/env/env/env.read_register (param i64 i64)))
 (import "env" "predecessor_account_id" (func $~lib/near-sdk-core/env/env/env.predecessor_account_id (param i64)))
 (import "env" "storage_has_key" (func $~lib/near-sdk-core/env/env/env.storage_has_key (param i64 i64) (result i64)))
 (import "env" "account_balance" (func $~lib/near-sdk-core/env/env/env.account_balance (param i64)))
 (import "env" "storage_usage" (func $~lib/near-sdk-core/env/env/env.storage_usage (result i64)))
 (import "env" "promise_batch_create" (func $~lib/near-sdk-core/env/env/env.promise_batch_create (param i64 i64) (result i64)))
 (import "env" "promise_batch_action_function_call" (func $~lib/near-sdk-core/env/env/env.promise_batch_action_function_call (param i64 i64 i64 i64 i64 i64 i64)))
 (import "env" "promise_create" (func $~lib/near-sdk-core/env/env/env.promise_create (param i64 i64 i64 i64 i64 i64 i64 i64) (result i64)))
 (import "env" "promise_then" (func $~lib/near-sdk-core/env/env/env.promise_then (param i64 i64 i64 i64 i64 i64 i64 i64 i64) (result i64)))
 (import "env" "value_return" (func $~lib/near-sdk-core/env/env/env.value_return (param i64 i64)))
 (import "env" "promise_batch_action_transfer" (func $~lib/near-sdk-core/env/env/env.promise_batch_action_transfer (param i64 i64)))
 (import "env" "storage_read" (func $~lib/near-sdk-core/env/env/env.storage_read (param i64 i64 i64) (result i64)))
 (import "env" "storage_write" (func $~lib/near-sdk-core/env/env/env.storage_write (param i64 i64 i64 i64 i64) (result i64)))
 (import "env" "storage_remove" (func $~lib/near-sdk-core/env/env/env.storage_remove (param i64 i64 i64) (result i64)))
 (import "env" "current_account_id" (func $~lib/near-sdk-core/env/env/env.current_account_id (param i64)))
 (import "env" "promise_results_count" (func $~lib/near-sdk-core/env/env/env.promise_results_count (result i64)))
 (import "env" "promise_result" (func $~lib/near-sdk-core/env/env/env.promise_result (param i64 i64) (result i64)))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $assembly/index/admins (mut i32) (i32.const 0))
 (global $assembly/index/tokens (mut i32) (i32.const 0))
 (global $~lib/as-bignum/globals/__res128_hi (mut i64) (i64.const 0))
 (global $assembly/index/storageCosts (mut i32) (i32.const 0))
 (global $~lib/assemblyscript-json/JSON/_JSON.handler (mut i32) (i32.const 0))
 (global $~lib/assemblyscript-json/JSON/_JSON.decoder (mut i32) (i32.const 0))
 (global $~argumentsLength (mut i32) (i32.const 0))
 (global $~lib/util/string/__fixmulShift (mut i64) (i64.const 0))
 (global $~lib/assemblyscript-json/JSON/NULL (mut i32) (i32.const 0))
 (memory $0 1)
 (data (i32.const 1036) "\1c")
 (data (i32.const 1048) "\01\00\00\00\04\00\00\00:\00:")
 (data (i32.const 1068) "\1c")
 (data (i32.const 1080) "\01")
 (data (i32.const 1100) "<")
 (data (i32.const 1112) "\01\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data (i32.const 1164) "<")
 (data (i32.const 1176) "\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00s\00t\00u\00b\00.\00t\00s")
 (data (i32.const 1228) "\1c")
 (data (i32.const 1240) "\01\00\00\00\08\00\00\00:\00m\00a\00p")
 (data (i32.const 1260) "\1c")
 (data (i32.const 1272) "\01\00\00\00\08\00\00\00:\00l\00e\00n")
 (data (i32.const 1292) ",")
 (data (i32.const 1304) "\01\00\00\00\10\00\00\00:\00e\00n\00t\00r\00i\00e\00s")
 (data (i32.const 1340) "\1c")
 (data (i32.const 1352) "\01\00\00\00\02\00\00\00a")
 (data (i32.const 1372) "\1c")
 (data (i32.const 1384) "\01\00\00\00\02\00\00\00b")
 (data (i32.const 1404) "<")
 (data (i32.const 1416) "\01\00\00\00(\00\00\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000")
 (data (i32.const 1468) ",")
 (data (i32.const 1480) "\01\00\00\00\1a\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00r\00a\00d\00i\00x")
 (data (i32.const 1516) "L")
 (data (i32.const 1528) "\01\00\00\00.\00\00\00~\00l\00i\00b\00/\00a\00s\00-\00b\00i\00g\00n\00u\00m\00/\00u\00t\00i\00l\00s\00.\00t\00s")
 (data (i32.const 1596) "\\")
 (data (i32.const 1612) "K\00\00\00\00\01\02\03\04\05\06\07\08\t$$$$$$$\n\0b\0c\0d\0e\0f\10\11\12\13\14\15\16\17\18\19\1a\1b\1c\1d\1e\1f !\"#$$$$$$\n\0b\0c\0d\0e\0f\10\11\12\13\14\15\16\17\18\19\1a\1b\1c\1d\1e\1f !\"#")
 (data (i32.const 1692) ",")
 (data (i32.const 1704) "\n\00\00\00\10\00\00\00P\06\00\00P\06\00\00K\00\00\00K")
 (data (i32.const 1740) ",")
 (data (i32.const 1752) "\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h")
 (data (i32.const 1788) "<")
 (data (i32.const 1800) "\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s")
 (data (i32.const 1852) ",")
 (data (i32.const 1864) "\01\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 1900) "<")
 (data (i32.const 1912) "\01\00\00\00\1e\00\00\00u\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00n\00u\00l\00l")
 (data (i32.const 1964) "\\")
 (data (i32.const 1976) "\01\00\00\00F\00\00\00~\00l\00i\00b\00/\00a\00s\00s\00e\00m\00b\00l\00y\00s\00c\00r\00i\00p\00t\00-\00j\00s\00o\00n\00/\00d\00e\00c\00o\00d\00e\00r\00.\00t\00s")
 (data (i32.const 2060) "<")
 (data (i32.const 2072) "\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data (i32.const 2124) "<")
 (data (i32.const 2136) "\01\00\00\00$\00\00\00~\00l\00i\00b\00/\00t\00y\00p\00e\00d\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 2188) "<")
 (data (i32.const 2200) "\01\00\00\00(\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00i\00n\00p\00u\00t\00 \00e\00n\00d")
 (data (i32.const 2252) "\1c")
 (data (i32.const 2264) "\01\00\00\00\02\00\00\00{")
 (data (i32.const 2284) "|")
 (data (i32.const 2296) "\01\00\00\00^\00\00\00E\00l\00e\00m\00e\00n\00t\00 \00t\00y\00p\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00n\00u\00l\00l\00a\00b\00l\00e\00 \00i\00f\00 \00a\00r\00r\00a\00y\00 \00i\00s\00 \00h\00o\00l\00e\00y")
 (data (i32.const 2412) "<")
 (data (i32.const 2424) "\01\00\00\00\"\00\00\00u\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00u\00p\00c\00a\00s\00t")
 (data (i32.const 2476) "\\")
 (data (i32.const 2488) "\01\00\00\00@\00\00\00~\00l\00i\00b\00/\00a\00s\00s\00e\00m\00b\00l\00y\00s\00c\00r\00i\00p\00t\00-\00j\00s\00o\00n\00/\00J\00S\00O\00N\00.\00t\00s")
 (data (i32.const 2572) "\1c")
 (data (i32.const 2584) "\01\00\00\00\02\00\00\00}")
 (data (i32.const 2604) "\1c")
 (data (i32.const 2616) "\01\00\00\00\02\00\00\00,")
 (data (i32.const 2636) ",")
 (data (i32.const 2648) "\01\00\00\00\18\00\00\00E\00x\00p\00e\00c\00t\00e\00d\00 \00\'\00,\00\'")
 (data (i32.const 2684) "\1c")
 (data (i32.const 2696) "\01\00\00\00\02\00\00\00\"")
 (data (i32.const 2716) "L")
 (data (i32.const 2728) "\01\00\00\00:\00\00\00E\00x\00p\00e\00c\00t\00e\00d\00 \00d\00o\00u\00b\00l\00e\00-\00q\00u\00o\00t\00e\00d\00 \00s\00t\00r\00i\00n\00g")
 (data (i32.const 2796) "L")
 (data (i32.const 2808) "\01\00\00\008\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00c\00o\00n\00t\00r\00o\00l\00 \00c\00h\00a\00r\00a\00c\00t\00e\00r")
 (data (i32.const 2876) ",")
 (data (i32.const 2888) "\01\00\00\00\1c\00\00\00~\00l\00i\00b\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s")
 (data (i32.const 2924) "\1c")
 (data (i32.const 2936) "\01\00\00\00\02\00\00\00\\")
 (data (i32.const 2956) "\1c")
 (data (i32.const 2968) "\01\00\00\00\02\00\00\00/")
 (data (i32.const 2988) "\1c")
 (data (i32.const 3000) "\01\00\00\00\02\00\00\00\08")
 (data (i32.const 3020) "\1c")
 (data (i32.const 3032) "\01\00\00\00\02\00\00\00n")
 (data (i32.const 3052) "\1c")
 (data (i32.const 3064) "\01\00\00\00\02\00\00\00\n")
 (data (i32.const 3084) "\1c")
 (data (i32.const 3096) "\01\00\00\00\02\00\00\00r")
 (data (i32.const 3116) "\1c")
 (data (i32.const 3128) "\01\00\00\00\02\00\00\00\0d")
 (data (i32.const 3148) "\1c")
 (data (i32.const 3160) "\01\00\00\00\02\00\00\00t")
 (data (i32.const 3180) "\1c")
 (data (i32.const 3192) "\01\00\00\00\02\00\00\00\t")
 (data (i32.const 3212) "\1c")
 (data (i32.const 3224) "\01\00\00\00\02\00\00\00u")
 (data (i32.const 3244) "<")
 (data (i32.const 3256) "\01\00\00\00&\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00\\\00u\00 \00d\00i\00g\00i\00t")
 (data (i32.const 3308) "L")
 (data (i32.const 3320) "\01\00\00\00<\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00e\00s\00c\00a\00p\00e\00d\00 \00c\00h\00a\00r\00a\00c\00t\00e\00r\00:\00 ")
 (data (i32.const 3388) "\1c")
 (data (i32.const 3400) "\01\00\00\00\02\00\00\00:")
 (data (i32.const 3420) ",")
 (data (i32.const 3432) "\01\00\00\00\18\00\00\00E\00x\00p\00e\00c\00t\00e\00d\00 \00\'\00:\00\'")
 (data (i32.const 3468) "L")
 (data (i32.const 3480) "\01\00\00\000\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00e\00n\00d\00 \00o\00f\00 \00o\00b\00j\00e\00c\00t")
 (data (i32.const 3548) ",")
 (data (i32.const 3560) "\01\00\00\00\1c\00\00\00A\00r\00r\00a\00y\00 \00i\00s\00 \00e\00m\00p\00t\00y")
 (data (i32.const 3596) "\1c")
 (data (i32.const 3608) "\01\00\00\00\02\00\00\00[")
 (data (i32.const 3628) "\1c")
 (data (i32.const 3640) "\01\00\00\00\02\00\00\00]")
 (data (i32.const 3660) "L")
 (data (i32.const 3672) "\01\00\00\00.\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00e\00n\00d\00 \00o\00f\00 \00a\00r\00r\00a\00y")
 (data (i32.const 3740) "\1c")
 (data (i32.const 3752) "\01\00\00\00\n\00\00\00f\00a\00l\00s\00e")
 (data (i32.const 3772) ",")
 (data (i32.const 3784) "\01\00\00\00\14\00\00\00E\00x\00p\00e\00c\00t\00e\00d\00 \00\'")
 (data (i32.const 3820) "\1c")
 (data (i32.const 3832) "\01\00\00\00\02\00\00\00\'")
 (data (i32.const 3852) "\1c")
 (data (i32.const 3864) "\01\00\00\00\08\00\00\00t\00r\00u\00e")
 (data (i32.const 3884) "\1c")
 (data (i32.const 3896) "\01\00\00\00\04\00\00\00-\000")
 (data (i32.const 3926) "\f0?\00\00\00\00\00\00$@\00\00\00\00\00\00Y@\00\00\00\00\00@\8f@\00\00\00\00\00\88\c3@\00\00\00\00\00j\f8@\00\00\00\00\80\84.A\00\00\00\00\d0\12cA\00\00\00\00\84\d7\97A\00\00\00\00e\cd\cdA\00\00\00 _\a0\02B\00\00\00\e8vH7B\00\00\00\a2\94\1amB\00\00@\e5\9c0\a2B\00\00\90\1e\c4\bc\d6B\00\004&\f5k\0cC\00\80\e07y\c3AC\00\a0\d8\85W4vC\00\c8Ngm\c1\abC\00=\91`\e4X\e1C@\8c\b5x\1d\af\15DP\ef\e2\d6\e4\1aKD\92\d5M\06\cf\f0\80D")
 (data (i32.const 4108) "\1c")
 (data (i32.const 4120) "\01\00\00\00\08\00\00\00n\00u\00l\00l")
 (data (i32.const 4140) "<")
 (data (i32.const 4152) "\01\00\00\00\"\00\00\00C\00a\00n\00n\00o\00t\00 \00p\00a\00r\00s\00e\00 \00J\00S\00O\00N")
 (data (i32.const 4204) "L")
 (data (i32.const 4216) "\01\00\00\00<\00\00\00~\00l\00i\00b\00/\00n\00e\00a\00r\00-\00s\00d\00k\00-\00b\00i\00n\00d\00g\00e\00n\00/\00i\00n\00d\00e\00x\00.\00t\00s")
 (data (i32.const 4284) ",")
 (data (i32.const 4296) "\01\00\00\00\12\00\00\00s\00c\00h\00e\00d\00u\00l\00e\00s")
 (data (i32.const 4332) "<")
 (data (i32.const 4344) "\01\00\00\00$\00\00\00K\00e\00y\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00e\00x\00i\00s\00t")
 (data (i32.const 4396) ",")
 (data (i32.const 4408) "\01\00\00\00\16\00\00\00~\00l\00i\00b\00/\00m\00a\00p\00.\00t\00s")
 (data (i32.const 4444) "\1c")
 (data (i32.const 4456) "\01\00\00\00\n\00\00\00t\00y\00p\00e\00 ")
 (data (i32.const 4476) "|")
 (data (i32.const 4488) "\01\00\00\00h\00\00\00A\00r\00r\00a\00y\00<\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00/\00A\00r\00r\00a\00y\00<\00a\00s\00s\00e\00m\00b\00l\00y\00/\00m\00o\00d\00e\00l\00/\00C\00o\00n\00t\00r\00a\00c\00t\00C\00a\00l\00l\00>\00>")
 (data (i32.const 4604) "<")
 (data (i32.const 4616) "\01\00\00\00 \00\00\00 \00c\00a\00n\00n\00o\00t\00 \00b\00e\00 \00n\00u\00l\00l\00.")
 (data (i32.const 4668) "\1c")
 (data (i32.const 4680) "\01\00\00\00\n\00\00\00K\00e\00y\00:\00 ")
 (data (i32.const 4700) ",")
 (data (i32.const 4712) "\01\00\00\00\16\00\00\00 \00w\00i\00t\00h\00 \00t\00y\00p\00e\00 ")
 (data (i32.const 4748) "<")
 (data (i32.const 4760) "\01\00\00\00\1e\00\00\00i\00s\00 \00n\00o\00t\00 \00n\00u\00l\00l\00a\00b\00l\00e")
 (data (i32.const 4812) "<")
 (data (i32.const 4824) "\01\00\00\00 \00\00\00V\00a\00l\00u\00e\00 \00w\00i\00t\00h\00 \00K\00e\00y\00:\00 ")
 (data (i32.const 4876) "L")
 (data (i32.const 4888) "\01\00\00\002\00\00\00 \00i\00s\00 \00n\00o\00t\00 \00a\00n\00 \00a\00r\00r\00a\00y\00 \00o\00r\00 \00n\00u\00l\00l\00.")
 (data (i32.const 4956) "\\")
 (data (i32.const 4968) "\01\00\00\00D\00\00\00A\00r\00r\00a\00y\00<\00a\00s\00s\00e\00m\00b\00l\00y\00/\00m\00o\00d\00e\00l\00/\00C\00o\00n\00t\00r\00a\00c\00t\00C\00a\00l\00l\00>")
 (data (i32.const 5052) ",")
 (data (i32.const 5064) "\01\00\00\00\18\00\00\00C\00o\00n\00t\00r\00a\00c\00t\00C\00a\00l\00l")
 (data (i32.const 5100) "L")
 (data (i32.const 5112) "\01\00\00\004\00\00\00 \00i\00s\00 \00n\00o\00t\00 \00a\00n\00 \00o\00b\00j\00e\00c\00t\00 \00o\00r\00 \00n\00u\00l\00l\00 ")
 (data (i32.const 5180) "\1c")
 (data (i32.const 5192) "\01\00\00\00\08\00\00\00a\00d\00d\00r")
 (data (i32.const 5212) "\1c")
 (data (i32.const 5224) "\01\00\00\00\0c\00\00\00S\00t\00r\00i\00n\00g")
 (data (i32.const 5244) "L")
 (data (i32.const 5256) "\01\00\00\000\00\00\00 \00i\00s\00 \00n\00o\00t\00 \00a\00 \00s\00t\00r\00i\00n\00g\00 \00o\00r\00 \00n\00u\00l\00l")
 (data (i32.const 5324) "\1c")
 (data (i32.const 5336) "\01\00\00\00\08\00\00\00f\00u\00n\00c")
 (data (i32.const 5356) "\1c")
 (data (i32.const 5368) "\01\00\00\00\08\00\00\00a\00r\00g\00s")
 (data (i32.const 5388) "\1c")
 (data (i32.const 5400) "\01\00\00\00\06\00\00\00g\00a\00s")
 (data (i32.const 5420) "\1c")
 (data (i32.const 5432) "\01\00\00\00\06\00\00\00u\006\004")
 (data (i32.const 5452) "\9c")
 (data (i32.const 5464) "\01\00\00\00~\00\00\00 \00i\00s\00 \00a\00n\00 \006\004\00-\00b\00i\00t\00 \00i\00n\00t\00e\00g\00e\00r\00 \00a\00n\00d\00 \00i\00s\00 \00e\00x\00p\00e\00c\00t\00e\00d\00 \00t\00o\00 \00b\00e\00 \00e\00n\00c\00o\00d\00e\00d\00 \00a\00s\00 \00a\00 \00s\00t\00r\00i\00n\00g")
 (data (i32.const 5612) "\1c")
 (data (i32.const 5624) "\01\00\00\00\08\00\00\00d\00e\00p\00o")
 (data (i32.const 5644) "\1c")
 (data (i32.const 5656) "\01\00\00\00\08\00\00\00u\001\002\008")
 (data (i32.const 5676) "l")
 (data (i32.const 5688) "\01\00\00\00Z\00\00\00 \00e\00x\00p\00e\00c\00t\00e\00d\00 \00t\00y\00p\00e\00 \00s\00t\00r\00i\00n\00g\00 \00t\00o\00 \00d\00e\00c\00o\00d\00e\00 \00u\001\002\008\00 \00b\00u\00t\00 \00g\00o\00t\00 ")
 (data (i32.const 5788) "\1c")
 (data (i32.const 5800) "\01\00\00\00\0c\00\00\00s\00t\00r\00i\00n\00g")
 (data (i32.const 5820) ",")
 (data (i32.const 5832) "\01\00\00\00\0e\00\00\00B\00o\00o\00l\00e\00a\00n")
 (data (i32.const 5868) "\1c")
 (data (i32.const 5880) "\01\00\00\00\0c\00\00\00O\00b\00j\00e\00c\00t")
 (data (i32.const 5900) "\1c")
 (data (i32.const 5912) "\01\00\00\00\n\00\00\00A\00r\00r\00a\00y")
 (data (i32.const 5932) "\1c")
 (data (i32.const 5944) "\01\00\00\00\08\00\00\00N\00u\00l\00l")
 (data (i32.const 5964) ",")
 (data (i32.const 5976) "\01\00\00\00\0e\00\00\00I\00n\00t\00e\00g\00e\00r")
 (data (i32.const 6012) "\1c")
 (data (i32.const 6024) "\01\00\00\00\n\00\00\00F\00l\00o\00a\00t")
 (data (i32.const 6044) ",")
 (data (i32.const 6056) "\01\00\00\00\18\00\00\00U\00N\00K\00N\00O\00W\00N\00 \00T\00Y\00P\00E")
 (data (i32.const 6092) ",")
 (data (i32.const 6104) "\01\00\00\00\14\00\00\00P\00a\00r\00a\00m\00e\00t\00e\00r\00 ")
 (data (i32.const 6140) "L")
 (data (i32.const 6152) "\01\00\00\000\00\00\00 \00i\00s\00 \00r\00e\00q\00u\00i\00r\00e\00d\00 \00b\00u\00t\00 \00m\00i\00s\00s\00i\00n\00g")
 (data (i32.const 6220) "L")
 (data (i32.const 6232) "\01\00\00\004\00\00\00~\00l\00i\00b\00/\00n\00e\00a\00r\00-\00s\00d\00k\00-\00c\00o\00r\00e\00/\00u\00t\00i\00l\00.\00t\00s")
 (data (i32.const 6300) "l")
 (data (i32.const 6312) "\01\00\00\00\\\00\00\00 \00n\00e\00e\00d\00s\00 \00t\00o\00 \00b\00e\00 \00w\00h\00i\00t\00e\00l\00i\00s\00t\00e\00d\00 \00t\00o\00 \00c\00a\00l\00l\00 \00t\00h\00i\00s\00 \00f\00u\00n\00c\00t\00i\00o\00n")
 (data (i32.const 6412) "<")
 (data (i32.const 6424) "\01\00\00\00\"\00\00\00a\00s\00s\00e\00m\00b\00l\00y\00/\00i\00n\00d\00e\00x\00.\00t\00s")
 (data (i32.const 6476) "L")
 (data (i32.const 6488) "\01\00\00\002\00\00\00s\00c\00h\00e\00d\00u\00l\00e\00s\00 \00c\00a\00n\00n\00o\00t\00 \00b\00e\00 \00e\00m\00p\00t\00y")
 (data (i32.const 6556) ",")
 (data (i32.const 6568) "\01\00\00\00\14\00\00\00s\00c\00h\00e\00d\00u\00l\00e\00s\00[")
 (data (i32.const 6604) "<")
 (data (i32.const 6616) "\01\00\00\00\"\00\00\00]\00 \00c\00a\00n\00n\00o\00t\00 \00b\00e\00 \00e\00m\00p\00t\00y")
 (data (i32.const 6668) "\1c")
 (data (i32.const 6680) "!\00\00\00\0c\00\00\00\b0\19\00\00\00\00\00\00\e0\19")
 (data (i32.const 6700) "|")
 (data (i32.const 6712) "\01\00\00\00d\00\00\00t\00o\00S\00t\00r\00i\00n\00g\00(\00)\00 \00r\00a\00d\00i\00x\00 \00a\00r\00g\00u\00m\00e\00n\00t\00 \00m\00u\00s\00t\00 \00b\00e\00 \00b\00e\00t\00w\00e\00e\00n\00 \002\00 \00a\00n\00d\00 \003\006")
 (data (i32.const 6828) "<")
 (data (i32.const 6840) "\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00u\00t\00i\00l\00/\00n\00u\00m\00b\00e\00r\00.\00t\00s")
 (data (i32.const 6892) "\1c")
 (data (i32.const 6904) "\01\00\00\00\02\00\00\000")
 (data (i32.const 6924) "\\")
 (data (i32.const 6936) "\01\00\00\00H\00\00\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z")
 (data (i32.const 7020) "L")
 (data (i32.const 7032) "\01\00\00\000\00\00\00O\00v\00e\00r\00f\00l\00o\00w\00 \00d\00u\00r\00i\00n\00g\00 \00a\00d\00d\00i\00s\00i\00o\00n")
 (data (i32.const 7100) "\\")
 (data (i32.const 7112) "\01\00\00\00F\00\00\00~\00l\00i\00b\00/\00a\00s\00-\00b\00i\00g\00n\00u\00m\00/\00i\00n\00t\00e\00g\00e\00r\00/\00s\00a\00f\00e\00/\00u\001\002\008\00.\00t\00s")
 (data (i32.const 7196) "L")
 (data (i32.const 7208) "\01\00\00\00<\00\00\00~\00l\00i\00b\00/\00a\00s\00-\00b\00i\00g\00n\00u\00m\00/\00i\00n\00t\00e\00g\00e\00r\00/\00u\001\002\008\00.\00t\00s")
 (data (i32.const 7276) "L")
 (data (i32.const 7288) "\01\00\00\00<\00\00\00O\00v\00e\00r\00f\00l\00o\00w\00 \00d\00u\00r\00i\00n\00g\00 \00m\00u\00l\00t\00i\00p\00l\00i\00c\00a\00t\00i\00o\00n")
 (data (i32.const 7356) "L")
 (data (i32.const 7368) "\01\00\00\00:\00\00\00U\00n\00d\00e\00r\00f\00l\00o\00w\00 \00d\00u\00r\00i\00n\00g\00 \00s\00u\00b\00s\00t\00r\00a\00c\00t\00i\00o\00n")
 (data (i32.const 7436) "<")
 (data (i32.const 7448) "\01\00\00\00$\00\00\00i\00n\00s\00u\00f\00f\00i\00c\00i\00e\00n\00t\00 \00f\00u\00n\00d\00s")
 (data (i32.const 7500) "\1c")
 (data (i32.const 7512) "\01\00\00\00\04\00\00\00\\\00\"")
 (data (i32.const 7532) "\1c")
 (data (i32.const 7544) "\01\00\00\00\04\00\00\00\\\00\\")
 (data (i32.const 7564) ",")
 (data (i32.const 7576) "\01\00\00\00\12\00\00\00s\00e\00n\00d\00e\00r\00_\00i\00d")
 (data (i32.const 7612) "\1c")
 (data (i32.const 7624) "\01\00\00\00\0c\00\00\00a\00m\00o\00u\00n\00t")
 (data (i32.const 7644) "\1c")
 (data (i32.const 7656) "\01\00\00\00\06\00\00\00m\00s\00g")
 (data (i32.const 7676) "\1c")
 (data (i32.const 7708) "\1c")
 (data (i32.const 7740) "L")
 (data (i32.const 7752) "\01\00\00\00<\00\00\00c\00o\00u\00l\00d\00 \00n\00o\00t\00 \00p\00a\00r\00s\00e\00 \00c\00o\00n\00t\00r\00a\00c\00t\00 \00c\00a\00l\00l\00 ")
 (data (i32.const 7820) ",")
 (data (i32.const 7832) "\01\00\00\00\1a\00\00\00 \00o\00f\00 \00s\00c\00h\00e\00d\00u\00l\00e\00 ")
 (data (i32.const 7868) ",")
 (data (i32.const 7880) "!\00\00\00\14\00\00\00P\1e\00\00\00\00\00\00\a0\1e\00\00\00\00\00\00@\04")
 (data (i32.const 7916) "\\")
 (data (i32.const 7928) "\01\00\00\00F\00\00\00~\00l\00i\00b\00/\00a\00s\00s\00e\00m\00b\00l\00y\00s\00c\00r\00i\00p\00t\00-\00j\00s\00o\00n\00/\00e\00n\00c\00o\00d\00e\00r\00.\00t\00s")
 (data (i32.const 8012) "\1c")
 (data (i32.const 8024) "\01\00\00\00\04\00\00\00\\\00b")
 (data (i32.const 8044) "\1c")
 (data (i32.const 8056) "\01\00\00\00\04\00\00\00\\\00n")
 (data (i32.const 8076) "\1c")
 (data (i32.const 8088) "\01\00\00\00\04\00\00\00\\\00r")
 (data (i32.const 8108) "\1c")
 (data (i32.const 8120) "\01\00\00\00\04\00\00\00\\\00t")
 (data (i32.const 8140) "\\")
 (data (i32.const 8152) "\01\00\00\00H\00\00\00U\00n\00s\00u\00p\00p\00o\00r\00t\00e\00d\00 \00c\00o\00n\00t\00r\00o\00l\00 \00c\00h\00a\00r\00a\00c\00t\00e\00r\00 \00c\00o\00d\00e\00:\00 ")
 (data (i32.const 8236) "l")
 (data (i32.const 8248) "\01\00\00\00N\00\00\00r\00a\00d\00i\00x\00 \00a\00r\00g\00u\00m\00e\00n\00t\00 \00m\00u\00s\00t\00 \00b\00e\00 \00b\00e\00t\00w\00e\00e\00n\00 \001\000\00 \00o\00r\00 \001\006")
 (data (i32.const 8348) "<")
 (data (i32.const 8360) "\01\00\00\00 \00\00\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f")
 (data (i32.const 8412) ",")
 (data (i32.const 8424) "\01\00\00\00\14\00\00\00a\00c\00c\00o\00u\00n\00t\00_\00i\00d")
 (data (i32.const 8460) ",")
 (data (i32.const 8472) "\01\00\00\00\16\00\00\00a\00c\00c\00o\00u\00n\00t\00_\00i\00d\00s")
 (data (i32.const 8508) "L")
 (data (i32.const 8520) "\01\00\00\002\00\00\00A\00r\00r\00a\00y\00<\00~\00l\00i\00b\00/\00s\00t\00r\00i\00n\00g\00/\00S\00t\00r\00i\00n\00g\00>")
 (data (i32.const 8588) "\1c")
 (data (i32.const 8600) "\01\00\00\00\n\00\00\00K\00e\00y\00 \00\'")
 (data (i32.const 8620) "\\")
 (data (i32.const 8632) "\01\00\00\00>\00\00\00\'\00 \00i\00s\00 \00n\00o\00t\00 \00p\00r\00e\00s\00e\00n\00t\00 \00i\00n\00 \00t\00h\00e\00 \00s\00t\00o\00r\00a\00g\00e")
 (data (i32.const 8716) "L")
 (data (i32.const 8728) "\01\00\00\00:\00\00\00~\00l\00i\00b\00/\00n\00e\00a\00r\00-\00s\00d\00k\00-\00c\00o\00r\00e\00/\00s\00t\00o\00r\00a\00g\00e\00.\00t\00s")
 (data (i32.const 8796) "|")
 (data (i32.const 8808) "\01\00\00\00d\00\00\00~\00l\00i\00b\00/\00n\00e\00a\00r\00-\00s\00d\00k\00-\00c\00o\00r\00e\00/\00c\00o\00l\00l\00e\00c\00t\00i\00o\00n\00s\00/\00p\00e\00r\00s\00i\00s\00t\00e\00n\00t\00V\00e\00c\00t\00o\00r\00.\00t\00s")
 (data (i32.const 8924) "\1c")
 (data (i32.const 8936) "\01\00\00\00\06\00\00\00k\00e\00y")
 (data (i32.const 8956) "\1c")
 (data (i32.const 8968) "\01\00\00\00\n\00\00\00v\00a\00l\00u\00e")
 (data (i32.const 8988) "<")
 (data (i32.const 9000) "\01\00\00\00\1e\00\00\00V\00e\00c\00t\00o\00r\00 \00i\00s\00 \00e\00m\00p\00t\00y")
 (data (i32.const 9052) "\\")
 (data (i32.const 9064) "\01\00\00\00B\00\00\00M\00a\00p\00E\00n\00t\00r\00y\00<\00~\00l\00i\00b\00/\00s\00t\00r\00i\00n\00g\00/\00S\00t\00r\00i\00n\00g\00,\00b\00o\00o\00l\00>")
 (data (i32.const 9148) "\1c")
 (data (i32.const 9160) "\01\00\00\00\08\00\00\00b\00o\00o\00l")
 (data (i32.const 9180) "<")
 (data (i32.const 9192) "\01\00\00\00 \00\00\00 \00i\00s\00 \00n\00o\00t\00 \00a\00 \00s\00t\00r\00i\00n\00g")
 (data (i32.const 9244) "<")
 (data (i32.const 9256) "\01\00\00\00&\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00b\00o\00u\00n\00d\00s")
 (data (i32.const 9308) "\1c")
 (data (i32.const 9320) "\01\00\00\00\n\00\00\00s\00t\00a\00r\00t")
 (data (i32.const 9340) "\1c")
 (data (i32.const 9352) "\01\00\00\00\06\00\00\00i\003\002")
 (data (i32.const 9372) "<")
 (data (i32.const 9384) "\01\00\00\00$\00\00\00 \00i\00s\00 \00n\00o\00t\00 \00a\00n\00 \00I\00n\00t\00e\00g\00e\00r")
 (data (i32.const 9436) "\1c")
 (data (i32.const 9448) "\01\00\00\00\06\00\00\00e\00n\00d")
 (data (i32.const 9468) ",")
 (data (i32.const 9480) "\01\00\00\00\12\00\00\00a\00d\00d\00r\00e\00s\00s\00e\00s")
 (data (i32.const 9516) "\1c")
 (data (i32.const 9528) "\01\00\00\00\08\00\00\00i\00n\00i\00t")
 (data (i32.const 9548) "<")
 (data (i32.const 9560) "\01\00\00\00&\00\00\00A\00l\00r\00e\00a\00d\00y\00 \00i\00n\00i\00t\00i\00a\00l\00i\00z\00e\00d")
 (data (i32.const 9612) "\1c")
 (data (i32.const 9624) "\01\00\00\00\08\00\00\00d\00o\00n\00e")
 (data (i32.const 9644) ",")
 (data (i32.const 9656) "\01\00\00\00\16\00\00\00r\00e\00f\00_\00a\00d\00d\00r\00e\00s\00s")
 (data (i32.const 9692) "\1c")
 (data (i32.const 9704) "\01\00\00\00\0c\00\00\00t\00o\00k\00e\00n\00s")
 (data (i32.const 9724) ",")
 (data (i32.const 9736) "\01\00\00\00\16\00\00\00r\00e\00c\00e\00i\00v\00e\00r\00_\00i\00d")
 (data (i32.const 9772) ",")
 (data (i32.const 9784) "\01\00\00\00\1c\00\00\00w\00i\00t\00h\00d\00r\00a\00w\00a\00l\00_\00g\00a\00s")
 (data (i32.const 9820) "<")
 (data (i32.const 9832) "\01\00\00\00$\00\00\00t\00o\00k\00e\00n\00_\00t\00r\00a\00n\00s\00f\00e\00r\00_\00g\00a\00s")
 (data (i32.const 9884) ",")
 (data (i32.const 9896) "\01\00\00\00\10\00\00\00w\00i\00t\00h\00d\00r\00a\00w")
 (data (i32.const 9932) ",")
 (data (i32.const 9944) "\01\00\00\00\1a\00\00\00{\00\"\00t\00o\00k\00e\00n\00_\00i\00d\00\"\00:\00\"")
 (data (i32.const 9980) ",")
 (data (i32.const 9992) "\01\00\00\00\18\00\00\00\"\00,\00\"\00a\00m\00o\00u\00n\00t\00\"\00:\00\"")
 (data (i32.const 10028) "\1c")
 (data (i32.const 10040) "\01\00\00\00\04\00\00\00\"\00}")
 (data (i32.const 10060) ",")
 (data (i32.const 10072) "!\00\00\00\14\00\00\00\e0&\00\00\00\00\00\00\10\'\00\00\00\00\00\00@\'")
 (data (i32.const 10108) "\1c")
 (data (i32.const 10120) "\01\00\00\00\02\00\00\001")
 (data (i32.const 10140) ",")
 (data (i32.const 10152) "\01\00\00\00\16\00\00\00f\00t\00_\00t\00r\00a\00n\00s\00f\00e\00r")
 (data (i32.const 10188) "<")
 (data (i32.const 10200) "\01\00\00\00\"\00\00\00{\00\"\00r\00e\00c\00e\00i\00v\00e\00r\00_\00i\00d\00\"\00:\00 \00\"")
 (data (i32.const 10252) ",")
 (data (i32.const 10264) "\01\00\00\00\1c\00\00\00\"\00,\00 \00\"\00a\00m\00o\00u\00n\00t\00\"\00:\00 \00\"")
 (data (i32.const 10300) ",")
 (data (i32.const 10312) "!\00\00\00\14\00\00\00\e0\'\00\00\00\00\00\00 (\00\00\00\00\00\00@\'")
 (data (i32.const 10352) "*\00\00\00 \00\00\00\00\00\00\00 ")
 (data (i32.const 10420) " \00\00\00\t\00\00\00 \00\00\00\00\00\00\00B\00\00\00\00\00\00\00 ")
 (data (i32.const 10456) "\0d\00\00\00 \00\00\00\00\00\00\00\10A\82\00\00\00\00\00A\00\00\00\02\00\00\00\00\00\00\00\11\00\00\00 \00\00\00\00\00\00\00\02A")
 (data (i32.const 10528) "\0d\00\00\00\02A")
 (data (i32.const 10544) "\0d\00\00\00 \00\00\00\0d\00\00\00 \00\00\00\1a\00\00\00 \00\00\00\0d\00\00\00 \00\00\00\0d\00\00\00 \00\00\00\0d")
 (data (i32.const 10596) "\02A\00\00\00\00\00\00\02A\00\00\00\00\00\00\10A\82\00\00\00\00\00\04A\00\00\00\00\00\00\02\t\00\00\00\00\00\00 \00\00\00\00\00\00\00 ")
 (data (i32.const 10656) "&")
 (data (i32.const 10668) "A\08\00\00\02")
 (data (i32.const 10684) "\02A")
 (export "multicall" (func $assembly/index/__wrapper_multicall))
 (export "ft_on_transfer" (func $assembly/index/__wrapper_ft_on_transfer))
 (export "recover_near" (func $assembly/index/__wrapper_recover_near))
 (export "get_min_storage_balance" (func $assembly/index/__wrapper_get_min_storage_balance))
 (export "admins_add" (func $assembly/index/__wrapper_admins_add))
 (export "admins_remove" (func $assembly/index/__wrapper_admins_remove))
 (export "get_admins" (func $assembly/index/__wrapper_get_admins))
 (export "tokens_add" (func $assembly/index/__wrapper_tokens_add))
 (export "tokens_remove" (func $assembly/index/__wrapper_tokens_remove))
 (export "get_tokens" (func $assembly/index/__wrapper_get_tokens))
 (export "init" (func $assembly/index/__wrapper_init))
 (export "withdraw_from_ref" (func $assembly/index/__wrapper_withdraw_from_ref))
 (export "memory" (memory $0))
 (start $~start)
 (func $~lib/string/String#get:length (param $0 i32) (result i32)
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
 )
 (func $~lib/rt/stub/maybeGrowMemory (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  memory.size
  local.tee $2
  i32.const 16
  i32.shl
  i32.const 15
  i32.add
  i32.const -16
  i32.and
  local.tee $1
  i32.gt_u
  if
   local.get $2
   local.get $0
   local.get $1
   i32.sub
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.tee $1
   local.get $1
   local.get $2
   i32.lt_s
   select
   memory.grow
   i32.const 0
   i32.lt_s
   if
    local.get $1
    memory.grow
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
  end
  local.get $0
  global.set $~lib/rt/stub/offset
 )
 (func $~lib/rt/common/BLOCK#set:mmInfo (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
 )
 (func $~lib/rt/stub/__alloc (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 1120
   i32.const 1184
   i32.const 33
   i32.const 29
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/stub/offset
  global.get $~lib/rt/stub/offset
  i32.const 4
  i32.add
  local.tee $2
  local.get $0
  i32.const 19
  i32.add
  i32.const -16
  i32.and
  i32.const 4
  i32.sub
  local.tee $0
  i32.add
  call $~lib/rt/stub/maybeGrowMemory
  local.get $0
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $2
 )
 (func $~lib/rt/common/OBJECT#set:gcInfo (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $~lib/rt/common/OBJECT#set:gcInfo2 (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
 )
 (func $~lib/rt/common/OBJECT#set:rtId (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $~lib/rt/common/OBJECT#set:rtSize (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=16
 )
 (func $~lib/rt/stub/__new (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.const 1073741804
  i32.gt_u
  if
   i32.const 1120
   i32.const 1184
   i32.const 86
   i32.const 30
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 16
  i32.add
  call $~lib/rt/stub/__alloc
  local.tee $3
  i32.const 4
  i32.sub
  local.tee $2
  i32.const 0
  call $~lib/rt/common/OBJECT#set:gcInfo
  local.get $2
  i32.const 0
  call $~lib/rt/common/OBJECT#set:gcInfo2
  local.get $2
  local.get $1
  call $~lib/rt/common/OBJECT#set:rtId
  local.get $2
  local.get $0
  call $~lib/rt/common/OBJECT#set:rtSize
  local.get $3
  i32.const 16
  i32.add
 )
 (func $~lib/memory/memory.copy (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $~lib/util/memory/memmove|inlined.0
   local.get $2
   local.set $4
   local.get $0
   local.get $1
   i32.eq
   br_if $~lib/util/memory/memmove|inlined.0
   local.get $0
   local.get $1
   i32.lt_u
   if
    loop $while-continue|0
     local.get $4
     if
      local.get $0
      local.tee $2
      i32.const 1
      i32.add
      local.set $0
      local.get $1
      local.tee $3
      i32.const 1
      i32.add
      local.set $1
      local.get $2
      local.get $3
      i32.load8_u
      i32.store8
      local.get $4
      i32.const 1
      i32.sub
      local.set $4
      br $while-continue|0
     end
    end
   else
    loop $while-continue|1
     local.get $4
     if
      local.get $0
      local.get $4
      i32.const 1
      i32.sub
      local.tee $4
      i32.add
      local.get $1
      local.get $4
      i32.add
      i32.load8_u
      i32.store8
      br $while-continue|1
     end
    end
   end
  end
 )
 (func $~lib/string/String#concat (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/string/String#get:length
  i32.const 1
  i32.shl
  local.tee $3
  local.get $1
  call $~lib/string/String#get:length
  i32.const 1
  i32.shl
  local.tee $4
  i32.add
  local.tee $2
  i32.eqz
  if
   i32.const 1088
   return
  end
  local.get $2
  i32.const 1
  call $~lib/rt/stub/__new
  local.tee $2
  local.get $0
  local.get $3
  call $~lib/memory/memory.copy
  local.get $2
  local.get $3
  i32.add
  local.get $1
  local.get $4
  call $~lib/memory/memory.copy
  local.get $2
 )
 (func $~lib/string/String.__concat (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  call $~lib/string/String#concat
 )
 (func $~lib/near-sdk-core/collections/persistentUnorderedMap/PersistentUnorderedMap<~lib/string/String,bool>#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 8
  i32.const 3
  call $~lib/rt/stub/__new
  local.tee $2
  i32.const 0
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $2
  i32.const 0
  call $~lib/rt/common/OBJECT#set:gcInfo
  local.get $0
  i32.const 1248
  call $~lib/string/String.__concat
  local.set $3
  i32.const 4
  i32.const 4
  call $~lib/rt/stub/__new
  local.tee $1
  i32.const 0
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $1
  local.get $3
  i32.const 1056
  call $~lib/string/String.__concat
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $2
  local.get $1
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $0
  i32.const 1312
  call $~lib/string/String.__concat
  local.set $1
  i32.const 12
  i32.const 6
  call $~lib/rt/stub/__new
  local.tee $0
  i32.const 0
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $0
  i32.const 0
  call $~lib/rt/common/OBJECT#set:gcInfo
  local.get $0
  i32.const 0
  call $~lib/rt/common/OBJECT#set:gcInfo2
  local.get $0
  local.get $1
  i32.const 1280
  call $~lib/string/String.__concat
  call $~lib/rt/common/OBJECT#set:gcInfo
  local.get $0
  local.get $1
  i32.const 1056
  call $~lib/string/String.__concat
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $0
  i32.const -1
  call $~lib/rt/common/OBJECT#set:gcInfo2
  local.get $2
  local.get $0
  call $~lib/rt/common/OBJECT#set:gcInfo
  local.get $2
 )
 (func $~lib/as-bignum/integer/u128/u128#set:lo (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store
 )
 (func $~lib/as-bignum/integer/u128/u128#constructor (param $0 i32) (param $1 i64) (param $2 i64) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 16
   i32.const 9
   call $~lib/rt/stub/__new
   local.set $0
  end
  local.get $0
  local.get $1
  call $~lib/as-bignum/integer/u128/u128#set:lo
  local.get $0
  local.get $2
  i64.store offset=8
  local.get $0
 )
 (func $~lib/string/String#charCodeAt (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  call $~lib/string/String#get:length
  local.get $1
  i32.le_u
  if
   i32.const -1
   return
  end
  local.get $0
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  i32.load16_u
 )
 (func $~lib/as-bignum/globals/__multi3 (param $0 i64) (param $1 i64) (param $2 i64) (param $3 i64) (result i64)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  (local $8 i64)
  local.get $0
  i64.const 4294967295
  i64.and
  local.tee $4
  local.get $2
  i64.const 4294967295
  i64.and
  local.tee $5
  i64.mul
  local.set $6
  local.get $4
  local.get $2
  i64.const 32
  i64.shr_u
  local.tee $7
  i64.mul
  local.get $5
  local.get $0
  i64.const 32
  i64.shr_u
  local.tee $5
  i64.mul
  local.get $6
  i64.const 32
  i64.shr_u
  i64.add
  local.tee $8
  i64.const 4294967295
  i64.and
  i64.add
  local.set $4
  local.get $5
  local.get $7
  i64.mul
  local.get $8
  i64.const 32
  i64.shr_u
  i64.add
  local.get $1
  local.get $2
  i64.mul
  i64.add
  local.get $0
  local.get $3
  i64.mul
  i64.add
  local.get $4
  i64.const 32
  i64.shr_u
  i64.add
  global.set $~lib/as-bignum/globals/__res128_hi
  local.get $6
  i64.const 4294967295
  i64.and
  local.get $4
  i64.const 32
  i64.shl
  i64.or
 )
 (func $~lib/as-bignum/utils/atou128 (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i64)
  (local $8 i32)
  (local $9 i32)
  i32.const 10
  local.set $8
  block $folding-inner0
   local.get $0
   call $~lib/string/String#get:length
   local.tee $5
   i32.eqz
   br_if $folding-inner0
   local.get $0
   i32.const 0
   call $~lib/string/String#charCodeAt
   local.tee $2
   i32.const 48
   i32.eq
   i32.const 0
   local.get $5
   i32.const 1
   i32.eq
   select
   br_if $folding-inner0
   local.get $0
   local.get $2
   i32.const 45
   i32.eq
   local.tee $3
   local.get $2
   i32.const 43
   i32.eq
   i32.or
   local.tee $1
   call $~lib/string/String#charCodeAt
   i32.const 48
   i32.eq
   if
    i32.const 1
    local.get $0
    local.get $1
    i32.const 1
    i32.add
    local.tee $2
    call $~lib/string/String#charCodeAt
    local.tee $1
    i32.const 88
    i32.eq
    local.get $1
    i32.const 120
    i32.eq
    select
    if (result i32)
     i32.const 16
     local.set $8
     local.get $2
     i32.const 1
     i32.add
    else
     i32.const 1
     local.get $1
     i32.const 79
     i32.eq
     local.get $1
     i32.const 111
     i32.eq
     select
     if (result i32)
      i32.const 8
      local.set $8
      local.get $2
      i32.const 1
      i32.add
     else
      i32.const 1
      local.get $1
      i32.const 66
      i32.eq
      local.get $1
      i32.const 98
      i32.eq
      select
      if (result i32)
       i32.const 2
       local.set $8
       local.get $2
       i32.const 1
       i32.add
      else
       local.get $2
      end
     end
    end
    local.set $1
   end
   i32.const 0
   i64.const 0
   i64.const 0
   call $~lib/as-bignum/integer/u128/u128#constructor
   local.set $2
   i32.const 0
   local.get $8
   i64.extend_i32_s
   i64.const 0
   call $~lib/as-bignum/integer/u128/u128#constructor
   local.set $4
   loop $do-continue|0
    block $do-break|0
     local.get $0
     local.get $1
     call $~lib/string/String#charCodeAt
     i32.const 48
     i32.sub
     local.tee $9
     i32.const 74
     i32.gt_u
     br_if $do-break|0
     local.get $8
     local.get $9
     i32.const 1716
     i32.load
     i32.add
     i32.load8_u
     local.tee $9
     i32.le_u
     br_if $do-break|0
     i32.const 0
     local.get $2
     i64.load
     local.get $2
     i64.load offset=8
     local.get $4
     i64.load
     local.get $4
     i64.load offset=8
     call $~lib/as-bignum/globals/__multi3
     global.get $~lib/as-bignum/globals/__res128_hi
     call $~lib/as-bignum/integer/u128/u128#constructor
     local.set $2
     i32.const 0
     local.get $9
     i64.extend_i32_u
     i64.const 0
     call $~lib/as-bignum/integer/u128/u128#constructor
     local.set $9
     i32.const 0
     local.get $2
     i64.load
     local.tee $7
     local.get $9
     i64.load
     i64.add
     local.tee $6
     local.get $6
     local.get $7
     i64.lt_u
     i64.extend_i32_u
     local.get $2
     i64.load offset=8
     local.get $9
     i64.load offset=8
     i64.add
     i64.add
     call $~lib/as-bignum/integer/u128/u128#constructor
     local.set $2
     local.get $1
     i32.const 1
     i32.add
     local.tee $1
     local.get $5
     i32.lt_s
     br_if $do-continue|0
    end
   end
   local.get $3
   if (result i32)
    i32.const 0
    local.get $2
    i64.load
    i64.const -1
    i64.xor
    local.tee $7
    i64.const 1
    i64.add
    local.tee $6
    local.get $6
    local.get $7
    i64.lt_u
    i64.extend_i32_u
    local.get $2
    i64.load offset=8
    i64.const -1
    i64.xor
    i64.add
    call $~lib/as-bignum/integer/u128/u128#constructor
   else
    local.get $2
   end
   return
  end
  i32.const 0
  i64.const 0
  i64.const 0
  call $~lib/as-bignum/integer/u128/u128#constructor
 )
 (func $~lib/memory/memory.fill (param $0 i32) (param $1 i32)
  (local $2 i32)
  loop $while-continue|0
   local.get $1
   if
    local.get $0
    local.tee $2
    i32.const 1
    i32.add
    local.set $0
    local.get $2
    i32.const 0
    i32.store8
    local.get $1
    i32.const 1
    i32.sub
    local.set $1
    br $while-continue|0
   end
  end
 )
 (func $~lib/arraybuffer/ArrayBufferView#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  i32.eqz
  if
   i32.const 12
   i32.const 2
   call $~lib/rt/stub/__new
   local.set $0
  end
  local.get $0
  i32.const 0
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $0
  i32.const 0
  call $~lib/rt/common/OBJECT#set:gcInfo
  local.get $0
  i32.const 0
  call $~lib/rt/common/OBJECT#set:gcInfo2
  local.get $1
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 1760
   i32.const 1808
   i32.const 18
   i32.const 57
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 0
  call $~lib/rt/stub/__new
  local.tee $2
  local.get $1
  call $~lib/memory/memory.fill
  local.get $0
  local.get $2
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $0
  local.get $2
  call $~lib/rt/common/OBJECT#set:gcInfo
  local.get $0
  local.get $1
  call $~lib/rt/common/OBJECT#set:gcInfo2
  local.get $0
 )
 (func $~lib/typedarray/Uint8Array#constructor (param $0 i32) (result i32)
  i32.const 12
  i32.const 15
  call $~lib/rt/stub/__new
  local.get $0
  call $~lib/arraybuffer/ArrayBufferView#constructor
 )
 (func $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#constructor (result i32)
  (local $0 i32)
  (local $1 i32)
  i32.const 16
  i32.const 18
  call $~lib/rt/stub/__new
  local.tee $0
  i32.const 0
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $0
  i32.const 0
  call $~lib/rt/common/OBJECT#set:gcInfo
  local.get $0
  i32.const 0
  call $~lib/rt/common/OBJECT#set:gcInfo2
  local.get $0
  i32.const 0
  call $~lib/rt/common/OBJECT#set:rtId
  i32.const 32
  i32.const 0
  call $~lib/rt/stub/__new
  local.tee $1
  i32.const 32
  call $~lib/memory/memory.fill
  local.get $0
  local.get $1
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $0
  local.get $1
  call $~lib/rt/common/OBJECT#set:gcInfo
  local.get $0
  i32.const 32
  call $~lib/rt/common/OBJECT#set:gcInfo2
  local.get $0
  i32.const 0
  call $~lib/rt/common/OBJECT#set:rtId
  local.get $0
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#get:state (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.tee $0
  i32.eqz
  if
   i32.const 1920
   i32.const 1984
   i32.const 127
   i32.const 26
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
 )
 (func $~lib/typedarray/Uint8Array#__get (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 2080
   i32.const 2144
   i32.const 159
   i32.const 45
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $0
  i32.load offset=4
  i32.add
  i32.load8_u
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar (param $0 i32) (result i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#get:state
  i32.load offset=4
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#get:state
  i32.load offset=8
  i32.load offset=8
  i32.ge_s
  if
   i32.const -1
   return
  end
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#get:state
  i32.load offset=8
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#get:state
  i32.load offset=4
  call $~lib/typedarray/Uint8Array#__get
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#get:state
  i32.load offset=4
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#get:state
  i32.load offset=8
  i32.load offset=8
  i32.ge_s
  if
   i32.const 2208
   i32.const 1984
   i32.const 156
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#get:state
  i32.load offset=8
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#get:state
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#get:state
  i32.load offset=4
  local.tee $0
  i32.const 1
  i32.add
  call $~lib/rt/common/OBJECT#set:gcInfo
  local.get $0
  call $~lib/typedarray/Uint8Array#__get
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#skipWhitespace (param $0 i32)
  (local $1 i32)
  loop $while-continue|0
   i32.const 1
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar
   local.tee $1
   i32.const 32
   i32.eq
   i32.const 1
   local.get $1
   i32.const 13
   i32.eq
   i32.const 1
   local.get $1
   i32.const 10
   i32.eq
   local.get $1
   i32.const 9
   i32.eq
   select
   select
   select
   if
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar
    drop
    br $while-continue|0
   end
  end
 )
 (func $~lib/assemblyscript-json/JSON/Value#constructor (param $0 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else
   i32.const 0
   i32.const 13
   call $~lib/rt/stub/__new
  end
 )
 (func $~lib/arraybuffer/ArrayBuffer#constructor (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 1760
   i32.const 1808
   i32.const 49
   i32.const 43
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 0
  call $~lib/rt/stub/__new
  local.tee $1
  local.get $0
  call $~lib/memory/memory.fill
  local.get $1
 )
 (func $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/Value>#set:entriesCount (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=20
 )
 (func $~lib/rt/stub/__realloc (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.const 15
  i32.and
  i32.eqz
  i32.const 0
  local.get $0
  select
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 45
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/stub/offset
  local.get $0
  local.get $0
  i32.const 4
  i32.sub
  local.tee $4
  i32.load
  local.tee $3
  i32.add
  i32.eq
  local.set $5
  local.get $1
  i32.const 19
  i32.add
  i32.const -16
  i32.and
  i32.const 4
  i32.sub
  local.set $2
  local.get $1
  local.get $3
  i32.gt_u
  if
   local.get $5
   if
    local.get $1
    i32.const 1073741820
    i32.gt_u
    if
     i32.const 1120
     i32.const 1184
     i32.const 52
     i32.const 33
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $2
    i32.add
    call $~lib/rt/stub/maybeGrowMemory
    local.get $4
    local.get $2
    call $~lib/rt/common/BLOCK#set:mmInfo
   else
    local.get $2
    local.get $3
    i32.const 1
    i32.shl
    local.tee $1
    local.get $1
    local.get $2
    i32.lt_u
    select
    call $~lib/rt/stub/__alloc
    local.tee $1
    local.get $0
    local.get $3
    call $~lib/memory/memory.copy
    local.get $1
    local.set $0
   end
  else
   local.get $5
   if
    local.get $0
    local.get $2
    i32.add
    global.set $~lib/rt/stub/offset
    local.get $4
    local.get $2
    call $~lib/rt/common/BLOCK#set:mmInfo
   end
  end
  local.get $0
 )
 (func $~lib/rt/stub/__renew (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  i32.const 1073741804
  i32.gt_u
  if
   i32.const 1120
   i32.const 1184
   i32.const 99
   i32.const 30
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 16
  i32.sub
  local.get $1
  i32.const 16
  i32.add
  call $~lib/rt/stub/__realloc
  local.tee $0
  i32.const 4
  i32.sub
  local.get $1
  call $~lib/rt/common/OBJECT#set:rtSize
  local.get $0
  i32.const 16
  i32.add
 )
 (func $~lib/array/ensureCapacity (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  local.tee $3
  i32.const 2
  i32.shr_u
  i32.gt_u
  if
   local.get $1
   i32.const 268435455
   i32.gt_u
   if
    i32.const 1760
    i32.const 1872
    i32.const 17
    i32.const 48
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   i32.const 8
   local.get $1
   i32.const 8
   i32.gt_u
   select
   i32.const 2
   i32.shl
   local.set $1
   local.get $3
   local.get $0
   i32.load
   local.tee $4
   local.get $2
   if
    local.get $3
    i32.const 1
    i32.shl
    local.tee $2
    i32.const 1073741820
    local.get $2
    i32.const 1073741820
    i32.lt_u
    select
    local.tee $2
    local.get $1
    local.get $1
    local.get $2
    i32.lt_u
    select
    local.set $1
   end
   local.get $1
   call $~lib/rt/stub/__renew
   local.tee $2
   i32.add
   local.get $1
   local.get $3
   i32.sub
   call $~lib/memory/memory.fill
   local.get $2
   local.get $4
   i32.ne
   if
    local.get $0
    local.get $2
    i32.store
    local.get $0
    local.get $2
    i32.store offset=4
   end
   local.get $0
   local.get $1
   i32.store offset=8
  end
 )
 (func $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#push (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.get $0
  i32.load offset=12
  local.tee $2
  i32.const 1
  i32.add
  local.tee $3
  i32.const 1
  call $~lib/array/ensureCapacity
  local.get $0
  i32.load offset=4
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  i32.store
  local.get $0
  local.get $3
  call $~lib/rt/common/OBJECT#set:rtId
 )
 (func $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 2080
   i32.const 1872
   i32.const 99
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.tee $0
  i32.eqz
  if
   i32.const 2304
   i32.const 1872
   i32.const 103
   i32.const 40
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
 )
 (func $~lib/assemblyscript-json/JSON/Handler#get:peek (param $0 i32) (result i32)
  local.get $0
  i32.load
  local.get $0
  i32.load
  i32.load offset=12
  i32.const 1
  i32.sub
  call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
 )
 (func $~lib/rt/__instanceof (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=12
  local.tee $0
  i32.const 10352
  i32.load
  i32.le_u
  if
   loop $do-continue|0
    local.get $0
    local.get $1
    i32.eq
    if
     i32.const 1
     return
    end
    local.get $0
    i32.const 3
    i32.shl
    i32.const 10356
    i32.add
    i32.load offset=4
    local.tee $0
    br_if $do-continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/util/hash/HASH<~lib/string/String> (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  if (result i32)
   local.get $0
   local.tee $1
   call $~lib/string/String#get:length
   i32.const 1
   i32.shl
   local.tee $3
   i32.const 16
   i32.ge_u
   if (result i32)
    i32.const 606290984
    local.set $2
    i32.const -2048144777
    local.set $4
    i32.const 1640531535
    local.set $5
    local.get $1
    local.get $3
    i32.add
    i32.const 16
    i32.sub
    local.set $7
    loop $while-continue|0
     local.get $1
     local.get $7
     i32.le_u
     if
      local.get $2
      local.get $1
      i32.load
      i32.const -2048144777
      i32.mul
      i32.add
      i32.const 13
      i32.rotl
      i32.const -1640531535
      i32.mul
      local.set $2
      local.get $4
      local.get $1
      i32.load offset=4
      i32.const -2048144777
      i32.mul
      i32.add
      i32.const 13
      i32.rotl
      i32.const -1640531535
      i32.mul
      local.set $4
      local.get $6
      local.get $1
      i32.load offset=8
      i32.const -2048144777
      i32.mul
      i32.add
      i32.const 13
      i32.rotl
      i32.const -1640531535
      i32.mul
      local.set $6
      local.get $5
      local.get $1
      i32.load offset=12
      i32.const -2048144777
      i32.mul
      i32.add
      i32.const 13
      i32.rotl
      i32.const -1640531535
      i32.mul
      local.set $5
      local.get $1
      i32.const 16
      i32.add
      local.set $1
      br $while-continue|0
     end
    end
    local.get $3
    local.get $2
    i32.const 1
    i32.rotl
    local.get $4
    i32.const 7
    i32.rotl
    i32.add
    local.get $6
    i32.const 12
    i32.rotl
    i32.add
    local.get $5
    i32.const 18
    i32.rotl
    i32.add
    i32.add
   else
    local.get $3
    i32.const 374761393
    i32.add
   end
   local.set $2
   local.get $0
   local.get $3
   i32.add
   i32.const 4
   i32.sub
   local.set $4
   loop $while-continue|1
    local.get $1
    local.get $4
    i32.le_u
    if
     local.get $2
     local.get $1
     i32.load
     i32.const -1028477379
     i32.mul
     i32.add
     i32.const 17
     i32.rotl
     i32.const 668265263
     i32.mul
     local.set $2
     local.get $1
     i32.const 4
     i32.add
     local.set $1
     br $while-continue|1
    end
   end
   local.get $0
   local.get $3
   i32.add
   local.set $0
   loop $while-continue|2
    local.get $0
    local.get $1
    i32.gt_u
    if
     local.get $2
     local.get $1
     i32.load8_u
     i32.const 374761393
     i32.mul
     i32.add
     i32.const 11
     i32.rotl
     i32.const -1640531535
     i32.mul
     local.set $2
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $while-continue|2
    end
   end
   local.get $2
   local.get $2
   i32.const 15
   i32.shr_u
   i32.xor
   i32.const -2048144777
   i32.mul
   local.tee $0
   local.get $0
   i32.const 13
   i32.shr_u
   i32.xor
   i32.const -1028477379
   i32.mul
   local.tee $0
   local.get $0
   i32.const 16
   i32.shr_u
   i32.xor
  else
   i32.const 0
  end
 )
 (func $~lib/util/string/compareImpl (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  local.get $0
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  local.set $1
  loop $while-continue|0
   local.get $3
   local.tee $0
   i32.const 1
   i32.sub
   local.set $3
   local.get $0
   if
    local.get $1
    i32.load16_u
    local.tee $0
    local.get $2
    i32.load16_u
    local.tee $4
    i32.ne
    if
     local.get $0
     local.get $4
     i32.sub
     return
    end
    local.get $1
    i32.const 2
    i32.add
    local.set $1
    local.get $2
    i32.const 2
    i32.add
    local.set $2
    br $while-continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/string/String.__eq (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.get $1
  i32.eq
  if
   i32.const 1
   return
  end
  local.get $1
  i32.eqz
  i32.const 1
  local.get $0
  select
  if
   i32.const 0
   return
  end
  local.get $0
  call $~lib/string/String#get:length
  local.tee $2
  local.get $1
  call $~lib/string/String#get:length
  i32.ne
  if
   i32.const 0
   return
  end
  local.get $0
  i32.const 0
  local.get $1
  local.get $2
  call $~lib/util/string/compareImpl
  i32.eqz
 )
 (func $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/Value>#find (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.load
  local.get $2
  local.get $0
  i32.load offset=4
  i32.and
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.set $0
  loop $while-continue|0
   local.get $0
   if
    local.get $0
    i32.load offset=8
    local.tee $2
    i32.const 1
    i32.and
    if (result i32)
     i32.const 0
    else
     local.get $0
     i32.load
     local.get $1
     call $~lib/string/String.__eq
    end
    if
     local.get $0
     return
    end
    local.get $2
    i32.const -2
    i32.and
    local.set $0
    br $while-continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/Value>#rehash (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  i32.const 1
  i32.add
  local.tee $2
  i32.const 2
  i32.shl
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $6
  local.get $2
  i32.const 3
  i32.shl
  i32.const 3
  i32.div_s
  local.tee $5
  i32.const 12
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $3
  local.get $0
  i32.load offset=8
  local.tee $8
  local.get $0
  i32.load offset=16
  i32.const 12
  i32.mul
  i32.add
  local.set $4
  local.get $3
  local.set $2
  loop $while-continue|0
   local.get $4
   local.get $8
   i32.ne
   if
    local.get $8
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $2
     local.get $8
     i32.load
     local.tee $7
     call $~lib/rt/common/BLOCK#set:mmInfo
     local.get $2
     local.get $8
     i32.load offset=4
     call $~lib/rt/common/OBJECT#set:gcInfo
     local.get $2
     local.get $6
     local.get $7
     call $~lib/util/hash/HASH<~lib/string/String>
     local.get $1
     i32.and
     i32.const 2
     i32.shl
     i32.add
     local.tee $7
     i32.load
     call $~lib/rt/common/OBJECT#set:gcInfo2
     local.get $7
     local.get $2
     i32.store
     local.get $2
     i32.const 12
     i32.add
     local.set $2
    end
    local.get $8
    i32.const 12
    i32.add
    local.set $8
    br $while-continue|0
   end
  end
  local.get $0
  local.get $6
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $0
  local.get $1
  call $~lib/rt/common/OBJECT#set:gcInfo
  local.get $0
  local.get $3
  call $~lib/rt/common/OBJECT#set:gcInfo2
  local.get $0
  local.get $5
  call $~lib/rt/common/OBJECT#set:rtId
  local.get $0
  local.get $0
  i32.load offset=20
  call $~lib/rt/common/OBJECT#set:rtSize
 )
 (func $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/Value>#set (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  local.get $1
  local.get $1
  call $~lib/util/hash/HASH<~lib/string/String>
  local.tee $4
  call $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/Value>#find
  local.tee $3
  if
   local.get $3
   local.get $2
   call $~lib/rt/common/OBJECT#set:gcInfo
  else
   local.get $0
   i32.load offset=16
   local.get $0
   i32.load offset=12
   i32.eq
   if
    local.get $0
    local.get $0
    i32.load offset=20
    local.get $0
    i32.load offset=12
    i32.const 3
    i32.mul
    i32.const 4
    i32.div_s
    i32.lt_s
    if (result i32)
     local.get $0
     i32.load offset=4
    else
     local.get $0
     i32.load offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/Value>#rehash
   end
   local.get $0
   i32.load offset=8
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $5
   i32.const 1
   i32.add
   call $~lib/rt/common/OBJECT#set:rtSize
   local.get $5
   i32.const 12
   i32.mul
   i32.add
   local.tee $3
   local.get $1
   call $~lib/rt/common/BLOCK#set:mmInfo
   local.get $3
   local.get $2
   call $~lib/rt/common/OBJECT#set:gcInfo
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   call $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/Value>#set:entriesCount
   local.get $3
   local.get $0
   i32.load
   local.get $4
   local.get $0
   i32.load offset=4
   i32.and
   i32.const 2
   i32.shl
   i32.add
   local.tee $0
   i32.load
   call $~lib/rt/common/OBJECT#set:gcInfo2
   local.get $0
   local.get $3
   i32.store
  end
 )
 (func $~lib/assemblyscript-json/JSON/Handler#addValue (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/string/String#get:length
  if (result i32)
   i32.const 0
  else
   local.get $0
   i32.load
   i32.load offset=12
   i32.eqz
  end
  if
   local.get $0
   i32.load
   local.get $2
   call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#push
   return
  end
  local.get $0
  call $~lib/assemblyscript-json/JSON/Handler#get:peek
  local.tee $3
  if (result i32)
   local.get $3
   i32.const 12
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if
   local.get $0
   call $~lib/assemblyscript-json/JSON/Handler#get:peek
   local.tee $0
   i32.const 12
   call $~lib/rt/__instanceof
   i32.eqz
   if
    i32.const 2432
    i32.const 2496
    i32.const 78
    i32.const 8
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.load
   local.get $1
   local.get $2
   call $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/Value>#set
  else
   local.get $0
   call $~lib/assemblyscript-json/JSON/Handler#get:peek
   local.tee $1
   if (result i32)
    local.get $1
    i32.const 21
    call $~lib/rt/__instanceof
   else
    i32.const 0
   end
   if
    local.get $0
    call $~lib/assemblyscript-json/JSON/Handler#get:peek
    local.tee $0
    i32.const 21
    call $~lib/rt/__instanceof
    i32.eqz
    if
     i32.const 2432
     i32.const 2496
     i32.const 80
     i32.const 13
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.load
    local.get $2
    call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#push
   end
  end
 )
 (func $~lib/array/Array<~lib/string/String>#constructor (result i32)
  (local $0 i32)
  (local $1 i32)
  i32.const 16
  i32.const 22
  call $~lib/rt/stub/__new
  local.tee $0
  i32.const 0
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $0
  i32.const 0
  call $~lib/rt/common/OBJECT#set:gcInfo
  local.get $0
  i32.const 0
  call $~lib/rt/common/OBJECT#set:gcInfo2
  local.get $0
  i32.const 0
  call $~lib/rt/common/OBJECT#set:rtId
  i32.const 32
  i32.const 0
  call $~lib/rt/stub/__new
  local.tee $1
  i32.const 32
  call $~lib/memory/memory.fill
  local.get $0
  local.get $1
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $0
  local.get $1
  call $~lib/rt/common/OBJECT#set:gcInfo
  local.get $0
  i32.const 32
  call $~lib/rt/common/OBJECT#set:gcInfo2
  local.get $0
  i32.const 0
  call $~lib/rt/common/OBJECT#set:rtId
  local.get $0
 )
 (func $~lib/arraybuffer/ArrayBufferView#get:byteOffset (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load
  i32.sub
 )
 (func $~lib/string/String.UTF8.decodeUnsafe (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  local.get $0
  local.get $1
  i32.add
  local.tee $4
  i32.gt_u
  if
   i32.const 0
   i32.const 2896
   i32.const 749
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/stub/__new
  local.tee $6
  local.set $1
  loop $while-continue|0
   local.get $0
   local.get $4
   i32.lt_u
   if
    block $while-break|0
     local.get $0
     i32.load8_u
     local.set $3
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     local.get $3
     i32.const 128
     i32.and
     if
      local.get $0
      local.get $4
      i32.eq
      br_if $while-break|0
      local.get $0
      i32.load8_u
      i32.const 63
      i32.and
      local.set $5
      local.get $0
      i32.const 1
      i32.add
      local.set $0
      local.get $3
      i32.const 224
      i32.and
      i32.const 192
      i32.eq
      if
       local.get $1
       local.get $5
       local.get $3
       i32.const 31
       i32.and
       i32.const 6
       i32.shl
       i32.or
       i32.store16
      else
       local.get $0
       local.get $4
       i32.eq
       br_if $while-break|0
       local.get $0
       i32.load8_u
       i32.const 63
       i32.and
       local.set $7
       local.get $0
       i32.const 1
       i32.add
       local.set $0
       local.get $3
       i32.const 240
       i32.and
       i32.const 224
       i32.eq
       if
        local.get $7
        local.get $3
        i32.const 15
        i32.and
        i32.const 12
        i32.shl
        local.get $5
        i32.const 6
        i32.shl
        i32.or
        i32.or
        local.set $3
       else
        local.get $0
        local.get $4
        i32.eq
        br_if $while-break|0
        local.get $0
        i32.load8_u
        i32.const 63
        i32.and
        local.get $3
        i32.const 7
        i32.and
        i32.const 18
        i32.shl
        local.get $5
        i32.const 12
        i32.shl
        i32.or
        local.get $7
        i32.const 6
        i32.shl
        i32.or
        i32.or
        local.set $3
        local.get $0
        i32.const 1
        i32.add
        local.set $0
       end
       local.get $3
       i32.const 65536
       i32.lt_u
       if
        local.get $1
        local.get $3
        i32.store16
       else
        local.get $1
        local.get $3
        i32.const 65536
        i32.sub
        local.tee $3
        i32.const 10
        i32.shr_u
        i32.const 55296
        i32.or
        local.get $3
        i32.const 1023
        i32.and
        i32.const 56320
        i32.or
        i32.const 16
        i32.shl
        i32.or
        i32.store
        local.get $1
        i32.const 2
        i32.add
        local.set $1
       end
      end
     else
      local.get $2
      local.get $3
      i32.eqz
      i32.and
      br_if $while-break|0
      local.get $1
      local.get $3
      i32.store16
     end
     local.get $1
     i32.const 2
     i32.add
     local.set $1
     br $while-continue|0
    end
   end
  end
  local.get $6
  local.get $1
  local.get $6
  i32.sub
  call $~lib/rt/stub/__renew
 )
 (func $~lib/assemblyscript-json/decoder/DecoderState#readString@varargs (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~argumentsLength
     i32.const 1
     i32.sub
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   local.get $0
   i32.load offset=4
   local.set $2
  end
  local.get $1
  local.get $0
  i32.load offset=8
  local.tee $0
  i32.load
  local.get $0
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  i32.add
  i32.add
  local.get $2
  i32.const 1
  i32.sub
  local.get $1
  i32.sub
  i32.const 0
  call $~lib/string/String.UTF8.decodeUnsafe
 )
 (func $~lib/util/string/joinReferenceArray<~lib/string/String> (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.const 1
  i32.sub
  local.tee $2
  i32.const 0
  i32.lt_s
  if
   i32.const 1088
   return
  end
  local.get $2
  i32.eqz
  if
   local.get $0
   i32.load
   local.tee $0
   if (result i32)
    local.get $0
   else
    i32.const 1088
   end
   return
  end
  i32.const 1088
  local.set $1
  i32.const 1088
  call $~lib/string/String#get:length
  local.set $4
  loop $for-loop|0
   local.get $2
   local.get $3
   i32.gt_s
   if
    local.get $0
    local.get $3
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $5
    if
     local.get $1
     local.get $5
     call $~lib/string/String.__concat
     local.set $1
    end
    local.get $4
    if
     local.get $1
     i32.const 1088
     call $~lib/string/String.__concat
     local.set $1
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  local.get $0
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.tee $0
  if (result i32)
   local.get $1
   local.get $0
   call $~lib/string/String.__concat
  else
   local.get $1
  end
 )
 (func $~lib/array/Array<~lib/string/String>#join (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load offset=12
  call $~lib/util/string/joinReferenceArray<~lib/string/String>
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readHexDigit (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar
  local.tee $1
  i32.const 48
  i32.sub
  local.tee $0
  i32.const 9
  i32.gt_s
  if
   i32.const 1
   local.get $1
   i32.const 55
   i32.sub
   local.tee $0
   i32.const 15
   i32.gt_s
   local.get $0
   i32.const 10
   i32.lt_s
   select
   if
    local.get $1
    i32.const 87
    i32.sub
    local.set $0
   end
  end
  local.get $0
  i32.const 16
  i32.lt_s
  i32.const 0
  local.get $0
  i32.const 0
  i32.ge_s
  select
  i32.eqz
  if
   i32.const 3264
   i32.const 1984
   i32.const 319
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
 )
 (func $~lib/string/String.fromCharCode@varargs (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~argumentsLength
     i32.const 1
     i32.sub
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   i32.const -1
   local.set $1
  end
  i32.const 2
  local.get $1
  i32.const 0
  i32.gt_s
  local.tee $3
  i32.shl
  i32.const 1
  call $~lib/rt/stub/__new
  local.tee $2
  local.get $0
  i32.store16
  local.get $3
  if
   local.get $2
   local.get $1
   i32.store16 offset=2
  end
  local.get $2
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readEscapedChar (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar
  local.tee $1
  i32.const 2704
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2704
   return
  end
  i32.const 2944
  i32.const 0
  call $~lib/string/String#charCodeAt
  local.get $1
  i32.eq
  if
   i32.const 2944
   return
  end
  i32.const 2976
  i32.const 0
  call $~lib/string/String#charCodeAt
  local.get $1
  i32.eq
  if
   i32.const 2976
   return
  end
  i32.const 1392
  i32.const 0
  call $~lib/string/String#charCodeAt
  local.get $1
  i32.eq
  if
   i32.const 3008
   return
  end
  i32.const 3040
  i32.const 0
  call $~lib/string/String#charCodeAt
  local.get $1
  i32.eq
  if
   i32.const 3072
   return
  end
  i32.const 3104
  i32.const 0
  call $~lib/string/String#charCodeAt
  local.get $1
  i32.eq
  if
   i32.const 3136
   return
  end
  i32.const 3168
  i32.const 0
  call $~lib/string/String#charCodeAt
  local.get $1
  i32.eq
  if
   i32.const 3200
   return
  end
  i32.const 3232
  i32.const 0
  call $~lib/string/String#charCodeAt
  local.get $1
  i32.eq
  if
   i32.const 2
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readHexDigit
   i32.const 12
   i32.shl
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readHexDigit
   i32.const 8
   i32.shl
   i32.add
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readHexDigit
   i32.const 4
   i32.shl
   i32.add
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readHexDigit
   i32.add
   local.tee $0
   i32.const 65535
   i32.gt_u
   local.tee $2
   i32.shl
   i32.const 1
   call $~lib/rt/stub/__new
   local.set $1
   local.get $2
   if
    local.get $0
    i32.const 1114111
    i32.gt_u
    if
     i32.const 0
     i32.const 2896
     i32.const 39
     i32.const 7
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    local.get $0
    i32.const 65536
    i32.sub
    local.tee $0
    i32.const 10
    i32.shr_u
    i32.const 55296
    i32.or
    local.get $0
    i32.const 1023
    i32.and
    i32.const 56320
    i32.or
    i32.const 16
    i32.shl
    i32.or
    i32.store
   else
    local.get $1
    local.get $0
    i32.store16
   end
   local.get $1
   return
  end
  i32.const 1
  global.set $~argumentsLength
  i32.const 3328
  local.get $1
  call $~lib/string/String.fromCharCode@varargs
  call $~lib/string/String.__concat
  i32.const 1984
  i32.const 306
  i32.const 5
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readString (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar
  i32.const 2704
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.ne
  if
   i32.const 2736
   i32.const 1984
   i32.const 245
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#get:state
  i32.load offset=4
  local.set $1
  call $~lib/array/Array<~lib/string/String>#constructor
  local.set $2
  loop $for-loop|0 (result i32)
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar
   local.tee $3
   i32.const 32
   i32.lt_s
   if
    i32.const 2816
    i32.const 1984
    i32.const 254
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 2704
   i32.const 0
   call $~lib/string/String#charCodeAt
   local.get $3
   i32.eq
   if (result i32)
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#get:state
    i32.const 1
    global.set $~argumentsLength
    local.get $1
    call $~lib/assemblyscript-json/decoder/DecoderState#readString@varargs
    local.set $0
    local.get $2
    i32.load offset=12
    i32.eqz
    if
     local.get $0
     return
    end
    local.get $2
    local.get $0
    call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#push
    local.get $2
    call $~lib/array/Array<~lib/string/String>#join
   else
    i32.const 2944
    i32.const 0
    call $~lib/string/String#charCodeAt
    local.get $3
    i32.eq
    if
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#get:state
     i32.load offset=4
     local.get $1
     i32.const 1
     i32.add
     i32.gt_s
     if
      local.get $0
      call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#get:state
      local.set $3
      i32.const 1
      global.set $~argumentsLength
      local.get $2
      local.get $3
      local.get $1
      call $~lib/assemblyscript-json/decoder/DecoderState#readString@varargs
      call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#push
     end
     local.get $2
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readEscapedChar
     call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#push
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#get:state
     i32.load offset=4
     local.set $1
    end
    br $for-loop|0
   end
  end
 )
 (func $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#pop (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load offset=12
  local.tee $1
  i32.const 1
  i32.lt_s
  if
   i32.const 3568
   i32.const 1872
   i32.const 276
   i32.const 21
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 1
  i32.sub
  local.tee $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  drop
  local.get $0
  local.get $1
  call $~lib/rt/common/OBJECT#set:rtId
 )
 (func $~lib/assemblyscript-json/JSON/Handler#popObject (param $0 i32)
  local.get $0
  i32.load
  i32.load offset=12
  i32.const 1
  i32.gt_s
  if
   local.get $0
   i32.load
   call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#pop
  end
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseObject (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar
  i32.const 2272
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.ne
  if
   i32.const 0
   return
  end
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#get:state
  i32.load
  local.set $4
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#get:state
  i32.const 1088
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $0
  i32.load
  local.set $3
  i32.const 4
  i32.const 12
  call $~lib/rt/stub/__new
  local.tee $1
  i32.const 0
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $1
  call $~lib/assemblyscript-json/JSON/Value#constructor
  local.set $2
  i32.const 24
  i32.const 14
  call $~lib/rt/stub/__new
  local.tee $1
  i32.const 16
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $1
  i32.const 3
  call $~lib/rt/common/OBJECT#set:gcInfo
  local.get $1
  i32.const 48
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/rt/common/OBJECT#set:gcInfo2
  local.get $1
  i32.const 4
  call $~lib/rt/common/OBJECT#set:rtId
  local.get $1
  i32.const 0
  call $~lib/rt/common/OBJECT#set:rtSize
  local.get $1
  i32.const 0
  call $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/Value>#set:entriesCount
  local.get $2
  local.get $1
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $3
  local.get $4
  local.get $2
  call $~lib/assemblyscript-json/JSON/Handler#addValue
  local.get $3
  i32.load
  local.get $2
  call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#push
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar
  drop
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#skipWhitespace
  i32.const 1
  local.set $1
  loop $while-continue|0
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar
   i32.const 2592
   i32.const 0
   call $~lib/string/String#charCodeAt
   i32.ne
   if
    local.get $1
    if
     i32.const 0
     local.set $1
    else
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar
     i32.const 2624
     i32.const 0
     call $~lib/string/String#charCodeAt
     i32.ne
     if
      i32.const 2656
      i32.const 1984
      i32.const 190
      i32.const 11
      call $~lib/builtins/abort
      unreachable
     end
    end
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#skipWhitespace
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#get:state
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readString
    call $~lib/rt/common/BLOCK#set:mmInfo
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#skipWhitespace
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar
    i32.const 3408
    i32.const 0
    call $~lib/string/String#charCodeAt
    i32.ne
    if
     i32.const 3440
     i32.const 1984
     i32.const 207
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseValue
    drop
    br $while-continue|0
   end
  end
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar
  i32.const 2592
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.ne
  if
   i32.const 3488
   i32.const 1984
   i32.const 197
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load
  call $~lib/assemblyscript-json/JSON/Handler#popObject
  i32.const 1
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseArray (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar
  i32.const 3616
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.ne
  if
   i32.const 0
   return
  end
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#get:state
  i32.load
  local.set $3
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#get:state
  i32.const 1088
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $0
  i32.load
  local.set $1
  i32.const 4
  i32.const 21
  call $~lib/rt/stub/__new
  local.tee $2
  i32.const 0
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $2
  call $~lib/assemblyscript-json/JSON/Value#constructor
  local.tee $2
  call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#constructor
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $1
  i32.load
  i32.load offset=12
  if
   local.get $1
   local.get $3
   local.get $2
   call $~lib/assemblyscript-json/JSON/Handler#addValue
  end
  local.get $1
  i32.load
  local.get $2
  call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#push
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar
  drop
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#skipWhitespace
  i32.const 1
  local.set $1
  loop $while-continue|0
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar
   i32.const 3648
   i32.const 0
   call $~lib/string/String#charCodeAt
   i32.ne
   if
    local.get $1
    if
     i32.const 0
     local.set $1
    else
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar
     i32.const 2624
     i32.const 0
     call $~lib/string/String#charCodeAt
     i32.ne
     if
      i32.const 2656
      i32.const 1984
      i32.const 224
      i32.const 11
      call $~lib/builtins/abort
      unreachable
     end
    end
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseValue
    drop
    br $while-continue|0
   end
  end
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar
  i32.const 3648
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.ne
  if
   i32.const 3680
   i32.const 1984
   i32.const 230
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load
  call $~lib/assemblyscript-json/JSON/Handler#popObject
  i32.const 1
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readAndAssert (param $0 i32) (param $1 i32)
  (local $2 i32)
  loop $for-loop|0
   local.get $1
   call $~lib/string/String#get:length
   local.get $2
   i32.gt_s
   if
    local.get $1
    local.get $2
    call $~lib/string/String#charCodeAt
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar
    i32.ne
    if
     i32.const 3792
     local.get $1
     call $~lib/string/String.__concat
     i32.const 3840
     call $~lib/string/String.__concat
     i32.const 1984
     i32.const 396
     i32.const 7
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
 )
 (func $~lib/assemblyscript-json/JSON/Handler#setBoolean (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  i32.const 1
  i32.const 24
  call $~lib/rt/stub/__new
  local.tee $3
  local.get $2
  i32.store8
  local.get $0
  local.get $1
  local.get $3
  call $~lib/assemblyscript-json/JSON/Value#constructor
  call $~lib/assemblyscript-json/JSON/Handler#addValue
 )
 (func $~lib/util/string/isSpace (param $0 i32) (result i32)
  local.get $0
  i32.const 5760
  i32.lt_u
  if
   local.get $0
   i32.const 128
   i32.or
   i32.const 160
   i32.eq
   local.get $0
   i32.const 9
   i32.sub
   i32.const 4
   i32.le_u
   i32.or
   return
  end
  local.get $0
  i32.const -8192
  i32.add
  i32.const 10
  i32.le_u
  if
   i32.const 1
   return
  end
  local.get $0
  i32.const 5760
  i32.eq
  local.get $0
  i32.const 8232
  i32.eq
  i32.or
  local.get $0
  i32.const 8233
  i32.eq
  local.get $0
  i32.const 8239
  i32.eq
  i32.or
  i32.or
  local.get $0
  i32.const 8287
  i32.eq
  local.get $0
  i32.const 12288
  i32.eq
  i32.or
  local.get $0
  i32.const 65279
  i32.eq
  i32.or
  i32.or
  if
   i32.const 1
   return
  end
  i32.const 0
 )
 (func $~lib/math/ipow32 (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 5
  local.set $1
  i32.const 1
  local.set $2
  loop $while-continue|0
   local.get $0
   if
    local.get $1
    local.get $2
    i32.mul
    local.get $2
    local.get $0
    i32.const 1
    i32.and
    select
    local.set $2
    local.get $0
    i32.const 1
    i32.shr_u
    local.set $0
    local.get $1
    local.get $1
    i32.mul
    local.set $1
    br $while-continue|0
   end
  end
  local.get $2
 )
 (func $~lib/math/NativeMath.scalbn (param $0 f64) (param $1 i32) (result f64)
  local.get $1
  i32.const 1023
  i32.gt_s
  if (result f64)
   local.get $0
   f64.const 8988465674311579538646525e283
   f64.mul
   local.set $0
   local.get $1
   i32.const 1023
   i32.sub
   local.tee $1
   i32.const 1023
   i32.gt_s
   if (result f64)
    local.get $1
    i32.const 1023
    i32.sub
    local.tee $1
    i32.const 1023
    local.get $1
    i32.const 1023
    i32.lt_s
    select
    local.set $1
    local.get $0
    f64.const 8988465674311579538646525e283
    f64.mul
   else
    local.get $0
   end
  else
   local.get $1
   i32.const -1022
   i32.lt_s
   if (result f64)
    local.get $0
    f64.const 2.004168360008973e-292
    f64.mul
    local.set $0
    local.get $1
    i32.const 969
    i32.add
    local.tee $1
    i32.const -1022
    i32.lt_s
    if (result f64)
     local.get $1
     i32.const 969
     i32.add
     local.tee $1
     i32.const -1022
     local.get $1
     i32.const -1022
     i32.gt_s
     select
     local.set $1
     local.get $0
     f64.const 2.004168360008973e-292
     f64.mul
    else
     local.get $0
    end
   else
    local.get $0
   end
  end
  local.get $1
  i64.extend_i32_s
  i64.const 1023
  i64.add
  i64.const 52
  i64.shl
  f64.reinterpret_i64
  f64.mul
 )
 (func $~lib/util/string/strtod (param $0 i32) (result f64)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (local $8 i64)
  (local $9 i64)
  (local $10 i32)
  (local $11 f64)
  (local $12 f64)
  (local $13 i64)
  (local $14 i64)
  block $folding-inner0
   local.get $0
   call $~lib/string/String#get:length
   local.tee $7
   i32.eqz
   br_if $folding-inner0
   local.get $0
   i32.load16_u
   local.set $2
   f64.const 1
   local.set $12
   loop $while-continue|0
    local.get $7
    if (result i32)
     local.get $2
     call $~lib/util/string/isSpace
    else
     i32.const 0
    end
    if
     local.get $0
     i32.const 2
     i32.add
     local.tee $0
     i32.load16_u
     local.set $2
     local.get $7
     i32.const 1
     i32.sub
     local.set $7
     br $while-continue|0
    end
   end
   local.get $7
   i32.eqz
   br_if $folding-inner0
   local.get $2
   i32.const 45
   i32.eq
   if (result i32)
    local.get $7
    i32.const 1
    i32.sub
    local.tee $7
    i32.eqz
    br_if $folding-inner0
    f64.const -1
    local.set $12
    local.get $0
    i32.const 2
    i32.add
    local.tee $0
    i32.load16_u
   else
    local.get $2
    i32.const 43
    i32.eq
    if (result i32)
     local.get $7
     i32.const 1
     i32.sub
     local.tee $7
     i32.eqz
     br_if $folding-inner0
     local.get $0
     i32.const 2
     i32.add
     local.tee $0
     i32.load16_u
    else
     local.get $2
    end
   end
   local.tee $2
   i32.const 73
   i32.eq
   i32.const 0
   local.get $7
   i32.const 8
   i32.ge_s
   select
   if
    local.get $0
    i64.load
    i64.const 29555310648492105
    i64.eq
    if (result i32)
     local.get $0
     i64.load offset=8
     i64.const 34058970405077102
     i64.eq
    else
     i32.const 0
    end
    if
     local.get $12
     f64.const inf
     f64.mul
     return
    end
    br $folding-inner0
   end
   local.get $2
   i32.const 48
   i32.sub
   i32.const 10
   i32.ge_u
   i32.const 0
   local.get $2
   i32.const 46
   i32.ne
   select
   br_if $folding-inner0
   local.get $0
   local.set $3
   loop $while-continue|1
    local.get $2
    i32.const 48
    i32.eq
    if
     local.get $0
     i32.const 2
     i32.add
     local.tee $0
     i32.load16_u
     local.set $2
     local.get $7
     i32.const 1
     i32.sub
     local.set $7
     br $while-continue|1
    end
   end
   local.get $7
   i32.const 0
   i32.le_s
   if
    f64.const 0
    return
   end
   local.get $2
   i32.const 46
   i32.eq
   if
    local.get $0
    local.get $3
    i32.eq
    local.set $3
    local.get $0
    i32.const 2
    i32.add
    local.set $0
    i32.const 0
    local.get $3
    local.get $7
    i32.const 1
    i32.sub
    local.tee $7
    select
    br_if $folding-inner0
    i32.const 1
    local.set $10
    loop $for-loop|2
     local.get $0
     i32.load16_u
     local.tee $2
     i32.const 48
     i32.eq
     if
      local.get $7
      i32.const 1
      i32.sub
      local.set $7
      local.get $4
      i32.const 1
      i32.sub
      local.set $4
      local.get $0
      i32.const 2
      i32.add
      local.set $0
      br $for-loop|2
     end
    end
    local.get $7
    i32.const 0
    i32.le_s
    if
     f64.const 0
     return
    end
    local.get $2
    i32.const 48
    i32.sub
    i32.const 10
    i32.ge_u
    i32.const 0
    i32.const 0
    local.get $3
    local.get $4
    select
    select
    br_if $folding-inner0
   end
   local.get $2
   i32.const 48
   i32.sub
   local.set $3
   loop $for-loop|3
    i32.const 1
    local.get $10
    i32.eqz
    i32.const 0
    local.get $2
    i32.const 46
    i32.eq
    select
    local.get $3
    i32.const 10
    i32.lt_u
    select
    if
     block $for-break3
      local.get $3
      i32.const 10
      i32.lt_u
      if
       local.get $3
       i64.extend_i32_u
       local.get $6
       i64.const 10
       i64.mul
       i64.add
       local.get $6
       local.get $3
       i32.eqz
       i32.eqz
       i64.extend_i32_u
       i64.or
       local.get $1
       i32.const 19
       i32.lt_s
       select
       local.set $6
       local.get $1
       i32.const 1
       i32.add
       local.set $1
      else
       local.get $1
       local.set $4
       i32.const 1
       local.set $10
      end
      local.get $7
      i32.const 1
      i32.sub
      local.tee $7
      i32.eqz
      br_if $for-break3
      local.get $0
      i32.const 2
      i32.add
      local.tee $0
      i32.load16_u
      local.tee $2
      i32.const 48
      i32.sub
      local.set $3
      br $for-loop|3
     end
    end
   end
   block $~lib/util/string/scientific|inlined.0 (result f64)
    local.get $4
    local.get $1
    local.get $10
    select
    i32.const 19
    local.get $1
    local.get $1
    i32.const 19
    i32.gt_s
    select
    i32.sub
    local.set $10
    f64.const 0
    i32.const 1
    block $~lib/util/string/parseExp|inlined.0 (result i32)
     i32.const 1
     local.set $1
     i32.const 0
     local.get $0
     local.tee $2
     i32.load16_u
     i32.const 32
     i32.or
     i32.const 101
     i32.ne
     br_if $~lib/util/string/parseExp|inlined.0
     drop
     i32.const 0
     local.get $7
     i32.const 1
     i32.sub
     local.tee $3
     i32.eqz
     br_if $~lib/util/string/parseExp|inlined.0
     drop
     local.get $2
     i32.const 2
     i32.add
     local.tee $0
     i32.load16_u
     local.tee $4
     i32.const 45
     i32.eq
     if (result i32)
      i32.const 0
      local.get $3
      i32.const 1
      i32.sub
      local.tee $3
      i32.eqz
      br_if $~lib/util/string/parseExp|inlined.0
      drop
      i32.const -1
      local.set $1
      local.get $0
      i32.const 2
      i32.add
      local.tee $0
      i32.load16_u
     else
      local.get $4
      i32.const 43
      i32.eq
      if (result i32)
       i32.const 0
       local.get $3
       i32.const 1
       i32.sub
       local.tee $3
       i32.eqz
       br_if $~lib/util/string/parseExp|inlined.0
       drop
       local.get $0
       i32.const 2
       i32.add
       local.tee $0
       i32.load16_u
      else
       local.get $4
      end
     end
     local.set $4
     loop $while-continue|4
      local.get $4
      i32.const 48
      i32.eq
      if
       i32.const 0
       local.get $3
       i32.const 1
       i32.sub
       local.tee $3
       i32.eqz
       br_if $~lib/util/string/parseExp|inlined.0
       drop
       local.get $0
       i32.const 2
       i32.add
       local.tee $0
       i32.load16_u
       local.set $4
       br $while-continue|4
      end
     end
     local.get $4
     i32.const 48
     i32.sub
     local.set $4
     loop $for-loop|5
      local.get $4
      i32.const 10
      i32.lt_u
      i32.const 0
      local.get $3
      select
      if
       local.get $1
       i32.const 3200
       i32.mul
       local.get $5
       i32.const 3200
       i32.ge_s
       br_if $~lib/util/string/parseExp|inlined.0
       drop
       local.get $4
       local.get $5
       i32.const 10
       i32.mul
       i32.add
       local.set $5
       local.get $3
       i32.const 1
       i32.sub
       local.set $3
       local.get $0
       i32.const 2
       i32.add
       local.tee $0
       i32.load16_u
       i32.const 48
       i32.sub
       local.set $4
       br $for-loop|5
      end
     end
     local.get $1
     local.get $5
     i32.mul
    end
    local.get $10
    i32.add
    local.tee $0
    i32.const -342
    i32.lt_s
    local.get $6
    i64.eqz
    select
    br_if $~lib/util/string/scientific|inlined.0
    drop
    f64.const inf
    local.get $0
    i32.const 308
    i32.gt_s
    br_if $~lib/util/string/scientific|inlined.0
    drop
    local.get $6
    f64.convert_i64_u
    local.tee $11
    local.get $0
    i32.eqz
    br_if $~lib/util/string/scientific|inlined.0
    drop
    local.get $0
    i32.const 37
    i32.le_s
    i32.const 0
    local.get $0
    i32.const 22
    i32.gt_s
    select
    if
     local.get $11
     local.get $0
     i32.const 3
     i32.shl
     i32.const 3744
     i32.add
     f64.load
     f64.mul
     local.set $11
     i32.const 22
     local.set $0
    end
    local.get $6
    i64.const 9007199254740991
    i64.le_u
    if (result i32)
     local.get $0
     i32.const 31
     i32.shr_s
     local.tee $2
     local.get $0
     local.get $2
     i32.add
     i32.xor
     i32.const 22
     i32.le_s
    else
     i32.const 0
    end
    if (result f64)
     local.get $0
     i32.const 0
     i32.gt_s
     if
      local.get $11
      local.get $0
      i32.const 3
      i32.shl
      i32.const 3920
      i32.add
      f64.load
      f64.mul
      br $~lib/util/string/scientific|inlined.0
     end
     local.get $11
     i32.const 0
     local.get $0
     i32.sub
     i32.const 3
     i32.shl
     i32.const 3920
     i32.add
     f64.load
     f64.div
    else
     local.get $0
     i32.const 0
     i32.lt_s
     if (result f64)
      local.get $6
      local.get $6
      i64.clz
      local.tee $8
      i64.shl
      local.set $6
      local.get $0
      local.tee $1
      i64.extend_i32_s
      local.get $8
      i64.sub
      local.set $8
      loop $for-loop|6
       local.get $1
       i32.const -14
       i32.le_s
       if
        local.get $6
        i64.const 6103515625
        i64.rem_u
        local.get $6
        i64.const 6103515625
        i64.div_u
        local.tee $6
        i64.clz
        local.tee $9
        i64.const 18
        i64.sub
        i64.shl
        f64.convert_i64_u
        f64.const 0.00004294967296
        f64.mul
        f64.nearest
        i64.trunc_f64_u
        local.get $6
        local.get $9
        i64.shl
        i64.add
        local.set $6
        local.get $8
        local.get $9
        i64.sub
        local.set $8
        local.get $1
        i32.const 14
        i32.add
        local.set $1
        br $for-loop|6
       end
      end
      local.get $6
      i32.const 0
      local.get $1
      i32.sub
      call $~lib/math/ipow32
      i64.extend_i32_s
      local.tee $13
      i64.div_u
      local.tee $14
      i64.clz
      local.set $9
      local.get $6
      local.get $13
      i64.rem_u
      f64.convert_i64_u
      i64.reinterpret_f64
      local.get $9
      i64.const 52
      i64.shl
      i64.add
      f64.reinterpret_i64
      local.get $13
      f64.convert_i64_u
      f64.div
      i64.trunc_f64_u
      local.get $14
      local.get $9
      i64.shl
      i64.add
      f64.convert_i64_u
      local.get $8
      local.get $9
      i64.sub
      i32.wrap_i64
      call $~lib/math/NativeMath.scalbn
     else
      local.get $6
      local.get $6
      i64.ctz
      local.tee $8
      i64.shr_u
      local.set $6
      local.get $8
      local.get $0
      local.tee $5
      i64.extend_i32_s
      i64.add
      global.set $~lib/util/string/__fixmulShift
      loop $for-loop|7
       local.get $5
       i32.const 13
       i32.ge_s
       if
        i64.const 32
        local.get $6
        i64.const 32
        i64.shr_u
        i64.const 1220703125
        i64.mul
        local.get $6
        i64.const 4294967295
        i64.and
        i64.const 1220703125
        i64.mul
        local.tee $6
        i64.const 32
        i64.shr_u
        i64.add
        local.tee $8
        i64.const 32
        i64.shr_u
        i32.wrap_i64
        i32.clz
        local.tee $0
        i64.extend_i32_u
        i64.sub
        local.tee $9
        global.get $~lib/util/string/__fixmulShift
        i64.add
        global.set $~lib/util/string/__fixmulShift
        local.get $6
        local.get $0
        i64.extend_i32_u
        i64.shl
        i64.const 31
        i64.shr_u
        i64.const 1
        i64.and
        local.get $8
        local.get $0
        i64.extend_i32_u
        i64.shl
        local.get $6
        i64.const 4294967295
        i64.and
        local.get $9
        i64.shr_u
        i64.or
        i64.add
        local.set $6
        local.get $5
        i32.const 13
        i32.sub
        local.set $5
        br $for-loop|7
       end
      end
      local.get $5
      call $~lib/math/ipow32
      local.tee $0
      i64.extend_i32_u
      local.get $6
      i64.const 4294967295
      i64.and
      i64.mul
      local.set $8
      i64.const 32
      local.get $0
      i64.extend_i32_u
      local.get $6
      i64.const 32
      i64.shr_u
      i64.mul
      local.get $8
      i64.const 32
      i64.shr_u
      i64.add
      local.tee $6
      i64.const 32
      i64.shr_u
      i32.wrap_i64
      i32.clz
      local.tee $0
      i64.extend_i32_u
      i64.sub
      local.tee $9
      global.get $~lib/util/string/__fixmulShift
      i64.add
      global.set $~lib/util/string/__fixmulShift
      local.get $8
      local.get $0
      i64.extend_i32_u
      i64.shl
      i64.const 31
      i64.shr_u
      i64.const 1
      i64.and
      local.get $6
      local.get $0
      i64.extend_i32_u
      i64.shl
      local.get $8
      i64.const 4294967295
      i64.and
      local.get $9
      i64.shr_u
      i64.or
      i64.add
      f64.convert_i64_u
      global.get $~lib/util/string/__fixmulShift
      i32.wrap_i64
      call $~lib/math/NativeMath.scalbn
     end
    end
   end
   local.get $12
   f64.copysign
   return
  end
  f64.const nan:0x8000000000000
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseNumber (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 f64)
  (local $4 i32)
  (local $5 f64)
  (local $6 i32)
  (local $7 i64)
  f64.const 1
  local.set $5
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar
  i32.const 45
  i32.eq
  if (result i32)
   f64.const -1
   local.set $5
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar
   local.set $2
   i32.const 1
   global.set $~argumentsLength
   i32.const 1088
   local.get $2
   call $~lib/string/String.fromCharCode@varargs
   call $~lib/string/String.__concat
  else
   i32.const 1088
  end
  local.set $2
  loop $while-continue|0
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar
   i32.const 48
   i32.ge_s
   if (result i32)
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar
    i32.const 57
    i32.le_s
   else
    i32.const 0
   end
   if (result i32)
    i32.const 1
   else
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar
    i32.const 46
    i32.eq
   end
   if (result i32)
    i32.const 1
   else
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar
    i32.const 45
    i32.eq
   end
   if (result i32)
    i32.const 1
   else
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar
    i32.const 43
    i32.eq
   end
   if (result i32)
    i32.const 1
   else
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar
    i32.const 69
    i32.eq
   end
   if (result i32)
    i32.const 1
   else
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar
    i32.const 101
    i32.eq
   end
   if
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar
    local.set $1
    i32.const 1
    global.set $~argumentsLength
    local.get $2
    local.get $1
    call $~lib/string/String.fromCharCode@varargs
    call $~lib/string/String.__concat
    local.set $2
    i32.const 1
    local.get $1
    i32.const 45
    i32.eq
    i32.const 1
    local.get $1
    i32.const 43
    i32.eq
    i32.const 1
    local.get $1
    i32.const 46
    i32.eq
    i32.const 1
    local.get $1
    i32.const 101
    i32.eq
    local.get $1
    i32.const 69
    i32.eq
    select
    select
    select
    select
    if
     i32.const 1
     local.set $4
    else
     local.get $3
     local.get $3
     f64.const 10
     f64.mul
     local.get $1
     i32.const 48
     i32.sub
     f64.convert_i32_s
     f64.add
     local.get $4
     select
     local.set $3
     local.get $6
     i32.const 1
     i32.add
     local.set $6
    end
    br $while-continue|0
   end
  end
  local.get $6
  i32.const 0
  i32.gt_s
  if
   local.get $4
   if (result i32)
    i32.const 1
   else
    local.get $2
    i32.const 3904
    call $~lib/string/String.__eq
   end
   if
    local.get $0
    i32.load
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#get:state
    i32.load
    local.get $2
    call $~lib/util/string/strtod
    local.set $3
    i32.const 8
    i32.const 25
    call $~lib/rt/stub/__new
    local.tee $0
    i32.eqz
    if
     i32.const 8
     i32.const 26
     call $~lib/rt/stub/__new
     local.set $0
    end
    local.get $0
    local.get $3
    f64.store
    local.get $0
    call $~lib/assemblyscript-json/JSON/Value#constructor
    call $~lib/assemblyscript-json/JSON/Handler#addValue
   else
    local.get $0
    i32.load
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#get:state
    i32.load
    local.get $3
    local.get $5
    f64.mul
    i64.trunc_f64_s
    local.set $7
    i32.const 8
    i32.const 27
    call $~lib/rt/stub/__new
    local.tee $1
    local.get $7
    call $~lib/as-bignum/integer/u128/u128#set:lo
    local.get $1
    call $~lib/assemblyscript-json/JSON/Value#constructor
    call $~lib/assemblyscript-json/JSON/Handler#addValue
   end
   i32.const 1
   return
  end
  i32.const 0
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseValue (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#skipWhitespace
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseObject
  local.tee $1
  i32.eqz
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseArray
   local.set $1
  end
  local.get $1
  i32.eqz
  if
   block $__inlined_func$~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseString (result i32)
    i32.const 0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar
    i32.const 2704
    i32.const 0
    call $~lib/string/String#charCodeAt
    i32.ne
    br_if $__inlined_func$~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseString
    drop
    local.get $0
    i32.load
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#get:state
    i32.load
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readString
    local.set $3
    i32.const 4
    i32.const 23
    call $~lib/rt/stub/__new
    local.tee $4
    local.get $3
    call $~lib/rt/common/BLOCK#set:mmInfo
    local.get $4
    call $~lib/assemblyscript-json/JSON/Value#constructor
    call $~lib/assemblyscript-json/JSON/Handler#addValue
    i32.const 1
   end
   local.set $1
  end
  local.get $1
  i32.eqz
  if
   block $__inlined_func$~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseBoolean (result i32)
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar
    i32.const 3760
    i32.const 0
    call $~lib/string/String#charCodeAt
    i32.eq
    if
     local.get $0
     i32.const 3760
     call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readAndAssert
     local.get $0
     i32.load
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#get:state
     i32.load
     i32.const 0
     call $~lib/assemblyscript-json/JSON/Handler#setBoolean
     i32.const 1
     br $__inlined_func$~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseBoolean
    end
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar
    i32.const 3872
    i32.const 0
    call $~lib/string/String#charCodeAt
    i32.eq
    if
     local.get $0
     i32.const 3872
     call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readAndAssert
     local.get $0
     i32.load
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#get:state
     i32.load
     i32.const 1
     call $~lib/assemblyscript-json/JSON/Handler#setBoolean
     i32.const 1
     br $__inlined_func$~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseBoolean
    end
    i32.const 0
   end
   local.set $1
  end
  local.get $1
  i32.eqz
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseNumber
   local.set $1
  end
  local.get $1
  i32.eqz
  if
   block $__inlined_func$~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseNull (result i32)
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar
    i32.const 4128
    i32.const 0
    call $~lib/string/String#charCodeAt
    i32.eq
    if
     local.get $0
     i32.const 4128
     call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readAndAssert
     local.get $0
     i32.load
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#get:state
     i32.load
     global.get $~lib/assemblyscript-json/JSON/NULL
     call $~lib/assemblyscript-json/JSON/Handler#addValue
     i32.const 1
     br $__inlined_func$~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseNull
    end
    i32.const 0
   end
   local.set $1
  end
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#skipWhitespace
  local.get $1
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#deserialize (param $0 i32) (param $1 i32)
  (local $2 i32)
  i32.const 12
  i32.const 20
  call $~lib/rt/stub/__new
  local.tee $2
  i32.const 1088
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $2
  i32.const 0
  call $~lib/rt/common/OBJECT#set:gcInfo
  local.get $2
  local.get $1
  call $~lib/rt/common/OBJECT#set:gcInfo2
  local.get $0
  local.get $2
  call $~lib/rt/common/OBJECT#set:gcInfo
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseValue
  i32.eqz
  if
   i32.const 4160
   i32.const 1984
   i32.const 144
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/assemblyscript-json/JSON/Handler#reset (param $0 i32)
  loop $while-continue|0
   local.get $0
   i32.load
   i32.load offset=12
   i32.const 0
   i32.gt_s
   if
    local.get $0
    i32.load
    call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#pop
    br $while-continue|0
   end
  end
 )
 (func $~lib/assemblyscript-json/JSON/_JSON.parse<~lib/typedarray/Uint8Array> (param $0 i32) (result i32)
  global.get $~lib/assemblyscript-json/JSON/_JSON.decoder
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#deserialize
  global.get $~lib/assemblyscript-json/JSON/_JSON.decoder
  i32.load
  call $~lib/assemblyscript-json/JSON/Handler#get:peek
  global.get $~lib/assemblyscript-json/JSON/_JSON.decoder
  i32.load
  call $~lib/assemblyscript-json/JSON/Handler#reset
 )
 (func $~lib/near-sdk-bindgen/index/getInput (result i32)
  (local $0 i32)
  (local $1 i64)
  i64.const 0
  call $~lib/near-sdk-core/env/env/env.input
  i64.const 0
  call $~lib/near-sdk-core/env/env/env.register_len
  local.tee $1
  i64.const 4294967295
  i64.eq
  if
   call $~lib/near-sdk-core/env/env/env.panic
  end
  i64.const 0
  local.get $1
  i32.wrap_i64
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $0
  i32.load offset=4
  i64.extend_i32_u
  call $~lib/near-sdk-core/env/env/env.read_register
  local.get $0
  call $~lib/assemblyscript-json/JSON/_JSON.parse<~lib/typedarray/Uint8Array>
  local.tee $0
  i32.const 12
  call $~lib/rt/__instanceof
  i32.eqz
  if
   i32.const 2432
   i32.const 4224
   i32.const 96
   i32.const 20
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
 )
 (func $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/Value>#has (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  local.get $1
  call $~lib/util/hash/HASH<~lib/string/String>
  call $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/Value>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/assemblyscript-json/JSON/Obj#has (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load
  local.get $1
  call $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/Value>#has
 )
 (func $~lib/string/String.__ne (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  call $~lib/string/String.__eq
  i32.eqz
 )
 (func $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/Value>#get (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  local.get $1
  call $~lib/util/hash/HASH<~lib/string/String>
  call $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/Value>#find
  local.tee $0
  i32.eqz
  if
   i32.const 4352
   i32.const 4416
   i32.const 105
   i32.const 17
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
 )
 (func $~lib/assemblyscript-json/JSON/Obj#get (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load
  local.get $1
  call $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/Value>#has
  i32.eqz
  if
   i32.const 0
   return
  end
  local.get $0
  i32.load
  local.get $1
  call $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/Value>#get
 )
 (func $~lib/array/Array<~lib/array/Array<assembly/model/ContractCall>>#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 16
  i32.const 31
  call $~lib/rt/stub/__new
  local.tee $1
  i32.const 0
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $1
  i32.const 0
  call $~lib/rt/common/OBJECT#set:gcInfo
  local.get $1
  i32.const 0
  call $~lib/rt/common/OBJECT#set:gcInfo2
  local.get $1
  i32.const 0
  call $~lib/rt/common/OBJECT#set:rtId
  local.get $0
  i32.const 268435455
  i32.gt_u
  if
   i32.const 1760
   i32.const 1872
   i32.const 64
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 8
  local.get $0
  i32.const 8
  i32.gt_u
  select
  i32.const 2
  i32.shl
  local.tee $2
  i32.const 0
  call $~lib/rt/stub/__new
  local.tee $3
  local.get $2
  call $~lib/memory/memory.fill
  local.get $1
  local.get $3
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $1
  local.get $3
  call $~lib/rt/common/OBJECT#set:gcInfo
  local.get $1
  local.get $2
  call $~lib/rt/common/OBJECT#set:gcInfo2
  local.get $1
  local.get $0
  call $~lib/rt/common/OBJECT#set:rtId
  local.get $1
 )
 (func $~lib/number/Bool#toString (param $0 i32) (result i32)
  i32.const 3872
  i32.const 3760
  local.get $0
  select
 )
 (func $~lib/near-sdk-bindgen/index/decode<~lib/string/String,~lib/assemblyscript-json/JSON/Obj> (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
   i32.const 12
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.const 1088
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if
   local.get $0
   i32.const 12
   call $~lib/rt/__instanceof
   i32.eqz
   if
    i32.const 2432
    i32.const 4224
    i32.const 310
    i32.const 37
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   call $~lib/assemblyscript-json/JSON/Obj#get
   local.tee $0
   i32.eqz
   if
    local.get $0
    return
   end
  end
  local.get $0
  if (result i32)
   local.get $0
   i32.const 28
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if
   i32.const 0
   return
  end
  local.get $0
  if (result i32)
   local.get $0
   i32.const 23
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 4832
   local.get $1
   call $~lib/string/String.__concat
   i32.const 5264
   call $~lib/string/String.__concat
   i32.const 4224
   i32.const 218
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 23
  call $~lib/rt/__instanceof
  i32.eqz
  if
   i32.const 2432
   i32.const 4224
   i32.const 222
   i32.const 21
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load
 )
 (func $~lib/util/string/strtol<i64> (param $0 i32) (result i64)
  (local $1 i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i64)
  (local $5 i32)
  local.get $0
  call $~lib/string/String#get:length
  local.tee $2
  i32.eqz
  if
   i64.const 0
   return
  end
  local.get $0
  i32.load16_u
  local.set $1
  loop $while-continue|0
   local.get $1
   call $~lib/util/string/isSpace
   if
    local.get $0
    i32.const 2
    i32.add
    local.tee $0
    i32.load16_u
    local.set $1
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    br $while-continue|0
   end
  end
  i64.const 1
  local.set $3
  i32.const 1
  local.get $1
  i32.const 43
  i32.eq
  local.get $1
  i32.const 45
  i32.eq
  select
  if
   local.get $2
   i32.const 1
   i32.sub
   local.tee $2
   i32.eqz
   if
    i64.const 0
    return
   end
   i64.const -1
   i64.const 1
   local.get $1
   i32.const 45
   i32.eq
   select
   local.set $3
   local.get $0
   i32.const 2
   i32.add
   local.tee $0
   i32.load16_u
   local.set $1
  end
  local.get $2
  i32.const 2
  i32.gt_s
  i32.const 0
  local.get $1
  i32.const 48
  i32.eq
  select
  if
   block $break|1
    block $case2|1
     block $case1|1
      local.get $0
      i32.load16_u offset=2
      i32.const 32
      i32.or
      local.tee $1
      i32.const 98
      i32.ne
      if
       local.get $1
       i32.const 111
       i32.eq
       br_if $case1|1
       local.get $1
       i32.const 120
       i32.eq
       br_if $case2|1
       br $break|1
      end
      local.get $0
      i32.const 4
      i32.add
      local.set $0
      local.get $2
      i32.const 2
      i32.sub
      local.set $2
      i32.const 2
      local.set $5
      br $break|1
     end
     local.get $0
     i32.const 4
     i32.add
     local.set $0
     local.get $2
     i32.const 2
     i32.sub
     local.set $2
     i32.const 8
     local.set $5
     br $break|1
    end
    local.get $0
    i32.const 4
    i32.add
    local.set $0
    local.get $2
    i32.const 2
    i32.sub
    local.set $2
    i32.const 16
    local.set $5
   end
  end
  local.get $5
  i32.const 10
  local.get $5
  select
  local.set $5
  loop $while-continue|2
   block $while-break|2
    local.get $2
    local.tee $1
    i32.const 1
    i32.sub
    local.set $2
    local.get $1
    if
     local.get $5
     local.get $0
     i32.load16_u
     local.tee $1
     i32.const 48
     i32.sub
     i32.const 10
     i32.lt_u
     if (result i32)
      local.get $1
      i32.const 48
      i32.sub
     else
      local.get $1
      i32.const 55
      i32.sub
      local.get $1
      i32.const 87
      i32.sub
      local.get $1
      local.get $1
      i32.const 97
      i32.sub
      i32.const 25
      i32.le_u
      select
      local.get $1
      i32.const 65
      i32.sub
      i32.const 25
      i32.le_u
      select
     end
     local.tee $1
     i32.le_u
     if
      local.get $4
      i64.eqz
      if
       i64.const 0
       return
      end
      br $while-break|2
     end
     local.get $1
     i64.extend_i32_u
     local.get $4
     local.get $5
     i64.extend_i32_s
     i64.mul
     i64.add
     local.set $4
     local.get $0
     i32.const 2
     i32.add
     local.set $0
     br $while-continue|2
    end
   end
  end
  local.get $3
  local.get $4
  i64.mul
 )
 (func $~lib/near-sdk-bindgen/index/decode<u64,~lib/assemblyscript-json/JSON/Obj> (param $0 i32) (param $1 i32) (result i64)
  local.get $0
  if (result i32)
   local.get $0
   i32.const 12
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.const 1088
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if
   local.get $0
   i32.const 12
   call $~lib/rt/__instanceof
   i32.eqz
   if
    i32.const 2432
    i32.const 4224
    i32.const 310
    i32.const 37
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   call $~lib/assemblyscript-json/JSON/Obj#get
   local.tee $0
   i32.eqz
   if
    i32.const 4464
    i32.const 5440
    call $~lib/string/String.__concat
    i32.const 4624
    call $~lib/string/String.__concat
    i32.const 4224
    i32.const 323
    i32.const 9
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $0
  if (result i32)
   local.get $0
   i32.const 23
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 4832
   local.get $1
   call $~lib/string/String.__concat
   i32.const 4720
   call $~lib/string/String.__concat
   i32.const 5440
   call $~lib/string/String.__concat
   i32.const 5472
   call $~lib/string/String.__concat
   i32.const 4224
   i32.const 346
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 23
  call $~lib/rt/__instanceof
  i32.eqz
  if
   i32.const 2432
   i32.const 4224
   i32.const 354
   i32.const 28
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load
  call $~lib/util/string/strtol<i64>
 )
 (func $assembly/model/ContractCall#set:gas (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store offset=16
 )
 (func $~lib/near-sdk-bindgen/index/decode<~lib/as-bignum/integer/safe/u128/u128,~lib/assemblyscript-json/JSON/Obj> (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
   i32.const 12
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.const 1088
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if
   local.get $0
   i32.const 12
   call $~lib/rt/__instanceof
   i32.eqz
   if
    i32.const 2432
    i32.const 4224
    i32.const 310
    i32.const 37
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   call $~lib/assemblyscript-json/JSON/Obj#get
   local.tee $0
   i32.eqz
   if
    local.get $0
    return
   end
  end
  local.get $0
  if (result i32)
   local.get $0
   i32.const 28
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if
   i32.const 0
   return
  end
  local.get $0
  if (result i32)
   local.get $0
   i32.const 23
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 4832
   local.get $1
   call $~lib/string/String.__concat
   i32.const 5696
   call $~lib/string/String.__concat
   block $__inlined_func$~lib/near-sdk-bindgen/index/JSONTypeToString<~lib/assemblyscript-json/JSON/Value> (result i32)
    i32.const 5808
    local.get $0
    if (result i32)
     local.get $0
     i32.const 23
     call $~lib/rt/__instanceof
    else
     i32.const 0
    end
    br_if $__inlined_func$~lib/near-sdk-bindgen/index/JSONTypeToString<~lib/assemblyscript-json/JSON/Value>
    drop
    i32.const 5840
    local.get $0
    if (result i32)
     local.get $0
     i32.const 24
     call $~lib/rt/__instanceof
    else
     i32.const 0
    end
    br_if $__inlined_func$~lib/near-sdk-bindgen/index/JSONTypeToString<~lib/assemblyscript-json/JSON/Value>
    drop
    i32.const 5888
    local.get $0
    if (result i32)
     local.get $0
     i32.const 12
     call $~lib/rt/__instanceof
    else
     i32.const 0
    end
    br_if $__inlined_func$~lib/near-sdk-bindgen/index/JSONTypeToString<~lib/assemblyscript-json/JSON/Value>
    drop
    i32.const 5920
    local.get $0
    if (result i32)
     local.get $0
     i32.const 21
     call $~lib/rt/__instanceof
    else
     i32.const 0
    end
    br_if $__inlined_func$~lib/near-sdk-bindgen/index/JSONTypeToString<~lib/assemblyscript-json/JSON/Value>
    drop
    i32.const 5952
    local.get $0
    if (result i32)
     local.get $0
     i32.const 28
     call $~lib/rt/__instanceof
    else
     i32.const 0
    end
    br_if $__inlined_func$~lib/near-sdk-bindgen/index/JSONTypeToString<~lib/assemblyscript-json/JSON/Value>
    drop
    i32.const 5984
    local.get $0
    if (result i32)
     local.get $0
     i32.const 27
     call $~lib/rt/__instanceof
    else
     i32.const 0
    end
    br_if $__inlined_func$~lib/near-sdk-bindgen/index/JSONTypeToString<~lib/assemblyscript-json/JSON/Value>
    drop
    i32.const 6032
    local.get $0
    if (result i32)
     local.get $0
     i32.const 25
     call $~lib/rt/__instanceof
    else
     i32.const 0
    end
    br_if $__inlined_func$~lib/near-sdk-bindgen/index/JSONTypeToString<~lib/assemblyscript-json/JSON/Value>
    drop
    i32.const 6064
   end
   call $~lib/string/String.__concat
   i32.const 4224
   i32.const 468
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  if (result i32)
   local.get $0
   i32.const 23
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 4832
   local.get $1
   call $~lib/string/String.__concat
   i32.const 5264
   call $~lib/string/String.__concat
   i32.const 4224
   i32.const 218
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 23
  call $~lib/rt/__instanceof
  i32.eqz
  if
   i32.const 2432
   i32.const 4224
   i32.const 222
   i32.const 21
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load
  call $~lib/as-bignum/utils/atou128
 )
 (func $assembly/model/ContractCall#set:depo (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=24
 )
 (func $~lib/near-sdk-bindgen/index/decode<assembly/model/ContractCall,~lib/assemblyscript-json/JSON/Value> (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  if (result i32)
   local.get $0
   i32.const 12
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if (result i32)
   i32.const 1088
   i32.const 1088
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if
   local.get $0
   i32.const 12
   call $~lib/rt/__instanceof
   i32.eqz
   if
    i32.const 2432
    i32.const 4224
    i32.const 310
    i32.const 37
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.const 1088
   call $~lib/assemblyscript-json/JSON/Obj#get
   local.tee $0
   i32.eqz
   if
    local.get $0
    return
   end
  end
  local.get $0
  if (result i32)
   local.get $0
   i32.const 28
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if
   i32.const 0
   return
  end
  local.get $0
  if (result i32)
   local.get $0
   i32.const 12
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if (result i32)
   i32.const 1
  else
   local.get $0
   if (result i32)
    local.get $0
    i32.const 12
    call $~lib/rt/__instanceof
   else
    i32.const 0
   end
  end
  i32.eqz
  if
   i32.const 4832
   i32.const 1088
   call $~lib/string/String.__concat
   i32.const 4720
   call $~lib/string/String.__concat
   i32.const 5072
   call $~lib/string/String.__concat
   i32.const 5120
   call $~lib/string/String.__concat
   local.get $0
   if (result i32)
    local.get $0
    i32.const 12
    call $~lib/rt/__instanceof
   else
    i32.const 0
   end
   call $~lib/number/Bool#toString
   call $~lib/string/String.__concat
   i32.const 4224
   i32.const 401
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 28
  i32.const 29
  call $~lib/rt/stub/__new
  local.set $1
  local.get $0
  i32.const 12
  call $~lib/rt/__instanceof
  i32.eqz
  if
   i32.const 2432
   i32.const 4224
   i32.const 418
   i32.const 47
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $0
  i32.const 5200
  call $~lib/assemblyscript-json/JSON/Obj#has
  if (result i32)
   local.get $0
   i32.const 5200
   call $~lib/near-sdk-bindgen/index/decode<~lib/string/String,~lib/assemblyscript-json/JSON/Obj>
  else
   i32.const 0
  end
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $1
  local.get $0
  i32.const 5344
  call $~lib/assemblyscript-json/JSON/Obj#has
  if (result i32)
   local.get $0
   i32.const 5344
   call $~lib/near-sdk-bindgen/index/decode<~lib/string/String,~lib/assemblyscript-json/JSON/Obj>
  else
   i32.const 0
  end
  call $~lib/rt/common/OBJECT#set:gcInfo
  local.get $1
  local.get $0
  i32.const 5376
  call $~lib/assemblyscript-json/JSON/Obj#has
  if (result i32)
   local.get $0
   i32.const 5376
   call $~lib/near-sdk-bindgen/index/decode<~lib/string/String,~lib/assemblyscript-json/JSON/Obj>
  else
   i32.const 0
  end
  call $~lib/rt/common/OBJECT#set:gcInfo2
  local.get $1
  local.get $0
  i32.const 5408
  call $~lib/assemblyscript-json/JSON/Obj#has
  if (result i64)
   local.get $0
   i32.const 5408
   call $~lib/near-sdk-bindgen/index/decode<u64,~lib/assemblyscript-json/JSON/Obj>
  else
   i64.const 0
  end
  call $assembly/model/ContractCall#set:gas
  local.get $1
  local.get $0
  i32.const 5632
  call $~lib/assemblyscript-json/JSON/Obj#has
  if (result i32)
   local.get $0
   i32.const 5632
   call $~lib/near-sdk-bindgen/index/decode<~lib/as-bignum/integer/safe/u128/u128,~lib/assemblyscript-json/JSON/Obj>
  else
   i32.const 0
  end
  call $assembly/model/ContractCall#set:depo
  local.get $1
 )
 (func $~lib/near-sdk-bindgen/index/decodeArray<assembly/model/ContractCall> (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  if (result i32)
   local.get $0
   i32.const 21
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 4832
   i32.const 1088
   call $~lib/string/String.__concat
   i32.const 4896
   call $~lib/string/String.__concat
   i32.const 4224
   i32.const 226
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 16
  i32.const 30
  call $~lib/rt/stub/__new
  local.tee $1
  i32.const 0
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $1
  i32.const 0
  call $~lib/rt/common/OBJECT#set:gcInfo
  local.get $1
  i32.const 0
  call $~lib/rt/common/OBJECT#set:gcInfo2
  local.get $1
  i32.const 0
  call $~lib/rt/common/OBJECT#set:rtId
  i32.const 32
  i32.const 0
  call $~lib/rt/stub/__new
  local.tee $3
  i32.const 32
  call $~lib/memory/memory.fill
  local.get $1
  local.get $3
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $1
  local.get $3
  call $~lib/rt/common/OBJECT#set:gcInfo
  local.get $1
  i32.const 32
  call $~lib/rt/common/OBJECT#set:gcInfo2
  local.get $1
  i32.const 0
  call $~lib/rt/common/OBJECT#set:rtId
  local.get $0
  i32.const 21
  call $~lib/rt/__instanceof
  i32.eqz
  if
   i32.const 2432
   i32.const 4224
   i32.const 231
   i32.const 26
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load
  local.set $0
  loop $for-loop|0
   local.get $2
   local.get $0
   i32.load offset=12
   i32.lt_s
   if
    local.get $1
    local.get $0
    local.get $2
    call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
    call $~lib/near-sdk-bindgen/index/decode<assembly/model/ContractCall,~lib/assemblyscript-json/JSON/Value>
    call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#push
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  local.get $1
 )
 (func $~lib/near-sdk-bindgen/index/decodeArray<~lib/array/Array<assembly/model/ContractCall>> (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  if (result i32)
   local.get $0
   i32.const 21
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 4832
   i32.const 4304
   call $~lib/string/String.__concat
   i32.const 4896
   call $~lib/string/String.__concat
   i32.const 4224
   i32.const 226
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $~lib/array/Array<~lib/array/Array<assembly/model/ContractCall>>#constructor
  local.set $2
  local.get $0
  i32.const 21
  call $~lib/rt/__instanceof
  i32.eqz
  if
   i32.const 2432
   i32.const 4224
   i32.const 231
   i32.const 26
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load
  local.set $3
  loop $for-loop|0
   local.get $1
   local.get $3
   i32.load offset=12
   i32.lt_s
   if
    block $__inlined_func$~lib/near-sdk-bindgen/index/decode<~lib/array/Array<assembly/model/ContractCall>,~lib/assemblyscript-json/JSON/Value>
     local.get $3
     local.get $1
     call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
     local.tee $0
     if (result i32)
      local.get $0
      i32.const 12
      call $~lib/rt/__instanceof
     else
      i32.const 0
     end
     if (result i32)
      i32.const 1088
      i32.const 1088
      call $~lib/string/String.__ne
     else
      i32.const 0
     end
     if
      local.get $0
      i32.const 12
      call $~lib/rt/__instanceof
      i32.eqz
      if
       i32.const 2432
       i32.const 4224
       i32.const 310
       i32.const 37
       call $~lib/builtins/abort
       unreachable
      end
      local.get $0
      i32.const 1088
      call $~lib/assemblyscript-json/JSON/Obj#get
      local.tee $0
      i32.eqz
      br_if $__inlined_func$~lib/near-sdk-bindgen/index/decode<~lib/array/Array<assembly/model/ContractCall>,~lib/assemblyscript-json/JSON/Value>
     end
     local.get $0
     if (result i32)
      local.get $0
      i32.const 28
      call $~lib/rt/__instanceof
     else
      i32.const 0
     end
     if
      i32.const 0
      local.set $0
      br $__inlined_func$~lib/near-sdk-bindgen/index/decode<~lib/array/Array<assembly/model/ContractCall>,~lib/assemblyscript-json/JSON/Value>
     end
     local.get $0
     call $~lib/near-sdk-bindgen/index/decodeArray<assembly/model/ContractCall>
     local.set $0
    end
    local.get $2
    local.get $0
    call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#push
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  local.get $2
 )
 (func $~lib/near-sdk-core/util/util.read_register (result i32)
  (local $0 i32)
  i64.const 0
  i64.const 0
  call $~lib/near-sdk-core/env/env/env.register_len
  i32.wrap_i64
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $0
  i32.load offset=4
  i64.extend_i32_u
  call $~lib/near-sdk-core/env/env/env.read_register
  local.get $0
 )
 (func $~lib/arraybuffer/ArrayBuffer#get:byteLength (param $0 i32) (result i32)
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
 )
 (func $~lib/near-sdk-core/util/util.bytesToString (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   return
  end
  local.get $0
  i32.load
  local.set $4
  local.get $0
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  local.set $2
  local.get $0
  i32.load offset=8
  local.get $0
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  i32.add
  local.set $3
  local.get $4
  call $~lib/arraybuffer/ArrayBuffer#get:byteLength
  local.set $1
  local.get $2
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $1
   local.get $2
   i32.add
   local.tee $0
   i32.const 0
   local.get $0
   i32.const 0
   i32.gt_s
   select
  else
   local.get $2
   local.get $1
   local.get $1
   local.get $2
   i32.gt_s
   select
  end
  local.set $0
  local.get $3
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $1
   local.get $3
   i32.add
   local.tee $1
   i32.const 0
   local.get $1
   i32.const 0
   i32.gt_s
   select
  else
   local.get $3
   local.get $1
   local.get $1
   local.get $3
   i32.gt_s
   select
  end
  local.get $0
  i32.sub
  local.tee $1
  i32.const 0
  local.get $1
  i32.const 0
  i32.gt_s
  select
  local.tee $2
  i32.const 0
  call $~lib/rt/stub/__new
  local.tee $1
  local.get $0
  local.get $4
  i32.add
  local.get $2
  call $~lib/memory/memory.copy
  local.get $1
  local.get $1
  call $~lib/arraybuffer/ArrayBuffer#get:byteLength
  i32.const 1
  call $~lib/string/String.UTF8.decodeUnsafe
 )
 (func $~lib/near-sdk-core/util/util.read_register_string (result i32)
  (local $0 i32)
  call $~lib/near-sdk-core/util/util.read_register
  call $~lib/near-sdk-core/util/util.bytesToString
  local.tee $0
  i32.const 0
  call $~lib/string/String.__ne
  if
   local.get $0
   i32.eqz
   if
    i32.const 1920
    i32.const 6240
    i32.const 93
    i32.const 34
    call $~lib/builtins/abort
    unreachable
   end
  else
   i32.const 1088
   local.set $0
  end
  local.get $0
 )
 (func $~lib/near-sdk-core/contract/Context.get:predecessor (result i32)
  i64.const 0
  call $~lib/near-sdk-core/env/env/env.predecessor_account_id
  call $~lib/near-sdk-core/util/util.read_register_string
 )
 (func $~lib/near-sdk-core/collections/persistentMap/PersistentMap<~lib/string/String,i32>#_key (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load
  local.get $1
  call $~lib/string/String.__concat
 )
 (func $~lib/string/String.UTF8.byteLength (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.add
  local.set $4
  local.get $1
  i32.const 0
  i32.ne
  local.set $2
  loop $while-continue|0
   local.get $0
   local.get $4
   i32.lt_u
   if
    block $while-break|0
     local.get $0
     i32.load16_u
     local.tee $3
     i32.const 128
     i32.lt_u
     if (result i32)
      local.get $1
      local.get $3
      i32.eqz
      i32.and
      br_if $while-break|0
      local.get $2
      i32.const 1
      i32.add
     else
      local.get $3
      i32.const 2048
      i32.lt_u
      if (result i32)
       local.get $2
       i32.const 2
       i32.add
      else
       local.get $4
       local.get $0
       i32.const 2
       i32.add
       i32.gt_u
       i32.const 0
       local.get $3
       i32.const 64512
       i32.and
       i32.const 55296
       i32.eq
       select
       if
        local.get $0
        i32.load16_u offset=2
        i32.const 64512
        i32.and
        i32.const 56320
        i32.eq
        if
         local.get $2
         i32.const 4
         i32.add
         local.set $2
         local.get $0
         i32.const 4
         i32.add
         local.set $0
         br $while-continue|0
        end
       end
       local.get $2
       i32.const 3
       i32.add
      end
     end
     local.set $2
     local.get $0
     i32.const 2
     i32.add
     local.set $0
     br $while-continue|0
    end
   end
  end
  local.get $2
 )
 (func $~lib/string/String.UTF8.encodeUnsafe (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  local.set $3
  local.get $2
  local.set $1
  loop $while-continue|0
   local.get $0
   local.get $3
   i32.lt_u
   if
    local.get $0
    i32.load16_u
    local.tee $2
    i32.const 128
    i32.lt_u
    if (result i32)
     local.get $1
     local.get $2
     i32.store8
     local.get $1
     i32.const 1
     i32.add
    else
     local.get $2
     i32.const 2048
     i32.lt_u
     if (result i32)
      local.get $1
      local.get $2
      i32.const 6
      i32.shr_u
      i32.const 192
      i32.or
      local.get $2
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.const 8
      i32.shl
      i32.or
      i32.store16
      local.get $1
      i32.const 2
      i32.add
     else
      local.get $3
      local.get $0
      i32.const 2
      i32.add
      i32.gt_u
      i32.const 0
      local.get $2
      i32.const 64512
      i32.and
      i32.const 55296
      i32.eq
      select
      if
       local.get $0
       i32.load16_u offset=2
       local.tee $4
       i32.const 64512
       i32.and
       i32.const 56320
       i32.eq
       if
        local.get $1
        local.get $2
        i32.const 1023
        i32.and
        i32.const 10
        i32.shl
        i32.const 65536
        i32.add
        local.get $4
        i32.const 1023
        i32.and
        i32.or
        local.tee $2
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.const 24
        i32.shl
        local.get $2
        i32.const 6
        i32.shr_u
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.const 16
        i32.shl
        i32.or
        local.get $2
        i32.const 12
        i32.shr_u
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.const 8
        i32.shl
        i32.or
        local.get $2
        i32.const 18
        i32.shr_u
        i32.const 240
        i32.or
        i32.or
        i32.store
        local.get $1
        i32.const 4
        i32.add
        local.set $1
        local.get $0
        i32.const 4
        i32.add
        local.set $0
        br $while-continue|0
       end
      end
      local.get $1
      local.get $2
      i32.const 12
      i32.shr_u
      i32.const 224
      i32.or
      local.get $2
      i32.const 6
      i32.shr_u
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.const 8
      i32.shl
      i32.or
      i32.store16
      local.get $1
      local.get $2
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=2
      local.get $1
      i32.const 3
      i32.add
     end
    end
    local.set $1
    local.get $0
    i32.const 2
    i32.add
    local.set $0
    br $while-continue|0
   end
  end
 )
 (func $~lib/string/String.UTF8.encode (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 0
  call $~lib/string/String.UTF8.byteLength
  i32.const 0
  call $~lib/rt/stub/__new
  local.set $1
  local.get $0
  local.get $0
  call $~lib/string/String#get:length
  local.get $1
  call $~lib/string/String.UTF8.encodeUnsafe
  local.get $1
 )
 (func $~lib/near-sdk-core/util/util.stringToBytes (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.const 1
  call $~lib/string/String.UTF8.byteLength
  i32.const 1
  i32.sub
  local.tee $1
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $2
  i32.load offset=4
  local.get $0
  call $~lib/string/String.UTF8.encode
  local.get $1
  call $~lib/memory/memory.copy
  local.get $2
 )
 (func $~lib/near-sdk-core/storage/Storage.contains (param $0 i32) (result i32)
  local.get $0
  call $~lib/near-sdk-core/util/util.stringToBytes
  local.tee $0
  i32.load offset=8
  i64.extend_i32_s
  local.get $0
  i32.load offset=4
  i64.extend_i32_u
  call $~lib/near-sdk-core/env/env/env.storage_has_key
  i64.const 0
  i64.ne
 )
 (func $~lib/near-sdk-core/collections/persistentMap/PersistentMap<~lib/string/String,i32>#contains (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  call $~lib/near-sdk-core/collections/persistentMap/PersistentMap<~lib/string/String,i32>#_key
  call $~lib/near-sdk-core/storage/Storage.contains
 )
 (func $~lib/near-sdk-core/collections/persistentUnorderedMap/PersistentUnorderedMap<~lib/string/String,bool>#contains (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load
  local.get $1
  call $~lib/near-sdk-core/collections/persistentMap/PersistentMap<~lib/string/String,i32>#contains
 )
 (func $assembly/index/_is_whitelisted (param $0 i32)
  global.get $assembly/index/admins
  local.get $0
  call $~lib/near-sdk-core/collections/persistentUnorderedMap/PersistentUnorderedMap<~lib/string/String,bool>#contains
  i32.eqz
  if
   local.get $0
   i32.const 6320
   call $~lib/string/String.__concat
   i32.const 6432
   i32.const 155
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/as-bignum/integer/safe/u128/u128#constructor (param $0 i64) (param $1 i64) (result i32)
  i32.const 16
  i32.const 8
  call $~lib/rt/stub/__new
  local.get $0
  local.get $1
  call $~lib/as-bignum/integer/u128/u128#constructor
 )
 (func $~lib/util/number/itoa32 (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.eqz
  if
   i32.const 6912
   return
  end
  i32.const 0
  local.get $0
  i32.sub
  local.get $0
  local.get $0
  i32.const 31
  i32.shr_u
  local.tee $2
  select
  local.tee $0
  i32.const 10
  i32.ge_u
  i32.const 1
  i32.add
  local.get $0
  i32.const 10000
  i32.ge_u
  i32.const 3
  i32.add
  local.get $0
  i32.const 1000
  i32.ge_u
  i32.add
  local.get $0
  i32.const 100
  i32.lt_u
  select
  local.get $0
  i32.const 1000000
  i32.ge_u
  i32.const 6
  i32.add
  local.get $0
  i32.const 1000000000
  i32.ge_u
  i32.const 8
  i32.add
  local.get $0
  i32.const 100000000
  i32.ge_u
  i32.add
  local.get $0
  i32.const 10000000
  i32.lt_u
  select
  local.get $0
  i32.const 100000
  i32.lt_u
  select
  local.get $2
  i32.add
  local.tee $3
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/stub/__new
  local.set $1
  loop $do-continue|0
   local.get $1
   local.get $3
   i32.const 1
   i32.sub
   local.tee $3
   i32.const 1
   i32.shl
   i32.add
   local.get $0
   i32.const 10
   i32.rem_u
   i32.const 48
   i32.add
   i32.store16
   local.get $0
   i32.const 10
   i32.div_u
   local.tee $0
   br_if $do-continue|0
  end
  local.get $2
  if
   local.get $1
   i32.const 45
   i32.store16
  end
  local.get $1
 )
 (func $~lib/staticarray/StaticArray<~lib/string/String>#__uset (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.get $2
  i32.store
 )
 (func $~lib/staticarray/StaticArray<~lib/string/String>#join (param $0 i32) (result i32)
  local.get $0
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 2
  i32.shr_u
  call $~lib/util/string/joinReferenceArray<~lib/string/String>
 )
 (func $~lib/rt/__newArray (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.const 2
  i32.shl
  local.tee $4
  i32.const 0
  call $~lib/rt/stub/__new
  local.set $3
  local.get $2
  if
   local.get $3
   local.get $2
   local.get $4
   call $~lib/memory/memory.copy
  end
  i32.const 16
  local.get $1
  call $~lib/rt/stub/__new
  local.tee $1
  local.get $3
  i32.store
  local.get $1
  local.get $3
  i32.store offset=4
  local.get $1
  local.get $4
  i32.store offset=8
  local.get $1
  local.get $0
  i32.store offset=12
  local.get $1
 )
 (func $~lib/array/Array<assembly/model/ContractCall>#__uset (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.get $2
  i32.store
 )
 (func $~lib/near-sdk-core/contract/Context.get:accountBalance (result i32)
  (local $0 i32)
  i32.const 16
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $0
  i32.load offset=4
  i64.extend_i32_u
  call $~lib/near-sdk-core/env/env/env.account_balance
  local.get $0
  i32.load offset=8
  if (result i32)
   local.get $0
   i32.load offset=8
   i32.const 15
   i32.and
   i32.eqz
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 7216
   i32.const 132
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.get $0
  i32.load offset=4
  local.tee $0
  i64.load
  local.get $0
  i64.load offset=8
  call $~lib/as-bignum/integer/u128/u128#constructor
 )
 (func $~lib/as-bignum/integer/safe/u128/u128.mul (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i64)
  local.get $0
  i64.load
  local.get $0
  i64.load offset=8
  i64.or
  i64.eqz
  if (result i32)
   i32.const 1
  else
   local.get $1
   i64.load
   local.get $1
   i64.load offset=8
   i64.or
   i64.eqz
  end
  if
   i64.const 0
   i64.const 0
   call $~lib/as-bignum/integer/safe/u128/u128#constructor
   return
  end
  local.get $0
  i64.load offset=8
  local.tee $4
  local.get $4
  i64.const 1
  i64.sub
  i64.xor
  i64.const 63
  i64.shr_s
  local.tee $3
  i64.const -1
  i64.xor
  local.get $4
  i64.and
  local.get $3
  local.get $0
  i64.load
  i64.and
  i64.or
  i64.clz
  i32.wrap_i64
  local.get $3
  i32.wrap_i64
  i32.const 64
  i32.and
  i32.add
  local.get $1
  i64.load offset=8
  local.tee $3
  local.get $3
  i64.const 1
  i64.sub
  i64.xor
  i64.const 63
  i64.shr_s
  local.tee $4
  i64.const -1
  i64.xor
  local.get $3
  i64.and
  local.get $4
  local.get $1
  i64.load
  i64.and
  i64.or
  i64.clz
  i32.wrap_i64
  local.get $4
  i32.wrap_i64
  i32.const 64
  i32.and
  i32.add
  i32.add
  local.tee $2
  i32.const 127
  i32.lt_u
  if
   i32.const 7296
   i32.const 7120
   i32.const 252
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 127
  i32.eq
  if
   i32.const 0
   local.get $1
   i64.load offset=8
   local.tee $3
   i64.const 63
   i64.shl
   local.get $1
   i64.load
   i64.const 1
   i64.shr_u
   i64.or
   local.get $3
   i64.const 1
   i64.shr_u
   call $~lib/as-bignum/integer/u128/u128#constructor
   local.set $2
   i32.const 0
   local.get $0
   i64.load
   local.get $0
   i64.load offset=8
   local.get $2
   i64.load
   local.get $2
   i64.load offset=8
   call $~lib/as-bignum/globals/__multi3
   global.get $~lib/as-bignum/globals/__res128_hi
   call $~lib/as-bignum/integer/u128/u128#constructor
   local.tee $2
   i64.load offset=8
   i64.const 63
   i64.shr_u
   i32.wrap_i64
   if
    i32.const 7296
    i32.const 7120
    i32.const 260
    i32.const 9
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   local.get $2
   i64.load
   local.tee $3
   i64.const 1
   i64.shl
   local.get $2
   i64.load offset=8
   i64.const 1
   i64.shl
   local.get $3
   i64.const 63
   i64.shr_u
   i64.or
   call $~lib/as-bignum/integer/u128/u128#constructor
   local.set $2
   local.get $1
   i64.load
   i64.const 1
   i64.and
   i32.wrap_i64
   if
    i32.const 0
    local.get $2
    i64.load
    local.tee $3
    local.get $0
    local.tee $1
    i64.load
    i64.add
    local.tee $4
    local.get $3
    local.get $4
    i64.gt_u
    i64.extend_i32_u
    local.get $2
    i64.load offset=8
    local.get $1
    i64.load offset=8
    i64.add
    i64.add
    call $~lib/as-bignum/integer/u128/u128#constructor
    local.tee $2
    i64.load offset=8
    local.tee $3
    local.get $1
    i64.load offset=8
    local.tee $4
    i64.eq
    if (result i32)
     local.get $2
     i64.load
     local.get $1
     i64.load
     i64.lt_u
    else
     local.get $3
     local.get $4
     i64.lt_u
    end
    if
     i32.const 7296
     i32.const 7120
     i32.const 269
     i32.const 11
     call $~lib/builtins/abort
     unreachable
    end
   end
   local.get $2
   return
  end
  i32.const 0
  local.get $0
  i64.load
  local.get $0
  i64.load offset=8
  local.get $1
  i64.load
  local.get $1
  i64.load offset=8
  call $~lib/as-bignum/globals/__multi3
  global.get $~lib/as-bignum/globals/__res128_hi
  call $~lib/as-bignum/integer/u128/u128#constructor
 )
 (func $assembly/index/get_min_storage_balance (result i32)
  global.get $assembly/index/storageCosts
  i32.load
  i32.const 0
  call $~lib/near-sdk-core/env/env/env.storage_usage
  i64.const 0
  call $~lib/as-bignum/integer/u128/u128#constructor
  call $~lib/as-bignum/integer/safe/u128/u128.mul
 )
 (func $~lib/as-bignum/integer/safe/u128/u128.sub (param $0 i32) (param $1 i32) (result i32)
  (local $2 i64)
  (local $3 i64)
  local.get $0
  i64.load offset=8
  local.tee $2
  local.get $1
  i64.load offset=8
  local.tee $3
  i64.eq
  if (result i32)
   local.get $0
   i64.load
   local.get $1
   i64.load
   i64.lt_u
  else
   local.get $2
   local.get $3
   i64.lt_u
  end
  if
   i32.const 7376
   i32.const 7120
   i32.const 239
   i32.const 16
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.get $0
  i64.load
  local.tee $2
  local.get $1
  i64.load
  i64.sub
  local.tee $3
  local.get $0
  i64.load offset=8
  local.get $1
  i64.load offset=8
  i64.sub
  local.get $2
  local.get $3
  i64.lt_u
  i64.extend_i32_u
  i64.sub
  call $~lib/as-bignum/integer/u128/u128#constructor
 )
 (func $~lib/array/Array<~lib/array/Array<assembly/model/ContractCall>>#__set (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   local.get $1
   i32.const 0
   i32.lt_s
   if
    i32.const 2080
    i32.const 1872
    i32.const 115
    i32.const 22
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $3
   i32.const 1
   call $~lib/array/ensureCapacity
   local.get $0
   local.get $3
   call $~lib/rt/common/OBJECT#set:rtId
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/array/Array<assembly/model/ContractCall>#__uset
 )
 (func $~lib/near-sdk-core/promise/ContractPromiseBatch.create (param $0 i32) (result i32)
  (local $1 i64)
  local.get $0
  call $~lib/near-sdk-core/util/util.stringToBytes
  local.tee $0
  i32.load offset=8
  i64.extend_i32_s
  local.get $0
  i32.load offset=4
  i64.extend_i32_u
  call $~lib/near-sdk-core/env/env/env.promise_batch_create
  local.set $1
  i32.const 8
  i32.const 35
  call $~lib/rt/stub/__new
  local.tee $0
  i64.const 0
  call $~lib/as-bignum/integer/u128/u128#set:lo
  local.get $0
  local.get $1
  call $~lib/as-bignum/integer/u128/u128#set:lo
  local.get $0
 )
 (func $~lib/assemblyscript-json/util/index/Buffer.fromString (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/string/String.UTF8.encode
  local.tee $0
  call $~lib/arraybuffer/ArrayBuffer#get:byteLength
  i32.eqz
  if
   i32.const 0
   call $~lib/typedarray/Uint8Array#constructor
   return
  end
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  call $~lib/arraybuffer/ArrayBuffer#get:byteLength
  local.set $2
  i32.const 12
  i32.const 15
  call $~lib/rt/stub/__new
  local.tee $1
  local.get $0
  i32.store
  local.get $1
  local.get $2
  i32.store offset=8
  local.get $1
  local.get $0
  i32.store offset=4
  local.get $1
 )
 (func $~lib/near-sdk-core/promise/ContractPromiseBatch#function_call<~lib/typedarray/Uint8Array> (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i64) (result i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  call $~lib/near-sdk-core/util/util.stringToBytes
  local.set $1
  i32.const 16
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $5
  i32.load offset=4
  local.tee $6
  local.get $3
  i64.load
  i64.store
  local.get $6
  local.get $3
  i64.load offset=8
  i64.store offset=8
  local.get $0
  i64.load
  local.get $1
  i32.load offset=8
  i64.extend_i32_s
  local.get $1
  i32.load offset=4
  i64.extend_i32_u
  local.get $2
  i32.load offset=8
  i64.extend_i32_s
  local.get $2
  i32.load offset=4
  i64.extend_i32_u
  local.get $5
  i32.load offset=4
  i64.extend_i32_u
  local.get $4
  call $~lib/near-sdk-core/env/env/env.promise_batch_action_function_call
  local.get $0
 )
 (func $~lib/string/String#indexOf (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/string/String#get:length
  local.tee $4
  i32.eqz
  if
   i32.const 0
   return
  end
  local.get $0
  call $~lib/string/String#get:length
  local.tee $3
  i32.eqz
  if
   i32.const -1
   return
  end
  local.get $2
  i32.const 0
  local.get $2
  i32.const 0
  i32.gt_s
  select
  local.tee $2
  local.get $3
  local.get $2
  local.get $3
  i32.lt_s
  select
  local.set $2
  local.get $3
  local.get $4
  i32.sub
  local.set $3
  loop $for-loop|0
   local.get $2
   local.get $3
   i32.le_s
   if
    local.get $0
    local.get $2
    local.get $1
    local.get $4
    call $~lib/util/string/compareImpl
    i32.eqz
    if
     local.get $2
     return
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  i32.const -1
 )
 (func $~lib/string/String#replaceAll (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  local.get $0
  call $~lib/string/String#get:length
  local.tee $6
  local.get $1
  call $~lib/string/String#get:length
  local.tee $9
  i32.le_u
  if
   local.get $6
   local.get $9
   i32.ge_u
   if (result i32)
    local.get $2
    local.get $0
    local.get $1
    local.get $0
    call $~lib/string/String.__eq
    select
   else
    local.get $0
   end
   return
  end
  local.get $2
  call $~lib/string/String#get:length
  local.set $7
  local.get $9
  i32.eqz
  if
   local.get $7
   i32.eqz
   if
    local.get $0
    return
   end
   local.get $6
   local.get $7
   local.get $6
   i32.const 1
   i32.add
   i32.mul
   i32.add
   i32.const 1
   i32.shl
   i32.const 1
   call $~lib/rt/stub/__new
   local.tee $3
   local.get $2
   local.get $7
   i32.const 1
   i32.shl
   call $~lib/memory/memory.copy
   local.get $7
   local.set $1
   loop $for-loop|0
    local.get $4
    local.get $6
    i32.lt_u
    if
     local.get $3
     local.get $1
     i32.const 1
     i32.shl
     i32.add
     local.get $0
     local.get $4
     i32.const 1
     i32.shl
     i32.add
     i32.load16_u
     i32.store16
     local.get $3
     local.get $1
     i32.const 1
     i32.add
     local.tee $1
     i32.const 1
     i32.shl
     i32.add
     local.get $2
     local.get $7
     i32.const 1
     i32.shl
     call $~lib/memory/memory.copy
     local.get $1
     local.get $7
     i32.add
     local.set $1
     local.get $4
     i32.const 1
     i32.add
     local.set $4
     br $for-loop|0
    end
   end
   local.get $3
   return
  end
  local.get $7
  local.get $9
  i32.eq
  if
   local.get $6
   i32.const 1
   i32.shl
   local.tee $3
   i32.const 1
   call $~lib/rt/stub/__new
   local.tee $4
   local.get $0
   local.get $3
   call $~lib/memory/memory.copy
   loop $while-continue|1
    local.get $0
    local.get $1
    local.get $11
    call $~lib/string/String#indexOf
    local.tee $3
    i32.const -1
    i32.xor
    if
     local.get $4
     local.get $3
     i32.const 1
     i32.shl
     i32.add
     local.get $2
     local.get $7
     i32.const 1
     i32.shl
     call $~lib/memory/memory.copy
     local.get $3
     local.get $9
     i32.add
     local.set $11
     br $while-continue|1
    end
   end
   local.get $4
   return
  end
  local.get $6
  local.set $5
  loop $while-continue|2
   local.get $0
   local.get $1
   local.get $11
   call $~lib/string/String#indexOf
   local.tee $8
   i32.const -1
   i32.xor
   if
    local.get $3
    local.tee $4
    if (result i32)
     local.get $4
     call $~lib/string/String#get:length
     i32.eqz
    else
     i32.const 1
    end
    if (result i32)
     local.get $6
     i32.const 1
     i32.shl
     i32.const 1
     call $~lib/rt/stub/__new
    else
     local.get $4
    end
    local.set $3
    local.get $5
    local.get $7
    local.get $10
    local.get $8
    local.get $11
    i32.sub
    local.tee $4
    i32.add
    i32.add
    i32.lt_u
    if
     local.get $3
     local.get $5
     i32.const 1
     i32.shl
     local.tee $5
     i32.const 1
     i32.shl
     call $~lib/rt/stub/__renew
     local.set $3
    end
    local.get $3
    local.get $10
    i32.const 1
    i32.shl
    i32.add
    local.get $0
    local.get $11
    i32.const 1
    i32.shl
    i32.add
    local.get $4
    i32.const 1
    i32.shl
    call $~lib/memory/memory.copy
    local.get $3
    local.get $4
    local.get $10
    i32.add
    local.tee $4
    i32.const 1
    i32.shl
    i32.add
    local.get $2
    local.get $7
    i32.const 1
    i32.shl
    call $~lib/memory/memory.copy
    local.get $4
    local.get $7
    i32.add
    local.set $10
    local.get $8
    local.get $9
    i32.add
    local.set $11
    br $while-continue|2
   end
  end
  local.get $3
  if
   local.get $5
   local.get $10
   local.get $6
   local.get $11
   i32.sub
   local.tee $1
   i32.add
   i32.lt_u
   if
    local.get $3
    local.get $5
    i32.const 1
    i32.shl
    local.tee $5
    i32.const 1
    i32.shl
    call $~lib/rt/stub/__renew
    local.set $3
   end
   local.get $1
   if
    local.get $3
    local.get $10
    i32.const 1
    i32.shl
    i32.add
    local.get $0
    local.get $11
    i32.const 1
    i32.shl
    i32.add
    local.get $1
    i32.const 1
    i32.shl
    call $~lib/memory/memory.copy
   end
   local.get $5
   local.get $1
   local.get $10
   i32.add
   local.tee $0
   i32.gt_u
   if (result i32)
    local.get $3
    local.get $0
    i32.const 1
    i32.shl
    call $~lib/rt/stub/__renew
   else
    local.get $3
   end
   return
  end
  local.get $0
 )
 (func $~lib/near-sdk-core/contract/ContractPromise#constructor (result i32)
  (local $0 i32)
  i32.const 8
  i32.const 36
  call $~lib/rt/stub/__new
  local.tee $0
  i64.const 0
  call $~lib/as-bignum/integer/u128/u128#set:lo
  local.get $0
 )
 (func $~lib/near-sdk-core/contract/ContractPromise.create<~lib/typedarray/Uint8Array> (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i64) (param $4 i32) (result i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  call $~lib/near-sdk-core/util/util.stringToBytes
  local.set $0
  local.get $1
  call $~lib/near-sdk-core/util/util.stringToBytes
  local.set $1
  i32.const 16
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $5
  i32.load offset=4
  local.tee $6
  local.get $4
  i64.load
  i64.store
  local.get $6
  local.get $4
  i64.load offset=8
  i64.store offset=8
  local.get $0
  i32.load offset=8
  i64.extend_i32_s
  local.get $0
  i32.load offset=4
  i64.extend_i32_u
  local.get $1
  i32.load offset=8
  i64.extend_i32_s
  local.get $1
  i32.load offset=4
  i64.extend_i32_u
  local.get $2
  i32.load offset=8
  i64.extend_i32_s
  local.get $2
  i32.load offset=4
  i64.extend_i32_u
  local.get $5
  i32.load offset=4
  i64.extend_i32_u
  local.get $3
  call $~lib/near-sdk-core/env/env/env.promise_create
  local.set $3
  call $~lib/near-sdk-core/contract/ContractPromise#constructor
  local.tee $0
  local.get $3
  call $~lib/as-bignum/integer/u128/u128#set:lo
  local.get $0
 )
 (func $~lib/near-sdk-core/contract/ContractPromise#then<~lib/typedarray/Uint8Array> (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i64) (param $5 i32) (result i32)
  (local $6 i32)
  (local $7 i32)
  local.get $1
  call $~lib/near-sdk-core/util/util.stringToBytes
  local.set $1
  local.get $2
  call $~lib/near-sdk-core/util/util.stringToBytes
  local.set $2
  i32.const 16
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $6
  i32.load offset=4
  local.tee $7
  local.get $5
  i64.load
  i64.store
  local.get $7
  local.get $5
  i64.load offset=8
  i64.store offset=8
  local.get $0
  i64.load
  local.get $1
  i32.load offset=8
  i64.extend_i32_s
  local.get $1
  i32.load offset=4
  i64.extend_i32_u
  local.get $2
  i32.load offset=8
  i64.extend_i32_s
  local.get $2
  i32.load offset=4
  i64.extend_i32_u
  local.get $3
  i32.load offset=8
  i64.extend_i32_s
  local.get $3
  i32.load offset=4
  i64.extend_i32_u
  local.get $6
  i32.load offset=4
  i64.extend_i32_u
  local.get $4
  call $~lib/near-sdk-core/env/env/env.promise_then
  local.set $4
  call $~lib/near-sdk-core/contract/ContractPromise#constructor
  local.tee $0
  local.get $4
  call $~lib/as-bignum/integer/u128/u128#set:lo
  local.get $0
 )
 (func $assembly/index/_internal_multicall (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i64)
  (local $8 i64)
  (local $9 i32)
  (local $10 i64)
  (local $11 i64)
  (local $12 i64)
  (local $13 i32)
  local.get $0
  i32.load offset=12
  i32.eqz
  if
   i32.const 6496
   i32.const 6432
   i32.const 32
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 24
  i32.const 32
  call $~lib/rt/stub/__new
  local.tee $5
  i32.const 16
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $5
  i32.const 3
  call $~lib/rt/common/OBJECT#set:gcInfo
  local.get $5
  i32.const 48
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/rt/common/OBJECT#set:gcInfo2
  local.get $5
  i32.const 4
  call $~lib/rt/common/OBJECT#set:rtId
  local.get $5
  i32.const 0
  call $~lib/rt/common/OBJECT#set:rtSize
  local.get $5
  i32.const 0
  call $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/Value>#set:entriesCount
  i64.const 0
  i64.const 0
  call $~lib/as-bignum/integer/safe/u128/u128#constructor
  local.set $1
  local.get $0
  i32.load offset=12
  i32.const 1
  i32.sub
  local.set $3
  loop $for-loop|0
   local.get $3
   i32.const 0
   i32.ge_s
   if
    local.get $0
    local.get $3
    call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
    i32.load offset=12
    i32.eqz
    if
     i32.const 6688
     i32.const 1
     local.get $3
     call $~lib/util/number/itoa32
     call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
     i32.const 6688
     call $~lib/staticarray/StaticArray<~lib/string/String>#join
     i32.const 6432
     i32.const 36
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $3
    call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
    i32.const 0
    call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
    i32.load offset=24
    local.tee $2
    i64.load
    local.tee $7
    local.get $1
    i64.load
    i64.add
    local.set $8
    local.get $7
    local.get $8
    i64.gt_u
    i64.extend_i32_u
    local.tee $10
    local.get $1
    i64.load offset=8
    local.tee $11
    local.get $2
    i64.load offset=8
    local.tee $12
    i64.add
    i64.add
    local.tee $7
    local.get $11
    i64.xor
    local.get $7
    local.get $12
    i64.xor
    i64.and
    local.get $10
    i64.lt_u
    if
     i32.const 7040
     i32.const 7120
     i32.const 232
     i32.const 7
     call $~lib/builtins/abort
     unreachable
    end
    local.get $8
    local.get $7
    call $~lib/as-bignum/integer/safe/u128/u128#constructor
    local.set $1
    local.get $0
    local.get $3
    call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
    i32.load offset=12
    i32.const 1
    i32.eq
    if
     local.get $5
     local.get $0
     local.get $3
     call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
     i32.const 0
     call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
     local.tee $2
     i32.load
     call $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/Value>#has
     if
      local.get $5
      local.get $2
      i32.load
      call $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/Value>#get
      local.tee $4
      local.get $2
      call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#push
      local.get $5
      local.get $2
      i32.load
      local.get $4
      call $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/Value>#set
     else
      local.get $2
      i32.load
      local.set $6
      i32.const 1
      i32.const 30
      i32.const 0
      call $~lib/rt/__newArray
      local.tee $4
      i32.load offset=4
      drop
      local.get $4
      i32.const 0
      local.get $2
      call $~lib/array/Array<assembly/model/ContractCall>#__uset
      local.get $5
      local.get $6
      local.get $4
      call $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/Value>#set
     end
     i32.const 1
     local.get $0
     i32.load offset=12
     local.tee $4
     local.get $3
     i32.const 0
     i32.lt_s
     if (result i32)
      local.get $3
      local.get $4
      i32.add
      local.tee $2
      i32.const 0
      local.get $2
      i32.const 0
      i32.gt_s
      select
     else
      local.get $3
      local.get $4
      local.get $3
      local.get $4
      i32.lt_s
      select
     end
     local.tee $2
     i32.sub
     local.tee $6
     local.get $6
     i32.const 1
     i32.gt_s
     select
     local.tee $6
     i32.const 0
     local.get $6
     i32.const 0
     i32.gt_s
     select
     local.tee $6
     i32.const 31
     i32.const 0
     call $~lib/rt/__newArray
     i32.load offset=4
     local.get $0
     i32.load offset=4
     local.tee $9
     local.get $2
     i32.const 2
     i32.shl
     i32.add
     local.tee $13
     local.get $6
     i32.const 2
     i32.shl
     call $~lib/memory/memory.copy
     local.get $4
     local.get $2
     local.get $6
     i32.add
     local.tee $2
     i32.ne
     if
      local.get $13
      local.get $9
      local.get $2
      i32.const 2
      i32.shl
      i32.add
      local.get $4
      local.get $2
      i32.sub
      i32.const 2
      i32.shl
      call $~lib/memory/memory.copy
     end
     local.get $0
     local.get $4
     local.get $6
     i32.sub
     call $~lib/rt/common/OBJECT#set:rtId
    end
    local.get $3
    i32.const 1
    i32.sub
    local.set $3
    br $for-loop|0
   end
  end
  call $~lib/near-sdk-core/contract/Context.get:accountBalance
  call $assembly/index/get_min_storage_balance
  call $~lib/as-bignum/integer/safe/u128/u128.sub
  local.tee $2
  local.set $3
  local.get $1
  i64.load offset=8
  local.tee $7
  local.get $2
  i64.load offset=8
  local.tee $8
  i64.eq
  if (result i32)
   local.get $1
   i64.load
   local.get $3
   i64.load
   i64.gt_u
  else
   local.get $7
   local.get $8
   i64.gt_u
  end
  if
   i32.const 7456
   i32.const 6432
   i32.const 50
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.set $1
  i32.const 0
  local.set $3
  local.get $5
  i32.load offset=8
  local.set $4
  local.get $5
  i32.load offset=16
  local.tee $6
  call $~lib/array/Array<~lib/array/Array<assembly/model/ContractCall>>#constructor
  local.set $2
  loop $for-loop|03
   local.get $3
   local.get $6
   i32.lt_s
   if
    local.get $4
    local.get $3
    i32.const 12
    i32.mul
    i32.add
    local.tee $9
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $2
     local.get $1
     local.get $9
     i32.load offset=4
     call $~lib/array/Array<~lib/array/Array<assembly/model/ContractCall>>#__set
     local.get $1
     i32.const 1
     i32.add
     local.set $1
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|03
   end
  end
  local.get $2
  local.get $1
  i32.const 0
  call $~lib/array/ensureCapacity
  local.get $2
  local.get $1
  call $~lib/rt/common/OBJECT#set:rtId
  i32.const 0
  local.set $1
  loop $for-loop|1
   local.get $1
   local.get $5
   i32.load offset=20
   i32.lt_s
   if
    block $for-continue|1
     local.get $2
     local.get $1
     call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
     i32.load offset=12
     i32.const 1
     i32.le_s
     if
      local.get $0
      local.get $2
      local.get $1
      call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
      call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#push
      br $for-continue|1
     end
     local.get $2
     local.get $1
     call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
     i32.load offset=12
     i32.const 1
     i32.sub
     local.set $4
     local.get $2
     local.get $1
     call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
     local.get $4
     call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
     i32.load
     call $~lib/near-sdk-core/promise/ContractPromiseBatch.create
     local.get $2
     local.get $1
     call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
     local.get $4
     call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
     i32.load offset=4
     local.get $2
     local.get $1
     call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
     local.get $4
     call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
     i32.load offset=8
     call $~lib/assemblyscript-json/util/index/Buffer.fromString
     local.get $2
     local.get $1
     call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
     local.get $4
     call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
     i32.load offset=24
     local.get $2
     local.get $1
     call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
     local.get $4
     call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
     i64.load offset=16
     call $~lib/near-sdk-core/promise/ContractPromiseBatch#function_call<~lib/typedarray/Uint8Array>
     local.set $3
     local.get $4
     i32.const 1
     i32.sub
     local.set $4
     loop $for-loop|2
      local.get $4
      i32.const 0
      i32.ge_s
      if
       local.get $3
       local.get $2
       local.get $1
       call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
       local.get $4
       call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
       i32.load offset=4
       local.get $2
       local.get $1
       call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
       local.get $4
       call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
       i32.load offset=8
       i32.const 7520
       i32.const 2704
       call $~lib/string/String#replaceAll
       i32.const 7552
       i32.const 2944
       call $~lib/string/String#replaceAll
       call $~lib/assemblyscript-json/util/index/Buffer.fromString
       local.get $2
       local.get $1
       call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
       local.get $4
       call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
       i32.load offset=24
       local.get $2
       local.get $1
       call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
       local.get $4
       call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
       i64.load offset=16
       call $~lib/near-sdk-core/promise/ContractPromiseBatch#function_call<~lib/typedarray/Uint8Array>
       local.set $3
       local.get $4
       i32.const 1
       i32.sub
       local.set $4
       br $for-loop|2
      end
     end
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|1
   end
  end
  i32.const 0
  local.set $1
  loop $for-loop|3
   local.get $1
   local.get $0
   i32.load offset=12
   i32.lt_s
   if
    local.get $0
    local.get $1
    call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
    local.tee $2
    i32.const 0
    call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
    i32.load
    local.get $2
    i32.const 0
    call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
    i32.load offset=4
    local.get $2
    i32.const 0
    call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
    i32.load offset=8
    call $~lib/assemblyscript-json/util/index/Buffer.fromString
    local.get $2
    i32.const 0
    call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
    i64.load offset=16
    local.get $2
    i32.const 0
    call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
    i32.load offset=24
    call $~lib/near-sdk-core/contract/ContractPromise.create<~lib/typedarray/Uint8Array>
    local.set $5
    i32.const 1
    local.set $3
    loop $for-loop|00
     local.get $3
     local.get $2
     i32.load offset=12
     i32.lt_s
     if
      local.get $5
      local.get $2
      local.get $3
      call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
      i32.load
      local.get $2
      local.get $3
      call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
      i32.load offset=4
      local.get $2
      local.get $3
      call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
      i32.load offset=8
      i32.const 7520
      i32.const 2704
      call $~lib/string/String#replaceAll
      i32.const 7552
      i32.const 2944
      call $~lib/string/String#replaceAll
      call $~lib/assemblyscript-json/util/index/Buffer.fromString
      local.get $2
      local.get $3
      call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
      i64.load offset=16
      local.get $2
      local.get $3
      call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
      i32.load offset=24
      call $~lib/near-sdk-core/contract/ContractPromise#then<~lib/typedarray/Uint8Array>
      local.set $5
      local.get $3
      i32.const 1
      i32.add
      local.set $3
      br $for-loop|00
     end
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|3
   end
  end
 )
 (func $assembly/index/__wrapper_multicall
  (local $0 i32)
  call $~lib/near-sdk-bindgen/index/getInput
  local.tee $0
  i32.const 4304
  call $~lib/assemblyscript-json/JSON/Obj#has
  if
   block $__inlined_func$~lib/near-sdk-bindgen/index/decode<~lib/array/Array<~lib/array/Array<assembly/model/ContractCall>>,~lib/assemblyscript-json/JSON/Obj>
    local.get $0
    if (result i32)
     local.get $0
     i32.const 12
     call $~lib/rt/__instanceof
    else
     i32.const 0
    end
    if (result i32)
     i32.const 4304
     i32.const 1088
     call $~lib/string/String.__ne
    else
     i32.const 0
    end
    if
     local.get $0
     i32.const 12
     call $~lib/rt/__instanceof
     i32.eqz
     if
      i32.const 2432
      i32.const 4224
      i32.const 310
      i32.const 37
      call $~lib/builtins/abort
      unreachable
     end
     local.get $0
     i32.const 4304
     call $~lib/assemblyscript-json/JSON/Obj#get
     local.tee $0
     i32.eqz
     br_if $__inlined_func$~lib/near-sdk-bindgen/index/decode<~lib/array/Array<~lib/array/Array<assembly/model/ContractCall>>,~lib/assemblyscript-json/JSON/Obj>
    end
    local.get $0
    if (result i32)
     local.get $0
     i32.const 28
     call $~lib/rt/__instanceof
    else
     i32.const 0
    end
    if
     i32.const 0
     local.set $0
     br $__inlined_func$~lib/near-sdk-bindgen/index/decode<~lib/array/Array<~lib/array/Array<assembly/model/ContractCall>>,~lib/assemblyscript-json/JSON/Obj>
    end
    local.get $0
    call $~lib/near-sdk-bindgen/index/decodeArray<~lib/array/Array<assembly/model/ContractCall>>
    local.set $0
   end
  else
   i32.const 6112
   i32.const 4304
   call $~lib/string/String.__concat
   i32.const 4720
   call $~lib/string/String.__concat
   i32.const 4496
   call $~lib/string/String.__concat
   i32.const 6160
   call $~lib/string/String.__concat
   i32.const 4224
   i32.const 33
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  call $~lib/near-sdk-core/contract/Context.get:predecessor
  call $assembly/index/_is_whitelisted
  local.get $0
  call $assembly/index/_internal_multicall
 )
 (func $~lib/near-sdk-bindgen/index/requireParameter<~lib/string/String> (param $0 i32) (result i32)
  i32.const 6112
  local.get $0
  call $~lib/string/String.__concat
  i32.const 4720
  call $~lib/string/String.__concat
  i32.const 5232
  call $~lib/string/String.__concat
  i32.const 6160
  call $~lib/string/String.__concat
  i32.const 4224
  i32.const 33
  i32.const 3
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/assemblyscript-json/JSON/Obj#getString (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  call $~lib/assemblyscript-json/JSON/Obj#get
  local.tee $0
  if (result i32)
   local.get $0
   if (result i32)
    local.get $0
    i32.const 23
    call $~lib/rt/__instanceof
   else
    i32.const 0
   end
  else
   i32.const 0
  end
  if
   local.get $0
   local.tee $1
   i32.const 23
   call $~lib/rt/__instanceof
   i32.eqz
   if
    i32.const 2432
    i32.const 2496
    i32.const 361
    i32.const 21
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   return
  end
  i32.const 0
 )
 (func $~lib/util/string/strtol<f64> (param $0 i32) (result f64)
  (local $1 i32)
  (local $2 i32)
  (local $3 f64)
  (local $4 f64)
  (local $5 i32)
  local.get $0
  call $~lib/string/String#get:length
  local.tee $2
  i32.eqz
  if
   f64.const nan:0x8000000000000
   return
  end
  local.get $0
  i32.load16_u
  local.set $1
  loop $while-continue|0
   local.get $1
   call $~lib/util/string/isSpace
   if
    local.get $0
    i32.const 2
    i32.add
    local.tee $0
    i32.load16_u
    local.set $1
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    br $while-continue|0
   end
  end
  f64.const 1
  local.set $3
  i32.const 1
  local.get $1
  i32.const 43
  i32.eq
  local.get $1
  i32.const 45
  i32.eq
  select
  if
   local.get $2
   i32.const 1
   i32.sub
   local.tee $2
   i32.eqz
   if
    f64.const nan:0x8000000000000
    return
   end
   f64.const -1
   f64.const 1
   local.get $1
   i32.const 45
   i32.eq
   select
   local.set $3
   local.get $0
   i32.const 2
   i32.add
   local.tee $0
   i32.load16_u
   local.set $1
  end
  local.get $2
  i32.const 2
  i32.gt_s
  i32.const 0
  local.get $1
  i32.const 48
  i32.eq
  select
  if
   block $break|1
    block $case2|1
     block $case1|1
      local.get $0
      i32.load16_u offset=2
      i32.const 32
      i32.or
      local.tee $1
      i32.const 98
      i32.ne
      if
       local.get $1
       i32.const 111
       i32.eq
       br_if $case1|1
       local.get $1
       i32.const 120
       i32.eq
       br_if $case2|1
       br $break|1
      end
      local.get $0
      i32.const 4
      i32.add
      local.set $0
      local.get $2
      i32.const 2
      i32.sub
      local.set $2
      i32.const 2
      local.set $5
      br $break|1
     end
     local.get $0
     i32.const 4
     i32.add
     local.set $0
     local.get $2
     i32.const 2
     i32.sub
     local.set $2
     i32.const 8
     local.set $5
     br $break|1
    end
    local.get $0
    i32.const 4
    i32.add
    local.set $0
    local.get $2
    i32.const 2
    i32.sub
    local.set $2
    i32.const 16
    local.set $5
   end
  end
  local.get $5
  i32.const 10
  local.get $5
  select
  local.set $5
  loop $while-continue|2
   block $while-break|2
    local.get $2
    local.tee $1
    i32.const 1
    i32.sub
    local.set $2
    local.get $1
    if
     local.get $5
     local.get $0
     i32.load16_u
     local.tee $1
     i32.const 48
     i32.sub
     i32.const 10
     i32.lt_u
     if (result i32)
      local.get $1
      i32.const 48
      i32.sub
     else
      local.get $1
      i32.const 55
      i32.sub
      local.get $1
      i32.const 87
      i32.sub
      local.get $1
      local.get $1
      i32.const 97
      i32.sub
      i32.const 25
      i32.le_u
      select
      local.get $1
      i32.const 65
      i32.sub
      i32.const 25
      i32.le_u
      select
     end
     local.tee $1
     i32.le_u
     if
      local.get $4
      i64.reinterpret_f64
      i64.const 1
      i64.shl
      i64.const 2
      i64.sub
      i64.const -9007199254740994
      i64.gt_u
      if
       f64.const nan:0x8000000000000
       return
      end
      br $while-break|2
     end
     local.get $4
     local.get $5
     f64.convert_i32_s
     f64.mul
     local.get $1
     f64.convert_i32_u
     f64.add
     local.set $4
     local.get $0
     i32.const 2
     i32.add
     local.set $0
     br $while-continue|2
    end
   end
  end
  local.get $3
  local.get $4
  f64.mul
 )
 (func $assembly/utils/ContractCallUtils#fromJsonObj (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.const 5200
  call $~lib/assemblyscript-json/JSON/Obj#getString
  local.set $1
  local.get $0
  i32.const 5344
  call $~lib/assemblyscript-json/JSON/Obj#getString
  local.set $2
  local.get $0
  i32.const 5376
  call $~lib/assemblyscript-json/JSON/Obj#getString
  local.set $3
  local.get $0
  i32.const 5408
  call $~lib/assemblyscript-json/JSON/Obj#getString
  local.set $4
  local.get $0
  i32.const 5632
  call $~lib/assemblyscript-json/JSON/Obj#getString
  local.tee $0
  i32.const 0
  local.get $4
  i32.const 0
  local.get $3
  i32.const 0
  local.get $2
  i32.const 0
  local.get $1
  select
  select
  select
  select
  if
   local.get $1
   i32.load
   local.set $1
   local.get $2
   i32.load
   local.set $2
   local.get $3
   i32.load
   local.set $3
   local.get $4
   i32.load
   local.set $4
   local.get $0
   i32.load
   call $~lib/as-bignum/utils/atou128
   local.set $5
   i32.const 28
   i32.const 29
   call $~lib/rt/stub/__new
   local.tee $0
   i32.const 0
   call $~lib/rt/common/BLOCK#set:mmInfo
   local.get $0
   i32.const 0
   call $~lib/rt/common/OBJECT#set:gcInfo
   local.get $0
   i32.const 0
   call $~lib/rt/common/OBJECT#set:gcInfo2
   local.get $0
   i64.const 0
   call $assembly/model/ContractCall#set:gas
   local.get $0
   i32.const 0
   call $assembly/model/ContractCall#set:depo
   local.get $0
   local.get $1
   call $~lib/rt/common/BLOCK#set:mmInfo
   local.get $0
   local.get $2
   call $~lib/rt/common/OBJECT#set:gcInfo
   local.get $0
   local.get $3
   call $~lib/rt/common/OBJECT#set:gcInfo2
   local.get $0
   local.get $4
   call $~lib/util/string/strtol<f64>
   i64.trunc_f64_u
   call $assembly/model/ContractCall#set:gas
   local.get $0
   local.get $5
   call $assembly/model/ContractCall#set:depo
   local.get $0
   return
  end
  i32.const 0
 )
 (func $assembly/index/ft_on_transfer (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $assembly/index/tokens
  call $~lib/near-sdk-core/contract/Context.get:predecessor
  call $~lib/near-sdk-core/collections/persistentUnorderedMap/PersistentUnorderedMap<~lib/string/String,bool>#contains
  i32.eqz
  if
   call $~lib/near-sdk-core/contract/Context.get:predecessor
   i32.const 6320
   call $~lib/string/String.__concat
   i32.const 6432
   i32.const 74
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $assembly/index/_is_whitelisted
  i32.const 0
  i32.const 31
  i32.const 7696
  call $~lib/rt/__newArray
  local.set $5
  local.get $2
  call $~lib/assemblyscript-json/util/index/Buffer.fromString
  local.set $0
  global.get $~lib/assemblyscript-json/JSON/_JSON.decoder
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#deserialize
  global.get $~lib/assemblyscript-json/JSON/_JSON.decoder
  i32.load
  call $~lib/assemblyscript-json/JSON/Handler#get:peek
  local.set $0
  global.get $~lib/assemblyscript-json/JSON/_JSON.decoder
  i32.load
  call $~lib/assemblyscript-json/JSON/Handler#reset
  local.get $0
  i32.const 12
  call $~lib/rt/__instanceof
  i32.eqz
  if
   i32.const 2432
   i32.const 6432
   i32.const 77
   i32.const 38
   call $~lib/builtins/abort
   unreachable
  end
  block $__inlined_func$~lib/assemblyscript-json/JSON/Obj#getArr
   local.get $0
   i32.const 4304
   call $~lib/assemblyscript-json/JSON/Obj#get
   local.tee $0
   if (result i32)
    local.get $0
    if (result i32)
     local.get $0
     i32.const 21
     call $~lib/rt/__instanceof
    else
     i32.const 0
    end
   else
    i32.const 0
   end
   if
    local.get $0
    i32.const 21
    call $~lib/rt/__instanceof
    i32.eqz
    if
     i32.const 2432
     i32.const 2496
     i32.const 401
     i32.const 21
     call $~lib/builtins/abort
     unreachable
    end
    br $__inlined_func$~lib/assemblyscript-json/JSON/Obj#getArr
   end
   i32.const 0
   local.set $0
  end
  local.get $0
  if
   local.get $0
   i32.load
   local.set $1
   loop $for-loop|0
    local.get $3
    local.get $1
    i32.load offset=12
    i32.lt_s
    if
     local.get $5
     local.get $3
     i32.const 0
     i32.const 30
     i32.const 7728
     call $~lib/rt/__newArray
     call $~lib/array/Array<~lib/array/Array<assembly/model/ContractCall>>#__set
     local.get $1
     local.get $3
     call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
     local.tee $0
     i32.const 21
     call $~lib/rt/__instanceof
     i32.eqz
     if
      i32.const 2432
      i32.const 6432
      i32.const 83
      i32.const 59
      call $~lib/builtins/abort
      unreachable
     end
     local.get $0
     i32.load
     local.set $0
     i32.const 0
     local.set $2
     loop $for-loop|1
      local.get $2
      local.get $0
      i32.load offset=12
      i32.lt_s
      if
       local.get $0
       local.get $2
       call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
       local.tee $4
       i32.const 12
       call $~lib/rt/__instanceof
       i32.eqz
       if
        i32.const 2432
        i32.const 6432
        i32.const 85
        i32.const 96
        call $~lib/builtins/abort
        unreachable
       end
       local.get $4
       call $assembly/utils/ContractCallUtils#fromJsonObj
       local.tee $4
       i32.eqz
       if
        i32.const 7888
        i32.const 1
        local.get $2
        call $~lib/util/number/itoa32
        call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
        i32.const 7888
        i32.const 3
        local.get $3
        call $~lib/util/number/itoa32
        call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
        i32.const 7888
        call $~lib/staticarray/StaticArray<~lib/string/String>#join
        i32.const 6432
        i32.const 86
        i32.const 9
        call $~lib/builtins/abort
        unreachable
       end
       local.get $4
       i32.eqz
       if
        i32.const 1920
        i32.const 6432
        i32.const 87
        i32.const 42
        call $~lib/builtins/abort
        unreachable
       end
       local.get $5
       local.get $3
       call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
       local.get $4
       call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#push
       local.get $2
       i32.const 1
       i32.add
       local.set $2
       br $for-loop|1
      end
     end
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     br $for-loop|0
    end
   end
  end
  local.get $5
  call $assembly/index/_internal_multicall
  i64.const 0
  i64.const 0
  call $~lib/as-bignum/integer/safe/u128/u128#constructor
 )
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#write (param $0 i32) (param $1 i32)
  local.get $0
  i32.load offset=4
  local.get $1
  call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#push
 )
 (func $~lib/string/String#substring (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  i32.const 0
  local.get $1
  i32.const 0
  i32.gt_s
  select
  local.tee $3
  local.get $0
  call $~lib/string/String#get:length
  local.tee $1
  local.get $1
  local.get $3
  i32.gt_s
  select
  local.tee $3
  local.get $2
  i32.const 0
  local.get $2
  i32.const 0
  i32.gt_s
  select
  local.tee $2
  local.get $1
  local.get $1
  local.get $2
  i32.gt_s
  select
  local.tee $2
  local.get $2
  local.get $3
  i32.lt_s
  select
  i32.const 1
  i32.shl
  local.tee $4
  local.get $3
  local.get $2
  local.get $2
  local.get $3
  i32.gt_s
  select
  i32.const 1
  i32.shl
  local.tee $2
  i32.sub
  local.tee $3
  i32.eqz
  if
   i32.const 1088
   return
  end
  i32.const 0
  local.get $4
  local.get $1
  i32.const 1
  i32.shl
  i32.eq
  local.get $2
  select
  if
   local.get $0
   return
  end
  local.get $3
  i32.const 1
  call $~lib/rt/stub/__new
  local.tee $1
  local.get $0
  local.get $2
  i32.add
  local.get $3
  call $~lib/memory/memory.copy
  local.get $1
 )
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#writeString (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.const 2704
  call $~lib/assemblyscript-json/encoder/JSONEncoder#write
  loop $for-loop|0
   local.get $1
   call $~lib/string/String#get:length
   local.get $4
   i32.gt_s
   if
    local.get $1
    local.get $4
    call $~lib/string/String#charCodeAt
    local.tee $3
    i32.const 32
    i32.lt_s
    local.tee $2
    i32.eqz
    if
     i32.const 2704
     i32.const 0
     call $~lib/string/String#charCodeAt
     local.get $3
     i32.eq
     local.set $2
    end
    local.get $2
    if (result i32)
     local.get $2
    else
     i32.const 2944
     i32.const 0
     call $~lib/string/String#charCodeAt
     local.get $3
     i32.eq
    end
    if
     local.get $0
     local.get $1
     local.get $5
     local.get $4
     call $~lib/string/String#substring
     call $~lib/assemblyscript-json/encoder/JSONEncoder#write
     local.get $4
     i32.const 1
     i32.add
     local.set $5
     i32.const 2704
     i32.const 0
     call $~lib/string/String#charCodeAt
     local.get $3
     i32.eq
     if
      local.get $0
      i32.const 7520
      call $~lib/assemblyscript-json/encoder/JSONEncoder#write
     else
      i32.const 2944
      i32.const 0
      call $~lib/string/String#charCodeAt
      local.get $3
      i32.eq
      if
       local.get $0
       i32.const 7552
       call $~lib/assemblyscript-json/encoder/JSONEncoder#write
      else
       i32.const 3008
       i32.const 0
       call $~lib/string/String#charCodeAt
       local.get $3
       i32.eq
       if
        local.get $0
        i32.const 8032
        call $~lib/assemblyscript-json/encoder/JSONEncoder#write
       else
        i32.const 3072
        i32.const 0
        call $~lib/string/String#charCodeAt
        local.get $3
        i32.eq
        if
         local.get $0
         i32.const 8064
         call $~lib/assemblyscript-json/encoder/JSONEncoder#write
        else
         i32.const 3136
         i32.const 0
         call $~lib/string/String#charCodeAt
         local.get $3
         i32.eq
         if
          local.get $0
          i32.const 8096
          call $~lib/assemblyscript-json/encoder/JSONEncoder#write
         else
          i32.const 3200
          i32.const 0
          call $~lib/string/String#charCodeAt
          local.get $3
          i32.eq
          if
           local.get $0
           i32.const 8128
           call $~lib/assemblyscript-json/encoder/JSONEncoder#write
          else
           i32.const 8160
           local.get $3
           call $~lib/util/number/itoa32
           call $~lib/string/String.__concat
           i32.const 7936
           i32.const 112
           i32.const 11
           call $~lib/builtins/abort
           unreachable
          end
         end
        end
       end
      end
     end
    end
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|0
   end
  end
  local.get $0
  local.get $1
  local.get $5
  local.get $1
  call $~lib/string/String#get:length
  call $~lib/string/String#substring
  call $~lib/assemblyscript-json/encoder/JSONEncoder#write
  local.get $0
  i32.const 2704
  call $~lib/assemblyscript-json/encoder/JSONEncoder#write
 )
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#writeKey (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load
  i32.load offset=12
  i32.const 1
  i32.sub
  local.tee $2
  local.get $0
  i32.load
  local.tee $3
  i32.load offset=12
  i32.ge_u
  if
   i32.const 2080
   i32.const 1872
   i32.const 99
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.load offset=4
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  i32.load
  if
   local.get $0
   i32.load
   i32.load offset=12
   i32.const 1
   i32.sub
   local.tee $2
   local.get $0
   i32.load
   local.tee $3
   i32.load offset=12
   i32.ge_u
   if
    local.get $2
    i32.const 0
    i32.lt_s
    if
     i32.const 2080
     i32.const 1872
     i32.const 115
     i32.const 22
     call $~lib/builtins/abort
     unreachable
    end
    local.get $3
    local.get $2
    i32.const 1
    i32.add
    local.tee $4
    i32.const 1
    call $~lib/array/ensureCapacity
    local.get $3
    local.get $4
    call $~lib/rt/common/OBJECT#set:rtId
   end
   local.get $3
   i32.load offset=4
   local.get $2
   i32.const 2
   i32.shl
   i32.add
   i32.const 0
   i32.store
  else
   local.get $0
   i32.const 2624
   call $~lib/assemblyscript-json/encoder/JSONEncoder#write
  end
  local.get $1
  i32.const 0
  call $~lib/string/String.__ne
  if (result i32)
   local.get $1
   i32.eqz
   if
    i32.const 1920
    i32.const 7936
    i32.const 81
    i32.const 33
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   call $~lib/string/String#get:length
   i32.const 0
   i32.gt_s
  else
   i32.const 0
  end
  if
   local.get $1
   i32.eqz
   if
    i32.const 1920
    i32.const 7936
    i32.const 82
    i32.const 24
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   call $~lib/assemblyscript-json/encoder/JSONEncoder#writeString
   local.get $0
   i32.const 3408
   call $~lib/assemblyscript-json/encoder/JSONEncoder#write
  end
 )
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#setNull (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/assemblyscript-json/encoder/JSONEncoder#writeKey
  local.get $0
  i32.const 4128
  call $~lib/assemblyscript-json/encoder/JSONEncoder#write
 )
 (func $~lib/typedarray/Int8Array#__get (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 2080
   i32.const 2144
   i32.const 24
   i32.const 45
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $0
  i32.load offset=4
  i32.add
  i32.load8_s
 )
 (func $~lib/typedarray/Int8Array#__set (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 2080
   i32.const 2144
   i32.const 35
   i32.const 45
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $0
  i32.load offset=4
  i32.add
  local.get $2
  i32.store8
 )
 (func $~lib/as-bignum/utils/processU64 (param $0 i32) (param $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load offset=8
  i32.const 1
  i32.sub
  local.set $3
  i32.const 63
  local.set $4
  loop $for-loop|0
   local.get $4
   i32.const -1
   i32.ne
   if
    i32.const 0
    local.set $2
    loop $for-loop|1
     local.get $2
     local.get $3
     i32.le_s
     if
      local.get $0
      local.get $2
      local.get $0
      local.get $2
      call $~lib/typedarray/Int8Array#__get
      local.get $0
      local.get $2
      call $~lib/typedarray/Int8Array#__get
      i32.const 5
      i32.ge_s
      i32.const 3
      i32.mul
      i32.add
      i32.const 24
      i32.shl
      i32.const 24
      i32.shr_s
      call $~lib/typedarray/Int8Array#__set
      local.get $2
      i32.const 1
      i32.add
      local.set $2
      br $for-loop|1
     end
    end
    local.get $3
    local.set $2
    loop $for-loop|2
     local.get $2
     i32.const -1
     i32.ne
     if
      local.get $0
      local.get $2
      local.get $0
      local.get $2
      call $~lib/typedarray/Int8Array#__get
      i32.const 25
      i32.shl
      i32.const 24
      i32.shr_s
      call $~lib/typedarray/Int8Array#__set
      local.get $2
      local.get $3
      i32.lt_s
      if
       local.get $0
       local.get $2
       i32.const 1
       i32.add
       local.tee $5
       local.get $0
       local.get $5
       call $~lib/typedarray/Int8Array#__get
       local.get $0
       local.get $2
       call $~lib/typedarray/Int8Array#__get
       i32.const 15
       i32.gt_s
       i32.or
       i32.const 24
       i32.shl
       i32.const 24
       i32.shr_s
       call $~lib/typedarray/Int8Array#__set
      end
      local.get $0
      local.get $2
      local.get $0
      local.get $2
      call $~lib/typedarray/Int8Array#__get
      i32.const 15
      i32.and
      call $~lib/typedarray/Int8Array#__set
      local.get $2
      i32.const 1
      i32.sub
      local.set $2
      br $for-loop|2
     end
    end
    local.get $0
    i32.const 0
    local.get $0
    i32.const 0
    call $~lib/typedarray/Int8Array#__get
    local.get $1
    i64.const 1
    local.get $4
    i64.extend_i32_s
    i64.shl
    i64.and
    i64.const 0
    i64.ne
    i32.add
    i32.const 24
    i32.shl
    i32.const 24
    i32.shr_s
    call $~lib/typedarray/Int8Array#__set
    local.get $4
    i32.const 1
    i32.sub
    local.set $4
    br $for-loop|0
   end
  end
 )
 (func $~lib/as-bignum/integer/u128/u128#toString (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i64.load
  local.get $0
  i64.load offset=8
  i64.or
  i64.eqz
  if
   i32.const 6912
   return
  end
  block $__inlined_func$~lib/as-bignum/integer/u128/u128#clone@virtual
   local.get $0
   i32.const 8
   i32.sub
   i32.load
   i32.const 8
   i32.eq
   if
    local.get $0
    i64.load
    local.get $0
    i64.load offset=8
    call $~lib/as-bignum/integer/safe/u128/u128#constructor
    drop
    br $__inlined_func$~lib/as-bignum/integer/u128/u128#clone@virtual
   end
   i32.const 0
   local.get $0
   i64.load
   local.get $0
   i64.load offset=8
   call $~lib/as-bignum/integer/u128/u128#constructor
   drop
  end
  i32.const 12
  i32.const 39
  call $~lib/rt/stub/__new
  i32.const 40
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.tee $3
  local.get $0
  i64.load offset=8
  call $~lib/as-bignum/utils/processU64
  local.get $3
  local.get $0
  i64.load
  call $~lib/as-bignum/utils/processU64
  i32.const 1088
  local.set $0
  i32.const 39
  local.set $2
  loop $for-loop|0
   local.get $2
   i32.const -1
   i32.ne
   if
    i32.const 1
    local.get $4
    local.get $4
    if (result i32)
     i32.const 0
    else
     local.get $3
     local.get $2
     call $~lib/typedarray/Int8Array#__get
     i32.const 0
     i32.gt_s
    end
    select
    local.tee $4
    if
     local.get $0
     block $__inlined_func$~lib/string/String#charAt
      local.get $3
      local.get $2
      call $~lib/typedarray/Int8Array#__get
      local.tee $5
      i32.const 8368
      call $~lib/string/String#get:length
      i32.ge_u
      if
       i32.const 1088
       local.set $0
       br $__inlined_func$~lib/string/String#charAt
      end
      i32.const 2
      i32.const 1
      call $~lib/rt/stub/__new
      local.tee $0
      local.get $5
      i32.const 1
      i32.shl
      i32.const 8368
      i32.add
      i32.load16_u
      i32.store16
     end
     local.get $0
     call $~lib/string/String#concat
     local.set $0
    end
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    br $for-loop|0
   end
  end
  local.get $0
 )
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#setString (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  local.get $1
  call $~lib/assemblyscript-json/encoder/JSONEncoder#writeKey
  local.get $0
  local.get $2
  call $~lib/assemblyscript-json/encoder/JSONEncoder#writeString
 )
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#serialize (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  call $~lib/array/Array<~lib/string/String>#join
  call $~lib/assemblyscript-json/util/index/Buffer.fromString
 )
 (func $~lib/array/Array<i32>#push (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  local.get $0
  i32.load offset=12
  local.tee $1
  i32.const 1
  i32.add
  local.tee $2
  i32.const 1
  call $~lib/array/ensureCapacity
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.const 1
  i32.store
  local.get $0
  local.get $2
  call $~lib/rt/common/OBJECT#set:rtId
 )
 (func $~lib/near-sdk-bindgen/index/JSONEncoder#constructor (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 8
  i32.const 37
  call $~lib/rt/stub/__new
  local.tee $0
  i32.eqz
  if
   i32.const 8
   i32.const 38
   call $~lib/rt/stub/__new
   local.set $0
  end
  local.get $0
  i32.const 0
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $0
  i32.const 0
  call $~lib/rt/common/OBJECT#set:gcInfo
  i32.const 16
  i32.const 34
  call $~lib/rt/stub/__new
  local.tee $1
  i32.const 0
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $1
  i32.const 0
  call $~lib/rt/common/OBJECT#set:gcInfo
  local.get $1
  i32.const 0
  call $~lib/rt/common/OBJECT#set:gcInfo2
  local.get $1
  i32.const 0
  call $~lib/rt/common/OBJECT#set:rtId
  i32.const 40
  i32.const 0
  call $~lib/rt/stub/__new
  local.tee $2
  i32.const 40
  call $~lib/memory/memory.fill
  local.get $1
  local.get $2
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $1
  local.get $2
  call $~lib/rt/common/OBJECT#set:gcInfo
  local.get $1
  i32.const 40
  call $~lib/rt/common/OBJECT#set:gcInfo2
  local.get $1
  i32.const 10
  call $~lib/rt/common/OBJECT#set:rtId
  local.get $0
  local.get $1
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $0
  call $~lib/array/Array<~lib/string/String>#constructor
  call $~lib/rt/common/OBJECT#set:gcInfo
  local.get $0
  i32.load
  call $~lib/array/Array<i32>#push
  local.get $0
 )
 (func $~lib/near-sdk-bindgen/index/encode<~lib/as-bignum/integer/safe/u128/u128,~lib/typedarray/Uint8Array>@varargs (param $0 i32) (result i32)
  (local $1 i32)
  block $2of2
   block $1of2
    block $outOfRange
     global.get $~argumentsLength
     i32.const 1
     i32.sub
     br_table $1of2 $1of2 $2of2 $outOfRange
    end
    unreachable
   end
   call $~lib/near-sdk-bindgen/index/JSONEncoder#constructor
   local.set $1
  end
  local.get $0
  if
   local.get $1
   i32.const 1088
   local.get $0
   call $~lib/as-bignum/integer/u128/u128#toString
   call $~lib/assemblyscript-json/encoder/JSONEncoder#setString
  else
   local.get $1
   i32.const 1088
   call $~lib/assemblyscript-json/encoder/JSONEncoder#setNull
  end
  local.get $1
  call $~lib/assemblyscript-json/encoder/JSONEncoder#serialize
 )
 (func $~lib/near-sdk-bindgen/index/value_return (param $0 i64) (param $1 i64)
  local.get $0
  local.get $1
  call $~lib/near-sdk-core/env/env/env.value_return
 )
 (func $assembly/index/__wrapper_ft_on_transfer
  (local $0 i32)
  call $~lib/near-sdk-bindgen/index/getInput
  local.tee $0
  i32.const 7584
  call $~lib/assemblyscript-json/JSON/Obj#has
  if (result i32)
   local.get $0
   i32.const 7584
   call $~lib/near-sdk-bindgen/index/decode<~lib/string/String,~lib/assemblyscript-json/JSON/Obj>
  else
   i32.const 7584
   call $~lib/near-sdk-bindgen/index/requireParameter<~lib/string/String>
  end
  local.get $0
  i32.const 7632
  call $~lib/assemblyscript-json/JSON/Obj#has
  if (result i32)
   local.get $0
   i32.const 7632
   call $~lib/near-sdk-bindgen/index/decode<~lib/as-bignum/integer/safe/u128/u128,~lib/assemblyscript-json/JSON/Obj>
  else
   i32.const 6112
   i32.const 7632
   call $~lib/string/String.__concat
   i32.const 4720
   call $~lib/string/String.__concat
   i32.const 5664
   call $~lib/string/String.__concat
   i32.const 6160
   call $~lib/string/String.__concat
   i32.const 4224
   i32.const 33
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 7664
  call $~lib/assemblyscript-json/JSON/Obj#has
  if (result i32)
   local.get $0
   i32.const 7664
   call $~lib/near-sdk-bindgen/index/decode<~lib/string/String,~lib/assemblyscript-json/JSON/Obj>
  else
   i32.const 7664
   call $~lib/near-sdk-bindgen/index/requireParameter<~lib/string/String>
  end
  call $assembly/index/ft_on_transfer
  i32.const 1
  global.set $~argumentsLength
  call $~lib/near-sdk-bindgen/index/encode<~lib/as-bignum/integer/safe/u128/u128,~lib/typedarray/Uint8Array>@varargs
  local.tee $0
  i32.load offset=8
  i64.extend_i32_s
  local.get $0
  i32.load offset=4
  i64.extend_i32_u
  call $~lib/near-sdk-bindgen/index/value_return
 )
 (func $assembly/index/__wrapper_recover_near
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  call $~lib/near-sdk-bindgen/index/getInput
  local.tee $0
  i32.const 8432
  call $~lib/assemblyscript-json/JSON/Obj#has
  if (result i32)
   local.get $0
   i32.const 8432
   call $~lib/near-sdk-bindgen/index/decode<~lib/string/String,~lib/assemblyscript-json/JSON/Obj>
  else
   i32.const 8432
   call $~lib/near-sdk-bindgen/index/requireParameter<~lib/string/String>
  end
  local.get $0
  i32.const 7632
  call $~lib/assemblyscript-json/JSON/Obj#has
  if (result i32)
   local.get $0
   i32.const 7632
   call $~lib/near-sdk-bindgen/index/decode<~lib/as-bignum/integer/safe/u128/u128,~lib/assemblyscript-json/JSON/Obj>
  else
   i64.const 0
   i64.const 0
   call $~lib/as-bignum/integer/safe/u128/u128#constructor
  end
  local.set $0
  call $~lib/near-sdk-core/contract/Context.get:predecessor
  call $assembly/index/_is_whitelisted
  i64.const 0
  i64.const 0
  call $~lib/as-bignum/integer/safe/u128/u128#constructor
  local.set $1
  local.get $0
  i64.load offset=8
  local.get $1
  i64.load offset=8
  i64.eq
  if (result i32)
   local.get $0
   i64.load
   local.get $1
   i64.load
   i64.eq
  else
   i32.const 0
  end
  if
   call $assembly/index/get_min_storage_balance
   local.set $0
   call $~lib/near-sdk-core/contract/Context.get:accountBalance
   local.get $0
   call $~lib/as-bignum/integer/safe/u128/u128.sub
   local.set $0
  end
  call $~lib/near-sdk-core/promise/ContractPromiseBatch.create
  i32.const 16
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $1
  i32.load offset=4
  local.tee $2
  local.get $0
  i64.load
  i64.store
  local.get $2
  local.get $0
  i64.load offset=8
  i64.store offset=8
  i64.load
  local.get $1
  i32.load offset=4
  i64.extend_i32_u
  call $~lib/near-sdk-core/env/env/env.promise_batch_action_transfer
 )
 (func $assembly/index/__wrapper_get_min_storage_balance
  (local $0 i32)
  call $assembly/index/get_min_storage_balance
  i32.const 1
  global.set $~argumentsLength
  call $~lib/near-sdk-bindgen/index/encode<~lib/as-bignum/integer/safe/u128/u128,~lib/typedarray/Uint8Array>@varargs
  local.tee $0
  i32.load offset=8
  i64.extend_i32_s
  local.get $0
  i32.load offset=4
  i64.extend_i32_u
  call $~lib/near-sdk-bindgen/index/value_return
 )
 (func $~lib/near-sdk-bindgen/index/decode<~lib/array/Array<~lib/string/String>,~lib/assemblyscript-json/JSON/Obj> (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  if (result i32)
   local.get $0
   i32.const 12
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.const 1088
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if
   local.get $0
   i32.const 12
   call $~lib/rt/__instanceof
   i32.eqz
   if
    i32.const 2432
    i32.const 4224
    i32.const 310
    i32.const 37
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   call $~lib/assemblyscript-json/JSON/Obj#get
   local.tee $0
   i32.eqz
   if
    local.get $0
    return
   end
  end
  local.get $0
  if (result i32)
   local.get $0
   i32.const 28
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if
   i32.const 0
   return
  end
  local.get $0
  if (result i32)
   local.get $0
   i32.const 21
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 4832
   local.get $1
   call $~lib/string/String.__concat
   i32.const 4896
   call $~lib/string/String.__concat
   i32.const 4224
   i32.const 226
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  call $~lib/array/Array<~lib/string/String>#constructor
  local.set $1
  local.get $0
  i32.const 21
  call $~lib/rt/__instanceof
  i32.eqz
  if
   i32.const 2432
   i32.const 4224
   i32.const 231
   i32.const 26
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load
  local.set $0
  loop $for-loop|0
   local.get $2
   local.get $0
   i32.load offset=12
   i32.lt_s
   if
    local.get $1
    local.get $0
    local.get $2
    call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
    i32.const 1088
    call $~lib/near-sdk-bindgen/index/decode<~lib/string/String,~lib/assemblyscript-json/JSON/Obj>
    call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#push
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  local.get $1
 )
 (func $~lib/near-sdk-bindgen/index/requireParameter<~lib/array/Array<~lib/string/String>> (param $0 i32) (result i32)
  i32.const 6112
  local.get $0
  call $~lib/string/String.__concat
  i32.const 4720
  call $~lib/string/String.__concat
  i32.const 8528
  call $~lib/string/String.__concat
  i32.const 6160
  call $~lib/string/String.__concat
  i32.const 4224
  i32.const 33
  i32.const 3
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/near-sdk-core/collections/util/MapEntry<~lib/string/String,bool>#set:value (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store8 offset=4
 )
 (func $~lib/near-sdk-core/storage/Storage._internalReadBytes (param $0 i32) (result i32)
  local.get $0
  call $~lib/near-sdk-core/util/util.stringToBytes
  local.tee $0
  i32.load offset=8
  i64.extend_i32_s
  local.get $0
  i32.load offset=4
  i64.extend_i32_u
  i64.const 0
  call $~lib/near-sdk-core/env/env/env.storage_read
  i64.const 1
  i64.eq
  if (result i32)
   call $~lib/near-sdk-core/util/util.read_register
  else
   i32.const 0
  end
 )
 (func $~lib/near-sdk-core/storage/Storage.getString (param $0 i32) (result i32)
  local.get $0
  call $~lib/near-sdk-core/storage/Storage._internalReadBytes
  call $~lib/near-sdk-core/util/util.bytesToString
 )
 (func $~lib/near-sdk-core/util/util.parseFromString<i32> (param $0 i32) (result i32)
  local.get $0
  call $~lib/util/string/strtol<i64>
  i32.wrap_i64
 )
 (func $~lib/near-sdk-core/collections/persistentMap/PersistentMap<~lib/string/String,i32>#getSome (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  call $~lib/near-sdk-core/collections/persistentMap/PersistentMap<~lib/string/String,i32>#_key
  local.tee $0
  call $~lib/near-sdk-core/storage/Storage.contains
  i32.eqz
  if
   i32.const 8608
   local.get $0
   call $~lib/string/String.__concat
   i32.const 8640
   call $~lib/string/String.__concat
   i32.const 8736
   i32.const 237
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/near-sdk-core/storage/Storage.getString
  local.tee $0
  i32.eqz
  if
   i32.const 1920
   i32.const 8736
   i32.const 240
   i32.const 38
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/near-sdk-core/util/util.parseFromString<i32>
 )
 (func $~lib/near-sdk-core/collections/persistentVector/PersistentVector<~lib/near-sdk-core/collections/util/MapEntry<~lib/string/String,bool>>#get:length (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.load offset=8
  i32.const 0
  i32.lt_s
  if
   local.get $0
   local.get $0
   i32.load offset=4
   call $~lib/near-sdk-core/storage/Storage.getString
   local.tee $1
   i32.const 0
   call $~lib/string/String.__eq
   if (result i32)
    i32.const 0
   else
    local.get $1
    i32.eqz
    if
     i32.const 1920
     i32.const 8736
     i32.const 218
     i32.const 41
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    call $~lib/near-sdk-core/util/util.parseFromString<i32>
   end
   call $~lib/rt/common/OBJECT#set:gcInfo2
  end
  local.get $0
  i32.load offset=8
 )
 (func $~lib/near-sdk-core/collections/persistentVector/PersistentVector<~lib/near-sdk-core/collections/util/MapEntry<~lib/string/String,bool>>#containsIndex (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  i32.const 0
  i32.ge_s
  if (result i32)
   local.get $0
   call $~lib/near-sdk-core/collections/persistentVector/PersistentVector<~lib/near-sdk-core/collections/util/MapEntry<~lib/string/String,bool>>#get:length
   local.get $1
   i32.gt_s
  else
   i32.const 0
  end
 )
 (func $~lib/near-sdk-bindgen/index/encode<~lib/string/String,~lib/near-sdk-bindgen/index/JSONEncoder> (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  if
   local.get $2
   local.get $1
   local.get $0
   call $~lib/assemblyscript-json/encoder/JSONEncoder#setString
  else
   local.get $2
   local.get $1
   call $~lib/assemblyscript-json/encoder/JSONEncoder#setNull
  end
 )
 (func $~lib/array/Array<i32>#pop (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load offset=12
  local.tee $1
  i32.const 1
  i32.lt_s
  if
   i32.const 3568
   i32.const 1872
   i32.const 276
   i32.const 21
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 1
  i32.sub
  local.tee $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  drop
  local.get $0
  local.get $1
  call $~lib/rt/common/OBJECT#set:rtId
 )
 (func $~lib/near-sdk-core/collections/persistentVector/PersistentVector<~lib/near-sdk-core/collections/util/MapEntry<~lib/string/String,bool>>#__unchecked_set (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $0
  i32.load
  local.get $1
  call $~lib/util/number/itoa32
  call $~lib/string/String.__concat
  i32.const 1
  global.set $~argumentsLength
  call $~lib/near-sdk-bindgen/index/JSONEncoder#constructor
  local.set $1
  local.get $2
  if
   local.get $1
   if (result i32)
    local.get $1
   else
    call $~lib/near-sdk-bindgen/index/JSONEncoder#constructor
   end
   local.tee $0
   i32.const 1088
   call $~lib/assemblyscript-json/encoder/JSONEncoder#writeKey
   local.get $0
   i32.const 2272
   call $~lib/assemblyscript-json/encoder/JSONEncoder#write
   local.get $0
   i32.load
   call $~lib/array/Array<i32>#push
   local.get $2
   i32.load
   i32.const 8944
   local.get $0
   call $~lib/near-sdk-bindgen/index/encode<~lib/string/String,~lib/near-sdk-bindgen/index/JSONEncoder>
   local.get $2
   i32.load8_u offset=4
   local.set $2
   local.get $0
   i32.const 8976
   call $~lib/assemblyscript-json/encoder/JSONEncoder#writeKey
   local.get $0
   i32.const 3872
   i32.const 3760
   local.get $2
   select
   call $~lib/assemblyscript-json/encoder/JSONEncoder#write
   local.get $0
   i32.const 2592
   call $~lib/assemblyscript-json/encoder/JSONEncoder#write
   local.get $0
   i32.load
   call $~lib/array/Array<i32>#pop
  else
   local.get $1
   i32.const 1088
   call $~lib/assemblyscript-json/encoder/JSONEncoder#setNull
  end
  local.get $1
  call $~lib/assemblyscript-json/encoder/JSONEncoder#serialize
  local.set $0
  call $~lib/near-sdk-core/util/util.stringToBytes
  local.tee $1
  i32.load offset=8
  i64.extend_i32_s
  local.get $1
  i32.load offset=4
  i64.extend_i32_u
  local.get $0
  i32.load offset=8
  i64.extend_i32_s
  local.get $0
  i32.load offset=4
  i64.extend_i32_u
  i64.const 0
  call $~lib/near-sdk-core/env/env/env.storage_write
  drop
 )
 (func $~lib/near-sdk-core/storage/Storage.setString (param $0 i32) (param $1 i32)
  local.get $0
  call $~lib/near-sdk-core/util/util.stringToBytes
  local.set $0
  local.get $1
  call $~lib/near-sdk-core/util/util.stringToBytes
  local.set $1
  local.get $0
  i32.load offset=8
  i64.extend_i32_s
  local.get $0
  i32.load offset=4
  i64.extend_i32_u
  local.get $1
  i32.load offset=8
  i64.extend_i32_s
  local.get $1
  i32.load offset=4
  i64.extend_i32_u
  i64.const 0
  call $~lib/near-sdk-core/env/env/env.storage_write
  drop
 )
 (func $~lib/near-sdk-core/storage/Storage.set<i32> (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/util/number/itoa32
  call $~lib/near-sdk-core/storage/Storage.setString
 )
 (func $~lib/near-sdk-core/collections/persistentMap/PersistentMap<~lib/string/String,i32>#set (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  local.get $1
  call $~lib/near-sdk-core/collections/persistentMap/PersistentMap<~lib/string/String,i32>#_key
  local.get $2
  call $~lib/near-sdk-core/storage/Storage.set<i32>
 )
 (func $~lib/near-sdk-core/collections/persistentVector/PersistentVector<~lib/near-sdk-core/collections/util/MapEntry<~lib/string/String,bool>>#set:length (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/rt/common/OBJECT#set:gcInfo2
  local.get $0
  i32.load offset=4
  local.get $1
  call $~lib/near-sdk-core/storage/Storage.set<i32>
 )
 (func $~lib/near-sdk-core/collections/persistentUnorderedMap/PersistentUnorderedMap<~lib/string/String,bool>#set (param $0 i32) (param $1 i32)
  (local $2 i32)
  i32.const 5
  i32.const 5
  call $~lib/rt/stub/__new
  local.tee $2
  local.get $1
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $2
  i32.const 1
  call $~lib/near-sdk-core/collections/util/MapEntry<~lib/string/String,bool>#set:value
  local.get $0
  i32.load
  local.get $1
  call $~lib/near-sdk-core/collections/persistentMap/PersistentMap<~lib/string/String,i32>#contains
  if
   local.get $0
   i32.load
   local.get $1
   call $~lib/near-sdk-core/collections/persistentMap/PersistentMap<~lib/string/String,i32>#getSome
   local.set $1
   local.get $0
   i32.load offset=4
   local.tee $0
   local.get $1
   call $~lib/near-sdk-core/collections/persistentVector/PersistentVector<~lib/near-sdk-core/collections/util/MapEntry<~lib/string/String,bool>>#containsIndex
   i32.eqz
   if
    i32.const 2080
    i32.const 8816
    i32.const 49
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
  else
   local.get $0
   i32.load
   local.get $1
   local.get $0
   i32.load offset=4
   call $~lib/near-sdk-core/collections/persistentVector/PersistentVector<~lib/near-sdk-core/collections/util/MapEntry<~lib/string/String,bool>>#get:length
   call $~lib/near-sdk-core/collections/persistentMap/PersistentMap<~lib/string/String,i32>#set
   local.get $0
   i32.load offset=4
   local.tee $0
   call $~lib/near-sdk-core/collections/persistentVector/PersistentVector<~lib/near-sdk-core/collections/util/MapEntry<~lib/string/String,bool>>#get:length
   local.set $1
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   call $~lib/near-sdk-core/collections/persistentVector/PersistentVector<~lib/near-sdk-core/collections/util/MapEntry<~lib/string/String,bool>>#set:length
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/near-sdk-core/collections/persistentVector/PersistentVector<~lib/near-sdk-core/collections/util/MapEntry<~lib/string/String,bool>>#__unchecked_set
 )
 (func $assembly/index/__wrapper_admins_add
  (local $0 i32)
  (local $1 i32)
  call $~lib/near-sdk-bindgen/index/getInput
  local.tee $0
  i32.const 8480
  call $~lib/assemblyscript-json/JSON/Obj#has
  if (result i32)
   local.get $0
   i32.const 8480
   call $~lib/near-sdk-bindgen/index/decode<~lib/array/Array<~lib/string/String>,~lib/assemblyscript-json/JSON/Obj>
  else
   i32.const 8480
   call $~lib/near-sdk-bindgen/index/requireParameter<~lib/array/Array<~lib/string/String>>
  end
  local.set $0
  call $~lib/near-sdk-core/contract/Context.get:predecessor
  call $assembly/index/_is_whitelisted
  loop $for-loop|0
   local.get $1
   local.get $0
   i32.load offset=12
   i32.lt_s
   if
    global.get $assembly/index/admins
    local.get $0
    local.get $1
    call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
    call $~lib/near-sdk-core/collections/persistentUnorderedMap/PersistentUnorderedMap<~lib/string/String,bool>#set
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
 )
 (func $~lib/near-sdk-bindgen/index/decode<~lib/near-sdk-core/collections/util/MapEntry<~lib/string/String,bool>,~lib/typedarray/Uint8Array> (param $0 i32) (result i32)
  (local $1 i32)
  block $folding-inner0
   local.get $0
   call $~lib/assemblyscript-json/JSON/_JSON.parse<~lib/typedarray/Uint8Array>
   local.tee $0
   if (result i32)
    local.get $0
    i32.const 12
    call $~lib/rt/__instanceof
   else
    i32.const 0
   end
   if (result i32)
    i32.const 1088
    i32.const 1088
    call $~lib/string/String.__ne
   else
    i32.const 0
   end
   if
    local.get $0
    i32.const 12
    call $~lib/rt/__instanceof
    i32.eqz
    br_if $folding-inner0
    local.get $0
    i32.const 1088
    call $~lib/assemblyscript-json/JSON/Obj#get
    local.tee $0
    i32.eqz
    if
     local.get $0
     return
    end
   end
   local.get $0
   if (result i32)
    local.get $0
    i32.const 28
    call $~lib/rt/__instanceof
   else
    i32.const 0
   end
   if
    i32.const 0
    return
   end
   local.get $0
   if (result i32)
    local.get $0
    i32.const 12
    call $~lib/rt/__instanceof
   else
    i32.const 0
   end
   if (result i32)
    i32.const 1
   else
    local.get $0
    if (result i32)
     local.get $0
     i32.const 12
     call $~lib/rt/__instanceof
    else
     i32.const 0
    end
   end
   i32.eqz
   if
    i32.const 4832
    i32.const 1088
    call $~lib/string/String.__concat
    i32.const 4720
    call $~lib/string/String.__concat
    i32.const 9072
    call $~lib/string/String.__concat
    i32.const 5120
    call $~lib/string/String.__concat
    local.get $0
    if (result i32)
     local.get $0
     i32.const 12
     call $~lib/rt/__instanceof
    else
     i32.const 0
    end
    call $~lib/number/Bool#toString
    call $~lib/string/String.__concat
    i32.const 4224
    i32.const 401
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 5
   i32.const 5
   call $~lib/rt/stub/__new
   local.set $1
   local.get $0
   i32.const 12
   call $~lib/rt/__instanceof
   i32.eqz
   if
    i32.const 2432
    i32.const 4224
    i32.const 418
    i32.const 47
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   local.get $0
   i32.const 8944
   call $~lib/assemblyscript-json/JSON/Obj#has
   if (result i32)
    local.get $0
    i32.const 8944
    call $~lib/near-sdk-bindgen/index/decode<~lib/string/String,~lib/assemblyscript-json/JSON/Obj>
   else
    i32.const 0
   end
   call $~lib/rt/common/BLOCK#set:mmInfo
   local.get $1
   local.get $0
   i32.const 8976
   call $~lib/assemblyscript-json/JSON/Obj#has
   if (result i32)
    local.get $0
    if (result i32)
     local.get $0
     i32.const 12
     call $~lib/rt/__instanceof
    else
     i32.const 0
    end
    if (result i32)
     i32.const 8976
     i32.const 1088
     call $~lib/string/String.__ne
    else
     i32.const 0
    end
    if
     local.get $0
     i32.const 12
     call $~lib/rt/__instanceof
     i32.eqz
     br_if $folding-inner0
     local.get $0
     i32.const 8976
     call $~lib/assemblyscript-json/JSON/Obj#get
     local.tee $0
     i32.eqz
     if
      i32.const 4464
      i32.const 9168
      call $~lib/string/String.__concat
      i32.const 4624
      call $~lib/string/String.__concat
      i32.const 4224
      i32.const 323
      i32.const 9
      call $~lib/builtins/abort
      unreachable
     end
    end
    local.get $0
    if (result i32)
     local.get $0
     i32.const 24
     call $~lib/rt/__instanceof
    else
     i32.const 0
    end
    i32.eqz
    if
     i32.const 4832
     i32.const 8976
     call $~lib/string/String.__concat
     i32.const 4720
     call $~lib/string/String.__concat
     i32.const 9168
     call $~lib/string/String.__concat
     i32.const 9200
     call $~lib/string/String.__concat
     i32.const 4224
     i32.const 331
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 24
    call $~lib/rt/__instanceof
    i32.eqz
    if
     i32.const 2432
     i32.const 4224
     i32.const 340
     i32.const 24
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.load8_u
   else
    i32.const 0
   end
   call $~lib/near-sdk-core/collections/util/MapEntry<~lib/string/String,bool>#set:value
   local.get $1
   return
  end
  i32.const 2432
  i32.const 4224
  i32.const 310
  i32.const 37
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/near-sdk-core/collections/persistentVector/PersistentVector<~lib/near-sdk-core/collections/util/MapEntry<~lib/string/String,bool>>#__unchecked_get (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load
  local.get $1
  call $~lib/util/number/itoa32
  call $~lib/string/String.__concat
  local.tee $0
  call $~lib/near-sdk-core/storage/Storage.contains
  i32.eqz
  if
   i32.const 8608
   local.get $0
   call $~lib/string/String.__concat
   i32.const 8640
   call $~lib/string/String.__concat
   i32.const 8736
   i32.const 237
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/near-sdk-core/storage/Storage._internalReadBytes
  local.tee $0
  i32.eqz
  if
   i32.const 1920
   i32.const 8736
   i32.const 242
   i32.const 37
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/near-sdk-bindgen/index/decode<~lib/near-sdk-core/collections/util/MapEntry<~lib/string/String,bool>,~lib/typedarray/Uint8Array>
 )
 (func $~lib/near-sdk-core/storage/Storage.delete (param $0 i32)
  local.get $0
  call $~lib/near-sdk-core/util/util.stringToBytes
  local.tee $0
  i32.load offset=8
  i64.extend_i32_s
  local.get $0
  i32.load offset=4
  i64.extend_i32_u
  i64.const 0
  call $~lib/near-sdk-core/env/env/env.storage_remove
  drop
 )
 (func $~lib/near-sdk-core/collections/persistentVector/PersistentVector<~lib/near-sdk-core/collections/util/MapEntry<~lib/string/String,bool>>#pop (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/near-sdk-core/collections/persistentVector/PersistentVector<~lib/near-sdk-core/collections/util/MapEntry<~lib/string/String,bool>>#get:length
  i32.const 0
  i32.le_s
  if
   i32.const 9008
   i32.const 8816
   i32.const 67
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $0
  call $~lib/near-sdk-core/collections/persistentVector/PersistentVector<~lib/near-sdk-core/collections/util/MapEntry<~lib/string/String,bool>>#get:length
  i32.const 1
  i32.sub
  local.tee $1
  call $~lib/near-sdk-core/collections/persistentVector/PersistentVector<~lib/near-sdk-core/collections/util/MapEntry<~lib/string/String,bool>>#set:length
  local.get $0
  local.get $1
  call $~lib/near-sdk-core/collections/persistentVector/PersistentVector<~lib/near-sdk-core/collections/util/MapEntry<~lib/string/String,bool>>#__unchecked_get
  local.get $0
  i32.load
  local.get $1
  call $~lib/util/number/itoa32
  call $~lib/string/String.__concat
  call $~lib/near-sdk-core/storage/Storage.delete
 )
 (func $~lib/near-sdk-core/collections/persistentMap/PersistentMap<~lib/string/String,i32>#delete (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/near-sdk-core/collections/persistentMap/PersistentMap<~lib/string/String,i32>#_key
  call $~lib/near-sdk-core/storage/Storage.delete
 )
 (func $~lib/near-sdk-core/collections/persistentVector/PersistentVector<~lib/near-sdk-core/collections/util/MapEntry<~lib/string/String,bool>>#__get (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  call $~lib/near-sdk-core/collections/persistentVector/PersistentVector<~lib/near-sdk-core/collections/util/MapEntry<~lib/string/String,bool>>#containsIndex
  i32.eqz
  if
   i32.const 2080
   i32.const 8816
   i32.const 40
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/near-sdk-core/collections/persistentVector/PersistentVector<~lib/near-sdk-core/collections/util/MapEntry<~lib/string/String,bool>>#__unchecked_get
 )
 (func $~lib/near-sdk-core/collections/persistentUnorderedMap/PersistentUnorderedMap<~lib/string/String,bool>#delete (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.load
  local.get $1
  call $~lib/near-sdk-core/collections/persistentMap/PersistentMap<~lib/string/String,i32>#getSome
  local.tee $3
  local.get $0
  i32.load offset=4
  call $~lib/near-sdk-core/collections/persistentVector/PersistentVector<~lib/near-sdk-core/collections/util/MapEntry<~lib/string/String,bool>>#get:length
  i32.const 1
  i32.sub
  i32.eq
  if
   local.get $0
   i32.load offset=4
   call $~lib/near-sdk-core/collections/persistentVector/PersistentVector<~lib/near-sdk-core/collections/util/MapEntry<~lib/string/String,bool>>#pop
   local.set $1
   local.get $0
   i32.load
   local.get $1
   i32.load
   call $~lib/near-sdk-core/collections/persistentMap/PersistentMap<~lib/string/String,i32>#delete
   return
  end
  local.get $0
  i32.load offset=4
  local.tee $2
  local.get $2
  call $~lib/near-sdk-core/collections/persistentVector/PersistentVector<~lib/near-sdk-core/collections/util/MapEntry<~lib/string/String,bool>>#get:length
  i32.const 1
  i32.sub
  call $~lib/near-sdk-core/collections/persistentVector/PersistentVector<~lib/near-sdk-core/collections/util/MapEntry<~lib/string/String,bool>>#__get
  i32.load
  local.set $4
  local.get $0
  i32.load offset=4
  local.tee $2
  call $~lib/near-sdk-core/collections/persistentVector/PersistentVector<~lib/near-sdk-core/collections/util/MapEntry<~lib/string/String,bool>>#get:length
  local.get $3
  i32.le_s
  if
   i32.const 9264
   i32.const 8816
   i32.const 79
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/near-sdk-core/collections/persistentVector/PersistentVector<~lib/near-sdk-core/collections/util/MapEntry<~lib/string/String,bool>>#get:length
  local.get $3
  i32.const 1
  i32.add
  i32.eq
  if
   local.get $2
   call $~lib/near-sdk-core/collections/persistentVector/PersistentVector<~lib/near-sdk-core/collections/util/MapEntry<~lib/string/String,bool>>#pop
   drop
  else
   local.get $2
   local.get $3
   call $~lib/near-sdk-core/collections/persistentVector/PersistentVector<~lib/near-sdk-core/collections/util/MapEntry<~lib/string/String,bool>>#__unchecked_get
   drop
   local.get $2
   local.get $2
   call $~lib/near-sdk-core/collections/persistentVector/PersistentVector<~lib/near-sdk-core/collections/util/MapEntry<~lib/string/String,bool>>#get:length
   i32.const 1
   i32.sub
   call $~lib/near-sdk-core/collections/persistentVector/PersistentVector<~lib/near-sdk-core/collections/util/MapEntry<~lib/string/String,bool>>#__unchecked_get
   local.set $5
   local.get $2
   call $~lib/near-sdk-core/collections/persistentVector/PersistentVector<~lib/near-sdk-core/collections/util/MapEntry<~lib/string/String,bool>>#get:length
   i32.const 1
   i32.sub
   local.set $6
   local.get $2
   i32.load
   local.get $6
   call $~lib/util/number/itoa32
   call $~lib/string/String.__concat
   call $~lib/near-sdk-core/storage/Storage.delete
   local.get $2
   local.get $3
   local.get $5
   call $~lib/near-sdk-core/collections/persistentVector/PersistentVector<~lib/near-sdk-core/collections/util/MapEntry<~lib/string/String,bool>>#__unchecked_set
   local.get $2
   local.get $2
   call $~lib/near-sdk-core/collections/persistentVector/PersistentVector<~lib/near-sdk-core/collections/util/MapEntry<~lib/string/String,bool>>#get:length
   i32.const 1
   i32.sub
   call $~lib/near-sdk-core/collections/persistentVector/PersistentVector<~lib/near-sdk-core/collections/util/MapEntry<~lib/string/String,bool>>#set:length
  end
  local.get $0
  i32.load
  local.get $4
  local.get $3
  call $~lib/near-sdk-core/collections/persistentMap/PersistentMap<~lib/string/String,i32>#set
  local.get $0
  i32.load
  local.get $1
  call $~lib/near-sdk-core/collections/persistentMap/PersistentMap<~lib/string/String,i32>#delete
 )
 (func $assembly/index/__wrapper_admins_remove
  (local $0 i32)
  (local $1 i32)
  call $~lib/near-sdk-bindgen/index/getInput
  local.tee $0
  i32.const 8480
  call $~lib/assemblyscript-json/JSON/Obj#has
  if (result i32)
   local.get $0
   i32.const 8480
   call $~lib/near-sdk-bindgen/index/decode<~lib/array/Array<~lib/string/String>,~lib/assemblyscript-json/JSON/Obj>
  else
   i32.const 8480
   call $~lib/near-sdk-bindgen/index/requireParameter<~lib/array/Array<~lib/string/String>>
  end
  local.set $0
  call $~lib/near-sdk-core/contract/Context.get:predecessor
  call $assembly/index/_is_whitelisted
  loop $for-loop|0
   local.get $1
   local.get $0
   i32.load offset=12
   i32.lt_s
   if
    global.get $assembly/index/admins
    local.get $0
    local.get $1
    call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
    call $~lib/near-sdk-core/collections/persistentUnorderedMap/PersistentUnorderedMap<~lib/string/String,bool>#delete
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
 )
 (func $~lib/near-sdk-bindgen/index/decode<i32,~lib/assemblyscript-json/JSON/Obj> (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
   i32.const 12
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.const 1088
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if
   local.get $0
   i32.const 12
   call $~lib/rt/__instanceof
   i32.eqz
   if
    i32.const 2432
    i32.const 4224
    i32.const 310
    i32.const 37
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   call $~lib/assemblyscript-json/JSON/Obj#get
   local.tee $0
   i32.eqz
   if
    i32.const 4464
    i32.const 9360
    call $~lib/string/String.__concat
    i32.const 4624
    call $~lib/string/String.__concat
    i32.const 4224
    i32.const 323
    i32.const 9
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $0
  if (result i32)
   local.get $0
   i32.const 27
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 4832
   local.get $1
   call $~lib/string/String.__concat
   i32.const 4720
   call $~lib/string/String.__concat
   i32.const 9360
   call $~lib/string/String.__concat
   i32.const 9392
   call $~lib/string/String.__concat
   i32.const 4224
   i32.const 358
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 27
  call $~lib/rt/__instanceof
  i32.eqz
  if
   i32.const 2432
   i32.const 4224
   i32.const 367
   i32.const 30
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i64.load
  i32.wrap_i64
 )
 (func $~lib/near-sdk-core/collections/persistentUnorderedMap/PersistentUnorderedMap<~lib/string/String,bool>#get:length (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  call $~lib/near-sdk-core/collections/persistentVector/PersistentVector<~lib/near-sdk-core/collections/util/MapEntry<~lib/string/String,bool>>#get:length
 )
 (func $~lib/near-sdk-core/collections/persistentUnorderedMap/PersistentUnorderedMap<~lib/string/String,bool>#keys (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  call $~lib/array/Array<~lib/string/String>#constructor
  local.set $3
  local.get $2
  local.get $0
  call $~lib/near-sdk-core/collections/persistentUnorderedMap/PersistentUnorderedMap<~lib/string/String,bool>#get:length
  local.tee $4
  local.get $2
  local.get $4
  i32.lt_s
  select
  local.set $2
  loop $for-loop|0
   local.get $1
   local.get $2
   i32.lt_s
   if
    local.get $3
    local.get $0
    i32.load offset=4
    local.get $1
    call $~lib/near-sdk-core/collections/persistentVector/PersistentVector<~lib/near-sdk-core/collections/util/MapEntry<~lib/string/String,bool>>#__get
    i32.load
    call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#push
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  local.get $3
 )
 (func $~lib/near-sdk-bindgen/index/encode<~lib/array/Array<~lib/string/String>,~lib/typedarray/Uint8Array>@varargs (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  block $2of2
   block $1of2
    block $outOfRange
     global.get $~argumentsLength
     i32.const 1
     i32.sub
     br_table $1of2 $1of2 $2of2 $outOfRange
    end
    unreachable
   end
   call $~lib/near-sdk-bindgen/index/JSONEncoder#constructor
   local.set $1
  end
  local.get $0
  if
   local.get $1
   i32.const 1088
   call $~lib/assemblyscript-json/encoder/JSONEncoder#writeKey
   local.get $1
   i32.const 3616
   call $~lib/assemblyscript-json/encoder/JSONEncoder#write
   local.get $1
   i32.load
   call $~lib/array/Array<i32>#push
   loop $for-loop|0
    local.get $2
    local.get $0
    i32.load offset=12
    i32.lt_s
    if
     local.get $0
     local.get $2
     call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
     i32.const 0
     local.get $1
     call $~lib/near-sdk-bindgen/index/encode<~lib/string/String,~lib/near-sdk-bindgen/index/JSONEncoder>
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $for-loop|0
    end
   end
   local.get $1
   i32.const 3648
   call $~lib/assemblyscript-json/encoder/JSONEncoder#write
   local.get $1
   i32.load
   call $~lib/array/Array<i32>#pop
  else
   local.get $1
   i32.const 1088
   call $~lib/assemblyscript-json/encoder/JSONEncoder#setNull
  end
  local.get $1
  call $~lib/assemblyscript-json/encoder/JSONEncoder#serialize
 )
 (func $assembly/index/__wrapper_get_admins
  (local $0 i32)
  (local $1 i32)
  call $~lib/near-sdk-bindgen/index/getInput
  local.tee $0
  i32.const 9328
  call $~lib/assemblyscript-json/JSON/Obj#has
  if (result i32)
   local.get $0
   i32.const 9328
   call $~lib/near-sdk-bindgen/index/decode<i32,~lib/assemblyscript-json/JSON/Obj>
  else
   i32.const 0
  end
  local.set $1
  local.get $0
  i32.const 9456
  call $~lib/assemblyscript-json/JSON/Obj#has
  if (result i32)
   local.get $0
   i32.const 9456
   call $~lib/near-sdk-bindgen/index/decode<i32,~lib/assemblyscript-json/JSON/Obj>
  else
   global.get $assembly/index/admins
   call $~lib/near-sdk-core/collections/persistentUnorderedMap/PersistentUnorderedMap<~lib/string/String,bool>#get:length
  end
  local.set $0
  global.get $assembly/index/admins
  local.get $1
  local.get $0
  call $~lib/near-sdk-core/collections/persistentUnorderedMap/PersistentUnorderedMap<~lib/string/String,bool>#keys
  i32.const 1
  global.set $~argumentsLength
  call $~lib/near-sdk-bindgen/index/encode<~lib/array/Array<~lib/string/String>,~lib/typedarray/Uint8Array>@varargs
  local.tee $1
  i32.load offset=8
  i64.extend_i32_s
  local.get $1
  i32.load offset=4
  i64.extend_i32_u
  call $~lib/near-sdk-bindgen/index/value_return
 )
 (func $assembly/index/__wrapper_tokens_add
  (local $0 i32)
  (local $1 i32)
  call $~lib/near-sdk-bindgen/index/getInput
  local.tee $0
  i32.const 9488
  call $~lib/assemblyscript-json/JSON/Obj#has
  if (result i32)
   local.get $0
   i32.const 9488
   call $~lib/near-sdk-bindgen/index/decode<~lib/array/Array<~lib/string/String>,~lib/assemblyscript-json/JSON/Obj>
  else
   i32.const 9488
   call $~lib/near-sdk-bindgen/index/requireParameter<~lib/array/Array<~lib/string/String>>
  end
  local.set $0
  call $~lib/near-sdk-core/contract/Context.get:predecessor
  call $assembly/index/_is_whitelisted
  loop $for-loop|0
   local.get $1
   local.get $0
   i32.load offset=12
   i32.lt_s
   if
    global.get $assembly/index/tokens
    local.get $0
    local.get $1
    call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
    call $~lib/near-sdk-core/collections/persistentUnorderedMap/PersistentUnorderedMap<~lib/string/String,bool>#set
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
 )
 (func $assembly/index/__wrapper_tokens_remove
  (local $0 i32)
  (local $1 i32)
  call $~lib/near-sdk-bindgen/index/getInput
  local.tee $0
  i32.const 9488
  call $~lib/assemblyscript-json/JSON/Obj#has
  if (result i32)
   local.get $0
   i32.const 9488
   call $~lib/near-sdk-bindgen/index/decode<~lib/array/Array<~lib/string/String>,~lib/assemblyscript-json/JSON/Obj>
  else
   i32.const 9488
   call $~lib/near-sdk-bindgen/index/requireParameter<~lib/array/Array<~lib/string/String>>
  end
  local.set $0
  call $~lib/near-sdk-core/contract/Context.get:predecessor
  call $assembly/index/_is_whitelisted
  loop $for-loop|0
   local.get $1
   local.get $0
   i32.load offset=12
   i32.lt_s
   if
    global.get $assembly/index/tokens
    local.get $0
    local.get $1
    call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
    call $~lib/near-sdk-core/collections/persistentUnorderedMap/PersistentUnorderedMap<~lib/string/String,bool>#delete
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
 )
 (func $assembly/index/__wrapper_get_tokens
  (local $0 i32)
  (local $1 i32)
  call $~lib/near-sdk-bindgen/index/getInput
  local.tee $0
  i32.const 9328
  call $~lib/assemblyscript-json/JSON/Obj#has
  if (result i32)
   local.get $0
   i32.const 9328
   call $~lib/near-sdk-bindgen/index/decode<i32,~lib/assemblyscript-json/JSON/Obj>
  else
   i32.const 0
  end
  local.set $1
  local.get $0
  i32.const 9456
  call $~lib/assemblyscript-json/JSON/Obj#has
  if (result i32)
   local.get $0
   i32.const 9456
   call $~lib/near-sdk-bindgen/index/decode<i32,~lib/assemblyscript-json/JSON/Obj>
  else
   global.get $assembly/index/tokens
   call $~lib/near-sdk-core/collections/persistentUnorderedMap/PersistentUnorderedMap<~lib/string/String,bool>#get:length
  end
  local.set $0
  global.get $assembly/index/tokens
  local.get $1
  local.get $0
  call $~lib/near-sdk-core/collections/persistentUnorderedMap/PersistentUnorderedMap<~lib/string/String,bool>#keys
  i32.const 1
  global.set $~argumentsLength
  call $~lib/near-sdk-bindgen/index/encode<~lib/array/Array<~lib/string/String>,~lib/typedarray/Uint8Array>@varargs
  local.tee $1
  i32.load offset=8
  i64.extend_i32_s
  local.get $1
  i32.load offset=4
  i64.extend_i32_u
  call $~lib/near-sdk-bindgen/index/value_return
 )
 (func $assembly/index/__wrapper_init
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  call $~lib/near-sdk-bindgen/index/getInput
  local.tee $1
  i32.const 8480
  call $~lib/assemblyscript-json/JSON/Obj#has
  if (result i32)
   local.get $1
   i32.const 8480
   call $~lib/near-sdk-bindgen/index/decode<~lib/array/Array<~lib/string/String>,~lib/assemblyscript-json/JSON/Obj>
  else
   i32.const 8480
   call $~lib/near-sdk-bindgen/index/requireParameter<~lib/array/Array<~lib/string/String>>
  end
  local.set $1
  i32.const 9536
  call $~lib/near-sdk-core/storage/Storage.getString
  local.tee $0
  i32.const 0
  call $~lib/string/String.__eq
  if
   i32.const 0
   local.set $0
  else
   local.get $0
   i32.eqz
   if
    i32.const 1920
    i32.const 8736
    i32.const 185
    i32.const 43
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $0
  i32.const 0
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 9568
   i32.const 6432
   i32.const 130
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $assembly/index/admins
  i64.const 0
  call $~lib/near-sdk-core/env/env/env.current_account_id
  call $~lib/near-sdk-core/util/util.read_register_string
  call $~lib/near-sdk-core/collections/persistentUnorderedMap/PersistentUnorderedMap<~lib/string/String,bool>#set
  loop $for-loop|0
   local.get $2
   local.get $1
   i32.load offset=12
   i32.lt_s
   if
    global.get $assembly/index/admins
    local.get $1
    local.get $2
    call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
    call $~lib/near-sdk-core/collections/persistentUnorderedMap/PersistentUnorderedMap<~lib/string/String,bool>#set
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  i32.const 9536
  i32.const 9632
  call $~lib/near-sdk-core/storage/Storage.setString
 )
 (func $~lib/near-sdk-bindgen/index/requireParameter<u64> (param $0 i32) (result i64)
  i32.const 6112
  local.get $0
  call $~lib/string/String.__concat
  i32.const 4720
  call $~lib/string/String.__concat
  i32.const 5440
  call $~lib/string/String.__concat
  i32.const 6160
  call $~lib/string/String.__concat
  i32.const 4224
  i32.const 33
  i32.const 3
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/near-sdk-core/contract/ContractPromiseResult#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  i32.const 8
  i32.const 40
  call $~lib/rt/stub/__new
  local.tee $2
  local.get $0
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $2
  local.get $1
  call $~lib/rt/common/OBJECT#set:gcInfo
  local.get $2
 )
 (func $~lib/near-sdk-core/contract/ContractPromise.getResults (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  call $~lib/near-sdk-core/env/env/env.promise_results_count
  local.set $3
  i32.const 16
  i32.const 41
  call $~lib/rt/stub/__new
  local.tee $0
  i32.const 0
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $0
  i32.const 0
  call $~lib/rt/common/OBJECT#set:gcInfo
  local.get $0
  i32.const 0
  call $~lib/rt/common/OBJECT#set:gcInfo2
  local.get $0
  i32.const 0
  call $~lib/rt/common/OBJECT#set:rtId
  local.get $3
  i32.wrap_i64
  local.tee $1
  i32.const 268435455
  i32.gt_u
  if
   i32.const 1760
   i32.const 1872
   i32.const 64
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 8
  local.get $1
  i32.const 8
  i32.gt_u
  select
  i32.const 2
  i32.shl
  local.tee $4
  i32.const 0
  call $~lib/rt/stub/__new
  local.tee $5
  local.get $4
  call $~lib/memory/memory.fill
  local.get $0
  local.get $5
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $0
  local.get $5
  call $~lib/rt/common/OBJECT#set:gcInfo
  local.get $0
  local.get $4
  call $~lib/rt/common/OBJECT#set:gcInfo2
  local.get $0
  local.get $1
  call $~lib/rt/common/OBJECT#set:rtId
  loop $for-loop|0
   local.get $3
   local.get $2
   i64.extend_i32_s
   i64.gt_s
   if
    block $for-continue|0
     local.get $2
     i64.extend_i32_s
     i64.const 0
     call $~lib/near-sdk-core/env/env/env.promise_result
     i32.wrap_i64
     local.tee $1
     i32.const 1
     i32.ne
     if
      i32.const 1
      global.set $~argumentsLength
      local.get $0
      local.get $2
      local.get $1
      i32.const 0
      call $~lib/near-sdk-core/contract/ContractPromiseResult#constructor
      call $~lib/array/Array<~lib/array/Array<assembly/model/ContractCall>>#__set
      br $for-continue|0
     end
     local.get $0
     local.get $2
     local.get $1
     call $~lib/near-sdk-core/util/util.read_register
     call $~lib/near-sdk-core/contract/ContractPromiseResult#constructor
     call $~lib/array/Array<~lib/array/Array<assembly/model/ContractCall>>#__set
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  local.get $0
 )
 (func $assembly/index/withdraw_from_ref (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i64) (param $4 i64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i64)
  (local $10 i64)
  (local $11 i32)
  call $~lib/near-sdk-core/contract/Context.get:predecessor
  call $assembly/index/_is_whitelisted
  call $~lib/near-sdk-core/contract/ContractPromise.getResults
  local.tee $5
  local.get $5
  i32.load offset=12
  i32.const 1
  i32.sub
  call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
  local.tee $5
  i32.load
  i32.const 1
  i32.eq
  if
   local.get $5
   i32.load offset=4
   call $~lib/assemblyscript-json/JSON/_JSON.parse<~lib/typedarray/Uint8Array>
   local.tee $8
   i32.const 12
   call $~lib/rt/__instanceof
   i32.eqz
   if
    i32.const 2432
    i32.const 6432
    i32.const 142
    i32.const 37
    call $~lib/builtins/abort
    unreachable
   end
   loop $for-loop|0
    local.get $6
    local.get $1
    i32.load offset=12
    i32.lt_s
    if
     local.get $8
     local.get $1
     local.get $6
     call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
     call $~lib/assemblyscript-json/JSON/Obj#getString
     local.tee $5
     if
      local.get $5
      i32.load
      call $~lib/as-bignum/utils/atou128
      local.set $5
      i64.const 0
      i64.const 0
      call $~lib/as-bignum/integer/safe/u128/u128#constructor
      local.set $7
      local.get $5
      i64.load offset=8
      local.tee $9
      local.get $7
      i64.load offset=8
      local.tee $10
      i64.eq
      if (result i32)
       local.get $5
       i64.load
       local.get $7
       i64.load
       i64.gt_u
      else
       local.get $9
       local.get $10
       i64.gt_u
      end
      if
       i32.const 10080
       i32.const 1
       local.get $1
       local.get $6
       call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
       call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
       i32.const 10080
       i32.const 3
       local.get $5
       call $~lib/as-bignum/integer/u128/u128#toString
       call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
       local.get $0
       i32.const 9904
       i32.const 10080
       call $~lib/staticarray/StaticArray<~lib/string/String>#join
       call $~lib/assemblyscript-json/util/index/Buffer.fromString
       local.get $3
       i32.const 10128
       call $~lib/as-bignum/utils/atou128
       call $~lib/near-sdk-core/contract/ContractPromise.create<~lib/typedarray/Uint8Array>
       local.get $1
       local.get $6
       call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
       i32.const 10320
       i32.const 1
       local.get $2
       call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
       i32.const 10320
       i32.const 3
       local.get $5
       call $~lib/as-bignum/integer/u128/u128#toString
       call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
       i32.const 10160
       i32.const 10320
       call $~lib/staticarray/StaticArray<~lib/string/String>#join
       call $~lib/assemblyscript-json/util/index/Buffer.fromString
       local.get $4
       i32.const 10128
       call $~lib/as-bignum/utils/atou128
       call $~lib/near-sdk-core/contract/ContractPromise#then<~lib/typedarray/Uint8Array>
       drop
      end
     end
     local.get $6
     i32.const 1
     i32.add
     local.set $6
     br $for-loop|0
    end
   end
  end
 )
 (func $assembly/index/__wrapper_withdraw_from_ref
  (local $0 i32)
  call $~lib/near-sdk-bindgen/index/getInput
  local.tee $0
  i32.const 9664
  call $~lib/assemblyscript-json/JSON/Obj#has
  if (result i32)
   local.get $0
   i32.const 9664
   call $~lib/near-sdk-bindgen/index/decode<~lib/string/String,~lib/assemblyscript-json/JSON/Obj>
  else
   i32.const 9664
   call $~lib/near-sdk-bindgen/index/requireParameter<~lib/string/String>
  end
  local.get $0
  i32.const 9712
  call $~lib/assemblyscript-json/JSON/Obj#has
  if (result i32)
   local.get $0
   i32.const 9712
   call $~lib/near-sdk-bindgen/index/decode<~lib/array/Array<~lib/string/String>,~lib/assemblyscript-json/JSON/Obj>
  else
   i32.const 9712
   call $~lib/near-sdk-bindgen/index/requireParameter<~lib/array/Array<~lib/string/String>>
  end
  local.get $0
  i32.const 9744
  call $~lib/assemblyscript-json/JSON/Obj#has
  if (result i32)
   local.get $0
   i32.const 9744
   call $~lib/near-sdk-bindgen/index/decode<~lib/string/String,~lib/assemblyscript-json/JSON/Obj>
  else
   i32.const 9744
   call $~lib/near-sdk-bindgen/index/requireParameter<~lib/string/String>
  end
  local.get $0
  i32.const 9792
  call $~lib/assemblyscript-json/JSON/Obj#has
  if (result i64)
   local.get $0
   i32.const 9792
   call $~lib/near-sdk-bindgen/index/decode<u64,~lib/assemblyscript-json/JSON/Obj>
  else
   i32.const 9792
   call $~lib/near-sdk-bindgen/index/requireParameter<u64>
  end
  local.get $0
  i32.const 9840
  call $~lib/assemblyscript-json/JSON/Obj#has
  if (result i64)
   local.get $0
   i32.const 9840
   call $~lib/near-sdk-bindgen/index/decode<u64,~lib/assemblyscript-json/JSON/Obj>
  else
   i32.const 9840
   call $~lib/near-sdk-bindgen/index/requireParameter<u64>
  end
  call $assembly/index/withdraw_from_ref
 )
 (func $~start
  (local $0 i32)
  (local $1 i32)
  i32.const 10700
  global.set $~lib/rt/stub/offset
  i32.const 1360
  call $~lib/near-sdk-core/collections/persistentUnorderedMap/PersistentUnorderedMap<~lib/string/String,bool>#constructor
  global.set $assembly/index/admins
  i32.const 1392
  call $~lib/near-sdk-core/collections/persistentUnorderedMap/PersistentUnorderedMap<~lib/string/String,bool>#constructor
  global.set $assembly/index/tokens
  i32.const 4
  i32.const 7
  call $~lib/rt/stub/__new
  local.tee $0
  i32.const 1424
  call $~lib/as-bignum/utils/atou128
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $0
  global.set $assembly/index/storageCosts
  i32.const 0
  i32.const 11
  call $~lib/rt/stub/__new
  drop
  i32.const 4
  i32.const 16
  call $~lib/rt/stub/__new
  local.tee $0
  i32.eqz
  if
   i32.const 0
   i32.const 17
   call $~lib/rt/stub/__new
   local.set $0
  end
  local.get $0
  call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#constructor
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $0
  global.set $~lib/assemblyscript-json/JSON/_JSON.handler
  global.get $~lib/assemblyscript-json/JSON/_JSON.handler
  local.set $1
  i32.const 8
  i32.const 19
  call $~lib/rt/stub/__new
  local.tee $0
  i32.const 0
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $0
  i32.const 0
  call $~lib/rt/common/OBJECT#set:gcInfo
  local.get $0
  local.get $1
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $0
  global.set $~lib/assemblyscript-json/JSON/_JSON.decoder
  i32.const 0
  i32.const 28
  call $~lib/rt/stub/__new
  call $~lib/assemblyscript-json/JSON/Value#constructor
  global.set $~lib/assemblyscript-json/JSON/NULL
 )
)
