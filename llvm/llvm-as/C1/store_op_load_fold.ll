



@X = internal global i16 0              

define void @foo() nounwind {




        %tmp.0 = load i16, i16* @X           
        %tmp.3 = add i16 %tmp.0, 329            
        store i16 %tmp.3, i16* @X
        ret void
}


%struct.S2 = type { i64, i16, [2 x i8], i8, [3 x i8], [7 x i8], i8, [8 x i8] }
@s2 = external global %struct.S2, align 16
define void @test2() nounwind uwtable ssp {




  %bf.load35 = load i56, i56* bitcast ([7 x i8]* getelementptr inbounds (%struct.S2, %struct.S2* @s2, i32 0, i32 5) to i56*), align 16
  %bf.clear36 = and i56 %bf.load35, -1125895611875329
  store i56 %bf.clear36, i56* bitcast ([7 x i8]* getelementptr inbounds (%struct.S2, %struct.S2* @s2, i32 0, i32 5) to i56*), align 16
  ret void
}
