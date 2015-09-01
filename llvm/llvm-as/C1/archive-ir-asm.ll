




target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".global global_asm_sym"
module asm "global_asm_sym:"
module asm "local_asm_sym:"
module asm ".long undef_asm_sym"








