












define i1 @lt_signed_to_large_unsigned(i8 %SB) {
        %Y = sext i8 %SB to i32         
        %C = icmp ult i32 %Y, 1024              
        ret i1 %C


}

define i1 @lt_signed_to_large_signed(i8 %SB) {
        %Y = sext i8 %SB to i32         
        %C = icmp slt i32 %Y, 1024              
        ret i1 %C

}

define i1 @lt_signed_to_large_negative(i8 %SB) {
        %Y = sext i8 %SB to i32         
        %C = icmp slt i32 %Y, -1024             
        ret i1 %C

}

define i1 @lt_signed_to_small_unsigned(i8 %SB) {
        %Y = sext i8 %SB to i32
        %C = icmp ult i32 %Y, 17
        ret i1 %C


}

define i1 @lt_signed_to_small_signed(i8 %SB) {
        %Y = sext i8 %SB to i32         
        %C = icmp slt i32 %Y, 17                
        ret i1 %C


}
define i1 @lt_signed_to_small_negative(i8 %SB) {
        %Y = sext i8 %SB to i32         
        %C = icmp slt i32 %Y, -17               
        ret i1 %C


}

define i1 @lt_unsigned_to_large_unsigned(i8 %SB) {
        %Y = zext i8 %SB to i32         
        %C = icmp ult i32 %Y, 1024              
        ret i1 %C

}

define i1 @lt_unsigned_to_large_signed(i8 %SB) {
        %Y = zext i8 %SB to i32         
        %C = icmp slt i32 %Y, 1024              
        ret i1 %C

}

define i1 @lt_unsigned_to_large_negative(i8 %SB) {
        %Y = zext i8 %SB to i32         
        %C = icmp slt i32 %Y, -1024             
        ret i1 %C

}

define i1 @lt_unsigned_to_small_unsigned(i8 %SB) {
        %Y = zext i8 %SB to i32         
        %C = icmp ult i32 %Y, 17                
        ret i1 %C


}

define i1 @lt_unsigned_to_small_signed(i8 %SB) {
        %Y = zext i8 %SB to i32
        %C = icmp slt i32 %Y, 17
        ret i1 %C


}

define i1 @lt_unsigned_to_small_negative(i8 %SB) {
        %Y = zext i8 %SB to i32         
        %C = icmp slt i32 %Y, -17               
        ret i1 %C

}

define i1 @gt_signed_to_large_unsigned(i8 %SB) {
        %Y = sext i8 %SB to i32         
        %C = icmp ugt i32 %Y, 1024              
        ret i1 %C


}

define i1 @gt_signed_to_large_signed(i8 %SB) {
        %Y = sext i8 %SB to i32         
        %C = icmp sgt i32 %Y, 1024              
        ret i1 %C

}

define i1 @gt_signed_to_large_negative(i8 %SB) {
        %Y = sext i8 %SB to i32         
        %C = icmp sgt i32 %Y, -1024             
        ret i1 %C

}

define i1 @gt_signed_to_small_unsigned(i8 %SB) {
        %Y = sext i8 %SB to i32
        %C = icmp ugt i32 %Y, 17
        ret i1 %C


}

define i1 @gt_signed_to_small_signed(i8 %SB) {
        %Y = sext i8 %SB to i32         
        %C = icmp sgt i32 %Y, 17                
        ret i1 %C


}

define i1 @gt_signed_to_small_negative(i8 %SB) {
        %Y = sext i8 %SB to i32         
        %C = icmp sgt i32 %Y, -17               
        ret i1 %C


}

define i1 @gt_unsigned_to_large_unsigned(i8 %SB) {
        %Y = zext i8 %SB to i32         
        %C = icmp ugt i32 %Y, 1024              
        ret i1 %C

}

define i1 @gt_unsigned_to_large_signed(i8 %SB) {
        %Y = zext i8 %SB to i32         
        %C = icmp sgt i32 %Y, 1024              
        ret i1 %C

}

define i1 @gt_unsigned_to_large_negative(i8 %SB) {
        %Y = zext i8 %SB to i32         
        %C = icmp sgt i32 %Y, -1024             
        ret i1 %C

}

define i1 @gt_unsigned_to_small_unsigned(i8 %SB) {
        %Y = zext i8 %SB to i32         
        %C = icmp ugt i32 %Y, 17                
        ret i1 %C


}

define i1 @gt_unsigned_to_small_signed(i8 %SB) {
        %Y = zext i8 %SB to i32
        %C = icmp sgt i32 %Y, 17
        ret i1 %C


}

define i1 @gt_unsigned_to_small_negative(i8 %SB) {
        %Y = zext i8 %SB to i32         
        %C = icmp sgt i32 %Y, -17               
        ret i1 %C

}

