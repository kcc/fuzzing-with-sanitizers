
target triple = "powerpc64-unknown-linux-gnu"

define void @autogen_SD70() {
BB:
  br label %CF78

CF78:                                             
  br i1 undef, label %CF78, label %CF87

CF87:                                             
  %Cmp19 = icmp sge <8 x i1> zeroinitializer, zeroinitializer
  %Cmp26 = icmp slt i32 -1, undef
  br i1 %Cmp26, label %CF78, label %CF79

CF79:                                             
  br i1 undef, label %CF79, label %CF82

CF82:                                             
  br i1 undef, label %CF82, label %CF84

CF84:                                             
  br label %CF

CF:                                               
  br i1 undef, label %CF, label %CF85

CF85:                                             
  %I52 = insertelement <8 x i1> %Cmp19, i1 %Cmp26, i32 6
  %Cmp61 = icmp ult i32 477567, undef
  br i1 %Cmp61, label %CF85, label %CF88

CF88:                                             
  %E63 = extractelement <8 x i1> %I52, i32 5
  br i1 %E63, label %CF, label %CF80

CF80:                                             
  br label %CF80
}
