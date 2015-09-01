

define i32 @abs_abs_x01(i32 %x) {
  %cmp = icmp sgt i32 %x, -1
  %sub = sub nsw i32 0, %x
  %cond = select i1 %cmp, i32 %x, i32 %sub
  %cmp1 = icmp sgt i32 %cond, -1
  %sub16 = sub nsw i32 0, %cond
  %cond18 = select i1 %cmp1, i32 %cond, i32 %sub16
  ret i32 %cond18





}

define i32 @abs_abs_x02(i32 %x) {
  %cmp = icmp sgt i32 %x, 0
  %sub = sub nsw i32 0, %x
  %cond = select i1 %cmp, i32 %x, i32 %sub
  %cmp1 = icmp sgt i32 %cond, -1
  %sub16 = sub nsw i32 0, %cond
  %cond18 = select i1 %cmp1, i32 %cond, i32 %sub16
  ret i32 %cond18





}

define i32 @abs_abs_x03(i32 %x) {
  %cmp = icmp slt i32 %x, 0
  %sub = sub nsw i32 0, %x
  %cond = select i1 %cmp, i32 %sub, i32 %x
  %cmp1 = icmp sgt i32 %cond, -1
  %sub16 = sub nsw i32 0, %cond
  %cond18 = select i1 %cmp1, i32 %cond, i32 %sub16
  ret i32 %cond18





}

define i32 @abs_abs_x04(i32 %x) {
  %cmp = icmp slt i32 %x, 1
  %sub = sub nsw i32 0, %x
  %cond = select i1 %cmp, i32 %sub, i32 %x
  %cmp1 = icmp sgt i32 %cond, -1
  %sub16 = sub nsw i32 0, %cond
  %cond18 = select i1 %cmp1, i32 %cond, i32 %sub16
  ret i32 %cond18





}

define i32 @abs_abs_x05(i32 %x) {
  %cmp = icmp sgt i32 %x, -1
  %sub = sub nsw i32 0, %x
  %cond = select i1 %cmp, i32 %x, i32 %sub
  %cmp1 = icmp sgt i32 %cond, 0
  %sub16 = sub nsw i32 0, %cond
  %cond18 = select i1 %cmp1, i32 %cond, i32 %sub16
  ret i32 %cond18





}

define i32 @abs_abs_x06(i32 %x) {
  %cmp = icmp sgt i32 %x, 0
  %sub = sub nsw i32 0, %x
  %cond = select i1 %cmp, i32 %x, i32 %sub
  %cmp1 = icmp sgt i32 %cond, 0
  %sub16 = sub nsw i32 0, %cond
  %cond18 = select i1 %cmp1, i32 %cond, i32 %sub16
  ret i32 %cond18





}

define i32 @abs_abs_x07(i32 %x) {
  %cmp = icmp slt i32 %x, 0
  %sub = sub nsw i32 0, %x
  %cond = select i1 %cmp, i32 %sub, i32 %x
  %cmp1 = icmp sgt i32 %cond, 0
  %sub16 = sub nsw i32 0, %cond
  %cond18 = select i1 %cmp1, i32 %cond, i32 %sub16
  ret i32 %cond18





}

define i32 @abs_abs_x08(i32 %x) {
  %cmp = icmp slt i32 %x, 1
  %sub = sub nsw i32 0, %x
  %cond = select i1 %cmp, i32 %sub, i32 %x
  %cmp1 = icmp sgt i32 %cond, 0
  %sub16 = sub nsw i32 0, %cond
  %cond18 = select i1 %cmp1, i32 %cond, i32 %sub16
  ret i32 %cond18





}

define i32 @abs_abs_x09(i32 %x) {
  %cmp = icmp sgt i32 %x, -1
  %sub = sub nsw i32 0, %x
  %cond = select i1 %cmp, i32 %x, i32 %sub
  %cmp1 = icmp slt i32 %cond, 0
  %sub9 = sub nsw i32 0, %cond
  %cond18 = select i1 %cmp1, i32 %sub9, i32 %cond
  ret i32 %cond18





}

define i32 @abs_abs_x10(i32 %x) {
  %cmp = icmp sgt i32 %x, 0
  %sub = sub nsw i32 0, %x
  %cond = select i1 %cmp, i32 %x, i32 %sub
  %cmp1 = icmp slt i32 %cond, 0
  %sub9 = sub nsw i32 0, %cond
  %cond18 = select i1 %cmp1, i32 %sub9, i32 %cond
  ret i32 %cond18





}

define i32 @abs_abs_x11(i32 %x) {
  %cmp = icmp slt i32 %x, 0
  %sub = sub nsw i32 0, %x
  %cond = select i1 %cmp, i32 %sub, i32 %x
  %cmp1 = icmp slt i32 %cond, 0
  %sub9 = sub nsw i32 0, %cond
  %cond18 = select i1 %cmp1, i32 %sub9, i32 %cond
  ret i32 %cond18





}

define i32 @abs_abs_x12(i32 %x) {
  %cmp = icmp slt i32 %x, 1
  %sub = sub nsw i32 0, %x
  %cond = select i1 %cmp, i32 %sub, i32 %x
  %cmp1 = icmp slt i32 %cond, 0
  %sub9 = sub nsw i32 0, %cond
  %cond18 = select i1 %cmp1, i32 %sub9, i32 %cond
  ret i32 %cond18





}

define i32 @abs_abs_x13(i32 %x) {
  %cmp = icmp sgt i32 %x, -1
  %sub = sub nsw i32 0, %x
  %cond = select i1 %cmp, i32 %x, i32 %sub
  %cmp1 = icmp slt i32 %cond, 1
  %sub9 = sub nsw i32 0, %cond
  %cond18 = select i1 %cmp1, i32 %sub9, i32 %cond
  ret i32 %cond18





}

define i32 @abs_abs_x14(i32 %x) {
  %cmp = icmp sgt i32 %x, 0
  %sub = sub nsw i32 0, %x
  %cond = select i1 %cmp, i32 %x, i32 %sub
  %cmp1 = icmp slt i32 %cond, 1
  %sub9 = sub nsw i32 0, %cond
  %cond18 = select i1 %cmp1, i32 %sub9, i32 %cond
  ret i32 %cond18





}

define i32 @abs_abs_x15(i32 %x) {
  %cmp = icmp slt i32 %x, 0
  %sub = sub nsw i32 0, %x
  %cond = select i1 %cmp, i32 %sub, i32 %x
  %cmp1 = icmp slt i32 %cond, 1
  %sub9 = sub nsw i32 0, %cond
  %cond18 = select i1 %cmp1, i32 %sub9, i32 %cond
  ret i32 %cond18





}

define i32 @abs_abs_x16(i32 %x) {
  %cmp = icmp slt i32 %x, 1
  %sub = sub nsw i32 0, %x
  %cond = select i1 %cmp, i32 %sub, i32 %x
  %cmp1 = icmp slt i32 %cond, 1
  %sub9 = sub nsw i32 0, %cond
  %cond18 = select i1 %cmp1, i32 %sub9, i32 %cond
  ret i32 %cond18





}

define i32 @nabs_nabs_x01(i32 %x) {
  %cmp = icmp sgt i32 %x, -1
  %sub = sub nsw i32 0, %x
  %cond = select i1 %cmp, i32 %sub, i32 %x
  %cmp1 = icmp sgt i32 %cond, -1
  %sub9 = sub nsw i32 0, %cond
  %cond18 = select i1 %cmp1, i32 %sub9, i32 %cond
  ret i32 %cond18





}

define i32 @nabs_nabs_x02(i32 %x) {
  %cmp = icmp sgt i32 %x, 0
  %sub = sub nsw i32 0, %x
  %cond = select i1 %cmp, i32 %sub, i32 %x
  %cmp1 = icmp sgt i32 %cond, -1
  %sub9 = sub nsw i32 0, %cond
  %cond18 = select i1 %cmp1, i32 %sub9, i32 %cond
  ret i32 %cond18





}

define i32 @nabs_nabs_x03(i32 %x) {
  %cmp = icmp slt i32 %x, 0
  %sub = sub nsw i32 0, %x
  %cond = select i1 %cmp, i32 %x, i32 %sub
  %cmp1 = icmp sgt i32 %cond, -1
  %sub9 = sub nsw i32 0, %cond
  %cond18 = select i1 %cmp1, i32 %sub9, i32 %cond
  ret i32 %cond18





}

define i32 @nabs_nabs_x04(i32 %x) {
  %cmp = icmp slt i32 %x, 1
  %sub = sub nsw i32 0, %x
  %cond = select i1 %cmp, i32 %x, i32 %sub
  %cmp1 = icmp sgt i32 %cond, -1
  %sub9 = sub nsw i32 0, %cond
  %cond18 = select i1 %cmp1, i32 %sub9, i32 %cond
  ret i32 %cond18





}

define i32 @nabs_nabs_x05(i32 %x) {
  %cmp = icmp sgt i32 %x, -1
  %sub = sub nsw i32 0, %x
  %cond = select i1 %cmp, i32 %sub, i32 %x
  %cmp1 = icmp sgt i32 %cond, 0
  %sub9 = sub nsw i32 0, %cond
  %cond18 = select i1 %cmp1, i32 %sub9, i32 %cond
  ret i32 %cond18





}

define i32 @nabs_nabs_x06(i32 %x) {
  %cmp = icmp sgt i32 %x, 0
  %sub = sub nsw i32 0, %x
  %cond = select i1 %cmp, i32 %sub, i32 %x
  %cmp1 = icmp sgt i32 %cond, 0
  %sub9 = sub nsw i32 0, %cond
  %cond18 = select i1 %cmp1, i32 %sub9, i32 %cond
  ret i32 %cond18





}

define i32 @nabs_nabs_x07(i32 %x) {
  %cmp = icmp slt i32 %x, 0
  %sub = sub nsw i32 0, %x
  %cond = select i1 %cmp, i32 %x, i32 %sub
  %cmp1 = icmp sgt i32 %cond, 0
  %sub9 = sub nsw i32 0, %cond
  %cond18 = select i1 %cmp1, i32 %sub9, i32 %cond
  ret i32 %cond18





}

define i32 @nabs_nabs_x08(i32 %x) {
  %cmp = icmp slt i32 %x, 1
  %sub = sub nsw i32 0, %x
  %cond = select i1 %cmp, i32 %x, i32 %sub
  %cmp1 = icmp sgt i32 %cond, 0
  %sub9 = sub nsw i32 0, %cond
  %cond18 = select i1 %cmp1, i32 %sub9, i32 %cond
  ret i32 %cond18





}

define i32 @nabs_nabs_x09(i32 %x) {
  %cmp = icmp sgt i32 %x, -1
  %sub = sub nsw i32 0, %x
  %cond = select i1 %cmp, i32 %sub, i32 %x
  %cmp1 = icmp slt i32 %cond, 0
  %sub16 = sub nsw i32 0, %cond
  %cond18 = select i1 %cmp1, i32 %cond, i32 %sub16
  ret i32 %cond18





}

define i32 @nabs_nabs_x10(i32 %x) {
  %cmp = icmp sgt i32 %x, 0
  %sub = sub nsw i32 0, %x
  %cond = select i1 %cmp, i32 %sub, i32 %x
  %cmp1 = icmp slt i32 %cond, 0
  %sub16 = sub nsw i32 0, %cond
  %cond18 = select i1 %cmp1, i32 %cond, i32 %sub16
  ret i32 %cond18





}

define i32 @nabs_nabs_x11(i32 %x) {
  %cmp = icmp slt i32 %x, 0
  %sub = sub nsw i32 0, %x
  %cond = select i1 %cmp, i32 %x, i32 %sub
  %cmp1 = icmp slt i32 %cond, 0
  %sub16 = sub nsw i32 0, %cond
  %cond18 = select i1 %cmp1, i32 %cond, i32 %sub16
  ret i32 %cond18





}

define i32 @nabs_nabs_x12(i32 %x) {
  %cmp = icmp slt i32 %x, 1
  %sub = sub nsw i32 0, %x
  %cond = select i1 %cmp, i32 %x, i32 %sub
  %cmp1 = icmp slt i32 %cond, 0
  %sub16 = sub nsw i32 0, %cond
  %cond18 = select i1 %cmp1, i32 %cond, i32 %sub16
  ret i32 %cond18





}

define i32 @nabs_nabs_x13(i32 %x) {
  %cmp = icmp sgt i32 %x, -1
  %sub = sub nsw i32 0, %x
  %cond = select i1 %cmp, i32 %sub, i32 %x
  %cmp1 = icmp slt i32 %cond, 1
  %sub16 = sub nsw i32 0, %cond
  %cond18 = select i1 %cmp1, i32 %cond, i32 %sub16
  ret i32 %cond18





}

define i32 @nabs_nabs_x14(i32 %x) {
  %cmp = icmp sgt i32 %x, 0
  %sub = sub nsw i32 0, %x
  %cond = select i1 %cmp, i32 %sub, i32 %x
  %cmp1 = icmp slt i32 %cond, 1
  %sub16 = sub nsw i32 0, %cond
  %cond18 = select i1 %cmp1, i32 %cond, i32 %sub16
  ret i32 %cond18





}

define i32 @nabs_nabs_x15(i32 %x) {
  %cmp = icmp slt i32 %x, 0
  %sub = sub nsw i32 0, %x
  %cond = select i1 %cmp, i32 %x, i32 %sub
  %cmp1 = icmp slt i32 %cond, 1
  %sub16 = sub nsw i32 0, %cond
  %cond18 = select i1 %cmp1, i32 %cond, i32 %sub16
  ret i32 %cond18





}

define i32 @nabs_nabs_x16(i32 %x) {
  %cmp = icmp slt i32 %x, 1
  %sub = sub nsw i32 0, %x
  %cond = select i1 %cmp, i32 %x, i32 %sub
  %cmp1 = icmp slt i32 %cond, 1
  %sub16 = sub nsw i32 0, %cond
  %cond18 = select i1 %cmp1, i32 %cond, i32 %sub16
  ret i32 %cond18





}

define i32 @abs_nabs_x01(i32 %x) {
  %cmp = icmp sgt i32 %x, -1
  %sub = sub nsw i32 0, %x
  %cond = select i1 %cmp, i32 %sub, i32 %x
  %cmp1 = icmp sgt i32 %cond, -1
  %sub16 = sub nsw i32 0, %cond
  %cond18 = select i1 %cmp1, i32 %cond, i32 %sub16
  ret i32 %cond18





}

define i32 @abs_nabs_x02(i32 %x) {
  %cmp = icmp sgt i32 %x, 0
  %sub = sub nsw i32 0, %x
  %cond = select i1 %cmp, i32 %sub, i32 %x
  %cmp1 = icmp sgt i32 %cond, -1
  %sub16 = sub nsw i32 0, %cond
  %cond18 = select i1 %cmp1, i32 %cond, i32 %sub16
  ret i32 %cond18





}

define i32 @abs_nabs_x03(i32 %x) {
  %cmp = icmp slt i32 %x, 0
  %sub = sub nsw i32 0, %x
  %cond = select i1 %cmp, i32 %x, i32 %sub
  %cmp1 = icmp sgt i32 %cond, -1
  %sub16 = sub nsw i32 0, %cond
  %cond18 = select i1 %cmp1, i32 %cond, i32 %sub16
  ret i32 %cond18





}

define i32 @abs_nabs_x04(i32 %x) {
  %cmp = icmp slt i32 %x, 1
  %sub = sub nsw i32 0, %x
  %cond = select i1 %cmp, i32 %x, i32 %sub
  %cmp1 = icmp sgt i32 %cond, -1
  %sub16 = sub nsw i32 0, %cond
  %cond18 = select i1 %cmp1, i32 %cond, i32 %sub16
  ret i32 %cond18





}

define i32 @abs_nabs_x05(i32 %x) {
  %cmp = icmp sgt i32 %x, -1
  %sub = sub nsw i32 0, %x
  %cond = select i1 %cmp, i32 %sub, i32 %x
  %cmp1 = icmp sgt i32 %cond, 0
  %sub16 = sub nsw i32 0, %cond
  %cond18 = select i1 %cmp1, i32 %cond, i32 %sub16
  ret i32 %cond18





}

define i32 @abs_nabs_x06(i32 %x) {
  %cmp = icmp sgt i32 %x, 0
  %sub = sub nsw i32 0, %x
  %cond = select i1 %cmp, i32 %sub, i32 %x
  %cmp1 = icmp sgt i32 %cond, 0
  %sub16 = sub nsw i32 0, %cond
  %cond18 = select i1 %cmp1, i32 %cond, i32 %sub16
  ret i32 %cond18





}

define i32 @abs_nabs_x07(i32 %x) {
  %cmp = icmp slt i32 %x, 0
  %sub = sub nsw i32 0, %x
  %cond = select i1 %cmp, i32 %x, i32 %sub
  %cmp1 = icmp sgt i32 %cond, 0
  %sub16 = sub nsw i32 0, %cond
  %cond18 = select i1 %cmp1, i32 %cond, i32 %sub16
  ret i32 %cond18





}

define i32 @abs_nabs_x08(i32 %x) {
  %cmp = icmp slt i32 %x, 1
  %sub = sub nsw i32 0, %x
  %cond = select i1 %cmp, i32 %x, i32 %sub
  %cmp1 = icmp sgt i32 %cond, 0
  %sub16 = sub nsw i32 0, %cond
  %cond18 = select i1 %cmp1, i32 %cond, i32 %sub16
  ret i32 %cond18





}

define i32 @abs_nabs_x09(i32 %x) {
  %cmp = icmp sgt i32 %x, -1
  %sub = sub nsw i32 0, %x
  %cond = select i1 %cmp, i32 %sub, i32 %x
  %cmp1 = icmp slt i32 %cond, 0
  %sub9 = sub nsw i32 0, %cond
  %cond18 = select i1 %cmp1, i32 %sub9, i32 %cond
  ret i32 %cond18





}

define i32 @abs_nabs_x10(i32 %x) {
  %cmp = icmp sgt i32 %x, 0
  %sub = sub nsw i32 0, %x
  %cond = select i1 %cmp, i32 %sub, i32 %x
  %cmp1 = icmp slt i32 %cond, 0
  %sub9 = sub nsw i32 0, %cond
  %cond18 = select i1 %cmp1, i32 %sub9, i32 %cond
  ret i32 %cond18





}

define i32 @abs_nabs_x11(i32 %x) {
  %cmp = icmp slt i32 %x, 0
  %sub = sub nsw i32 0, %x
  %cond = select i1 %cmp, i32 %x, i32 %sub
  %cmp1 = icmp slt i32 %cond, 0
  %sub9 = sub nsw i32 0, %cond
  %cond18 = select i1 %cmp1, i32 %sub9, i32 %cond
  ret i32 %cond18





}

define i32 @abs_nabs_x12(i32 %x) {
  %cmp = icmp slt i32 %x, 1
  %sub = sub nsw i32 0, %x
  %cond = select i1 %cmp, i32 %x, i32 %sub
  %cmp1 = icmp slt i32 %cond, 0
  %sub9 = sub nsw i32 0, %cond
  %cond18 = select i1 %cmp1, i32 %sub9, i32 %cond
  ret i32 %cond18





}

define i32 @abs_nabs_x13(i32 %x) {
  %cmp = icmp sgt i32 %x, -1
  %sub = sub nsw i32 0, %x
  %cond = select i1 %cmp, i32 %sub, i32 %x
  %cmp1 = icmp slt i32 %cond, 1
  %sub9 = sub nsw i32 0, %cond
  %cond18 = select i1 %cmp1, i32 %sub9, i32 %cond
  ret i32 %cond18





}

define i32 @abs_nabs_x14(i32 %x) {
  %cmp = icmp sgt i32 %x, 0
  %sub = sub nsw i32 0, %x
  %cond = select i1 %cmp, i32 %sub, i32 %x
  %cmp1 = icmp slt i32 %cond, 1
  %sub9 = sub nsw i32 0, %cond
  %cond18 = select i1 %cmp1, i32 %sub9, i32 %cond
  ret i32 %cond18





}

define i32 @abs_nabs_x15(i32 %x) {
  %cmp = icmp slt i32 %x, 0
  %sub = sub nsw i32 0, %x
  %cond = select i1 %cmp, i32 %x, i32 %sub
  %cmp1 = icmp slt i32 %cond, 1
  %sub9 = sub nsw i32 0, %cond
  %cond18 = select i1 %cmp1, i32 %sub9, i32 %cond
  ret i32 %cond18





}

define i32 @abs_nabs_x16(i32 %x) {
  %cmp = icmp slt i32 %x, 1
  %sub = sub nsw i32 0, %x
  %cond = select i1 %cmp, i32 %x, i32 %sub
  %cmp1 = icmp slt i32 %cond, 1
  %sub9 = sub nsw i32 0, %cond
  %cond18 = select i1 %cmp1, i32 %sub9, i32 %cond
  ret i32 %cond18





}

define i32 @nabs_abs_x01(i32 %x) {
  %cmp = icmp sgt i32 %x, -1
  %sub = sub nsw i32 0, %x
  %cond = select i1 %cmp, i32 %x, i32 %sub
  %cmp1 = icmp sgt i32 %cond, -1
  %sub9 = sub nsw i32 0, %cond
  %cond18 = select i1 %cmp1, i32 %sub9, i32 %cond
  ret i32 %cond18





}

define i32 @nabs_abs_x02(i32 %x) {
  %cmp = icmp sgt i32 %x, 0
  %sub = sub nsw i32 0, %x
  %cond = select i1 %cmp, i32 %x, i32 %sub
  %cmp1 = icmp sgt i32 %cond, -1
  %sub9 = sub nsw i32 0, %cond
  %cond18 = select i1 %cmp1, i32 %sub9, i32 %cond
  ret i32 %cond18





}

define i32 @nabs_abs_x03(i32 %x) {
  %cmp = icmp slt i32 %x, 0
  %sub = sub nsw i32 0, %x
  %cond = select i1 %cmp, i32 %sub, i32 %x
  %cmp1 = icmp sgt i32 %cond, -1
  %sub9 = sub nsw i32 0, %cond
  %cond18 = select i1 %cmp1, i32 %sub9, i32 %cond
  ret i32 %cond18





}

define i32 @nabs_abs_x04(i32 %x) {
  %cmp = icmp slt i32 %x, 1
  %sub = sub nsw i32 0, %x
  %cond = select i1 %cmp, i32 %sub, i32 %x
  %cmp1 = icmp sgt i32 %cond, -1
  %sub9 = sub nsw i32 0, %cond
  %cond18 = select i1 %cmp1, i32 %sub9, i32 %cond
  ret i32 %cond18





}

define i32 @nabs_abs_x05(i32 %x) {
  %cmp = icmp sgt i32 %x, -1
  %sub = sub nsw i32 0, %x
  %cond = select i1 %cmp, i32 %x, i32 %sub
  %cmp1 = icmp sgt i32 %cond, 0
  %sub9 = sub nsw i32 0, %cond
  %cond18 = select i1 %cmp1, i32 %sub9, i32 %cond
  ret i32 %cond18





}

define i32 @nabs_abs_x06(i32 %x) {
  %cmp = icmp sgt i32 %x, 0
  %sub = sub nsw i32 0, %x
  %cond = select i1 %cmp, i32 %x, i32 %sub
  %cmp1 = icmp sgt i32 %cond, 0
  %sub9 = sub nsw i32 0, %cond
  %cond18 = select i1 %cmp1, i32 %sub9, i32 %cond
  ret i32 %cond18





}

define i32 @nabs_abs_x07(i32 %x) {
  %cmp = icmp slt i32 %x, 0
  %sub = sub nsw i32 0, %x
  %cond = select i1 %cmp, i32 %sub, i32 %x
  %cmp1 = icmp sgt i32 %cond, 0
  %sub9 = sub nsw i32 0, %cond
  %cond18 = select i1 %cmp1, i32 %sub9, i32 %cond
  ret i32 %cond18





}

define i32 @nabs_abs_x08(i32 %x) {
  %cmp = icmp slt i32 %x, 1
  %sub = sub nsw i32 0, %x
  %cond = select i1 %cmp, i32 %sub, i32 %x
  %cmp1 = icmp sgt i32 %cond, 0
  %sub9 = sub nsw i32 0, %cond
  %cond18 = select i1 %cmp1, i32 %sub9, i32 %cond
  ret i32 %cond18





}

define i32 @nabs_abs_x09(i32 %x) {
  %cmp = icmp sgt i32 %x, -1
  %sub = sub nsw i32 0, %x
  %cond = select i1 %cmp, i32 %x, i32 %sub
  %cmp1 = icmp slt i32 %cond, 0
  %sub16 = sub nsw i32 0, %cond
  %cond18 = select i1 %cmp1, i32 %cond, i32 %sub16
  ret i32 %cond18





}

define i32 @nabs_abs_x10(i32 %x) {
  %cmp = icmp sgt i32 %x, 0
  %sub = sub nsw i32 0, %x
  %cond = select i1 %cmp, i32 %x, i32 %sub
  %cmp1 = icmp slt i32 %cond, 0
  %sub16 = sub nsw i32 0, %cond
  %cond18 = select i1 %cmp1, i32 %cond, i32 %sub16
  ret i32 %cond18





}

define i32 @nabs_abs_x11(i32 %x) {
  %cmp = icmp slt i32 %x, 0
  %sub = sub nsw i32 0, %x
  %cond = select i1 %cmp, i32 %sub, i32 %x
  %cmp1 = icmp slt i32 %cond, 0
  %sub16 = sub nsw i32 0, %cond
  %cond18 = select i1 %cmp1, i32 %cond, i32 %sub16
  ret i32 %cond18





}

define i32 @nabs_abs_x12(i32 %x) {
  %cmp = icmp slt i32 %x, 1
  %sub = sub nsw i32 0, %x
  %cond = select i1 %cmp, i32 %sub, i32 %x
  %cmp1 = icmp slt i32 %cond, 0
  %sub16 = sub nsw i32 0, %cond
  %cond18 = select i1 %cmp1, i32 %cond, i32 %sub16
  ret i32 %cond18





}

define i32 @nabs_abs_x13(i32 %x) {
  %cmp = icmp sgt i32 %x, -1
  %sub = sub nsw i32 0, %x
  %cond = select i1 %cmp, i32 %x, i32 %sub
  %cmp1 = icmp slt i32 %cond, 1
  %sub16 = sub nsw i32 0, %cond
  %cond18 = select i1 %cmp1, i32 %cond, i32 %sub16
  ret i32 %cond18





}

define i32 @nabs_abs_x14(i32 %x) {
  %cmp = icmp sgt i32 %x, 0
  %sub = sub nsw i32 0, %x
  %cond = select i1 %cmp, i32 %x, i32 %sub
  %cmp1 = icmp slt i32 %cond, 1
  %sub16 = sub nsw i32 0, %cond
  %cond18 = select i1 %cmp1, i32 %cond, i32 %sub16
  ret i32 %cond18





}

define i32 @nabs_abs_x15(i32 %x) {
  %cmp = icmp slt i32 %x, 0
  %sub = sub nsw i32 0, %x
  %cond = select i1 %cmp, i32 %sub, i32 %x
  %cmp1 = icmp slt i32 %cond, 1
  %sub16 = sub nsw i32 0, %cond
  %cond18 = select i1 %cmp1, i32 %cond, i32 %sub16
  ret i32 %cond18





}

define i32 @nabs_abs_x16(i32 %x) {
  %cmp = icmp slt i32 %x, 1
  %sub = sub nsw i32 0, %x
  %cond = select i1 %cmp, i32 %sub, i32 %x
  %cmp1 = icmp slt i32 %cond, 1
  %sub16 = sub nsw i32 0, %cond
  %cond18 = select i1 %cmp1, i32 %cond, i32 %sub16
  ret i32 %cond18





}