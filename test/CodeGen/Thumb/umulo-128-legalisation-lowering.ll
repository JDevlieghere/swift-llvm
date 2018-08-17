; NOTE: Assertions have been autogenerated by utils/update_llc_test_checks.py
; RUN: llc < %s -mtriple=thumb-eabi -mattr=+v6 | FileCheck %s --check-prefixes=THUMBV6

define { i128, i8 } @muloti_test(i128 %l, i128 %r) unnamed_addr #0 {
; THUMBV6-LABEL: muloti_test:
; THUMBV6: push    {r4, r5, r6, r7, lr}
; THUMBV6: sub     sp, #84
; THUMBV6-NEXT: mov     r6, r3
; THUMBV6-NEXT: mov     r7, r2
; THUMBV6-NEXT: mov     r4, r0
; THUMBV6-NEXT: movs    r5, #0
; THUMBV6-NEXT: mov     r0, sp
; THUMBV6-NEXT: str     r5, [r0, #12]
; THUMBV6-NEXT: str     r5, [r0, #8]
; THUMBV6-NEXT: ldr     r1, [sp, #116]
; THUMBV6-NEXT: str     r1, [sp, #68]           @ 4-byte Spill
; THUMBV6-NEXT: str     r1, [r0, #4]
; THUMBV6-NEXT: ldr     r1, [sp, #112]
; THUMBV6-NEXT: str     r1, [sp, #32]           @ 4-byte Spill
; THUMBV6-NEXT: str     r1, [r0]
; THUMBV6-NEXT: mov     r0, r2
; THUMBV6-NEXT: mov     r1, r3
; THUMBV6-NEXT: mov     r2, r5
; THUMBV6-NEXT: mov     r3, r5
; THUMBV6-NEXT: bl      __multi3
; THUMBV6-NEXT: str     r2, [sp, #40]           @ 4-byte Spill
; THUMBV6-NEXT: str     r3, [sp, #44]           @ 4-byte Spill
; THUMBV6-NEXT: str     r4, [sp, #72]           @ 4-byte Spill
; THUMBV6-NEXT: stm     r4!, {r0, r1}
; THUMBV6-NEXT: ldr     r4, [sp, #120]
; THUMBV6-NEXT: str     r6, [sp, #60]           @ 4-byte Spill
; THUMBV6-NEXT: mov     r0, r6
; THUMBV6-NEXT: mov     r1, r5
; THUMBV6-NEXT: mov     r2, r4
; THUMBV6-NEXT: mov     r3, r5
; THUMBV6-NEXT: bl      __aeabi_lmul
; THUMBV6-NEXT: mov     r6, r0
; THUMBV6-NEXT: str     r1, [sp, #52]           @ 4-byte Spill
; THUMBV6-NEXT: ldr     r0, [sp, #124]
; THUMBV6-NEXT: str     r0, [sp, #80]           @ 4-byte Spill
; THUMBV6-NEXT: mov     r1, r5
; THUMBV6-NEXT: mov     r2, r7
; THUMBV6-NEXT: mov     r3, r5
; THUMBV6-NEXT: bl      __aeabi_lmul
; THUMBV6-NEXT: str     r1, [sp, #28]           @ 4-byte Spill
; THUMBV6-NEXT: adds    r6, r0, r6
; THUMBV6-NEXT: str     r4, [sp, #64]           @ 4-byte Spill
; THUMBV6-NEXT: mov     r0, r4
; THUMBV6-NEXT: mov     r1, r5
; THUMBV6-NEXT: mov     r2, r7
; THUMBV6-NEXT: mov     r3, r5
; THUMBV6-NEXT: bl      __aeabi_lmul
; THUMBV6-NEXT: str     r0, [sp, #24]           @ 4-byte Spill
; THUMBV6-NEXT: adds    r0, r1, r6
; THUMBV6-NEXT: str     r0, [sp, #20]           @ 4-byte Spill
; THUMBV6-NEXT: mov     r0, r5
; THUMBV6-NEXT: adcs    r0, r5
; THUMBV6-NEXT: str     r0, [sp, #48]           @ 4-byte Spill
; THUMBV6-NEXT: ldr     r7, [sp, #104]
; THUMBV6-NEXT: ldr     r0, [sp, #68]           @ 4-byte Reload
; THUMBV6-NEXT: mov     r1, r5
; THUMBV6-NEXT: mov     r2, r7
; THUMBV6-NEXT: mov     r3, r5
; THUMBV6-NEXT: bl      __aeabi_lmul
; THUMBV6-NEXT: mov     r6, r0
; THUMBV6-NEXT: str     r1, [sp, #56]           @ 4-byte Spill
; THUMBV6-NEXT: ldr     r0, [sp, #108]
; THUMBV6-NEXT: str     r0, [sp, #76]           @ 4-byte Spill
; THUMBV6-NEXT: mov     r1, r5
; THUMBV6-NEXT: ldr     r4, [sp, #32]           @ 4-byte Reload
; THUMBV6-NEXT: mov     r2, r4
; THUMBV6-NEXT: mov     r3, r5
; THUMBV6-NEXT: bl      __aeabi_lmul
; THUMBV6-NEXT: str     r1, [sp, #36]           @ 4-byte Spill
; THUMBV6-NEXT: adds    r6, r0, r6
; THUMBV6-NEXT: mov     r0, r7
; THUMBV6-NEXT: mov     r1, r5
; THUMBV6-NEXT: mov     r2, r4
; THUMBV6-NEXT: mov     r3, r5
; THUMBV6-NEXT: bl      __aeabi_lmul
; THUMBV6-NEXT: adds    r2, r1, r6
; THUMBV6-NEXT: mov     r1, r5
; THUMBV6-NEXT: adcs    r1, r5
; THUMBV6-NEXT: ldr     r3, [sp, #24]           @ 4-byte Reload
; THUMBV6-NEXT: adds    r0, r0, r3
; THUMBV6-NEXT: ldr     r3, [sp, #20]           @ 4-byte Reload
; THUMBV6-NEXT: adcs    r2, r3
; THUMBV6-NEXT: ldr     r3, [sp, #40]           @ 4-byte Reload
; THUMBV6-NEXT: adds    r0, r3, r0
; THUMBV6-NEXT: ldr     r3, [sp, #72]           @ 4-byte Reload
; THUMBV6-NEXT: str     r0, [r3, #8]
; THUMBV6-NEXT: ldr     r0, [sp, #44]           @ 4-byte Reload
; THUMBV6-NEXT: adcs    r2, r0
; THUMBV6-NEXT: str     r2, [r3, #12]
; THUMBV6-NEXT: ldr     r2, [sp, #28]           @ 4-byte Reload
; THUMBV6-NEXT: adcs    r5, r5
; THUMBV6-NEXT: movs    r0, #1
; THUMBV6-NEXT: cmp     r2, #0
; THUMBV6-NEXT: mov     r3, r0
; THUMBV6-NEXT: bne     .LBB0_2
; THUMBV6: mov     r3, r2
; THUMBV6: ldr     r2, [sp, #60]           @ 4-byte Reload
; THUMBV6-NEXT: cmp     r2, #0
; THUMBV6-NEXT: mov     r4, r0
; THUMBV6-NEXT: bne     .LBB0_4
; THUMBV6: mov     r4, r2
; THUMBV6: ldr     r2, [sp, #80]           @ 4-byte Reload
; THUMBV6-NEXT: cmp     r2, #0
; THUMBV6-NEXT: mov     r2, r0
; THUMBV6-NEXT: bne     .LBB0_6
; THUMBV6: ldr     r2, [sp, #80]           @ 4-byte Reload
; THUMBV6: ands    r2, r4
; THUMBV6-NEXT: orrs    r2, r3
; THUMBV6-NEXT: ldr     r4, [sp, #52]           @ 4-byte Reload
; THUMBV6-NEXT: cmp     r4, #0
; THUMBV6-NEXT: mov     r3, r0
; THUMBV6-NEXT: bne     .LBB0_8
; THUMBV6: mov     r3, r4
; THUMBV6: orrs    r2, r3
; THUMBV6-NEXT: ldr     r3, [sp, #48]           @ 4-byte Reload
; THUMBV6-NEXT: orrs    r2, r3
; THUMBV6-NEXT: ldr     r3, [sp, #36]           @ 4-byte Reload
; THUMBV6-NEXT: cmp     r3, #0
; THUMBV6-NEXT: mov     r4, r0
; THUMBV6-NEXT: bne     .LBB0_10
; THUMBV6: mov     r4, r3
; THUMBV6: ldr     r3, [sp, #68]           @ 4-byte Reload
; THUMBV6-NEXT: cmp     r3, #0
; THUMBV6-NEXT: mov     r6, r0
; THUMBV6-NEXT: bne     .LBB0_12
; THUMBV6: mov     r6, r3
; THUMBV6: ldr     r3, [sp, #76]           @ 4-byte Reload
; THUMBV6-NEXT: cmp     r3, #0
; THUMBV6-NEXT: mov     r3, r0
; THUMBV6-NEXT: bne     .LBB0_14
; THUMBV6: ldr     r3, [sp, #76]           @ 4-byte Reload
; THUMBV6: ands    r3, r6
; THUMBV6-NEXT: orrs    r3, r4
; THUMBV6-NEXT: ldr     r6, [sp, #56]           @ 4-byte Reload
; THUMBV6-NEXT: cmp     r6, #0
; THUMBV6-NEXT: mov     r4, r0
; THUMBV6-NEXT: bne     .LBB0_16
; THUMBV6: mov     r4, r6
; THUMBV6: orrs    r3, r4
; THUMBV6-NEXT: orrs    r3, r1
; THUMBV6-NEXT: ldr     r4, [sp, #64]           @ 4-byte Reload
; THUMBV6-NEXT: ldr     r1, [sp, #80]           @ 4-byte Reload
; THUMBV6-NEXT: orrs    r4, r1
; THUMBV6-NEXT: cmp     r4, #0
; THUMBV6-NEXT: mov     r1, r0
; THUMBV6-NEXT: bne     .LBB0_18
; THUMBV6: mov     r1, r4
; THUMBV6: ldr     r4, [sp, #76]           @ 4-byte Reload
; THUMBV6-NEXT: orrs    r7, r4
; THUMBV6-NEXT: cmp     r7, #0
; THUMBV6-NEXT: mov     r4, r0
; THUMBV6-NEXT: bne     .LBB0_20
; THUMBV6: mov     r4, r7
; THUMBV6: ands    r4, r1
; THUMBV6-NEXT: orrs    r4, r3
; THUMBV6-NEXT: orrs    r4, r2
; THUMBV6-NEXT: orrs    r4, r5
; THUMBV6-NEXT: ands    r4, r0
; THUMBV6-NEXT: ldr     r0, [sp, #72]           @ 4-byte Reload
; THUMBV6-NEXT: strb    r4, [r0, #16]
; THUMBV6-NEXT: add     sp, #84
; THUMBV6-NEXT: pop     {r4, r5, r6, r7, pc}
start:
  %0 = tail call { i128, i1 } @llvm.umul.with.overflow.i128(i128 %l, i128 %r) #2
  %1 = extractvalue { i128, i1 } %0, 0
  %2 = extractvalue { i128, i1 } %0, 1
  %3 = zext i1 %2 to i8
  %4 = insertvalue { i128, i8 } undef, i128 %1, 0
  %5 = insertvalue { i128, i8 } %4, i8 %3, 1
  ret { i128, i8 } %5
}

; Function Attrs: nounwind readnone speculatable
declare { i128, i1 } @llvm.umul.with.overflow.i128(i128, i128) #1

attributes #0 = { nounwind readnone uwtable }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { nounwind }
