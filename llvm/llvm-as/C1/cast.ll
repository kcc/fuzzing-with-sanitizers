

target datalayout = "E-p:64:64:64-p1:32:32:32-p2:64:64:64-p3:64:64:64-a0:0:8-f32:32:32-f64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-v64:64:64-v128:128:128-n8:16:32:64"

@inbuf = external global [32832 x i8]           

define i32 @test1(i32 %A) {
        %c1 = bitcast i32 %A to i32             
        %c2 = bitcast i32 %c1 to i32            
        ret i32 %c2

}

define i64 @test2(i8 %A) {
        %c1 = zext i8 %A to i16         
        %c2 = zext i16 %c1 to i32               
        %Ret = zext i32 %c2 to i64              
        ret i64 %Ret


}


define i64 @test3(i64 %A) {
        %c1 = trunc i64 %A to i8                
        %c2 = zext i8 %c1 to i64                
        ret i64 %c2


}

define i32 @test4(i32 %A, i32 %B) {
        %COND = icmp slt i32 %A, %B             
        
        %c = zext i1 %COND to i8                
        
        %result = zext i8 %c to i32             
        ret i32 %result



}

define i32 @test5(i1 %B) {
        
        %c = zext i1 %B to i8           
        
        %result = zext i8 %c to i32             
        ret i32 %result


}

define i32 @test6(i64 %A) {
        %c1 = trunc i64 %A to i32               
        %res = bitcast i32 %c1 to i32           
        ret i32 %res


}

define i64 @test7(i1 %A) {
        %c1 = zext i1 %A to i32         
        %res = sext i32 %c1 to i64              
        ret i64 %res


}

define i64 @test8(i8 %A) {
        %c1 = sext i8 %A to i64         
        %res = bitcast i64 %c1 to i64           
        ret i64 %res


}

define i16 @test9(i16 %A) {
        %c1 = sext i16 %A to i32                
        %c2 = trunc i32 %c1 to i16              
        ret i16 %c2

}

define i16 @test10(i16 %A) {
        %c1 = sext i16 %A to i32                
        %c2 = trunc i32 %c1 to i16              
        ret i16 %c2

}

declare void @varargs(i32, ...)

define void @test11(i32* %P) {
        %c = bitcast i32* %P to i16*            
        call void (i32, ...) @varargs( i32 5, i16* %c )
        ret void


}

declare i32 @__gxx_personality_v0(...)
define void @test_invoke_vararg_cast(i32* %a, i32* %b) personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %0 = bitcast i32* %b to i8*
  %1 = bitcast i32* %a to i64*
  invoke void (i32, ...) @varargs(i32 1, i8* %0, i64* %1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      
  ret void

lpad:                                             
  %2 = landingpad { i8*, i32 }
          cleanup
  ret void



}

define i8* @test13(i64 %A) {
        %c = getelementptr [0 x i8], [0 x i8]* bitcast ([32832 x i8]* @inbuf to [0 x i8]*), i64 0, i64 %A             
        ret i8* %c


}

define i1 @test14(i8 %A) {
        %c = bitcast i8 %A to i8                
        %X = icmp ult i8 %c, -128               
        ret i1 %X


}









define i1 @test16(i32* %P) {
        %c = icmp ne i32* %P, null              
        ret i1 %c


}

define i16 @test17(i1 %tmp3) {
        %c = zext i1 %tmp3 to i32               
        %t86 = trunc i32 %c to i16              
        ret i16 %t86


}

define i16 @test18(i8 %tmp3) {
        %c = sext i8 %tmp3 to i32               
        %t86 = trunc i32 %c to i16              
        ret i16 %t86


}

define i1 @test19(i32 %X) {
        %c = sext i32 %X to i64         
        %Z = icmp slt i64 %c, 12345             
        ret i1 %Z


}

define i1 @test20(i1 %B) {
        %c = zext i1 %B to i32          
        %D = icmp slt i32 %c, -1                
        
        ret i1 %D

}

define i32 @test21(i32 %X) {
        %c1 = trunc i32 %X to i8                
        
        %c2 = sext i8 %c1 to i32                
        %RV = and i32 %c2, 255          
        ret i32 %RV


}

define i32 @test22(i32 %X) {
        %c1 = trunc i32 %X to i8                
        
        %c2 = sext i8 %c1 to i32                
        %RV = shl i32 %c2, 24           
        ret i32 %RV


}

define i32 @test23(i32 %X) {
        
        %c1 = trunc i32 %X to i16               
        
        %c2 = zext i16 %c1 to i32               
        ret i32 %c2


}

define i1 @test24(i1 %C) {
        %X = select i1 %C, i32 14, i32 1234             
        
        %c = icmp ne i32 %X, 0          
        ret i1 %c

}

define i32 @test26(float %F) {
        
        %c = fpext float %F to double           
        %D = fptosi double %c to i32            
        ret i32 %D


}

define [4 x float]* @test27([9 x [4 x float]]* %A) {
        %c = bitcast [9 x [4 x float]]* %A to [4 x float]*              
        ret [4 x float]* %c


}

define float* @test28([4 x float]* %A) {
        %c = bitcast [4 x float]* %A to float*          
        ret float* %c


}

define i32 @test29(i32 %c1, i32 %c2) {
        %tmp1 = trunc i32 %c1 to i8             
        %tmp4.mask = trunc i32 %c2 to i8                
        %tmp = or i8 %tmp4.mask, %tmp1          
        %tmp10 = zext i8 %tmp to i32            
        ret i32 %tmp10



}

define i32 @test30(i32 %c1) {
        %c2 = trunc i32 %c1 to i8               
        %c3 = xor i8 %c2, 1             
        %c4 = zext i8 %c3 to i32                
        ret i32 %c4



}

define i1 @test31(i64 %A) {
        %B = trunc i64 %A to i32                
        %C = and i32 %B, 42             
        %D = icmp eq i32 %C, 10         
        ret i1 %D



}

define i32 @test33(i32 %c1) {
        %x = bitcast i32 %c1 to float           
        %y = bitcast float %x to i32            
        ret i32 %y

}

define i16 @test34(i16 %a) {
        %c1 = zext i16 %a to i32                
        %tmp21 = lshr i32 %c1, 8                
        %c2 = trunc i32 %tmp21 to i16           
        ret i16 %c2


}

define i16 @test35(i16 %a) {
        %c1 = bitcast i16 %a to i16             
        %tmp2 = lshr i16 %c1, 8         
        %c2 = bitcast i16 %tmp2 to i16          
        ret i16 %c2


}



define i1 @test36(i32 %a) {
        %b = lshr i32 %a, 31
        %c = trunc i32 %b to i8
        %d = icmp eq i8 %c, 0
        ret i1 %d


}


define i1 @test37(i32 %a) {
        %b = lshr i32 %a, 31
        %c = or i32 %b, 512
        %d = trunc i32 %c to i8
        %e = icmp eq i8 %d, 11
        ret i1 %e

}

define i64 @test38(i32 %a) {
	%1 = icmp eq i32 %a, -2
	%2 = zext i1 %1 to i8
	%3 = xor i8 %2, 1
	%4 = zext i8 %3 to i64
        ret i64 %4



}

define i16 @test39(i16 %a) {
        %tmp = zext i16 %a to i32
        %tmp21 = lshr i32 %tmp, 8
        %tmp5 = shl i32 %tmp, 8
        %tmp.upgrd.32 = or i32 %tmp21, %tmp5
        %tmp.upgrd.3 = trunc i32 %tmp.upgrd.32 to i16
        ret i16 %tmp.upgrd.3



}

define i16 @test40(i16 %a) {
        %tmp = zext i16 %a to i32
        %tmp21 = lshr i32 %tmp, 9
        %tmp5 = shl i32 %tmp, 8
        %tmp.upgrd.32 = or i32 %tmp21, %tmp5
        %tmp.upgrd.3 = trunc i32 %tmp.upgrd.32 to i16
        ret i16 %tmp.upgrd.3





}


define i32* @test41(i32* %tmp1) {
        %tmp64 = bitcast i32* %tmp1 to { i32 }*
        %tmp65 = getelementptr { i32 }, { i32 }* %tmp64, i32 0, i32 0
        ret i32* %tmp65


}

define i32 addrspace(1)* @test41_addrspacecast_smaller(i32* %tmp1) {
  %tmp64 = addrspacecast i32* %tmp1 to { i32 } addrspace(1)*
  %tmp65 = getelementptr { i32 }, { i32 } addrspace(1)* %tmp64, i32 0, i32 0
  ret i32 addrspace(1)* %tmp65



}

define i32* @test41_addrspacecast_larger(i32 addrspace(1)* %tmp1) {
  %tmp64 = addrspacecast i32 addrspace(1)* %tmp1 to { i32 }*
  %tmp65 = getelementptr { i32 }, { i32 }* %tmp64, i32 0, i32 0
  ret i32* %tmp65



}

define i32 @test42(i32 %X) {
        %Y = trunc i32 %X to i8         
        %Z = zext i8 %Y to i32          
        ret i32 %Z


}


define zeroext i64 @test43(i8 zeroext %on_off) nounwind readonly {
	%A = zext i8 %on_off to i32
	%B = add i32 %A, -1
	%C = sext i32 %B to i64
	ret i64 %C  




}

define i64 @test44(i8 %T) {
 %A = zext i8 %T to i16
 %B = or i16 %A, 1234
 %C = zext i16 %B to i64
 ret i64 %C




}

define i64 @test45(i8 %A, i64 %Q) {
 %D = trunc i64 %Q to i32  
 %B = sext i8 %A to i32
 %C = or i32 %B, %D
 %E = zext i32 %C to i64 
 ret i64 %E





}


define i64 @test46(i64 %A) {
 %B = trunc i64 %A to i32
 %C = and i32 %B, 42
 %D = shl i32 %C, 8
 %E = zext i32 %D to i64 
 ret i64 %E




}

define i64 @test47(i8 %A) {
 %B = sext i8 %A to i32
 %C = or i32 %B, 42
 %E = zext i32 %C to i64 
 ret i64 %E





}

define i64 @test48(i8 %A, i8 %a) {
  %b = zext i8 %a to i32
  %B = zext i8 %A to i32
  %C = shl i32 %B, 8
  %D = or i32 %C, %b
  %E = zext i32 %D to i64
  ret i64 %E






}

define i64 @test49(i64 %A) {
 %B = trunc i64 %A to i32
 %C = or i32 %B, 1
 %D = sext i32 %C to i64 
 ret i64 %D





}

define i64 @test50(i64 %A) {
  %a = lshr i64 %A, 2
  %B = trunc i64 %a to i32
  %D = add i32 %B, -1
  %E = sext i32 %D to i64
  ret i64 %E







}

define i64 @test51(i64 %A, i1 %cond) {
  %B = trunc i64 %A to i32
  %C = and i32 %B, -2
  %D = or i32 %B, 1
  %E = select i1 %cond, i32 %C, i32 %D
  %F = sext i32 %E to i64
  ret i64 %F







}

define i32 @test52(i64 %A) {
  %B = trunc i64 %A to i16
  %C = or i16 %B, -32574
  %D = and i16 %C, -25350
  %E = zext i16 %D to i32
  ret i32 %E





}

define i64 @test53(i32 %A) {
  %B = trunc i32 %A to i16
  %C = or i16 %B, -32574
  %D = and i16 %C, -25350
  %E = zext i16 %D to i64
  ret i64 %E





}

define i32 @test54(i64 %A) {
  %B = trunc i64 %A to i16
  %C = or i16 %B, -32574
  %D = and i16 %C, -25350
  %E = sext i16 %D to i32
  ret i32 %E





}

define i64 @test55(i32 %A) {
  %B = trunc i32 %A to i16
  %C = or i16 %B, -32574
  %D = and i16 %C, -25350
  %E = sext i16 %D to i64
  ret i64 %E





}

define i64 @test56(i16 %A) nounwind {
  %tmp353 = sext i16 %A to i32
  %tmp354 = lshr i32 %tmp353, 5
  %tmp355 = zext i32 %tmp354 to i64
  ret i64 %tmp355





}

define i64 @test57(i64 %A) nounwind {
 %B = trunc i64 %A to i32
 %C = lshr i32 %B, 8
 %E = zext i32 %C to i64
 ret i64 %E




}

define i64 @test58(i64 %A) nounwind {
 %B = trunc i64 %A to i32
 %C = lshr i32 %B, 8
 %D = or i32 %C, 128
 %E = zext i32 %D to i64
 ret i64 %E
 





}

define i64 @test59(i8 %A, i8 %B) nounwind {
  %C = zext i8 %A to i32
  %D = shl i32 %C, 4
  %E = and i32 %D, 48
  %F = zext i8 %B to i32
  %G = lshr i32 %F, 4
  %H = or i32 %G, %E
  %I = zext i32 %H to i64
  ret i64 %I






}

define <3 x i32> @test60(<4 x i32> %call4) nounwind {
  %tmp11 = bitcast <4 x i32> %call4 to i128
  %tmp9 = trunc i128 %tmp11 to i96
  %tmp10 = bitcast i96 %tmp9 to <3 x i32>
  ret <3 x i32> %tmp10
  



}

define <4 x i32> @test61(<3 x i32> %call4) nounwind {
  %tmp11 = bitcast <3 x i32> %call4 to i96
  %tmp9 = zext i96 %tmp11 to i128
  %tmp10 = bitcast i128 %tmp9 to <4 x i32>
  ret <4 x i32> %tmp10



}

define <4 x i32> @test62(<3 x float> %call4) nounwind {
  %tmp11 = bitcast <3 x float> %call4 to i96
  %tmp9 = zext i96 %tmp11 to i128
  %tmp10 = bitcast i128 %tmp9 to <4 x i32>
  ret <4 x i32> %tmp10




}


define <2 x float> @test63(i64 %tmp8) nounwind {
entry:
  %a = bitcast i64 %tmp8 to <2 x i32>           
  %vcvt.i = uitofp <2 x i32> %a to <2 x float>  
  ret <2 x float> %vcvt.i



}

define <4 x float> @test64(<4 x float> %c) nounwind {
  %t0 = bitcast <4 x float> %c to <4 x i32>
  %t1 = bitcast <4 x i32> %t0 to <4 x float>
  ret <4 x float> %t1


}

define <4 x float> @test65(<4 x float> %c) nounwind {
  %t0 = bitcast <4 x float> %c to <2 x double>
  %t1 = bitcast <2 x double> %t0 to <4 x float>
  ret <4 x float> %t1


}

define <2 x float> @test66(<2 x float> %c) nounwind {
  %t0 = bitcast <2 x float> %c to double
  %t1 = bitcast double %t0 to <2 x float>
  ret <2 x float> %t1


}

define float @test2c() {
  ret float extractelement (<2 x float> bitcast (double bitcast (<2 x float> <float -1.000000e+00, float -1.000000e+00> to double) to <2 x float>), i32 0)


}

define i64 @test_mmx(<2 x i32> %c) nounwind {
  %A = bitcast <2 x i32> %c to x86_mmx
  %B = bitcast x86_mmx %A to <2 x i32>
  %C = bitcast <2 x i32> %B to i64
  ret i64 %C


}

define i64 @test_mmx_const(<2 x i32> %c) nounwind {
  %A = bitcast <2 x i32> zeroinitializer to x86_mmx
  %B = bitcast x86_mmx %A to <2 x i32>
  %C = bitcast <2 x i32> %B to i64
  ret i64 %C


}


define i1 @test67(i1 %a, i32 %b) {
  %tmp2 = zext i1 %a to i32
  %conv6 = xor i32 %tmp2, 1
  %and = and i32 %b, %conv6
  %sext = shl nuw nsw i32 %and, 24
  %neg.i = xor i32 %sext, -16777216
  %conv.i.i = ashr exact i32 %neg.i, 24
  %trunc = trunc i32 %conv.i.i to i8
  %tobool.i = icmp eq i8 %trunc, 0
  ret i1 %tobool.i


}

%s = type { i32, i32, i32 }

define %s @test68(%s *%p, i64 %i) {

  %o = mul i64 %i, 12
  %q = bitcast %s* %p to i8*
  %pp = getelementptr inbounds i8, i8* %q, i64 %o

  %r = bitcast i8* %pp to %s*
  %l = load %s, %s* %r

  ret %s %l

}


define %s @test68_addrspacecast(%s* %p, i64 %i) {




  %o = mul i64 %i, 12
  %q = addrspacecast %s* %p to i8 addrspace(2)*
  %pp = getelementptr inbounds i8, i8 addrspace(2)* %q, i64 %o
  %r = addrspacecast i8 addrspace(2)* %pp to %s*
  %l = load %s, %s* %r
  ret %s %l
}

define %s @test68_addrspacecast_2(%s* %p, i64 %i) {





  %o = mul i64 %i, 12
  %q = addrspacecast %s* %p to i8 addrspace(2)*
  %pp = getelementptr inbounds i8, i8 addrspace(2)* %q, i64 %o
  %r = addrspacecast i8 addrspace(2)* %pp to %s addrspace(1)*
  %l = load %s, %s addrspace(1)* %r
  ret %s %l
}

define %s @test68_as1(%s addrspace(1)* %p, i32 %i) {

  %o = mul i32 %i, 12
  %q = bitcast %s addrspace(1)* %p to i8 addrspace(1)*
  %pp = getelementptr inbounds i8, i8 addrspace(1)* %q, i32 %o

  %r = bitcast i8 addrspace(1)* %pp to %s addrspace(1)*
  %l = load %s, %s addrspace(1)* %r

  ret %s %l

}

define double @test69(double *%p, i64 %i) {

  %o = shl nsw i64 %i, 3
  %q = bitcast double* %p to i8*
  %pp = getelementptr inbounds i8, i8* %q, i64 %o

  %r = bitcast i8* %pp to double*
  %l = load double, double* %r

  ret double %l

}

define %s @test70(%s *%p, i64 %i) {

  %o = mul nsw i64 %i, 36

  %q = bitcast %s* %p to i8*
  %pp = getelementptr inbounds i8, i8* %q, i64 %o

  %r = bitcast i8* %pp to %s*
  %l = load %s, %s* %r

  ret %s %l

}

define double @test71(double *%p, i64 %i) {

  %o = shl i64 %i, 5

  %q = bitcast double* %p to i8*
  %pp = getelementptr i8, i8* %q, i64 %o

  %r = bitcast i8* %pp to double*
  %l = load double, double* %r

  ret double %l

}

define double @test72(double *%p, i32 %i) {

  %so = shl nsw i32 %i, 3
  %o = sext i32 %so to i64

  %q = bitcast double* %p to i8*
  %pp = getelementptr inbounds i8, i8* %q, i64 %o

  %r = bitcast i8* %pp to double*
  %l = load double, double* %r

  ret double %l

}

define double @test73(double *%p, i128 %i) {

  %lo = shl nsw i128 %i, 3
  %o = trunc i128 %lo to i64

  %q = bitcast double* %p to i8*
  %pp = getelementptr inbounds i8, i8* %q, i64 %o

  %r = bitcast i8* %pp to double*
  %l = load double, double* %r

  ret double %l

}

define double @test74(double *%p, i64 %i) {

  %q = bitcast double* %p to i64*
  %pp = getelementptr inbounds i64, i64* %q, i64 %i

  %r = bitcast i64* %pp to double*
  %l = load double, double* %r

  ret double %l

}

define i32* @test75(i32* %p, i32 %x) {

  %y = shl i32 %x, 3

  %z = sext i32 %y to i64

  %q = bitcast i32* %p to i8*
  %r = getelementptr i8, i8* %q, i64 %z
  %s = bitcast i8* %r to i32*
  ret i32* %s
}

define %s @test76(%s *%p, i64 %i, i64 %j) {

  %o = mul i64 %i, 12
  %o2 = mul nsw i64 %o, %j

  %q = bitcast %s* %p to i8*
  %pp = getelementptr inbounds i8, i8* %q, i64 %o2

  %r = bitcast i8* %pp to %s*
  %l = load %s, %s* %r

  ret %s %l

}

define %s @test77(%s *%p, i64 %i, i64 %j) {

  %o = mul nsw i64 %i, 36
  %o2 = mul nsw i64 %o, %j


  %q = bitcast %s* %p to i8*
  %pp = getelementptr inbounds i8, i8* %q, i64 %o2

  %r = bitcast i8* %pp to %s*
  %l = load %s, %s* %r

  ret %s %l

}

define %s @test78(%s *%p, i64 %i, i64 %j, i32 %k, i32 %l, i128 %m, i128 %n) {

  %a = mul nsw i32 %k, 36

  %b = mul nsw i32 %a, %l

  %c = sext i32 %b to i128

  %d = mul nsw i128 %c, %m

  %e = mul i128 %d, %n

  %f = trunc i128 %e to i64

  %g = mul nsw i64 %f, %i

  %h = mul nsw i64 %g, %j

  %q = bitcast %s* %p to i8*
  %pp = getelementptr inbounds i8, i8* %q, i64 %h

  %r = bitcast i8* %pp to %s*
  %load = load %s, %s* %r

  ret %s %load

}

define %s @test79(%s *%p, i64 %i, i32 %j) {

  %a = mul nsw i64 %i, 36

  %b = trunc i64 %a to i32
  %c = mul i32 %b, %j
  %q = bitcast %s* %p to i8*

  %pp = getelementptr inbounds i8, i8* %q, i32 %c
  %r = bitcast i8* %pp to %s*
  %l = load %s, %s* %r
  ret %s %l
}

define double @test80([100 x double]* %p, i32 %i) {

  %tmp = shl nsw i32 %i, 3

  %q = bitcast [100 x double]* %p to i8*
  %pp = getelementptr i8, i8* %q, i32 %tmp

  %r = bitcast i8* %pp to double*
  %l = load double, double* %r

  ret double %l

}

define double @test80_addrspacecast([100 x double] addrspace(1)* %p, i32 %i) {




  %tmp = shl nsw i32 %i, 3
  %q = addrspacecast [100 x double] addrspace(1)* %p to i8 addrspace(2)*
  %pp = getelementptr i8, i8 addrspace(2)* %q, i32 %tmp
  %r = addrspacecast i8 addrspace(2)* %pp to double addrspace(1)*
  %l = load double, double addrspace(1)* %r
  ret double %l
}

define double @test80_addrspacecast_2([100 x double] addrspace(1)* %p, i32 %i) {





  %tmp = shl nsw i32 %i, 3
  %q = addrspacecast [100 x double] addrspace(1)* %p to i8 addrspace(2)*
  %pp = getelementptr i8, i8 addrspace(2)* %q, i32 %tmp
  %r = addrspacecast i8 addrspace(2)* %pp to double addrspace(3)*
  %l = load double, double addrspace(3)* %r
  ret double %l
}

define double @test80_as1([100 x double] addrspace(1)* %p, i16 %i) {

  %tmp = shl nsw i16 %i, 3

  %q = bitcast [100 x double] addrspace(1)* %p to i8 addrspace(1)*
  %pp = getelementptr i8, i8 addrspace(1)* %q, i16 %tmp

  %r = bitcast i8 addrspace(1)* %pp to double addrspace(1)*
  %l = load double, double addrspace(1)* %r

  ret double %l

}

define double @test81(double *%p, float %f) {
  %i = fptosi float %f to i64
  %q = bitcast double* %p to i8*
  %pp = getelementptr i8, i8* %q, i64 %i
  %r = bitcast i8* %pp to double*
  %l = load double, double* %r
  ret double %l
}

define i64 @test82(i64 %A) nounwind {
  %B = trunc i64 %A to i32
  %C = lshr i32 %B, 8
  %D = shl i32 %C, 9
  %E = zext i32 %D to i64
  ret i64 %E





}


define i64 @test83(i16 %a, i64 %k) {
  %conv = sext i16 %a to i32
  %sub = add nsw i64 %k, -1
  %sh_prom = trunc i64 %sub to i32
  %shl = shl i32 %conv, %sh_prom
  %sh_prom1 = zext i32 %shl to i64
  ret i64 %sh_prom1





}

define i8 @test84(i32 %a) {
  %add = add nsw i32 %a, -16777216
  %shr = lshr exact i32 %add, 23
  %trunc = trunc i32 %shr to i8
  ret i8 %trunc





}

define i8 @test85(i32 %a) {
  %add = add nuw i32 %a, -16777216
  %shr = lshr exact i32 %add, 23
  %trunc = trunc i32 %shr to i8
  ret i8 %trunc





}



define i8 @overflow_fptosi() {
  %i = fptosi double 1.56e+02 to i8
  ret i8 %i


}

define i8 @overflow_fptoui() {
  %i = fptoui double 2.56e+02 to i8
  ret i8 %i


}




define float @overflow_uitofp() {
  %i = uitofp i130 400000000000000000000000000000000000000 to float
  ret float %i


}

define float @overflow_sitofp() {
  %i = sitofp i130 400000000000000000000000000000000000000 to float
  ret float %i


}

define i32 @PR21388(i32* %v) {
  %icmp = icmp slt i32* %v, null
  %sext = sext i1 %icmp to i32
  ret i32 %sext




}

define float @sitofp_zext(i16 %a) {



  %zext = zext i16 %a to i32
  %sitofp = sitofp i32 %zext to float
  ret float %sitofp
}

define i1 @PR23309(i32 %A, i32 %B) {





  %add = add i32 %A, -4
  %sub = sub nsw i32 %add, %B
  %trunc = trunc i32 %sub to i1
  ret i1 %trunc
}

define i1 @PR23309v2(i32 %A, i32 %B) {





  %add = add i32 %A, -4
  %sub = add nuw i32 %add, %B
  %trunc = trunc i32 %sub to i1
  ret i1 %trunc
}
