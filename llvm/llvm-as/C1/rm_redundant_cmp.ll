



%struct.s_signed_i16 = type { i16, i16, i16 }
%struct.s_unsigned_i16 = type { i16, i16, i16 }

@cost_s_i8_i16 = common global %struct.s_signed_i16 zeroinitializer, align 2
@cost_u_i16 = common global %struct.s_unsigned_i16 zeroinitializer, align 2

define void @test_i16_2cmp_signed_1() {





entry:
  %0 = load i16, i16* getelementptr inbounds (%struct.s_signed_i16, %struct.s_signed_i16* @cost_s_i8_i16, i64 0, i32 1), align 2
  %1 = load i16, i16* getelementptr inbounds (%struct.s_signed_i16, %struct.s_signed_i16* @cost_s_i8_i16, i64 0, i32 2), align 2
  %cmp = icmp sgt i16 %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          
  store i16 %0, i16* getelementptr inbounds (%struct.s_signed_i16, %struct.s_signed_i16* @cost_s_i8_i16, i64 0, i32 0), align 2
  br label %if.end8

if.else:                                          
  %cmp5 = icmp eq i16 %0, %1
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         
  store i16 %0, i16* getelementptr inbounds (%struct.s_signed_i16, %struct.s_signed_i16* @cost_s_i8_i16, i64 0, i32 0), align 2
  br label %if.end8

if.end8:                                          
  ret void
}

define void @test_i16_2cmp_signed_2() {





entry:
  %0 = load i16, i16* getelementptr inbounds (%struct.s_signed_i16, %struct.s_signed_i16* @cost_s_i8_i16, i64 0, i32 1), align 2
  %1 = load i16, i16* getelementptr inbounds (%struct.s_signed_i16, %struct.s_signed_i16* @cost_s_i8_i16, i64 0, i32 2), align 2
  %cmp = icmp sgt i16 %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          
  store i16 %0, i16* getelementptr inbounds (%struct.s_signed_i16, %struct.s_signed_i16* @cost_s_i8_i16, i64 0, i32 0), align 2
  br label %if.end8

if.else:                                          
  %cmp5 = icmp slt i16 %0, %1
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         
  store i16 %1, i16* getelementptr inbounds (%struct.s_signed_i16, %struct.s_signed_i16* @cost_s_i8_i16, i64 0, i32 0), align 2
  br label %if.end8

if.end8:                                          
  ret void
}

define void @test_i16_2cmp_unsigned_1() {





entry:
  %0 = load i16, i16* getelementptr inbounds (%struct.s_unsigned_i16, %struct.s_unsigned_i16* @cost_u_i16, i64 0, i32 1), align 2
  %1 = load i16, i16* getelementptr inbounds (%struct.s_unsigned_i16, %struct.s_unsigned_i16* @cost_u_i16, i64 0, i32 2), align 2
  %cmp = icmp ugt i16 %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          
  store i16 %0, i16* getelementptr inbounds (%struct.s_unsigned_i16, %struct.s_unsigned_i16* @cost_u_i16, i64 0, i32 0), align 2
  br label %if.end8

if.else:                                          
  %cmp5 = icmp eq i16 %0, %1
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         
  store i16 %0, i16* getelementptr inbounds (%struct.s_unsigned_i16, %struct.s_unsigned_i16* @cost_u_i16, i64 0, i32 0), align 2
  br label %if.end8

if.end8:                                          
  ret void
}

define void @test_i16_2cmp_unsigned_2() {





entry:
  %0 = load i16, i16* getelementptr inbounds (%struct.s_unsigned_i16, %struct.s_unsigned_i16* @cost_u_i16, i64 0, i32 1), align 2
  %1 = load i16, i16* getelementptr inbounds (%struct.s_unsigned_i16, %struct.s_unsigned_i16* @cost_u_i16, i64 0, i32 2), align 2
  %cmp = icmp ugt i16 %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          
  store i16 %0, i16* getelementptr inbounds (%struct.s_unsigned_i16, %struct.s_unsigned_i16* @cost_u_i16, i64 0, i32 0), align 2
  br label %if.end8

if.else:                                          
  %cmp5 = icmp ult i16 %0, %1
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         
  store i16 %1, i16* getelementptr inbounds (%struct.s_unsigned_i16, %struct.s_unsigned_i16* @cost_u_i16, i64 0, i32 0), align 2
  br label %if.end8

if.end8:                                          
  ret void
}



%struct.s_signed_i8 = type { i8, i8, i8 }
%struct.s_unsigned_i8 = type { i8, i8, i8 }

@cost_s = common global %struct.s_signed_i8 zeroinitializer, align 2
@cost_u_i8 = common global %struct.s_unsigned_i8 zeroinitializer, align 2


define void @test_i8_2cmp_signed_1() {





entry:
  %0 = load i8, i8* getelementptr inbounds (%struct.s_signed_i8, %struct.s_signed_i8* @cost_s, i64 0, i32 1), align 2
  %1 = load i8, i8* getelementptr inbounds (%struct.s_signed_i8, %struct.s_signed_i8* @cost_s, i64 0, i32 2), align 2
  %cmp = icmp sgt i8 %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          
  store i8 %0, i8* getelementptr inbounds (%struct.s_signed_i8, %struct.s_signed_i8* @cost_s, i64 0, i32 0), align 2
  br label %if.end8

if.else:                                          
  %cmp5 = icmp eq i8 %0, %1
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         
  store i8 %0, i8* getelementptr inbounds (%struct.s_signed_i8, %struct.s_signed_i8* @cost_s, i64 0, i32 0), align 2
  br label %if.end8

if.end8:                                          
  ret void
}

define void @test_i8_2cmp_signed_2() {





entry:
  %0 = load i8, i8* getelementptr inbounds (%struct.s_signed_i8, %struct.s_signed_i8* @cost_s, i64 0, i32 1), align 2
  %1 = load i8, i8* getelementptr inbounds (%struct.s_signed_i8, %struct.s_signed_i8* @cost_s, i64 0, i32 2), align 2
  %cmp = icmp sgt i8 %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          
  store i8 %0, i8* getelementptr inbounds (%struct.s_signed_i8, %struct.s_signed_i8* @cost_s, i64 0, i32 0), align 2
  br label %if.end8

if.else:                                          
  %cmp5 = icmp slt i8 %0, %1
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         
  store i8 %1, i8* getelementptr inbounds (%struct.s_signed_i8, %struct.s_signed_i8* @cost_s, i64 0, i32 0), align 2
  br label %if.end8

if.end8:                                          
  ret void
}

define void @test_i8_2cmp_unsigned_1() {





entry:
  %0 = load i8, i8* getelementptr inbounds (%struct.s_unsigned_i8, %struct.s_unsigned_i8* @cost_u_i8, i64 0, i32 1), align 2
  %1 = load i8, i8* getelementptr inbounds (%struct.s_unsigned_i8, %struct.s_unsigned_i8* @cost_u_i8, i64 0, i32 2), align 2
  %cmp = icmp ugt i8 %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          
  store i8 %0, i8* getelementptr inbounds (%struct.s_unsigned_i8, %struct.s_unsigned_i8* @cost_u_i8, i64 0, i32 0), align 2
  br label %if.end8

if.else:                                          
  %cmp5 = icmp eq i8 %0, %1
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         
  store i8 %0, i8* getelementptr inbounds (%struct.s_unsigned_i8, %struct.s_unsigned_i8* @cost_u_i8, i64 0, i32 0), align 2
  br label %if.end8

if.end8:                                          
  ret void
}

define void @test_i8_2cmp_unsigned_2() {





entry:
  %0 = load i8, i8* getelementptr inbounds (%struct.s_unsigned_i8, %struct.s_unsigned_i8* @cost_u_i8, i64 0, i32 1), align 2
  %1 = load i8, i8* getelementptr inbounds (%struct.s_unsigned_i8, %struct.s_unsigned_i8* @cost_u_i8, i64 0, i32 2), align 2
  %cmp = icmp ugt i8 %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          
  store i8 %0, i8* getelementptr inbounds (%struct.s_unsigned_i8, %struct.s_unsigned_i8* @cost_u_i8, i64 0, i32 0), align 2
  br label %if.end8

if.else:                                          
  %cmp5 = icmp ult i8 %0, %1
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         
  store i8 %1, i8* getelementptr inbounds (%struct.s_unsigned_i8, %struct.s_unsigned_i8* @cost_u_i8, i64 0, i32 0), align 2
  br label %if.end8

if.end8:                                          
  ret void
}






define i1 @foo(float %inl, float %inr) {
  %lval = fptosi float %inl to i8
  %rval = fptosi float %inr to i8
  %sum = icmp eq i8 %lval, %rval
  ret i1 %sum
}
