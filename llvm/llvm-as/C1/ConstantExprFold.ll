





@A = global i64 0

global i64* inttoptr (i64 add (i64 ptrtoint (i64* @A to i64), i64 0) to i64*) 
global i64* inttoptr (i64 sub (i64 ptrtoint (i64* @A to i64), i64 0) to i64*) 
global i64* inttoptr (i64 mul (i64 ptrtoint (i64* @A to i64), i64 0) to i64*) 
global i64* inttoptr (i64 sdiv (i64 ptrtoint (i64* @A to i64), i64 1) to i64*) 
global i64* inttoptr (i64 srem (i64 ptrtoint (i64* @A to i64), i64 1) to i64*) 
global i64* inttoptr (i64 and (i64 ptrtoint (i64* @A to i64), i64 0) to i64*) 
global i64* inttoptr (i64 and (i64 ptrtoint (i64* @A to i64), i64 -1) to i64*) 
global i64 or (i64 ptrtoint (i64* @A to i64), i64 -1)  
global i64* inttoptr (i64 xor (i64 ptrtoint (i64* @A to i64), i64 0) to i64*) 

%Ty = type { i32, i32 }
@B = external global %Ty 

global i1 icmp slt (i64* @A, i64* getelementptr (i64, i64* @A, i64 1))        
global i1 icmp ult (i64* @A, i64* getelementptr (i64, i64* @A, i64 1))        
global i1 icmp slt (i64* @A, i64* getelementptr (i64, i64* @A, i64 0))        
global i1 icmp slt (i32* getelementptr (%Ty, %Ty* @B, i64 0, i32 0), 
                   i32* getelementptr (%Ty, %Ty* @B, i64 0, i32 1))            



@cons = weak global i32 0, align 8              
global i64 and (i64 ptrtoint (i32* @cons to i64), i64 7)

