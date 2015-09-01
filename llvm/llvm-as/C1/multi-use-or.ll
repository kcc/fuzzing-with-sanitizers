



define double @ScaleObjectAdd(double %sx, double %sy, double %sz) nounwind {
entry:
        %sx34 = bitcast double %sx to i64               
        %sx3435 = zext i64 %sx34 to i192                
        %sy22 = bitcast double %sy to i64               
        %sy2223 = zext i64 %sy22 to i192                
        %sy222324 = shl i192 %sy2223, 128               
        %sy222324.ins = or i192 %sx3435, %sy222324              
        
        
        %a = trunc i192 %sy222324.ins to i64            
        %b = bitcast i64 %a to double           
        %c = lshr i192 %sy222324.ins, 128               
        %d = trunc i192 %c to i64               
        %e = bitcast i64 %d to double           
        %f = fadd double %b, %e


        ret double %f
}
