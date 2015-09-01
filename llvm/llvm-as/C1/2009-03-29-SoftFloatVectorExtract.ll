


@m = external global <2 x double>

define double @vector_ex() nounwind #0 {
       %v = load <2 x double>, <2 x double>* @m
       %x = extractelement <2 x double> %v, i32 1
       ret double %x
}



attributes #0 = { "use-soft-float" = "true" }
