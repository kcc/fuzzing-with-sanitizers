




define i32 @main(i32 %argc, i8** %argv) nounwind ssp {
entry:
  %and = and i32 %argc, 1                         
  %tobool = icmp ne i32 %and, 0                   
  %and2 = and i32 %argc, 2                        
  %tobool3 = icmp ne i32 %and2, 0                 
  %or.cond = and i1 %tobool, %tobool3             
  %retval.0 = select i1 %or.cond, i32 2, i32 1    
  ret i32 %retval.0
}

define i32 @main2(i32 %argc, i8** nocapture %argv) nounwind readnone ssp {
entry:
  %and = and i32 %argc, 1                         
  %tobool = icmp eq i32 %and, 0                   
  %and2 = and i32 %argc, 2                        
  %tobool3 = icmp eq i32 %and2, 0                 
  %or.cond = or i1 %tobool, %tobool3              
  %storemerge = select i1 %or.cond, i32 0, i32 1  
  ret i32 %storemerge
}






define i32 @main3(i32 %argc, i8** nocapture %argv) nounwind readnone ssp {
entry:
  %and = and i32 %argc, 7                         
  %tobool = icmp eq i32 %and, 0                   
  %and2 = and i32 %argc, 48                       
  %tobool3 = icmp eq i32 %and2, 0                 
  %and.cond = and i1 %tobool, %tobool3            
  %storemerge = select i1 %and.cond, i32 0, i32 1 
  ret i32 %storemerge
}

define i32 @main3b(i32 %argc, i8** nocapture %argv) nounwind readnone ssp {
entry:
  %and = and i32 %argc, 7                         
  %tobool = icmp eq i32 %and, 0                   
  %and2 = and i32 %argc, 16                       
  %tobool3 = icmp ne i32 %and2, 16                 
  %and.cond = and i1 %tobool, %tobool3            
  %storemerge = select i1 %and.cond, i32 0, i32 1 
  ret i32 %storemerge
}

define i32 @main3e_like(i32 %argc, i32 %argc2, i32 %argc3, i8** nocapture %argv)
           nounwind readnone ssp {
entry:
  %and = and i32 %argc, %argc2                    
  %tobool = icmp eq i32 %and, 0                   
  %and2 = and i32 %argc, %argc3                   
  %tobool3 = icmp eq i32 %and2, 0                 
  %and.cond = and i1 %tobool, %tobool3            
  %storemerge = select i1 %and.cond, i32 0, i32 1 
  ret i32 %storemerge
}


define i32 @main3c(i32 %argc, i8** nocapture %argv) nounwind readnone ssp {
entry:
  %and = and i32 %argc, 7                         
  %tobool = icmp ne i32 %and, 0                   
  %and2 = and i32 %argc, 48                       
  %tobool3 = icmp ne i32 %and2, 0                 
  %or.cond = or i1 %tobool, %tobool3              
  %storemerge = select i1 %or.cond, i32 0, i32 1  
  ret i32 %storemerge
}

define i32 @main3d(i32 %argc, i8** nocapture %argv) nounwind readnone ssp {
entry:
  %and = and i32 %argc, 7                         
  %tobool = icmp ne i32 %and, 0                   
  %and2 = and i32 %argc, 16                       
  %tobool3 = icmp eq i32 %and2, 16                
  %or.cond = or i1 %tobool, %tobool3              
  %storemerge = select i1 %or.cond, i32 0, i32 1  
  ret i32 %storemerge
}

define i32 @main3f_like(i32 %argc, i32 %argc2, i32 %argc3, i8** nocapture %argv)
           nounwind readnone ssp {
entry:
  %and = and i32 %argc, %argc2                    
  %tobool = icmp ne i32 %and, 0                   
  %and2 = and i32 %argc, %argc3                   
  %tobool3 = icmp ne i32 %and2, 0                 
  %or.cond = or i1 %tobool, %tobool3              
  %storemerge = select i1 %or.cond, i32 0, i32 1  
  ret i32 %storemerge
}


define i32 @main4(i32 %argc, i8** nocapture %argv) nounwind readnone ssp {
entry:
  %and = and i32 %argc, 7                         
  %tobool = icmp eq i32 %and, 7                   
  %and2 = and i32 %argc, 48                       
  %tobool3 = icmp eq i32 %and2, 48                
  %and.cond = and i1 %tobool, %tobool3            
  %storemerge = select i1 %and.cond, i32 0, i32 1 
  ret i32 %storemerge
}

define i32 @main4b(i32 %argc, i8** nocapture %argv) nounwind readnone ssp {
entry:
  %and = and i32 %argc, 7                         
  %tobool = icmp eq i32 %and, 7                   
  %and2 = and i32 %argc, 16                       
  %tobool3 = icmp ne i32 %and2, 0                 
  %and.cond = and i1 %tobool, %tobool3            
  %storemerge = select i1 %and.cond, i32 0, i32 1 
  ret i32 %storemerge
}

define i32 @main4e_like(i32 %argc, i32 %argc2, i32 %argc3, i8** nocapture %argv)
           nounwind readnone ssp {
entry:
  %and = and i32 %argc, %argc2                    
  %tobool = icmp eq i32 %and, %argc2              
  %and2 = and i32 %argc, %argc3                   
  %tobool3 = icmp eq i32 %and2, %argc3            
  %and.cond = and i1 %tobool, %tobool3            
  %storemerge = select i1 %and.cond, i32 0, i32 1 
  ret i32 %storemerge
}


define i32 @main4c(i32 %argc, i8** nocapture %argv) nounwind readnone ssp {
entry:
  %and = and i32 %argc, 7                         
  %tobool = icmp ne i32 %and, 7                   
  %and2 = and i32 %argc, 48                       
  %tobool3 = icmp ne i32 %and2, 48                
  %or.cond = or i1 %tobool, %tobool3              
  %storemerge = select i1 %or.cond, i32 0, i32 1  
  ret i32 %storemerge
}

define i32 @main4d(i32 %argc, i8** nocapture %argv) nounwind readnone ssp {
entry:
  %and = and i32 %argc, 7                         
  %tobool = icmp ne i32 %and, 7                   
  %and2 = and i32 %argc, 16                       
  %tobool3 = icmp eq i32 %and2, 0                 
  %or.cond = or i1 %tobool, %tobool3              
  %storemerge = select i1 %or.cond, i32 0, i32 1  
  ret i32 %storemerge
}

define i32 @main4f_like(i32 %argc, i32 %argc2, i32 %argc3, i8** nocapture %argv)
           nounwind readnone ssp {
entry:
  %and = and i32 %argc, %argc2                    
  %tobool = icmp ne i32 %and, %argc2              
  %and2 = and i32 %argc, %argc3                   
  %tobool3 = icmp ne i32 %and2, %argc3            
  %or.cond = or i1 %tobool, %tobool3              
  %storemerge = select i1 %or.cond, i32 0, i32 1  
  ret i32 %storemerge
}


define i32 @main5_like(i32 %argc, i32 %argc2, i8** nocapture %argv)
           nounwind readnone ssp {
entry:
  %and = and i32 %argc, 7                         
  %tobool = icmp eq i32 %and, 7                   
  %and2 = and i32 %argc2, 7                       
  %tobool3 = icmp eq i32 %and2, 7                 
  %and.cond = and i1 %tobool, %tobool3            
  %storemerge = select i1 %and.cond, i32 0, i32 1 
  ret i32 %storemerge
}

define i32 @main5e_like(i32 %argc, i32 %argc2, i32 %argc3, i8** nocapture %argv)
           nounwind readnone ssp {
entry:
  %and = and i32 %argc, %argc2                    
  %tobool = icmp eq i32 %and, %argc               
  %and2 = and i32 %argc, %argc3                   
  %tobool3 = icmp eq i32 %and2, %argc             
  %and.cond = and i1 %tobool, %tobool3            
  %storemerge = select i1 %and.cond, i32 0, i32 1 
  ret i32 %storemerge
}


define i32 @main5c_like(i32 %argc, i32 %argc2, i8** nocapture %argv)
           nounwind readnone ssp {
entry:
  %and = and i32 %argc, 7                         
  %tobool = icmp ne i32 %and, 7                   
  %and2 = and i32 %argc2, 7                       
  %tobool3 = icmp ne i32 %and2, 7                 
  %or.cond = or i1 %tobool, %tobool3              
  %storemerge = select i1 %or.cond, i32 0, i32 1  
  ret i32 %storemerge
}

define i32 @main5f_like(i32 %argc, i32 %argc2, i32 %argc3, i8** nocapture %argv)
           nounwind readnone ssp {
entry:
  %and = and i32 %argc, %argc2                    
  %tobool = icmp ne i32 %and, %argc               
  %and2 = and i32 %argc, %argc3                   
  %tobool3 = icmp ne i32 %and2, %argc             
  %or.cond = or i1 %tobool, %tobool3              
  %storemerge = select i1 %or.cond, i32 0, i32 1  
  ret i32 %storemerge
}



define i32 @main6(i32 %argc, i8** nocapture %argv) nounwind readnone ssp {
entry:
  %and = and i32 %argc, 7                         
  %tobool = icmp eq i32 %and, 3                   
  %and2 = and i32 %argc, 48                       
  %tobool3 = icmp eq i32 %and2, 16                
  %and.cond = and i1 %tobool, %tobool3            
  %storemerge = select i1 %and.cond, i32 0, i32 1 
  ret i32 %storemerge
}

define i32 @main6b(i32 %argc, i8** nocapture %argv) nounwind readnone ssp {
entry:
  %and = and i32 %argc, 7                         
  %tobool = icmp eq i32 %and, 3                   
  %and2 = and i32 %argc, 16                       
  %tobool3 = icmp ne i32 %and2, 0                 
  %and.cond = and i1 %tobool, %tobool3            
  %storemerge = select i1 %and.cond, i32 0, i32 1 
  ret i32 %storemerge
}



define i32 @main6c(i32 %argc, i8** nocapture %argv) nounwind readnone ssp {
entry:
  %and = and i32 %argc, 7                         
  %tobool = icmp ne i32 %and, 3                   
  %and2 = and i32 %argc, 48                       
  %tobool3 = icmp ne i32 %and2, 16                
  %or.cond = or i1 %tobool, %tobool3              
  %storemerge = select i1 %or.cond, i32 0, i32 1  
  ret i32 %storemerge
}

define i32 @main6d(i32 %argc, i8** nocapture %argv) nounwind readnone ssp {
entry:
  %and = and i32 %argc, 7                         
  %tobool = icmp ne i32 %and, 3                   
  %and2 = and i32 %argc, 16                       
  %tobool3 = icmp eq i32 %and2, 0                 
  %or.cond = or i1 %tobool, %tobool3              
  %storemerge = select i1 %or.cond, i32 0, i32 1  
  ret i32 %storemerge
}



define i32 @main7a(i32 %argc, i32 %argc2, i32 %argc3, i8** nocapture %argv)
           nounwind readnone ssp {
entry:
  %and1 = and i32 %argc2, %argc                   
  %tobool = icmp eq i32 %and1, %argc2              
  %and2 = and i32 %argc3, %argc                   
  %tobool3 = icmp eq i32 %and2, %argc3            
  %and.cond = and i1 %tobool, %tobool3            
  %storemerge = select i1 %and.cond, i32 0, i32 1 
  ret i32 %storemerge
}


define i32 @main7b(i32 %argc, i32 %argc2, i32 %argc3, i8** nocapture %argv)
           nounwind readnone ssp {
entry:
  %and1 = and i32 %argc, %argc2                   
  %tobool = icmp eq i32 %argc2, %and1             
  %and2 = and i32 %argc, %argc3                   
  %tobool3 = icmp eq i32 %argc3, %and2            
  %and.cond = and i1 %tobool, %tobool3            
  %storemerge = select i1 %and.cond, i32 0, i32 1 
  ret i32 %storemerge
}


define i32 @main7c(i32 %argc, i32 %argc2, i32 %argc3, i8** nocapture %argv)
           nounwind readnone ssp {
entry:
  %and1 = and i32 %argc2, %argc                   
  %tobool = icmp eq i32 %argc2, %and1             
  %and2 = and i32 %argc3, %argc                   
  %tobool3 = icmp eq i32 %argc3, %and2            
  %and.cond = and i1 %tobool, %tobool3            
  %storemerge = select i1 %and.cond, i32 0, i32 1 
  ret i32 %storemerge
}


define i32 @main7d(i32 %argc, i32 %argc2, i32 %argc3,
                   i32 %argc4, i32 %argc5, i8** nocapture %argv)
           nounwind readnone ssp {
entry:
  %bc = and i32 %argc2, %argc4                    
  %de = and i32 %argc3, %argc5                    
  %and1 = and i32 %argc, %bc                      
  %tobool = icmp eq i32 %and1, %bc                
  %and2 = and i32 %argc, %de                      
  %tobool3 = icmp eq i32 %and2, %de               
  %and.cond = and i1 %tobool, %tobool3            
  %storemerge = select i1 %and.cond, i32 0, i32 1 
  ret i32 %storemerge
}


define i32 @main7e(i32 %argc, i32 %argc2, i32 %argc3,
                   i32 %argc4, i32 %argc5, i8** nocapture %argv)
           nounwind readnone ssp {
entry:
  %bc = and i32 %argc2, %argc4                    
  %de = and i32 %argc3, %argc5                    
  %and1 = and i32 %bc, %argc                      
  %tobool = icmp eq i32 %and1, %bc                
  %and2 = and i32 %de, %argc                      
  %tobool3 = icmp eq i32 %and2, %de               
  %and.cond = and i1 %tobool, %tobool3            
  %storemerge = select i1 %and.cond, i32 0, i32 1 
  ret i32 %storemerge
}


define i32 @main7f(i32 %argc, i32 %argc2, i32 %argc3,
                   i32 %argc4, i32 %argc5, i8** nocapture %argv)
           nounwind readnone ssp {
entry:
  %bc = and i32 %argc2, %argc4                    
  %de = and i32 %argc3, %argc5                    
  %and1 = and i32 %argc, %bc                      
  %tobool = icmp eq i32 %bc, %and1                
  %and2 = and i32 %argc, %de                      
  %tobool3 = icmp eq i32 %de, %and2               
  %and.cond = and i1 %tobool, %tobool3            
  %storemerge = select i1 %and.cond, i32 0, i32 1 
  ret i32 %storemerge
}


define i32 @main7g(i32 %argc, i32 %argc2, i32 %argc3,
                   i32 %argc4, i32 %argc5, i8** nocapture %argv)
           nounwind readnone ssp {
entry:
  %bc = and i32 %argc2, %argc4                    
  %de = and i32 %argc3, %argc5                    
  %and1 = and i32 %bc, %argc                      
  %tobool = icmp eq i32 %bc, %and1                
  %and2 = and i32 %de, %argc                      
  %tobool3 = icmp eq i32 %de, %and2               
  %and.cond = and i1 %tobool, %tobool3            
  %storemerge = select i1 %and.cond, i32 0, i32 1 
  ret i32 %storemerge
}
