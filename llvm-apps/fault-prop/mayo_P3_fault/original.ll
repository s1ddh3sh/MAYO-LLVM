; ModuleID = '../no_struct/mayo1.ll'
source_filename = "composite"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "arm-unknown-none-eabi"

@pqmayo_MAYO_1_ref_uint32_t_blocker = dso_local local_unnamed_addr global i32 0, align 4, !dbg !0
@pqmayo_MAYO_1_ref_uint64_t_blocker = dso_local local_unnamed_addr global i64 0, align 8, !dbg !27
@pqmayo_MAYO_1_ref_unsigned_char_blocker = dso_local local_unnamed_addr global i8 0, align 1, !dbg !31

; Function Attrs: inlinehint nounwind
define dso_local fastcc void @compute_P3(ptr noundef %p, ptr noundef nonnull %P1, ptr noundef nonnull %P2, ptr noundef nonnull %O, ptr noundef nonnull %P3) unnamed_addr #0 !dbg !91 {
entry:
    #dbg_value(ptr %p, !127, !DIExpression(), !128)
    #dbg_value(ptr %P1, !129, !DIExpression(), !128)
    #dbg_value(ptr %P2, !130, !DIExpression(), !128)
    #dbg_value(ptr %O, !131, !DIExpression(), !128)
    #dbg_value(ptr %P3, !132, !DIExpression(), !128)
    #dbg_value(i32 5, !133, !DIExpression(), !128)
    #dbg_value(i32 78, !135, !DIExpression(), !128)
    #dbg_value(i32 8, !136, !DIExpression(), !128)
    #dbg_value(ptr %p, !137, !DIExpression(), !141)
    #dbg_value(ptr %P1, !143, !DIExpression(), !141)
    #dbg_value(ptr %O, !144, !DIExpression(), !141)
    #dbg_value(ptr %P2, !145, !DIExpression(), !141)
    #dbg_value(i32 5, !146, !DIExpression(), !150)
    #dbg_value(ptr %P1, !152, !DIExpression(), !150)
    #dbg_value(ptr %O, !153, !DIExpression(), !150)
    #dbg_value(ptr %P2, !154, !DIExpression(), !150)
    #dbg_value(i32 78, !155, !DIExpression(), !150)
    #dbg_value(i32 78, !156, !DIExpression(), !150)
    #dbg_value(i32 8, !157, !DIExpression(), !150)
    #dbg_value(i32 1, !158, !DIExpression(), !150)
    #dbg_value(i32 0, !159, !DIExpression(), !150)
    #dbg_value(i32 0, !160, !DIExpression(), !162)
  br label %for.cond1.preheader.i1, !dbg !163

for.cond1.preheader.i1:                           ; preds = %for.cond1.for.inc17_crit_edge.i, %entry
  %r.07.i = phi i32 [ 0, %entry ], [ %inc18.i15, %for.cond1.for.inc17_crit_edge.i ]
  %bs_mat_entries_used.06.i = phi i32 [ 0, %entry ], [ %add14.i11, %for.cond1.for.inc17_crit_edge.i ]
  %indvars.iv5.i = phi i32 [ 78, %entry ], [ %indvars.iv.next.i, %for.cond1.for.inc17_crit_edge.i ]
    #dbg_value(i32 %r.07.i, !160, !DIExpression(), !162)
    #dbg_value(i32 %bs_mat_entries_used.06.i, !159, !DIExpression(), !150)
  %0 = add i32 %bs_mat_entries_used.06.i, %indvars.iv5.i, !dbg !164
    #dbg_value(i32 %r.07.i, !168, !DIExpression(), !169)
    #dbg_value(i32 %bs_mat_entries_used.06.i, !159, !DIExpression(), !150)
  br label %for.cond4.preheader.i2, !dbg !164

for.cond4.preheader.i2:                           ; preds = %for.inc15.i10, %for.cond1.preheader.i1
  %c.04.i = phi i32 [ %r.07.i, %for.cond1.preheader.i1 ], [ %inc.i12, %for.inc15.i10 ]
  %bs_mat_entries_used.13.i = phi i32 [ %bs_mat_entries_used.06.i, %for.cond1.preheader.i1 ], [ %add14.i11, %for.inc15.i10 ]
    #dbg_value(i32 %c.04.i, !168, !DIExpression(), !169)
    #dbg_value(i32 %bs_mat_entries_used.13.i, !159, !DIExpression(), !150)
    #dbg_value(i32 0, !170, !DIExpression(), !174)
  br label %for.body6.i3, !dbg !175

for.body6.i3:                                     ; preds = %m_vec_mul_add.exit, %for.cond4.preheader.i2
  %k.01.i4 = phi i32 [ 0, %for.cond4.preheader.i2 ], [ %add13.i, %m_vec_mul_add.exit ]
    #dbg_value(i32 %k.01.i4, !170, !DIExpression(), !174)
  %add.ptr.idx.i5 = mul nsw i32 %bs_mat_entries_used.13.i, 40, !dbg !176
  %add.ptr.i6 = getelementptr inbounds i8, ptr %P1, i32 %add.ptr.idx.i5, !dbg !176
  %mul8.i7 = shl nuw nsw i32 %c.04.i, 3, !dbg !179
  %1 = getelementptr i8, ptr %O, i32 %mul8.i7, !dbg !180
  %arrayidx.i8 = getelementptr i8, ptr %1, i32 %k.01.i4, !dbg !180
  %2 = load i8, ptr %arrayidx.i8, align 1, !dbg !180
  %mul9.i = shl nuw nsw i32 %r.07.i, 3, !dbg !181
  %add10.i = or disjoint i32 %mul9.i, %k.01.i4, !dbg !182
  %add.ptr12.idx.i = mul nuw nsw i32 %add10.i, 40, !dbg !183
  %add.ptr12.i = getelementptr inbounds nuw i8, ptr %P2, i32 %add.ptr12.idx.i, !dbg !183
    #dbg_value(i32 5, !184, !DIExpression(), !189)
    #dbg_value(ptr %add.ptr.i6, !191, !DIExpression(), !189)
    #dbg_value(i8 %2, !192, !DIExpression(), !189)
    #dbg_value(ptr %add.ptr12.i, !193, !DIExpression(), !189)
    #dbg_value(i8 %2, !194, !DIExpression(), !199)
  %conv.i.i = zext i8 %2 to i32, !dbg !201
  %mul.i.i = mul i32 %conv.i.i, 134480385, !dbg !202
    #dbg_value(i32 %mul.i.i, !203, !DIExpression(), !199)
    #dbg_value(i32 -252645136, !204, !DIExpression(), !199)
  %and.i.i = and i32 %mul.i.i, -252645136, !dbg !205
    #dbg_value(i32 %and.i.i, !206, !DIExpression(), !199)
  %shr.i.i = lshr exact i32 %and.i.i, 4, !dbg !207
  %shr1.i.i = lshr exact i32 %and.i.i, 3, !dbg !208
  %3 = xor i32 %shr.i.i, %shr1.i.i, !dbg !209
  %xor2.i.i = xor i32 %3, %mul.i.i, !dbg !209
    #dbg_value(i32 %xor2.i.i, !210, !DIExpression(), !189)
    #dbg_value(i64 1229782938247303441, !211, !DIExpression(), !189)
    #dbg_value(i32 0, !212, !DIExpression(), !214)
  br label %for.body.i, !dbg !215

for.body.i:                                       ; preds = %for.body.i, %for.body6.i3
  %i.01.i = phi i32 [ 0, %for.body6.i3 ], [ %inc.i19, %for.body.i ]
    #dbg_value(i32 %i.01.i, !212, !DIExpression(), !214)
  %arrayidx.i17 = getelementptr inbounds nuw i64, ptr %add.ptr.i6, i32 %i.01.i, !dbg !216
  %4 = load i64, ptr %arrayidx.i17, align 8, !dbg !216
  %and.i = and i64 %4, 1229782938247303441, !dbg !219
  %and1.i = and i32 %xor2.i.i, 255, !dbg !220
  %conv.i = zext nneg i32 %and1.i to i64, !dbg !221
  %mul.i18 = mul i64 %and.i, %conv.i, !dbg !222
  %shr.i = lshr i64 %4, 1, !dbg !223
  %and3.i = and i64 %shr.i, 1229782938247303441, !dbg !224
  %shr4.i = lshr i32 %xor2.i.i, 8, !dbg !225
  %and5.i = and i32 %shr4.i, 15, !dbg !226
  %conv6.i = zext nneg i32 %and5.i to i64, !dbg !227
  %mul7.i = mul nuw i64 %and3.i, %conv6.i, !dbg !228
  %xor.i = xor i64 %mul.i18, %mul7.i, !dbg !229
  %arrayidx8.i = getelementptr inbounds nuw i64, ptr %add.ptr.i6, i32 %i.01.i, !dbg !230
  %5 = load i64, ptr %arrayidx8.i, align 8, !dbg !230
  %shr9.i = lshr i64 %5, 2, !dbg !231
  %and10.i = and i64 %shr9.i, 1229782938247303441, !dbg !232
  %shr11.i = lshr i32 %xor2.i.i, 16, !dbg !233
  %and12.i = and i32 %shr11.i, 15, !dbg !234
  %conv13.i = zext nneg i32 %and12.i to i64, !dbg !235
  %mul14.i = mul nuw i64 %and10.i, %conv13.i, !dbg !236
  %xor15.i = xor i64 %xor.i, %mul14.i, !dbg !237
  %arrayidx16.i = getelementptr inbounds nuw i64, ptr %add.ptr.i6, i32 %i.01.i, !dbg !238
  %6 = load i64, ptr %arrayidx16.i, align 8, !dbg !238
  %shr17.i = lshr i64 %6, 3, !dbg !239
  %and18.i = and i64 %shr17.i, 1229782938247303441, !dbg !240
  %shr19.i = lshr i32 %xor2.i.i, 24, !dbg !241
  %and20.i = and i32 %shr19.i, 15, !dbg !242
  %conv21.i = zext nneg i32 %and20.i to i64, !dbg !243
  %mul22.i = mul nuw i64 %and18.i, %conv21.i, !dbg !244
  %xor23.i = xor i64 %xor15.i, %mul22.i, !dbg !245
  %arrayidx24.i = getelementptr inbounds nuw i64, ptr %add.ptr12.i, i32 %i.01.i, !dbg !246
  %7 = load i64, ptr %arrayidx24.i, align 8, !dbg !247
  %xor25.i = xor i64 %7, %xor23.i, !dbg !247
  store i64 %xor25.i, ptr %arrayidx24.i, align 8, !dbg !247
  %inc.i19 = add nuw nsw i32 %i.01.i, 1, !dbg !248
    #dbg_value(i32 %inc.i19, !212, !DIExpression(), !214)
  %exitcond.not.i20 = icmp eq i32 %inc.i19, 5, !dbg !249
  br i1 %exitcond.not.i20, label %m_vec_mul_add.exit, label %for.body.i, !dbg !215, !llvm.loop !250

m_vec_mul_add.exit:                               ; preds = %for.body.i
  %add13.i = add nuw nsw i32 %k.01.i4, 1, !dbg !253
    #dbg_value(i32 %add13.i, !170, !DIExpression(), !174)
  %exitcond.not.i9 = icmp eq i32 %add13.i, 8, !dbg !254
  br i1 %exitcond.not.i9, label %for.inc15.i10, label %for.body6.i3, !dbg !175, !llvm.loop !255

for.inc15.i10:                                    ; preds = %m_vec_mul_add.exit
    #dbg_value(i32 %bs_mat_entries_used.13.i, !159, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !150)
  %add14.i11 = add i32 %bs_mat_entries_used.13.i, 1, !dbg !257
    #dbg_value(i32 %add14.i11, !159, !DIExpression(), !150)
  %inc.i12 = add nuw nsw i32 %c.04.i, 1, !dbg !258
    #dbg_value(i32 %inc.i12, !168, !DIExpression(), !169)
  %exitcond1.not.i13 = icmp eq i32 %add14.i11, %0, !dbg !259
  br i1 %exitcond1.not.i13, label %for.cond1.for.inc17_crit_edge.i, label %for.cond4.preheader.i2, !dbg !164, !llvm.loop !260

for.cond1.for.inc17_crit_edge.i:                  ; preds = %for.inc15.i10
  %inc18.i15 = add nuw nsw i32 %r.07.i, 1, !dbg !262
    #dbg_value(i32 %inc18.i15, !160, !DIExpression(), !162)
  %indvars.iv.next.i = add nsw i32 %indvars.iv5.i, -1, !dbg !263
    #dbg_value(i32 %add14.i11, !159, !DIExpression(), !150)
  %exitcond2.not.i16 = icmp eq i32 %inc18.i15, 78, !dbg !264
  br i1 %exitcond2.not.i16, label %mul_add_m_upper_triangular_mat_x_mat.exit, label %for.cond1.preheader.i1, !dbg !163, !llvm.loop !265

mul_add_m_upper_triangular_mat_x_mat.exit:        ; preds = %for.cond1.for.inc17_crit_edge.i
    #dbg_value(i32 5, !267, !DIExpression(), !271)
    #dbg_value(ptr %O, !273, !DIExpression(), !271)
    #dbg_value(ptr %P2, !274, !DIExpression(), !271)
    #dbg_value(ptr %P3, !275, !DIExpression(), !271)
    #dbg_value(i32 78, !276, !DIExpression(), !271)
    #dbg_value(i32 8, !277, !DIExpression(), !271)
    #dbg_value(i32 8, !278, !DIExpression(), !271)
    #dbg_value(i32 0, !279, !DIExpression(), !281)
  br label %for.cond1.preheader.i, !dbg !282

for.cond1.preheader.i:                            ; preds = %for.inc17.i, %mul_add_m_upper_triangular_mat_x_mat.exit
  %r.03.i = phi i32 [ 0, %mul_add_m_upper_triangular_mat_x_mat.exit ], [ %inc18.i, %for.inc17.i ]
    #dbg_value(i32 %r.03.i, !279, !DIExpression(), !281)
    #dbg_value(i32 0, !283, !DIExpression(), !287)
  br label %for.cond4.preheader.i, !dbg !288

for.cond4.preheader.i:                            ; preds = %for.inc15.i, %for.cond1.preheader.i
  %c.02.i = phi i32 [ 0, %for.cond1.preheader.i ], [ %inc.i, %for.inc15.i ]
    #dbg_value(i32 %c.02.i, !283, !DIExpression(), !287)
    #dbg_value(i32 0, !289, !DIExpression(), !293)
  br label %for.body6.i, !dbg !294

for.body6.i:                                      ; preds = %m_vec_mul_add.exit61, %for.cond4.preheader.i
  %k.01.i = phi i32 [ 0, %for.cond4.preheader.i ], [ %add14.i, %m_vec_mul_add.exit61 ]
    #dbg_value(i32 %k.01.i, !289, !DIExpression(), !293)
  %mul.i = shl nuw nsw i32 %c.02.i, 3, !dbg !295
  %add.i = or disjoint i32 %mul.i, %k.01.i, !dbg !298
  %add.ptr.idx.i = mul nuw nsw i32 %add.i, 40, !dbg !299
  %add.ptr.i = getelementptr inbounds nuw i8, ptr %P2, i32 %add.ptr.idx.i, !dbg !299
  %mul8.i = shl nuw nsw i32 %c.02.i, 3, !dbg !300
  %8 = getelementptr i8, ptr %O, i32 %mul8.i, !dbg !301
  %arrayidx.i = getelementptr i8, ptr %8, i32 %r.03.i, !dbg !301
  %9 = load i8, ptr %arrayidx.i, align 1, !dbg !301
  %mul10.i = shl nuw nsw i32 %r.03.i, 3, !dbg !302
  %add11.i = or disjoint i32 %mul10.i, %k.01.i, !dbg !303
  %add.ptr13.idx.i = mul nuw nsw i32 %add11.i, 40, !dbg !304
  %add.ptr13.i = getelementptr inbounds nuw i8, ptr %P3, i32 %add.ptr13.idx.i, !dbg !304
    #dbg_value(i32 5, !184, !DIExpression(), !305)
    #dbg_value(ptr %add.ptr.i, !191, !DIExpression(), !305)
    #dbg_value(i8 %9, !192, !DIExpression(), !305)
    #dbg_value(ptr %add.ptr13.i, !193, !DIExpression(), !305)
    #dbg_value(i8 %9, !194, !DIExpression(), !307)
  %conv.i.i21 = zext i8 %9 to i32, !dbg !309
  %mul.i.i22 = mul i32 %conv.i.i21, 134480385, !dbg !310
    #dbg_value(i32 %mul.i.i22, !203, !DIExpression(), !307)
    #dbg_value(i32 -252645136, !204, !DIExpression(), !307)
  %and.i.i23 = and i32 %mul.i.i22, -252645136, !dbg !311
    #dbg_value(i32 %and.i.i23, !206, !DIExpression(), !307)
  %shr.i.i24 = lshr exact i32 %and.i.i23, 4, !dbg !312
  %shr1.i.i25 = lshr exact i32 %and.i.i23, 3, !dbg !313
  %10 = xor i32 %shr.i.i24, %shr1.i.i25, !dbg !314
  %xor2.i.i26 = xor i32 %10, %mul.i.i22, !dbg !314
    #dbg_value(i32 %xor2.i.i26, !210, !DIExpression(), !305)
    #dbg_value(i64 1229782938247303441, !211, !DIExpression(), !305)
    #dbg_value(i32 0, !212, !DIExpression(), !315)
  br label %for.body.i27, !dbg !316

for.body.i27:                                     ; preds = %for.body.i27, %for.body6.i
  %i.01.i28 = phi i32 [ 0, %for.body6.i ], [ %inc.i59, %for.body.i27 ]
    #dbg_value(i32 %i.01.i28, !212, !DIExpression(), !315)
  %arrayidx.i29 = getelementptr inbounds nuw i64, ptr %add.ptr.i, i32 %i.01.i28, !dbg !317
  %11 = load i64, ptr %arrayidx.i29, align 8, !dbg !317
  %and.i30 = and i64 %11, 1229782938247303441, !dbg !318
  %and1.i31 = and i32 %xor2.i.i26, 255, !dbg !319
  %conv.i32 = zext nneg i32 %and1.i31 to i64, !dbg !320
  %mul.i33 = mul i64 %and.i30, %conv.i32, !dbg !321
  %shr.i34 = lshr i64 %11, 1, !dbg !322
  %and3.i35 = and i64 %shr.i34, 1229782938247303441, !dbg !323
  %shr4.i36 = lshr i32 %xor2.i.i26, 8, !dbg !324
  %and5.i37 = and i32 %shr4.i36, 15, !dbg !325
  %conv6.i38 = zext nneg i32 %and5.i37 to i64, !dbg !326
  %mul7.i39 = mul nuw i64 %and3.i35, %conv6.i38, !dbg !327
  %xor.i40 = xor i64 %mul.i33, %mul7.i39, !dbg !328
  %arrayidx8.i41 = getelementptr inbounds nuw i64, ptr %add.ptr.i, i32 %i.01.i28, !dbg !329
  %12 = load i64, ptr %arrayidx8.i41, align 8, !dbg !329
  %shr9.i42 = lshr i64 %12, 2, !dbg !330
  %and10.i43 = and i64 %shr9.i42, 1229782938247303441, !dbg !331
  %shr11.i44 = lshr i32 %xor2.i.i26, 16, !dbg !332
  %and12.i45 = and i32 %shr11.i44, 15, !dbg !333
  %conv13.i46 = zext nneg i32 %and12.i45 to i64, !dbg !334
  %mul14.i47 = mul nuw i64 %and10.i43, %conv13.i46, !dbg !335
  %xor15.i48 = xor i64 %xor.i40, %mul14.i47, !dbg !336
  %arrayidx16.i49 = getelementptr inbounds nuw i64, ptr %add.ptr.i, i32 %i.01.i28, !dbg !337
  %13 = load i64, ptr %arrayidx16.i49, align 8, !dbg !337
  %shr17.i50 = lshr i64 %13, 3, !dbg !338
  %and18.i51 = and i64 %shr17.i50, 1229782938247303441, !dbg !339
  %shr19.i52 = lshr i32 %xor2.i.i26, 24, !dbg !340
  %and20.i53 = and i32 %shr19.i52, 15, !dbg !341
  %conv21.i54 = zext nneg i32 %and20.i53 to i64, !dbg !342
  %mul22.i55 = mul nuw i64 %and18.i51, %conv21.i54, !dbg !343
  %xor23.i56 = xor i64 %xor15.i48, %mul22.i55, !dbg !344
  %arrayidx24.i57 = getelementptr inbounds nuw i64, ptr %add.ptr13.i, i32 %i.01.i28, !dbg !345
  %14 = load i64, ptr %arrayidx24.i57, align 8, !dbg !346
  %xor25.i58 = xor i64 %14, %xor23.i56, !dbg !346
  store i64 %xor25.i58, ptr %arrayidx24.i57, align 8, !dbg !346
  %inc.i59 = add nuw nsw i32 %i.01.i28, 1, !dbg !347
    #dbg_value(i32 %inc.i59, !212, !DIExpression(), !315)
  %exitcond.not.i60 = icmp eq i32 %inc.i59, 5, !dbg !348
  br i1 %exitcond.not.i60, label %m_vec_mul_add.exit61, label %for.body.i27, !dbg !316, !llvm.loop !349

m_vec_mul_add.exit61:                             ; preds = %for.body.i27
  %add14.i = add nuw nsw i32 %k.01.i, 1, !dbg !351
    #dbg_value(i32 %add14.i, !289, !DIExpression(), !293)
  %exitcond.not.i = icmp eq i32 %add14.i, 8, !dbg !352
  br i1 %exitcond.not.i, label %for.inc15.i, label %for.body6.i, !dbg !294, !llvm.loop !353

for.inc15.i:                                      ; preds = %m_vec_mul_add.exit61
  %inc.i = add nuw nsw i32 %c.02.i, 1, !dbg !355
    #dbg_value(i32 %inc.i, !283, !DIExpression(), !287)
  %exitcond1.not.i = icmp eq i32 %inc.i, 78, !dbg !356
  br i1 %exitcond1.not.i, label %for.inc17.i, label %for.cond4.preheader.i, !dbg !288, !llvm.loop !357

for.inc17.i:                                      ; preds = %for.inc15.i
  %inc18.i = add nuw nsw i32 %r.03.i, 1, !dbg !359
    #dbg_value(i32 %inc18.i, !279, !DIExpression(), !281)
  %exitcond2.not.i = icmp eq i32 %inc18.i, 8, !dbg !360
  br i1 %exitcond2.not.i, label %mul_add_mat_trans_x_m_mat.exit, label %for.cond1.preheader.i, !dbg !282, !llvm.loop !361

mul_add_mat_trans_x_m_mat.exit:                   ; preds = %for.inc17.i
  ret void, !dbg !363
}

attributes #0 = { inlinehint nounwind "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-thumb-mode" }

!llvm.dbg.cu = !{!35, !37, !2, !66, !77}
!llvm.ident = !{!86, !86, !86, !86, !86}
!llvm.module.flags = !{!87, !88, !89, !90}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pqmayo_MAYO_1_ref_uint32_t_blocker", scope: !2, file: !29, line: 126, type: !34, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 20.1.2 (0ubuntu1~24.04.2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !26, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "../../../src/<stdin>", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!4 = !{!5, !10, !11, !14, !16, !19, !21, !24}
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !6, line: 60, baseType: !7)
!6 = !DIFile(filename: "/usr/lib/arm-none-eabi/include/sys/_stdint.h", directory: "")
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !8, line: 105, baseType: !9)
!8 = !DIFile(filename: "/usr/lib/arm-none-eabi/include/machine/_default_types.h", directory: "")
!9 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !6, line: 56, baseType: !12)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !8, line: 103, baseType: !13)
!13 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 32)
!15 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !6, line: 48, baseType: !17)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !8, line: 79, baseType: !18)
!18 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 32)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !6, line: 20, baseType: !22)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !8, line: 41, baseType: !23)
!23 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !6, line: 44, baseType: !25)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !8, line: 77, baseType: !10)
!26 = !{!0, !27, !31}
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(name: "pqmayo_MAYO_1_ref_uint64_t_blocker", scope: !2, file: !29, line: 127, type: !30, isLocal: false, isDefinition: true)
!29 = !DIFile(filename: "../../../src/arithmetic.c", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!30 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !5)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(name: "pqmayo_MAYO_1_ref_unsigned_char_blocker", scope: !2, file: !29, line: 128, type: !33, isLocal: false, isDefinition: true)
!33 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !15)
!34 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !16)
!35 = distinct !DICompileUnit(language: DW_LANG_C11, file: !36, producer: "Ubuntu clang version 20.1.2 (0ubuntu1~24.04.2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!36 = !DIFile(filename: "../<stdin>", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!37 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 20.1.2 (0ubuntu1~24.04.2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !38, globals: !45, splitDebugInlining: false, nameTableKind: None)
!38 = !{!39, !40, !15, !43, !14, !16}
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 32)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 32)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !6, line: 24, baseType: !42)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !8, line: 43, baseType: !15)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !44, line: 214, baseType: !18)
!44 = !DIFile(filename: "/usr/lib/gcc/arm-none-eabi/13.2.1/include/stddef.h", directory: "")
!45 = !{!46, !52, !60, !62, !64}
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(name: "f_tail", scope: !37, file: !48, line: 247, type: !49, isLocal: true, isDefinition: true)
!48 = !DIFile(filename: "../../../include/mayo.h", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 32, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 4)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(name: "even_nibbles", scope: !54, file: !55, line: 112, type: !59, isLocal: true, isDefinition: true)
!54 = distinct !DISubprogram(name: "transpose_16x16_nibbles", scope: !55, file: !55, line: 111, type: !56, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !37, retainedNodes: !58)
!55 = !DIFile(filename: "../../../src/mayo.c", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!56 = !DISubroutineType(types: !57)
!57 = !{null, !39}
!58 = !{}
!59 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression())
!61 = distinct !DIGlobalVariable(name: "even_bytes", scope: !54, file: !55, line: 113, type: !59, isLocal: true, isDefinition: true)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(name: "even_2bytes", scope: !54, file: !55, line: 114, type: !59, isLocal: true, isDefinition: true)
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(name: "even_half", scope: !54, file: !55, line: 115, type: !59, isLocal: true, isDefinition: true)
!66 = distinct !DICompileUnit(language: DW_LANG_C11, file: !67, producer: "Ubuntu clang version 20.1.2 (0ubuntu1~24.04.2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !68, globals: !70, splitDebugInlining: false, nameTableKind: None)
!67 = !DIFile(filename: "../../../src/common/<stdin>", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!68 = !{!69, !16, !5, !43, !41}
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!70 = !{!71}
!71 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression())
!72 = distinct !DIGlobalVariable(name: "KeccakF_RoundConstants", scope: !66, file: !73, line: 214, type: !74, isLocal: true, isDefinition: true)
!73 = !DIFile(filename: "../../../src/common/fips202.c", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 1536, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: 24)
!77 = distinct !DICompileUnit(language: DW_LANG_C11, file: !67, producer: "Ubuntu clang version 20.1.2 (0ubuntu1~24.04.2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !78, globals: !79, splitDebugInlining: false, nameTableKind: None)
!78 = !{!69, !10, !5, !16, !15}
!79 = !{!80}
!80 = !DIGlobalVariableExpression(var: !81, expr: !DIExpression())
!81 = distinct !DIGlobalVariable(name: "Rcon", scope: !77, file: !82, line: 388, type: !83, isLocal: true, isDefinition: true)
!82 = !DIFile(filename: "../../../src/common/aes_c.c", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!83 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 80, elements: !84)
!84 = !{!85}
!85 = !DISubrange(count: 10)
!86 = !{!"Ubuntu clang version 20.1.2 (0ubuntu1~24.04.2)"}
!87 = !{i32 2, !"Debug Info Version", i32 3}
!88 = !{i32 1, !"wchar_size", i32 4}
!89 = !{i32 1, !"min_enum_size", i32 4}
!90 = !{i32 1, !"Code Model", i32 1}
!91 = distinct !DISubprogram(name: "compute_P3", scope: !92, file: !92, line: 260, type: !93, scopeLine: 260, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !37, retainedNodes: !58)
!92 = !DIFile(filename: "../../../src/generic/generic_arithmetic.h", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!93 = !DISubroutineType(types: !94)
!94 = !{null, !95, !126, !39, !19, !39}
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 32)
!96 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !97)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "mayo_params_t", file: !48, line: 289, baseType: !98)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !48, line: 265, size: 736, elements: !99)
!99 = !{!100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !98, file: !48, line: 266, baseType: !10, size: 32)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !98, file: !48, line: 267, baseType: !10, size: 32, offset: 32)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "o", scope: !98, file: !48, line: 268, baseType: !10, size: 32, offset: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !98, file: !48, line: 269, baseType: !10, size: 32, offset: 96)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !98, file: !48, line: 270, baseType: !10, size: 32, offset: 128)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "f_tail", scope: !98, file: !48, line: 271, baseType: !19, size: 32, offset: 160)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "m_bytes", scope: !98, file: !48, line: 272, baseType: !10, size: 32, offset: 192)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "O_bytes", scope: !98, file: !48, line: 273, baseType: !10, size: 32, offset: 224)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "v_bytes", scope: !98, file: !48, line: 274, baseType: !10, size: 32, offset: 256)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "r_bytes", scope: !98, file: !48, line: 275, baseType: !10, size: 32, offset: 288)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "R_bytes", scope: !98, file: !48, line: 276, baseType: !10, size: 32, offset: 320)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "P1_bytes", scope: !98, file: !48, line: 277, baseType: !10, size: 32, offset: 352)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "P2_bytes", scope: !98, file: !48, line: 278, baseType: !10, size: 32, offset: 384)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "P3_bytes", scope: !98, file: !48, line: 279, baseType: !10, size: 32, offset: 416)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "csk_bytes", scope: !98, file: !48, line: 280, baseType: !10, size: 32, offset: 448)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "cpk_bytes", scope: !98, file: !48, line: 281, baseType: !10, size: 32, offset: 480)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "sig_bytes", scope: !98, file: !48, line: 282, baseType: !10, size: 32, offset: 512)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "salt_bytes", scope: !98, file: !48, line: 283, baseType: !10, size: 32, offset: 544)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "sk_seed_bytes", scope: !98, file: !48, line: 284, baseType: !10, size: 32, offset: 576)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "digest_bytes", scope: !98, file: !48, line: 285, baseType: !10, size: 32, offset: 608)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "pk_seed_bytes", scope: !98, file: !48, line: 286, baseType: !10, size: 32, offset: 640)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "m_vec_limbs", scope: !98, file: !48, line: 287, baseType: !10, size: 32, offset: 672)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !98, file: !48, line: 288, baseType: !123, size: 32, offset: 704)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 32)
!124 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !125)
!125 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 32)
!127 = !DILocalVariable(name: "p", arg: 1, scope: !91, file: !92, line: 260, type: !95)
!128 = !DILocation(line: 0, scope: !91)
!129 = !DILocalVariable(name: "P1", arg: 2, scope: !91, file: !92, line: 260, type: !126)
!130 = !DILocalVariable(name: "P2", arg: 3, scope: !91, file: !92, line: 260, type: !39)
!131 = !DILocalVariable(name: "O", arg: 4, scope: !91, file: !92, line: 260, type: !19)
!132 = !DILocalVariable(name: "P3", arg: 5, scope: !91, file: !92, line: 260, type: !39)
!133 = !DILocalVariable(name: "m_vec_limbs", scope: !91, file: !92, line: 262, type: !134)
!134 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!135 = !DILocalVariable(name: "param_v", scope: !91, file: !92, line: 263, type: !134)
!136 = !DILocalVariable(name: "param_o", scope: !91, file: !92, line: 264, type: !134)
!137 = !DILocalVariable(name: "p", arg: 1, scope: !138, file: !92, line: 74, type: !95)
!138 = distinct !DISubprogram(name: "P1_times_O", scope: !92, file: !92, line: 74, type: !139, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !37, retainedNodes: !58)
!139 = !DISubroutineType(types: !140)
!140 = !{null, !95, !126, !19, !39}
!141 = !DILocation(line: 0, scope: !138, inlinedAt: !142)
!142 = distinct !DILocation(line: 267, column: 5, scope: !91)
!143 = !DILocalVariable(name: "P1", arg: 2, scope: !138, file: !92, line: 74, type: !126)
!144 = !DILocalVariable(name: "O", arg: 3, scope: !138, file: !92, line: 74, type: !19)
!145 = !DILocalVariable(name: "acc", arg: 4, scope: !138, file: !92, line: 74, type: !39)
!146 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !147, file: !92, line: 16, type: !134)
!147 = distinct !DISubprogram(name: "mul_add_m_upper_triangular_mat_x_mat", scope: !92, file: !92, line: 16, type: !148, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !37, retainedNodes: !58)
!148 = !DISubroutineType(types: !149)
!149 = !{null, !134, !126, !19, !39, !134, !134, !134, !134}
!150 = !DILocation(line: 0, scope: !147, inlinedAt: !151)
!151 = distinct !DILocation(line: 78, column: 5, scope: !138, inlinedAt: !142)
!152 = !DILocalVariable(name: "bs_mat", arg: 2, scope: !147, file: !92, line: 16, type: !126)
!153 = !DILocalVariable(name: "mat", arg: 3, scope: !147, file: !92, line: 16, type: !19)
!154 = !DILocalVariable(name: "acc", arg: 4, scope: !147, file: !92, line: 16, type: !39)
!155 = !DILocalVariable(name: "bs_mat_rows", arg: 5, scope: !147, file: !92, line: 17, type: !134)
!156 = !DILocalVariable(name: "bs_mat_cols", arg: 6, scope: !147, file: !92, line: 17, type: !134)
!157 = !DILocalVariable(name: "mat_cols", arg: 7, scope: !147, file: !92, line: 17, type: !134)
!158 = !DILocalVariable(name: "triangular", arg: 8, scope: !147, file: !92, line: 17, type: !134)
!159 = !DILocalVariable(name: "bs_mat_entries_used", scope: !147, file: !92, line: 19, type: !10)
!160 = !DILocalVariable(name: "r", scope: !161, file: !92, line: 20, type: !10)
!161 = distinct !DILexicalBlock(scope: !147, file: !92, line: 20, column: 5)
!162 = !DILocation(line: 0, scope: !161, inlinedAt: !151)
!163 = !DILocation(line: 20, column: 5, scope: !161, inlinedAt: !151)
!164 = !DILocation(line: 21, column: 9, scope: !165, inlinedAt: !151)
!165 = distinct !DILexicalBlock(scope: !166, file: !92, line: 21, column: 9)
!166 = distinct !DILexicalBlock(scope: !167, file: !92, line: 20, column: 43)
!167 = distinct !DILexicalBlock(scope: !161, file: !92, line: 20, column: 5)
!168 = !DILocalVariable(name: "c", scope: !165, file: !92, line: 21, type: !10)
!169 = !DILocation(line: 0, scope: !165, inlinedAt: !151)
!170 = !DILocalVariable(name: "k", scope: !171, file: !92, line: 22, type: !10)
!171 = distinct !DILexicalBlock(scope: !172, file: !92, line: 22, column: 13)
!172 = distinct !DILexicalBlock(scope: !173, file: !92, line: 21, column: 60)
!173 = distinct !DILexicalBlock(scope: !165, file: !92, line: 21, column: 9)
!174 = !DILocation(line: 0, scope: !171, inlinedAt: !151)
!175 = !DILocation(line: 22, column: 13, scope: !171, inlinedAt: !151)
!176 = !DILocation(line: 23, column: 51, scope: !177, inlinedAt: !151)
!177 = distinct !DILexicalBlock(scope: !178, file: !92, line: 22, column: 51)
!178 = distinct !DILexicalBlock(scope: !171, file: !92, line: 22, column: 13)
!179 = !DILocation(line: 23, column: 94, scope: !177, inlinedAt: !151)
!180 = !DILocation(line: 23, column: 88, scope: !177, inlinedAt: !151)
!181 = !DILocation(line: 23, column: 134, scope: !177, inlinedAt: !151)
!182 = !DILocation(line: 23, column: 145, scope: !177, inlinedAt: !151)
!183 = !DILocation(line: 23, column: 115, scope: !177, inlinedAt: !151)
!184 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !185, file: !186, line: 31, type: !10)
!185 = distinct !DISubprogram(name: "m_vec_mul_add", scope: !186, file: !186, line: 31, type: !187, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !37, retainedNodes: !58)
!186 = !DIFile(filename: "../../../src/generic/arithmetic_fixed.h", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!187 = !DISubroutineType(types: !188)
!188 = !{null, !10, !126, !15, !39}
!189 = !DILocation(line: 0, scope: !185, inlinedAt: !190)
!190 = distinct !DILocation(line: 23, column: 17, scope: !177, inlinedAt: !151)
!191 = !DILocalVariable(name: "in", arg: 2, scope: !185, file: !186, line: 31, type: !126)
!192 = !DILocalVariable(name: "a", arg: 3, scope: !185, file: !186, line: 31, type: !15)
!193 = !DILocalVariable(name: "acc", arg: 4, scope: !185, file: !186, line: 31, type: !39)
!194 = !DILocalVariable(name: "b", arg: 1, scope: !195, file: !196, line: 129, type: !41)
!195 = distinct !DISubprogram(name: "mul_table", scope: !196, file: !196, line: 129, type: !197, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !37, retainedNodes: !58)
!196 = !DIFile(filename: "../../../src/simple_arithmetic.h", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!197 = !DISubroutineType(types: !198)
!198 = !{!16, !41}
!199 = !DILocation(line: 0, scope: !195, inlinedAt: !200)
!200 = distinct !DILocation(line: 33, column: 20, scope: !185, inlinedAt: !190)
!201 = !DILocation(line: 130, column: 19, scope: !195, inlinedAt: !200)
!202 = !DILocation(line: 130, column: 33, scope: !195, inlinedAt: !200)
!203 = !DILocalVariable(name: "x", scope: !195, file: !196, line: 130, type: !16)
!204 = !DILocalVariable(name: "high_nibble_mask", scope: !195, file: !196, line: 132, type: !16)
!205 = !DILocation(line: 134, column: 28, scope: !195, inlinedAt: !200)
!206 = !DILocalVariable(name: "high_half", scope: !195, file: !196, line: 134, type: !16)
!207 = !DILocation(line: 135, column: 28, scope: !195, inlinedAt: !200)
!208 = !DILocation(line: 135, column: 47, scope: !195, inlinedAt: !200)
!209 = !DILocation(line: 135, column: 34, scope: !195, inlinedAt: !200)
!210 = !DILocalVariable(name: "tab", scope: !185, file: !186, line: 33, type: !16)
!211 = !DILocalVariable(name: "lsb_ask", scope: !185, file: !186, line: 35, type: !5)
!212 = !DILocalVariable(name: "i", scope: !213, file: !186, line: 37, type: !10)
!213 = distinct !DILexicalBlock(scope: !185, file: !186, line: 37, column: 5)
!214 = !DILocation(line: 0, scope: !213, inlinedAt: !190)
!215 = !DILocation(line: 37, column: 5, scope: !213, inlinedAt: !190)
!216 = !DILocation(line: 38, column: 21, scope: !217, inlinedAt: !190)
!217 = distinct !DILexicalBlock(scope: !218, file: !186, line: 37, column: 43)
!218 = distinct !DILexicalBlock(scope: !213, file: !186, line: 37, column: 5)
!219 = !DILocation(line: 38, column: 33, scope: !217, inlinedAt: !190)
!220 = !DILocation(line: 38, column: 51, scope: !217, inlinedAt: !190)
!221 = !DILocation(line: 38, column: 46, scope: !217, inlinedAt: !190)
!222 = !DILocation(line: 38, column: 44, scope: !217, inlinedAt: !190)
!223 = !DILocation(line: 39, column: 27, scope: !217, inlinedAt: !190)
!224 = !DILocation(line: 39, column: 33, scope: !217, inlinedAt: !190)
!225 = !DILocation(line: 39, column: 52, scope: !217, inlinedAt: !190)
!226 = !DILocation(line: 39, column: 59, scope: !217, inlinedAt: !190)
!227 = !DILocation(line: 39, column: 46, scope: !217, inlinedAt: !190)
!228 = !DILocation(line: 39, column: 44, scope: !217, inlinedAt: !190)
!229 = !DILocation(line: 39, column: 17, scope: !217, inlinedAt: !190)
!230 = !DILocation(line: 40, column: 21, scope: !217, inlinedAt: !190)
!231 = !DILocation(line: 40, column: 27, scope: !217, inlinedAt: !190)
!232 = !DILocation(line: 40, column: 33, scope: !217, inlinedAt: !190)
!233 = !DILocation(line: 40, column: 52, scope: !217, inlinedAt: !190)
!234 = !DILocation(line: 40, column: 59, scope: !217, inlinedAt: !190)
!235 = !DILocation(line: 40, column: 46, scope: !217, inlinedAt: !190)
!236 = !DILocation(line: 40, column: 44, scope: !217, inlinedAt: !190)
!237 = !DILocation(line: 40, column: 17, scope: !217, inlinedAt: !190)
!238 = !DILocation(line: 41, column: 21, scope: !217, inlinedAt: !190)
!239 = !DILocation(line: 41, column: 27, scope: !217, inlinedAt: !190)
!240 = !DILocation(line: 41, column: 33, scope: !217, inlinedAt: !190)
!241 = !DILocation(line: 41, column: 52, scope: !217, inlinedAt: !190)
!242 = !DILocation(line: 41, column: 59, scope: !217, inlinedAt: !190)
!243 = !DILocation(line: 41, column: 46, scope: !217, inlinedAt: !190)
!244 = !DILocation(line: 41, column: 44, scope: !217, inlinedAt: !190)
!245 = !DILocation(line: 41, column: 17, scope: !217, inlinedAt: !190)
!246 = !DILocation(line: 38, column: 9, scope: !217, inlinedAt: !190)
!247 = !DILocation(line: 38, column: 16, scope: !217, inlinedAt: !190)
!248 = !DILocation(line: 37, column: 40, scope: !218, inlinedAt: !190)
!249 = !DILocation(line: 37, column: 20, scope: !218, inlinedAt: !190)
!250 = distinct !{!250, !215, !251, !252}
!251 = !DILocation(line: 42, column: 5, scope: !213, inlinedAt: !190)
!252 = !{!"llvm.loop.mustprogress"}
!253 = !DILocation(line: 22, column: 45, scope: !178, inlinedAt: !151)
!254 = !DILocation(line: 22, column: 31, scope: !178, inlinedAt: !151)
!255 = distinct !{!255, !175, !256, !252}
!256 = !DILocation(line: 24, column: 13, scope: !171, inlinedAt: !151)
!257 = !DILocation(line: 25, column: 33, scope: !172, inlinedAt: !151)
!258 = !DILocation(line: 21, column: 56, scope: !173, inlinedAt: !151)
!259 = !DILocation(line: 21, column: 40, scope: !173, inlinedAt: !151)
!260 = distinct !{!260, !164, !261, !252}
!261 = !DILocation(line: 26, column: 9, scope: !165, inlinedAt: !151)
!262 = !DILocation(line: 20, column: 39, scope: !167, inlinedAt: !151)
!263 = !DILocation(line: 20, column: 5, scope: !167, inlinedAt: !151)
!264 = !DILocation(line: 20, column: 23, scope: !167, inlinedAt: !151)
!265 = distinct !{!265, !163, !266, !252}
!266 = !DILocation(line: 27, column: 5, scope: !161, inlinedAt: !151)
!267 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !268, file: !92, line: 47, type: !134)
!268 = distinct !DISubprogram(name: "mul_add_mat_trans_x_m_mat", scope: !92, file: !92, line: 47, type: !269, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !37, retainedNodes: !58)
!269 = !DISubroutineType(types: !270)
!270 = !{null, !134, !19, !126, !39, !134, !134, !134}
!271 = !DILocation(line: 0, scope: !268, inlinedAt: !272)
!272 = distinct !DILocation(line: 270, column: 5, scope: !91)
!273 = !DILocalVariable(name: "mat", arg: 2, scope: !268, file: !92, line: 47, type: !19)
!274 = !DILocalVariable(name: "bs_mat", arg: 3, scope: !268, file: !92, line: 47, type: !126)
!275 = !DILocalVariable(name: "acc", arg: 4, scope: !268, file: !92, line: 47, type: !39)
!276 = !DILocalVariable(name: "mat_rows", arg: 5, scope: !268, file: !92, line: 48, type: !134)
!277 = !DILocalVariable(name: "mat_cols", arg: 6, scope: !268, file: !92, line: 48, type: !134)
!278 = !DILocalVariable(name: "bs_mat_cols", arg: 7, scope: !268, file: !92, line: 48, type: !134)
!279 = !DILocalVariable(name: "r", scope: !280, file: !92, line: 50, type: !10)
!280 = distinct !DILexicalBlock(scope: !268, file: !92, line: 50, column: 5)
!281 = !DILocation(line: 0, scope: !280, inlinedAt: !272)
!282 = !DILocation(line: 50, column: 5, scope: !280, inlinedAt: !272)
!283 = !DILocalVariable(name: "c", scope: !284, file: !92, line: 51, type: !10)
!284 = distinct !DILexicalBlock(scope: !285, file: !92, line: 51, column: 9)
!285 = distinct !DILexicalBlock(scope: !286, file: !92, line: 50, column: 40)
!286 = distinct !DILexicalBlock(scope: !280, file: !92, line: 50, column: 5)
!287 = !DILocation(line: 0, scope: !284, inlinedAt: !272)
!288 = !DILocation(line: 51, column: 9, scope: !284, inlinedAt: !272)
!289 = !DILocalVariable(name: "k", scope: !290, file: !92, line: 52, type: !10)
!290 = distinct !DILexicalBlock(scope: !291, file: !92, line: 52, column: 13)
!291 = distinct !DILexicalBlock(scope: !292, file: !92, line: 51, column: 44)
!292 = distinct !DILexicalBlock(scope: !284, file: !92, line: 51, column: 9)
!293 = !DILocation(line: 0, scope: !290, inlinedAt: !272)
!294 = !DILocation(line: 52, column: 13, scope: !290, inlinedAt: !272)
!295 = !DILocation(line: 53, column: 70, scope: !296, inlinedAt: !272)
!296 = distinct !DILexicalBlock(scope: !297, file: !92, line: 52, column: 54)
!297 = distinct !DILexicalBlock(scope: !290, file: !92, line: 52, column: 13)
!298 = !DILocation(line: 53, column: 84, scope: !296, inlinedAt: !272)
!299 = !DILocation(line: 53, column: 51, scope: !296, inlinedAt: !272)
!300 = !DILocation(line: 53, column: 96, scope: !296, inlinedAt: !272)
!301 = !DILocation(line: 53, column: 90, scope: !296, inlinedAt: !272)
!302 = !DILocation(line: 53, column: 136, scope: !296, inlinedAt: !272)
!303 = !DILocation(line: 53, column: 150, scope: !296, inlinedAt: !272)
!304 = !DILocation(line: 53, column: 117, scope: !296, inlinedAt: !272)
!305 = !DILocation(line: 0, scope: !185, inlinedAt: !306)
!306 = distinct !DILocation(line: 53, column: 17, scope: !296, inlinedAt: !272)
!307 = !DILocation(line: 0, scope: !195, inlinedAt: !308)
!308 = distinct !DILocation(line: 33, column: 20, scope: !185, inlinedAt: !306)
!309 = !DILocation(line: 130, column: 19, scope: !195, inlinedAt: !308)
!310 = !DILocation(line: 130, column: 33, scope: !195, inlinedAt: !308)
!311 = !DILocation(line: 134, column: 28, scope: !195, inlinedAt: !308)
!312 = !DILocation(line: 135, column: 28, scope: !195, inlinedAt: !308)
!313 = !DILocation(line: 135, column: 47, scope: !195, inlinedAt: !308)
!314 = !DILocation(line: 135, column: 34, scope: !195, inlinedAt: !308)
!315 = !DILocation(line: 0, scope: !213, inlinedAt: !306)
!316 = !DILocation(line: 37, column: 5, scope: !213, inlinedAt: !306)
!317 = !DILocation(line: 38, column: 21, scope: !217, inlinedAt: !306)
!318 = !DILocation(line: 38, column: 33, scope: !217, inlinedAt: !306)
!319 = !DILocation(line: 38, column: 51, scope: !217, inlinedAt: !306)
!320 = !DILocation(line: 38, column: 46, scope: !217, inlinedAt: !306)
!321 = !DILocation(line: 38, column: 44, scope: !217, inlinedAt: !306)
!322 = !DILocation(line: 39, column: 27, scope: !217, inlinedAt: !306)
!323 = !DILocation(line: 39, column: 33, scope: !217, inlinedAt: !306)
!324 = !DILocation(line: 39, column: 52, scope: !217, inlinedAt: !306)
!325 = !DILocation(line: 39, column: 59, scope: !217, inlinedAt: !306)
!326 = !DILocation(line: 39, column: 46, scope: !217, inlinedAt: !306)
!327 = !DILocation(line: 39, column: 44, scope: !217, inlinedAt: !306)
!328 = !DILocation(line: 39, column: 17, scope: !217, inlinedAt: !306)
!329 = !DILocation(line: 40, column: 21, scope: !217, inlinedAt: !306)
!330 = !DILocation(line: 40, column: 27, scope: !217, inlinedAt: !306)
!331 = !DILocation(line: 40, column: 33, scope: !217, inlinedAt: !306)
!332 = !DILocation(line: 40, column: 52, scope: !217, inlinedAt: !306)
!333 = !DILocation(line: 40, column: 59, scope: !217, inlinedAt: !306)
!334 = !DILocation(line: 40, column: 46, scope: !217, inlinedAt: !306)
!335 = !DILocation(line: 40, column: 44, scope: !217, inlinedAt: !306)
!336 = !DILocation(line: 40, column: 17, scope: !217, inlinedAt: !306)
!337 = !DILocation(line: 41, column: 21, scope: !217, inlinedAt: !306)
!338 = !DILocation(line: 41, column: 27, scope: !217, inlinedAt: !306)
!339 = !DILocation(line: 41, column: 33, scope: !217, inlinedAt: !306)
!340 = !DILocation(line: 41, column: 52, scope: !217, inlinedAt: !306)
!341 = !DILocation(line: 41, column: 59, scope: !217, inlinedAt: !306)
!342 = !DILocation(line: 41, column: 46, scope: !217, inlinedAt: !306)
!343 = !DILocation(line: 41, column: 44, scope: !217, inlinedAt: !306)
!344 = !DILocation(line: 41, column: 17, scope: !217, inlinedAt: !306)
!345 = !DILocation(line: 38, column: 9, scope: !217, inlinedAt: !306)
!346 = !DILocation(line: 38, column: 16, scope: !217, inlinedAt: !306)
!347 = !DILocation(line: 37, column: 40, scope: !218, inlinedAt: !306)
!348 = !DILocation(line: 37, column: 20, scope: !218, inlinedAt: !306)
!349 = distinct !{!349, !316, !350, !252}
!350 = !DILocation(line: 42, column: 5, scope: !213, inlinedAt: !306)
!351 = !DILocation(line: 52, column: 48, scope: !297, inlinedAt: !272)
!352 = !DILocation(line: 52, column: 31, scope: !297, inlinedAt: !272)
!353 = distinct !{!353, !294, !354, !252}
!354 = !DILocation(line: 54, column: 13, scope: !290, inlinedAt: !272)
!355 = !DILocation(line: 51, column: 40, scope: !292, inlinedAt: !272)
!356 = !DILocation(line: 51, column: 27, scope: !292, inlinedAt: !272)
!357 = distinct !{!357, !288, !358, !252}
!358 = !DILocation(line: 55, column: 9, scope: !284, inlinedAt: !272)
!359 = !DILocation(line: 50, column: 36, scope: !286, inlinedAt: !272)
!360 = !DILocation(line: 50, column: 23, scope: !286, inlinedAt: !272)
!361 = distinct !{!361, !282, !362, !252}
!362 = !DILocation(line: 56, column: 5, scope: !280, inlinedAt: !272)
!363 = !DILocation(line: 271, column: 1, scope: !91)
