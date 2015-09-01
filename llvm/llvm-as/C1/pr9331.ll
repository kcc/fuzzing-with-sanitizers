

define void @func(i8 zeroext %p_44) nounwind {
entry:
  br i1 false, label %for.cond2, label %if.end50

for.cond2:                                        
  %p_44.addr.1 = phi i8 [ %p_44.addr.1, %lor.end ], [ %p_44, %entry ], [ %p_44.addr.1, %for.inc46 ]
  br i1 undef, label %for.inc46, label %for.body5

for.body5:                                        
  br i1 undef, label %lbl_465, label %if.then9

if.then9:                                         
  br label %return

lbl_465:                                          
  %tobool19 = icmp eq i8 undef, 0
  br i1 %tobool19, label %if.end21, label %lbl_465

if.end21:                                         
  %conv23 = zext i8 %p_44.addr.1 to i64
  %xor = xor i64 %conv23, 1
  %tobool.i = icmp eq i64 %conv23, 0
  br i1 %tobool.i, label %cond.false.i, label %safe_mod_func_uint64_t_u_u.exit

cond.false.i:                                     
  %div.i = udiv i64 %xor, %conv23
  br label %safe_mod_func_uint64_t_u_u.exit

safe_mod_func_uint64_t_u_u.exit:                  
  %cond.i = phi i64 [ %div.i, %cond.false.i ], [ %conv23, %if.end21 ]
  %tobool28 = icmp eq i64 %cond.i, 0
  br i1 %tobool28, label %lor.rhs, label %lor.end

lor.rhs:                                          
  br label %lor.end

lor.end:                                          
  br label %for.cond2

for.inc46:                                        
  br label %for.cond2

if.end50:                                         
  br label %return

return:                                           
  ret void
}
