; ModuleID = 'probe6.45414df2-cgu.0'
source_filename = "probe6.45414df2-cgu.0"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }

@alloc3 = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/bb8c2f41174caceec00c28bc6c5c20ae9f9a175c\\library\\core\\src\\num\\mod.rs" }>, align 1
@alloc4 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [75 x i8] }>, <{ [75 x i8] }>* @alloc3, i32 0, i32 0, i32 0), [16 x i8] c"K\00\00\00\00\00\00\00K\03\00\00\05\00\00\00" }>, align 8
@str.0 = internal constant [25 x i8] c"attempt to divide by zero"

; probe6::probe
; Function Attrs: uwtable
define void @_ZN6probe65probe17h44be5cf9fcd9843fE() unnamed_addr #0 {
start:
  %0 = call i1 @llvm.expect.i1(i1 false, i1 false)
  br i1 %0, label %panic.i, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$10div_euclid17hf083de733f9a1689E.exit"

panic.i:                                          ; preds = %start
; call core::panicking::panic
  call void @_ZN4core9panicking5panic17h127003f7760c5401E([0 x i8]* align 1 bitcast ([25 x i8]* @str.0 to [0 x i8]*), i64 25, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc4 to %"core::panic::location::Location"*)) #3
  unreachable

"_ZN4core3num21_$LT$impl$u20$u32$GT$10div_euclid17hf083de733f9a1689E.exit": ; preds = %start
  br label %bb1

bb1:                                              ; preds = %"_ZN4core3num21_$LT$impl$u20$u32$GT$10div_euclid17hf083de733f9a1689E.exit"
  ret void
}

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i1 @llvm.expect.i1(i1, i1) #1

; core::panicking::panic
; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking5panic17h127003f7760c5401E([0 x i8]* align 1, i64, %"core::panic::location::Location"* align 8) unnamed_addr #2

attributes #0 = { uwtable "target-cpu"="x86-64" }
attributes #1 = { nofree nosync nounwind readnone willreturn }
attributes #2 = { cold noinline noreturn uwtable "target-cpu"="x86-64" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}
