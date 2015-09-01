

@t = global i32 10, align 4
@f = global i32 199, align 4
@a = global i32 1, align 4
@b = global i32 10, align 4
@c = global i32 1, align 4
@z1 = common global i32 0, align 4
@z2 = common global i32 0, align 4
@z3 = common global i32 0, align 4
@z4 = common global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%i \0A\00", align 1

define void @calc_seleq() nounwind "target-cpu"="mips16" "target-features"="+mips16,+o32" {
entry:
  %0 = load i32, i32* @a, align 4
  %1 = load i32, i32* @b, align 4
  %cmp = icmp ne i32 %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        
  %2 = load i32, i32* @f, align 4
  br label %cond.end

cond.false:                                       
  %3 = load i32, i32* @t, align 4
  br label %cond.end

cond.end:                                         
  %cond = phi i32 [ %2, %cond.true ], [ %3, %cond.false ]
  store i32 %cond, i32* @z1, align 4
  %4 = load i32, i32* @b, align 4
  %5 = load i32, i32* @a, align 4
  %cmp1 = icmp ne i32 %4, %5
  br i1 %cmp1, label %cond.true2, label %cond.false3

cond.true2:                                       
  %6 = load i32, i32* @f, align 4
  br label %cond.end4

cond.false3:                                      
  %7 = load i32, i32* @t, align 4
  br label %cond.end4

cond.end4:                                        
  %cond5 = phi i32 [ %6, %cond.true2 ], [ %7, %cond.false3 ]
  store i32 %cond5, i32* @z2, align 4
  %8 = load i32, i32* @c, align 4
  %9 = load i32, i32* @a, align 4
  %cmp6 = icmp ne i32 %8, %9
  br i1 %cmp6, label %cond.true7, label %cond.false8

cond.true7:                                       
  %10 = load i32, i32* @t, align 4
  br label %cond.end9

cond.false8:                                      
  %11 = load i32, i32* @f, align 4
  br label %cond.end9

cond.end9:                                        
  %cond10 = phi i32 [ %10, %cond.true7 ], [ %11, %cond.false8 ]
  store i32 %cond10, i32* @z3, align 4
  %12 = load i32, i32* @a, align 4
  %13 = load i32, i32* @c, align 4
  %cmp11 = icmp ne i32 %12, %13
  br i1 %cmp11, label %cond.true12, label %cond.false13

cond.true12:                                      
  %14 = load i32, i32* @t, align 4
  br label %cond.end14

cond.false13:                                     
  %15 = load i32, i32* @f, align 4
  br label %cond.end14

cond.end14:                                       
  %cond15 = phi i32 [ %14, %cond.true12 ], [ %15, %cond.false13 ]
  store i32 %cond15, i32* @z4, align 4
  ret void
}

attributes #0 = { nounwind "target-cpu"="mips16" "target-features"="+mips16,+o32" }
attributes #1 = { "target-cpu"="mips16" "target-features"="+mips16,+o32" }













