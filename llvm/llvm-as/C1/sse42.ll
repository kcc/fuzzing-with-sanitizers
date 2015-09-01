


declare i32 @llvm.x86.sse42.crc32.32.8(i32, i8) nounwind
declare i32 @llvm.x86.sse42.crc32.32.16(i32, i16) nounwind
declare i32 @llvm.x86.sse42.crc32.32.32(i32, i32) nounwind

define i32 @crc32_32_8(i32 %a, i8 %b) nounwind {
  %tmp = call i32 @llvm.x86.sse42.crc32.32.8(i32 %a, i8 %b)
  ret i32 %tmp





}


define i32 @crc32_32_16(i32 %a, i16 %b) nounwind {
  %tmp = call i32 @llvm.x86.sse42.crc32.32.16(i32 %a, i16 %b)
  ret i32 %tmp





}


define i32 @crc32_32_32(i32 %a, i32 %b) nounwind {
  %tmp = call i32 @llvm.x86.sse42.crc32.32.32(i32 %a, i32 %b)
  ret i32 %tmp





}

