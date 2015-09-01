

declare {i16, i32} @llvm.x86.rdseed.16()
declare {i32, i32} @llvm.x86.rdseed.32()
declare {i64, i32} @llvm.x86.rdseed.64()

define i32 @_rdseed16_step(i16* %random_val) {
  %call = call {i16, i32} @llvm.x86.rdseed.16()
  %randval = extractvalue {i16, i32} %call, 0
  store i16 %randval, i16* %random_val
  %isvalid = extractvalue {i16, i32} %call, 1
  ret i32 %isvalid







}

define i32 @_rdseed32_step(i32* %random_val) {
  %call = call {i32, i32} @llvm.x86.rdseed.32()
  %randval = extractvalue {i32, i32} %call, 0
  store i32 %randval, i32* %random_val
  %isvalid = extractvalue {i32, i32} %call, 1
  ret i32 %isvalid






}

define i32 @_rdseed64_step(i64* %random_val) {
  %call = call {i64, i32} @llvm.x86.rdseed.64()
  %randval = extractvalue {i64, i32} %call, 0
  store i64 %randval, i64* %random_val
  %isvalid = extractvalue {i64, i32} %call, 1
  ret i32 %isvalid






}
