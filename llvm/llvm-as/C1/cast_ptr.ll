


target datalayout = "p:32:32-p1:32:32-p2:16:16"

@global = global i8 0








define i8* @test1(i8* %t) {
        %tmpc = ptrtoint i8* %t to i32          
        %tmpa = add i32 %tmpc, 32               
        %tv = inttoptr i32 %tmpa to i8*         
        ret i8* %tv
}




define i1 @test2(i8* %a, i8* %b) {
        %tmpa = ptrtoint i8* %a to i32          
        %tmpb = ptrtoint i8* %b to i32          
        %r = icmp eq i32 %tmpa, %tmpb           
        ret i1 %r
}




define i1 @test2_as2_same_int(i8 addrspace(2)* %a, i8 addrspace(2)* %b) {
  %tmpa = ptrtoint i8 addrspace(2)* %a to i16
  %tmpb = ptrtoint i8 addrspace(2)* %b to i16
  %r = icmp eq i16 %tmpa, %tmpb
  ret i1 %r
}




define i1 @test2_as2_larger(i8 addrspace(2)* %a, i8 addrspace(2)* %b) {
  %tmpa = ptrtoint i8 addrspace(2)* %a to i32
  %tmpb = ptrtoint i8 addrspace(2)* %b to i32
  %r = icmp eq i32 %tmpa, %tmpb
  ret i1 %r
}




define i1 @test2_diff_as(i8* %p, i8 addrspace(1)* %q) {
  %i0 = ptrtoint i8* %p to i32
  %i1 = ptrtoint i8 addrspace(1)* %q to i32
  %r0 = icmp sge i32 %i0, %i1
  ret i1 %r0
}




define i1 @test2_diff_as_global(i8 addrspace(1)* %q) {
  %i0 = ptrtoint i8* @global to i32
  %i1 = ptrtoint i8 addrspace(1)* %q to i32
  %r0 = icmp sge i32 %i1, %i0
  ret i1 %r0
}




define i1 @test3(i8* %a) {
        %tmpa = ptrtoint i8* %a to i32
        %r = icmp eq i32 %tmpa, ptrtoint (i8* @global to i32)
        ret i1 %r
}

define i1 @test4(i32 %A) {
  %B = inttoptr i32 %A to i8*
  %C = icmp eq i8* %B, null
  ret i1 %C



}

define i1 @test4_as2(i16 %A) {



  %B = inttoptr i16 %A to i8 addrspace(2)*
  %C = icmp eq i8 addrspace(2)* %B, null
  ret i1 %C
}





        %op = type { float }
        %unop = type { i32 }
@Array = internal constant [1 x %op* (%op*)*] [ %op* (%op*)* @foo ]             

declare %op* @foo(%op* %X)

define %unop* @test5(%op* %O) {
        %tmp = load %unop* (%op*)*, %unop* (%op*)** bitcast ([1 x %op* (%op*)*]* @Array to %unop* (%op*)**)
        %tmp.2 = call %unop* %tmp( %op* %O )            
        ret %unop* %tmp.2


}






define i8 @test6(i8 addrspace(1)* %source) {
entry:
  %arrayidx223 = addrspacecast i8 addrspace(1)* %source to i8*
  %tmp4 = load i8, i8* %arrayidx223
  ret i8 %tmp4


}
