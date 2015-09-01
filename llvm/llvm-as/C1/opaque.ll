














%A = type opaque
%B = type { %C, %C, %B* }

%C = type { %A }

@g1 = external global %B
