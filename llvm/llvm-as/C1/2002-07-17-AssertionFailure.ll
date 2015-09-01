






define void @foo(i8* %reg5481) {
        %cast611 = bitcast i8* %reg5481 to i8**         
        %reg162 = load i8*, i8** %cast611            
        ptrtoint i8* %reg162 to i32             
        ret void
}
