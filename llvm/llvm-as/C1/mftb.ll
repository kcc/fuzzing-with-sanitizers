























define i32 @get_time() {
       %time = call i32 asm "mftb $0, 268", "=r"()
       ret i32 %time







}

define i32 @get_timeu() {
       %time = call i32 asm "mftb $0, 269", "=r"()
       ret i32 %time







}

define i32 @get_time_e() {
       %time = call i32 asm "mftb $0", "=r"()
       ret i32 %time







}

define i32 @get_timeu_e() {
       %time = call i32 asm "mftbu $0", "=r"()
       ret i32 %time







}

