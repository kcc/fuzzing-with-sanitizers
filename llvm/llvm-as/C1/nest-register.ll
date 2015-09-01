




define i8* @nest_receiver(i8* nest %arg) nounwind {




        ret i8* %arg
}

define i8* @nest_caller(i8* %arg) nounwind {




        %result = call i8* @nest_receiver(i8* nest %arg)
        ret i8* %result
}
