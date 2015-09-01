



















  
  
  
  
  
  
  


  
  
  
  
    
    
  
  
    
    








define void @branch_into_diamond(i32 addrspace(1)* %out, i32 %a, i32 %b, i32 %c) {
entry:
%0 = icmp ne i32 %a, 0
  br i1 %0, label %diamond_head, label %branch_from

diamond_head:
  %1 = icmp ne i32 %a, 1
  br i1 %1, label %diamond_true, label %diamond_false

branch_from:
  %2 = add i32 %a, 1
  br label %diamond_true

diamond_false:
  %3 = add i32 %a, 2
  br label %done

diamond_true:
  %4 = phi i32 [%2, %branch_from], [%a, %diamond_head]
  
  
  %div0 = udiv i32 %a, %b
  %div1 = udiv i32 %div0, %4
  %div2 = udiv i32 %div1, 11
  %div3 = udiv i32 %div2, %a
  %div4 = udiv i32 %div3, %b
  %div5 = udiv i32 %div4, %c
  %div6 = udiv i32 %div5, %div0
  %div7 = udiv i32 %div6, %div1
  br label %done

done:
  %5 = phi i32 [%3, %diamond_false], [%div7, %diamond_true]
  store i32 %5, i32 addrspace(1)* %out
  ret void
}
