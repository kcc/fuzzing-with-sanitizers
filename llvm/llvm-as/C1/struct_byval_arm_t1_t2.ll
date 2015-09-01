





















%struct.A = type <{ [ 10 x i32 ] }> 
declare void @use_A(%struct.A* byval)
%struct.B = type <{ [ 10 x i32 ], i8 }> 
declare void @use_B(%struct.B* byval)
%struct.C = type <{ [ 10 x i32 ], [ 3 x i8 ] }> 
declare void @use_C(%struct.C* byval)
%struct.D = type <{ [ 100 x i32 ] }> 
declare void @use_D(%struct.D* byval)
%struct.E = type <{ [ 100 x i32 ], i8 }> 
declare void @use_E(%struct.E* byval)
%struct.F = type <{ [ 100 x i32 ], [ 3 x i8 ] }> 
declare void @use_F(%struct.F* byval)
%struct.G = type  { [ 10 x i32 ] }  
declare void @use_G(%struct.G* byval)
%struct.H = type  { [ 10 x i32 ], i8 }  
declare void @use_H(%struct.H* byval)
%struct.I = type  { [ 10 x i32 ], [ 3 x i8 ] }  
declare void @use_I(%struct.I* byval)
%struct.J = type  { [ 100 x i32 ] }  
declare void @use_J(%struct.J* byval)
%struct.K = type  { [ 100 x i32 ], i8 }  
declare void @use_K(%struct.K* byval)
%struct.L = type  { [ 100 x i32 ], [ 3 x i8 ] }  
declare void @use_L(%struct.L* byval)






  define void @test_A_1() {










  entry:
    %a = alloca %struct.A, align 1
    call void @use_A(%struct.A* byval align 1 %a)
    ret void
  }





  define void @test_A_2() {










  entry:
    %a = alloca %struct.A, align 2
    call void @use_A(%struct.A* byval align 2 %a)
    ret void
  }





  define void @test_A_4() {










  entry:
    %a = alloca %struct.A, align 4
    call void @use_A(%struct.A* byval align 4 %a)
    ret void
  }





  define void @test_A_8() {











  entry:
    %a = alloca %struct.A, align 8
    call void @use_A(%struct.A* byval align 8 %a)
    ret void
  }





  define void @test_A_16() {













  entry:
    %a = alloca %struct.A, align 16
    call void @use_A(%struct.A* byval align 16 %a)
    ret void
  }





  define void @test_B_1() {










  entry:
    %a = alloca %struct.B, align 1
    call void @use_B(%struct.B* byval align 1 %a)
    ret void
  }





  define void @test_B_2() {














  entry:
    %a = alloca %struct.B, align 2
    call void @use_B(%struct.B* byval align 2 %a)
    ret void
  }





  define void @test_B_4() {














  entry:
    %a = alloca %struct.B, align 4
    call void @use_B(%struct.B* byval align 4 %a)
    ret void
  }





  define void @test_B_8() {















  entry:
    %a = alloca %struct.B, align 8
    call void @use_B(%struct.B* byval align 8 %a)
    ret void
  }





  define void @test_B_16() {















  entry:
    %a = alloca %struct.B, align 16
    call void @use_B(%struct.B* byval align 16 %a)
    ret void
  }





  define void @test_C_1() {










  entry:
    %a = alloca %struct.C, align 1
    call void @use_C(%struct.C* byval align 1 %a)
    ret void
  }





  define void @test_C_2() {














  entry:
    %a = alloca %struct.C, align 2
    call void @use_C(%struct.C* byval align 2 %a)
    ret void
  }





  define void @test_C_4() {















  entry:
    %a = alloca %struct.C, align 4
    call void @use_C(%struct.C* byval align 4 %a)
    ret void
  }





  define void @test_C_8() {
















  entry:
    %a = alloca %struct.C, align 8
    call void @use_C(%struct.C* byval align 8 %a)
    ret void
  }





  define void @test_C_16() {
















  entry:
    %a = alloca %struct.C, align 16
    call void @use_C(%struct.C* byval align 16 %a)
    ret void
  }





  define void @test_D_1() {














  entry:
    %a = alloca %struct.D, align 1
    call void @use_D(%struct.D* byval align 1 %a)
    ret void
  }





  define void @test_D_2() {














  entry:
    %a = alloca %struct.D, align 2
    call void @use_D(%struct.D* byval align 2 %a)
    ret void
  }





  define void @test_D_4() {














  entry:
    %a = alloca %struct.D, align 4
    call void @use_D(%struct.D* byval align 4 %a)
    ret void
  }





  define void @test_D_8() {















  entry:
    %a = alloca %struct.D, align 8
    call void @use_D(%struct.D* byval align 8 %a)
    ret void
  }





  define void @test_D_16() {















  entry:
    %a = alloca %struct.D, align 16
    call void @use_D(%struct.D* byval align 16 %a)
    ret void
  }





  define void @test_E_1() {














  entry:
    %a = alloca %struct.E, align 1
    call void @use_E(%struct.E* byval align 1 %a)
    ret void
  }





  define void @test_E_2() {


















  entry:
    %a = alloca %struct.E, align 2
    call void @use_E(%struct.E* byval align 2 %a)
    ret void
  }





  define void @test_E_4() {


















  entry:
    %a = alloca %struct.E, align 4
    call void @use_E(%struct.E* byval align 4 %a)
    ret void
  }





  define void @test_E_8() {



















  entry:
    %a = alloca %struct.E, align 8
    call void @use_E(%struct.E* byval align 8 %a)
    ret void
  }





  define void @test_E_16() {



















  entry:
    %a = alloca %struct.E, align 16
    call void @use_E(%struct.E* byval align 16 %a)
    ret void
  }





  define void @test_F_1() {














  entry:
    %a = alloca %struct.F, align 1
    call void @use_F(%struct.F* byval align 1 %a)
    ret void
  }





  define void @test_F_2() {


















  entry:
    %a = alloca %struct.F, align 2
    call void @use_F(%struct.F* byval align 2 %a)
    ret void
  }





  define void @test_F_4() {



















  entry:
    %a = alloca %struct.F, align 4
    call void @use_F(%struct.F* byval align 4 %a)
    ret void
  }





  define void @test_F_8() {




















  entry:
    %a = alloca %struct.F, align 8
    call void @use_F(%struct.F* byval align 8 %a)
    ret void
  }





  define void @test_F_16() {




















  entry:
    %a = alloca %struct.F, align 16
    call void @use_F(%struct.F* byval align 16 %a)
    ret void
  }





  define void @test_G_1() {










  entry:
    %a = alloca %struct.G, align 1
    call void @use_G(%struct.G* byval align 1 %a)
    ret void
  }





  define void @test_G_2() {










  entry:
    %a = alloca %struct.G, align 2
    call void @use_G(%struct.G* byval align 2 %a)
    ret void
  }





  define void @test_G_4() {










  entry:
    %a = alloca %struct.G, align 4
    call void @use_G(%struct.G* byval align 4 %a)
    ret void
  }





  define void @test_G_8() {











  entry:
    %a = alloca %struct.G, align 8
    call void @use_G(%struct.G* byval align 8 %a)
    ret void
  }





  define void @test_G_16() {











  entry:
    %a = alloca %struct.G, align 16
    call void @use_G(%struct.G* byval align 16 %a)
    ret void
  }





  define void @test_H_1() {










  entry:
    %a = alloca %struct.H, align 1
    call void @use_H(%struct.H* byval align 1 %a)
    ret void
  }





  define void @test_H_2() {










  entry:
    %a = alloca %struct.H, align 2
    call void @use_H(%struct.H* byval align 2 %a)
    ret void
  }





  define void @test_H_4() {










  entry:
    %a = alloca %struct.H, align 4
    call void @use_H(%struct.H* byval align 4 %a)
    ret void
  }





  define void @test_H_8() {











  entry:
    %a = alloca %struct.H, align 8
    call void @use_H(%struct.H* byval align 8 %a)
    ret void
  }





  define void @test_H_16() {











  entry:
    %a = alloca %struct.H, align 16
    call void @use_H(%struct.H* byval align 16 %a)
    ret void
  }





  define void @test_I_1() {










  entry:
    %a = alloca %struct.I, align 1
    call void @use_I(%struct.I* byval align 1 %a)
    ret void
  }





  define void @test_I_2() {










  entry:
    %a = alloca %struct.I, align 2
    call void @use_I(%struct.I* byval align 2 %a)
    ret void
  }





  define void @test_I_4() {










  entry:
    %a = alloca %struct.I, align 4
    call void @use_I(%struct.I* byval align 4 %a)
    ret void
  }





  define void @test_I_8() {











  entry:
    %a = alloca %struct.I, align 8
    call void @use_I(%struct.I* byval align 8 %a)
    ret void
  }





  define void @test_I_16() {











  entry:
    %a = alloca %struct.I, align 16
    call void @use_I(%struct.I* byval align 16 %a)
    ret void
  }





  define void @test_J_1() {














  entry:
    %a = alloca %struct.J, align 1
    call void @use_J(%struct.J* byval align 1 %a)
    ret void
  }





  define void @test_J_2() {














  entry:
    %a = alloca %struct.J, align 2
    call void @use_J(%struct.J* byval align 2 %a)
    ret void
  }





  define void @test_J_4() {














  entry:
    %a = alloca %struct.J, align 4
    call void @use_J(%struct.J* byval align 4 %a)
    ret void
  }





  define void @test_J_8() {















  entry:
    %a = alloca %struct.J, align 8
    call void @use_J(%struct.J* byval align 8 %a)
    ret void
  }





  define void @test_J_16() {















  entry:
    %a = alloca %struct.J, align 16
    call void @use_J(%struct.J* byval align 16 %a)
    ret void
  }





  define void @test_K_1() {














  entry:
    %a = alloca %struct.K, align 1
    call void @use_K(%struct.K* byval align 1 %a)
    ret void
  }





  define void @test_K_2() {














  entry:
    %a = alloca %struct.K, align 2
    call void @use_K(%struct.K* byval align 2 %a)
    ret void
  }





  define void @test_K_4() {














  entry:
    %a = alloca %struct.K, align 4
    call void @use_K(%struct.K* byval align 4 %a)
    ret void
  }





  define void @test_K_8() {















  entry:
    %a = alloca %struct.K, align 8
    call void @use_K(%struct.K* byval align 8 %a)
    ret void
  }





  define void @test_K_16() {















  entry:
    %a = alloca %struct.K, align 16
    call void @use_K(%struct.K* byval align 16 %a)
    ret void
  }





  define void @test_L_1() {














  entry:
    %a = alloca %struct.L, align 1
    call void @use_L(%struct.L* byval align 1 %a)
    ret void
  }





  define void @test_L_2() {














  entry:
    %a = alloca %struct.L, align 2
    call void @use_L(%struct.L* byval align 2 %a)
    ret void
  }





  define void @test_L_4() {














  entry:
    %a = alloca %struct.L, align 4
    call void @use_L(%struct.L* byval align 4 %a)
    ret void
  }





  define void @test_L_8() {















  entry:
    %a = alloca %struct.L, align 8
    call void @use_L(%struct.L* byval align 8 %a)
    ret void
  }





  define void @test_L_16() {















  entry:
    %a = alloca %struct.L, align 16
    call void @use_L(%struct.L* byval align 16 %a)
    ret void
  }
