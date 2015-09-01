



define i32 @main() {
         %foo  = call i8* %llvm.stacksave()
         %foop = bitcast i8* %foo to label*
         %nret = load label, label* %foop
         br label %nret
}
