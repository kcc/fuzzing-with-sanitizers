


@pci_indirect = external global { }             
@pcibios_last_bus = external global i32         

define void @pci_pcbios_init() nounwind section ".init.text" {
entry:
        br label %bb1.i

bb1.i:          
        %0 = load i32, i32* null, align 8            
        %1 = icmp ugt i32 %0, 1048575           
        br i1 %1, label %bb2.i, label %bb1.i

bb2.i:          
        %asmtmp.i.i = tail call { i32, i32, i32, i32 } asm "lcall *(%edi)
        %asmresult2.i.i = extractvalue { i32, i32, i32, i32 } %asmtmp.i.i, 1   
        
        %2 = lshr i32 %asmresult2.i.i, 8                
        %3 = trunc i32 %2 to i8         
        %4 = load i32, i32* @pcibios_last_bus, align 4               
        %5 = icmp slt i32 %4, 0         
        br i1 %5, label %bb5.i.i, label %bb6.i.i

bb5.i.i:                
        %asmresult4.i.i = extractvalue { i32, i32, i32, i32 } %asmtmp.i.i, 3   
        
        %6 = and i32 %asmresult4.i.i, 255               
        store i32 %6, i32* @pcibios_last_bus, align 4
        br label %bb6.i.i

bb6.i.i:                
        %7 = icmp eq i8 %3, 0           
        %or.cond.i.i = and i1 %7, false         
        br i1 %or.cond.i.i, label %bb1.i, label %bb8.i.i

bb8.i.i:                
        unreachable
}
