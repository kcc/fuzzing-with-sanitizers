


target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32"
target triple = "i386-pc-linux-gnu"
@g_3 = common global i8 0, align 1		

define signext i8 @safe_mul_func_int16_t_s_s(i32 %_si1, i8 signext %_si2) nounwind readnone {
entry:
	%tobool = icmp eq i32 %_si1, 0		
	%cmp = icmp sgt i8 %_si2, 0		
	%or.cond = or i1 %cmp, %tobool		
	br i1 %or.cond, label %lor.rhs, label %land.lhs.true3

land.lhs.true3:		
	%conv5 = sext i8 %_si2 to i32		
	%cmp7 = icmp slt i32 %conv5, %_si1		
	br i1 %cmp7, label %cond.end, label %lor.rhs

lor.rhs:		
	%cmp10.not = icmp slt i32 %_si1, 1		
	%or.cond23 = and i1 %cmp, %cmp10.not		
	br i1 %or.cond23, label %lor.end, label %cond.false

lor.end:		
	%tobool19 = icmp ne i8 %_si2, 0		
	%lor.ext = zext i1 %tobool19 to i32		
	br i1 %tobool19, label %cond.end, label %cond.false

cond.false:		
	%conv21 = sext i8 %_si2 to i32		
	br label %cond.end

cond.end:		
	%cond = phi i32 [ %conv21, %cond.false ], [ 1, %land.lhs.true3 ], [ %lor.ext, %lor.end ]		
	%conv22 = trunc i32 %cond to i8		
	ret i8 %conv22
}

define i32 @func_34(i8 signext %p_35) nounwind readonly {
entry:
	%tobool = icmp eq i8 %p_35, 0		
	br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:		
	%tmp1 = load i8, i8* @g_3		
	%tobool3 = icmp eq i8 %tmp1, 0		
	br i1 %tobool3, label %return, label %if.then

if.then:		
	%tmp4 = load i8, i8* @g_3		
	%conv5 = sext i8 %tmp4 to i32		
	ret i32 %conv5

return:		
	ret i32 0
}

define void @foo(i32 %p_5) noreturn nounwind {
entry:
	%cmp = icmp sgt i32 %p_5, 0		
	%call = tail call i32 @safe() nounwind		
	%conv1 = trunc i32 %call to i8		
	%tobool.i = xor i1 %cmp, true		
	%cmp.i = icmp sgt i8 %conv1, 0		
	%or.cond.i = or i1 %cmp.i, %tobool.i		
	br i1 %or.cond.i, label %lor.rhs.i, label %land.lhs.true3.i

land.lhs.true3.i:		
	%xor = zext i1 %cmp to i32		
	%conv5.i = sext i8 %conv1 to i32		
	%cmp7.i = icmp slt i32 %conv5.i, %xor		
	%cmp7.i.not = xor i1 %cmp7.i, true		
	%or.cond23.i = and i1 %cmp.i, %tobool.i		
	%or.cond = and i1 %cmp7.i.not, %or.cond23.i		
	br i1 %or.cond, label %lor.end.i, label %for.inc

lor.rhs.i:		
	%or.cond23.i.old = and i1 %cmp.i, %tobool.i		
	br i1 %or.cond23.i.old, label %lor.end.i, label %for.inc

lor.end.i:		
	%tobool19.i = icmp eq i8 %conv1, 0		
	br label %for.inc

for.inc:		
	br label %for.inc
}

define i32 @func_35(i8 signext %p_35) nounwind readonly {
entry:
  %tobool = icmp eq i8 %p_35, 0                   
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    
  %tmp1 = load i8, i8* @g_3                           
  %tobool3 = icmp eq i8 %tmp1, 0                  
  br i1 %tobool3, label %return, label %if.then

if.then:                                          
  %tmp4 = load i8, i8* @g_3                           
  %conv5 = sext i8 %tmp4 to i32                   
  ret i32 %conv5

return:                                           
  ret i32 0
}

define void @bar(i32 %p_5) noreturn nounwind {
entry:
  %cmp = icmp sgt i32 %p_5, 0                     
  %call = tail call i32 @safe() nounwind          
  %conv1 = trunc i32 %call to i8                  
  %tobool.i = xor i1 %cmp, true                   
  %cmp.i = icmp sgt i8 %conv1, 0                  
  %or.cond.i = or i1 %cmp.i, %tobool.i            
  br i1 %or.cond.i, label %lor.rhs.i, label %land.lhs.true3.i

land.lhs.true3.i:                                 
  %xor = zext i1 %cmp to i32                      
  %conv5.i = sext i8 %conv1 to i32                
  %cmp7.i = icmp slt i32 %conv5.i, %xor           
  %cmp7.i.not = xor i1 %cmp7.i, true              
  %or.cond23.i = and i1 %cmp.i, %tobool.i         
  %or.cond = and i1 %cmp7.i.not, %or.cond23.i     
  br i1 %or.cond, label %lor.end.i, label %for.inc

lor.rhs.i:                                        
  %or.cond23.i.old = and i1 %cmp.i, %tobool.i     
  br i1 %or.cond23.i.old, label %lor.end.i, label %for.inc

lor.end.i:                                        
  %tobool19.i = icmp eq i8 %conv1, 0              
  br label %for.inc

for.inc:                                          
  br label %for.inc
}

declare i32 @safe()
