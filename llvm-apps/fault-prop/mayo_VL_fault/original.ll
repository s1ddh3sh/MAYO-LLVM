; ModuleID = '../no_struct/mayo1.ll'
source_filename = "composite"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "arm-unknown-none-eabi"

@pqmayo_MAYO_1_ref_uint32_t_blocker = dso_local local_unnamed_addr global i32 0, align 4, !dbg !0
@pqmayo_MAYO_1_ref_uint64_t_blocker = dso_local local_unnamed_addr global i64 0, align 8, !dbg !27
@pqmayo_MAYO_1_ref_unsigned_char_blocker = dso_local local_unnamed_addr global i8 0, align 1, !dbg !31

; Function Attrs: inlinehint nounwind
define dso_local fastcc void @mul_add_mat_x_m_mat(i32 noundef %m_vec_limbs, ptr noundef nonnull %mat, ptr noundef nonnull %bs_mat, ptr noundef nonnull %acc, i32 noundef %mat_rows, i32 noundef %mat_cols, i32 noundef range(i32 8, 11) %bs_mat_cols) unnamed_addr #0 !dbg !91 {
entry:
    #dbg_value(i32 5, !97, !DIExpression(), !98)
    #dbg_value(ptr %mat, !99, !DIExpression(), !98)
    #dbg_value(ptr %bs_mat, !100, !DIExpression(), !98)
    #dbg_value(ptr %acc, !101, !DIExpression(), !98)
    #dbg_value(i32 10, !102, !DIExpression(), !98)
    #dbg_value(i32 78, !103, !DIExpression(), !98)
    #dbg_value(i32 %bs_mat_cols, !104, !DIExpression(), !98)
    #dbg_value(i32 0, !105, !DIExpression(), !107)
  br label %for.cond1.preheader, !dbg !108

for.cond1.preheader:                              ; preds = %entry, %for.inc17
  %r.04 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ]
    #dbg_value(i32 %r.04, !105, !DIExpression(), !107)
    #dbg_value(i32 0, !109, !DIExpression(), !113)
  br label %for.cond4.preheader, !dbg !114

for.cond4.preheader:                              ; preds = %for.cond1.preheader, %for.inc15
  %c.03 = phi i32 [ 0, %for.cond1.preheader ], [ %inc, %for.inc15 ]
    #dbg_value(i32 %c.03, !109, !DIExpression(), !113)
    #dbg_value(i32 0, !115, !DIExpression(), !119)
  br label %for.body6, !dbg !120

for.body6:                                        ; preds = %for.cond4.preheader, %m_vec_mul_add.exit
  %k.02 = phi i32 [ 0, %for.cond4.preheader ], [ %add14, %m_vec_mul_add.exit ]
    #dbg_value(i32 %k.02, !115, !DIExpression(), !119)
  %mul = mul nuw nsw i32 %c.03, %bs_mat_cols, !dbg !121
  %add = add nuw nsw i32 %mul, %k.02, !dbg !124
  %add.ptr.idx = mul nuw nsw i32 %add, 40, !dbg !125
  %add.ptr = getelementptr inbounds nuw i8, ptr %bs_mat, i32 %add.ptr.idx, !dbg !125
  %mul8 = mul nuw nsw i32 %r.04, 78, !dbg !126
  %0 = getelementptr i8, ptr %mat, i32 %mul8, !dbg !127
  %arrayidx = getelementptr i8, ptr %0, i32 %c.03, !dbg !127
  %1 = load i8, ptr %arrayidx, align 1, !dbg !127
  %mul10 = mul nuw nsw i32 %r.04, %bs_mat_cols, !dbg !128
  %add11 = add nuw nsw i32 %mul10, %k.02, !dbg !129
  %add.ptr13.idx = mul nuw nsw i32 %add11, 40, !dbg !130
  %add.ptr13 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr13.idx, !dbg !130
    #dbg_value(i32 5, !131, !DIExpression(), !136)
    #dbg_value(ptr %add.ptr, !138, !DIExpression(), !136)
    #dbg_value(i8 %1, !139, !DIExpression(), !136)
    #dbg_value(ptr %add.ptr13, !140, !DIExpression(), !136)
    #dbg_value(i8 %1, !141, !DIExpression(), !146)
  %conv.i.i = zext i8 %1 to i32, !dbg !148
  %mul.i.i = mul i32 %conv.i.i, 134480385, !dbg !149
    #dbg_value(i32 %mul.i.i, !150, !DIExpression(), !146)
    #dbg_value(i32 -252645136, !151, !DIExpression(), !146)
  %and.i.i = and i32 %mul.i.i, -252645136, !dbg !152
    #dbg_value(i32 %and.i.i, !153, !DIExpression(), !146)
  %shr.i.i = lshr exact i32 %and.i.i, 4, !dbg !154
  %shr1.i.i = lshr exact i32 %and.i.i, 3, !dbg !155
  %2 = xor i32 %shr.i.i, %shr1.i.i, !dbg !156
  %xor2.i.i = xor i32 %2, %mul.i.i, !dbg !156
    #dbg_value(i32 %xor2.i.i, !157, !DIExpression(), !136)
    #dbg_value(i64 1229782938247303441, !158, !DIExpression(), !136)
    #dbg_value(i32 0, !159, !DIExpression(), !161)
  br label %iter_0_start

m_vec_mul_add.exit:                               ; preds = %iter_4_end
  %add14 = add nuw nsw i32 %k.02, 1, !dbg !162
    #dbg_value(i32 %add14, !115, !DIExpression(), !119)
  %exitcond.not = icmp eq i32 %add14, %bs_mat_cols, !dbg !163
  br i1 %exitcond.not, label %for.inc15, label %for.body6, !dbg !120, !llvm.loop !164

for.inc15:                                        ; preds = %m_vec_mul_add.exit
  %inc = add nuw nsw i32 %c.03, 1, !dbg !167
    #dbg_value(i32 %inc, !109, !DIExpression(), !113)
  %exitcond1.not = icmp eq i32 %inc, 78, !dbg !168
  br i1 %exitcond1.not, label %for.inc17, label %for.cond4.preheader, !dbg !114, !llvm.loop !169

for.inc17:                                        ; preds = %for.inc15
  %inc18 = add nuw nsw i32 %r.04, 1, !dbg !171
    #dbg_value(i32 %inc18, !105, !DIExpression(), !107)
  %exitcond2.not = icmp eq i32 %inc18, 10, !dbg !172
  br i1 %exitcond2.not, label %for.end19, label %for.cond1.preheader, !dbg !108, !llvm.loop !173

for.end19:                                        ; preds = %for.inc17
  ret void, !dbg !175

iter_0_start:                                     ; preds = %for.body6
  br label %for.body.i.iter0

for.body.i.iter0:                                 ; preds = %iter_0_start
    #dbg_value(i32 undef, !159, !DIExpression(), !161)
  %arrayidx.i.iter0 = getelementptr inbounds nuw i64, ptr %add.ptr, i32 0, !dbg !176
  %3 = load i64, ptr %arrayidx.i.iter0, align 8, !dbg !176
  %and.i.iter0 = and i64 %3, 1229782938247303441, !dbg !179
  %and1.i.iter0 = and i32 %xor2.i.i, 255, !dbg !180
  %conv.i.iter0 = zext nneg i32 %and1.i.iter0 to i64, !dbg !181
  %mul.i.iter0 = mul i64 %and.i.iter0, %conv.i.iter0, !dbg !182
  %shr.i.iter0 = lshr i64 %3, 1, !dbg !183
  %and3.i.iter0 = and i64 %shr.i.iter0, 1229782938247303441, !dbg !184
  %shr4.i.iter0 = lshr i32 %xor2.i.i, 8, !dbg !185
  %and5.i.iter0 = and i32 %shr4.i.iter0, 15, !dbg !186
  %conv6.i.iter0 = zext nneg i32 %and5.i.iter0 to i64, !dbg !187
  %mul7.i.iter0 = mul nuw i64 %and3.i.iter0, %conv6.i.iter0, !dbg !188
  %xor.i.iter0 = xor i64 %mul.i.iter0, %mul7.i.iter0, !dbg !189
  %arrayidx8.i.iter0 = getelementptr inbounds nuw i64, ptr %add.ptr, i32 0, !dbg !190
  %4 = load i64, ptr %arrayidx8.i.iter0, align 8, !dbg !190
  %shr9.i.iter0 = lshr i64 %4, 2, !dbg !191
  %and10.i.iter0 = and i64 %shr9.i.iter0, 1229782938247303441, !dbg !192
  %shr11.i.iter0 = lshr i32 %xor2.i.i, 16, !dbg !193
  %and12.i.iter0 = and i32 %shr11.i.iter0, 15, !dbg !194
  %conv13.i.iter0 = zext nneg i32 %and12.i.iter0 to i64, !dbg !195
  %mul14.i.iter0 = mul nuw i64 %and10.i.iter0, %conv13.i.iter0, !dbg !196
  %xor15.i.iter0 = xor i64 %xor.i.iter0, %mul14.i.iter0, !dbg !197
  %arrayidx16.i.iter0 = getelementptr inbounds nuw i64, ptr %add.ptr, i32 0, !dbg !198
  %5 = load i64, ptr %arrayidx16.i.iter0, align 8, !dbg !198
  %shr17.i.iter0 = lshr i64 %5, 3, !dbg !199
  %and18.i.iter0 = and i64 %shr17.i.iter0, 1229782938247303441, !dbg !200
  %shr19.i.iter0 = lshr i32 %xor2.i.i, 24, !dbg !201
  %and20.i.iter0 = and i32 %shr19.i.iter0, 15, !dbg !202
  %conv21.i.iter0 = zext nneg i32 %and20.i.iter0 to i64, !dbg !203
  %mul22.i.iter0 = mul nuw i64 %and18.i.iter0, %conv21.i.iter0, !dbg !204
  %xor23.i.iter0 = xor i64 %xor15.i.iter0, %mul22.i.iter0, !dbg !205
  %arrayidx24.i.iter0 = getelementptr inbounds nuw i64, ptr %add.ptr13, i32 0, !dbg !206
  %6 = load i64, ptr %arrayidx24.i.iter0, align 8, !dbg !207
  %xor25.i.iter0 = xor i64 %6, %xor23.i.iter0, !dbg !207
  store i64 %xor25.i.iter0, ptr %arrayidx24.i.iter0, align 8, !dbg !207
    #dbg_value(i32 undef, !159, !DIExpression(), !161)
  br label %iter_0_end

iter_0_end:                                       ; preds = %for.body.i.iter0
  br label %iter_1_start

iter_1_start:                                     ; preds = %iter_0_end
  br label %for.body.i.iter1

for.body.i.iter1:                                 ; preds = %iter_1_start
    #dbg_value(i32 undef, !159, !DIExpression(), !161)
  %arrayidx.i.iter1 = getelementptr inbounds nuw i64, ptr %add.ptr, i32 1, !dbg !176
  %7 = load i64, ptr %arrayidx.i.iter1, align 8, !dbg !176
  %and.i.iter1 = and i64 %7, 1229782938247303441, !dbg !179
  %and1.i.iter1 = and i32 %xor2.i.i, 255, !dbg !180
  %conv.i.iter1 = zext nneg i32 %and1.i.iter1 to i64, !dbg !181
  %mul.i.iter1 = mul i64 %and.i.iter1, %conv.i.iter1, !dbg !182
  %shr.i.iter1 = lshr i64 %7, 1, !dbg !183
  %and3.i.iter1 = and i64 %shr.i.iter1, 1229782938247303441, !dbg !184
  %shr4.i.iter1 = lshr i32 %xor2.i.i, 8, !dbg !185
  %and5.i.iter1 = and i32 %shr4.i.iter1, 15, !dbg !186
  %conv6.i.iter1 = zext nneg i32 %and5.i.iter1 to i64, !dbg !187
  %mul7.i.iter1 = mul nuw i64 %and3.i.iter1, %conv6.i.iter1, !dbg !188
  %xor.i.iter1 = xor i64 %mul.i.iter1, %mul7.i.iter1, !dbg !189
  %arrayidx8.i.iter1 = getelementptr inbounds nuw i64, ptr %add.ptr, i32 1, !dbg !190
  %8 = load i64, ptr %arrayidx8.i.iter1, align 8, !dbg !190
  %shr9.i.iter1 = lshr i64 %8, 2, !dbg !191
  %and10.i.iter1 = and i64 %shr9.i.iter1, 1229782938247303441, !dbg !192
  %shr11.i.iter1 = lshr i32 %xor2.i.i, 16, !dbg !193
  %and12.i.iter1 = and i32 %shr11.i.iter1, 15, !dbg !194
  %conv13.i.iter1 = zext nneg i32 %and12.i.iter1 to i64, !dbg !195
  %mul14.i.iter1 = mul nuw i64 %and10.i.iter1, %conv13.i.iter1, !dbg !196
  %xor15.i.iter1 = xor i64 %xor.i.iter1, %mul14.i.iter1, !dbg !197
  %arrayidx16.i.iter1 = getelementptr inbounds nuw i64, ptr %add.ptr, i32 1, !dbg !198
  %9 = load i64, ptr %arrayidx16.i.iter1, align 8, !dbg !198
  %shr17.i.iter1 = lshr i64 %9, 3, !dbg !199
  %and18.i.iter1 = and i64 %shr17.i.iter1, 1229782938247303441, !dbg !200
  %shr19.i.iter1 = lshr i32 %xor2.i.i, 24, !dbg !201
  %and20.i.iter1 = and i32 %shr19.i.iter1, 15, !dbg !202
  %conv21.i.iter1 = zext nneg i32 %and20.i.iter1 to i64, !dbg !203
  %mul22.i.iter1 = mul nuw i64 %and18.i.iter1, %conv21.i.iter1, !dbg !204
  %xor23.i.iter1 = xor i64 %xor15.i.iter1, %mul22.i.iter1, !dbg !205
  %arrayidx24.i.iter1 = getelementptr inbounds nuw i64, ptr %add.ptr13, i32 1, !dbg !206
  %10 = load i64, ptr %arrayidx24.i.iter1, align 8, !dbg !207
  %xor25.i.iter1 = xor i64 %10, %xor23.i.iter1, !dbg !207
  store i64 %xor25.i.iter1, ptr %arrayidx24.i.iter1, align 8, !dbg !207
    #dbg_value(i32 undef, !159, !DIExpression(), !161)
  br label %iter_1_end

iter_1_end:                                       ; preds = %for.body.i.iter1
  br label %iter_2_start

iter_2_start:                                     ; preds = %iter_1_end
  br label %for.body.i.iter2

for.body.i.iter2:                                 ; preds = %iter_2_start
    #dbg_value(i32 undef, !159, !DIExpression(), !161)
  %arrayidx.i.iter2 = getelementptr inbounds nuw i64, ptr %add.ptr, i32 2, !dbg !176
  %11 = load i64, ptr %arrayidx.i.iter2, align 8, !dbg !176
  %and.i.iter2 = and i64 %11, 1229782938247303441, !dbg !179
  %and1.i.iter2 = and i32 %xor2.i.i, 255, !dbg !180
  %conv.i.iter2 = zext nneg i32 %and1.i.iter2 to i64, !dbg !181
  %mul.i.iter2 = mul i64 %and.i.iter2, %conv.i.iter2, !dbg !182
  %shr.i.iter2 = lshr i64 %11, 1, !dbg !183
  %and3.i.iter2 = and i64 %shr.i.iter2, 1229782938247303441, !dbg !184
  %shr4.i.iter2 = lshr i32 %xor2.i.i, 8, !dbg !185
  %and5.i.iter2 = and i32 %shr4.i.iter2, 15, !dbg !186
  %conv6.i.iter2 = zext nneg i32 %and5.i.iter2 to i64, !dbg !187
  %mul7.i.iter2 = mul nuw i64 %and3.i.iter2, %conv6.i.iter2, !dbg !188
  %xor.i.iter2 = xor i64 %mul.i.iter2, %mul7.i.iter2, !dbg !189
  %arrayidx8.i.iter2 = getelementptr inbounds nuw i64, ptr %add.ptr, i32 2, !dbg !190
  %12 = load i64, ptr %arrayidx8.i.iter2, align 8, !dbg !190
  %shr9.i.iter2 = lshr i64 %12, 2, !dbg !191
  %and10.i.iter2 = and i64 %shr9.i.iter2, 1229782938247303441, !dbg !192
  %shr11.i.iter2 = lshr i32 %xor2.i.i, 16, !dbg !193
  %and12.i.iter2 = and i32 %shr11.i.iter2, 15, !dbg !194
  %conv13.i.iter2 = zext nneg i32 %and12.i.iter2 to i64, !dbg !195
  %mul14.i.iter2 = mul nuw i64 %and10.i.iter2, %conv13.i.iter2, !dbg !196
  %xor15.i.iter2 = xor i64 %xor.i.iter2, %mul14.i.iter2, !dbg !197
  %arrayidx16.i.iter2 = getelementptr inbounds nuw i64, ptr %add.ptr, i32 2, !dbg !198
  %13 = load i64, ptr %arrayidx16.i.iter2, align 8, !dbg !198
  %shr17.i.iter2 = lshr i64 %13, 3, !dbg !199
  %and18.i.iter2 = and i64 %shr17.i.iter2, 1229782938247303441, !dbg !200
  %shr19.i.iter2 = lshr i32 %xor2.i.i, 24, !dbg !201
  %and20.i.iter2 = and i32 %shr19.i.iter2, 15, !dbg !202
  %conv21.i.iter2 = zext nneg i32 %and20.i.iter2 to i64, !dbg !203
  %mul22.i.iter2 = mul nuw i64 %and18.i.iter2, %conv21.i.iter2, !dbg !204
  %xor23.i.iter2 = xor i64 %xor15.i.iter2, %mul22.i.iter2, !dbg !205
  %arrayidx24.i.iter2 = getelementptr inbounds nuw i64, ptr %add.ptr13, i32 2, !dbg !206
  %14 = load i64, ptr %arrayidx24.i.iter2, align 8, !dbg !207
  %xor25.i.iter2 = xor i64 %14, %xor23.i.iter2, !dbg !207
  store i64 %xor25.i.iter2, ptr %arrayidx24.i.iter2, align 8, !dbg !207
    #dbg_value(i32 undef, !159, !DIExpression(), !161)
  br label %iter_2_end

iter_2_end:                                       ; preds = %for.body.i.iter2
  br label %iter_3_start

iter_3_start:                                     ; preds = %iter_2_end
  br label %for.body.i.iter3

for.body.i.iter3:                                 ; preds = %iter_3_start
    #dbg_value(i32 undef, !159, !DIExpression(), !161)
  %arrayidx.i.iter3 = getelementptr inbounds nuw i64, ptr %add.ptr, i32 3, !dbg !176
  %15 = load i64, ptr %arrayidx.i.iter3, align 8, !dbg !176
  %and.i.iter3 = and i64 %15, 1229782938247303441, !dbg !179
  %and1.i.iter3 = and i32 %xor2.i.i, 255, !dbg !180
  %conv.i.iter3 = zext nneg i32 %and1.i.iter3 to i64, !dbg !181
  %mul.i.iter3 = mul i64 %and.i.iter3, %conv.i.iter3, !dbg !182
  %shr.i.iter3 = lshr i64 %15, 1, !dbg !183
  %and3.i.iter3 = and i64 %shr.i.iter3, 1229782938247303441, !dbg !184
  %shr4.i.iter3 = lshr i32 %xor2.i.i, 8, !dbg !185
  %and5.i.iter3 = and i32 %shr4.i.iter3, 15, !dbg !186
  %conv6.i.iter3 = zext nneg i32 %and5.i.iter3 to i64, !dbg !187
  %mul7.i.iter3 = mul nuw i64 %and3.i.iter3, %conv6.i.iter3, !dbg !188
  %xor.i.iter3 = xor i64 %mul.i.iter3, %mul7.i.iter3, !dbg !189
  %arrayidx8.i.iter3 = getelementptr inbounds nuw i64, ptr %add.ptr, i32 3, !dbg !190
  %16 = load i64, ptr %arrayidx8.i.iter3, align 8, !dbg !190
  %shr9.i.iter3 = lshr i64 %16, 2, !dbg !191
  %and10.i.iter3 = and i64 %shr9.i.iter3, 1229782938247303441, !dbg !192
  %shr11.i.iter3 = lshr i32 %xor2.i.i, 16, !dbg !193
  %and12.i.iter3 = and i32 %shr11.i.iter3, 15, !dbg !194
  %conv13.i.iter3 = zext nneg i32 %and12.i.iter3 to i64, !dbg !195
  %mul14.i.iter3 = mul nuw i64 %and10.i.iter3, %conv13.i.iter3, !dbg !196
  %xor15.i.iter3 = xor i64 %xor.i.iter3, %mul14.i.iter3, !dbg !197
  %arrayidx16.i.iter3 = getelementptr inbounds nuw i64, ptr %add.ptr, i32 3, !dbg !198
  %17 = load i64, ptr %arrayidx16.i.iter3, align 8, !dbg !198
  %shr17.i.iter3 = lshr i64 %17, 3, !dbg !199
  %and18.i.iter3 = and i64 %shr17.i.iter3, 1229782938247303441, !dbg !200
  %shr19.i.iter3 = lshr i32 %xor2.i.i, 24, !dbg !201
  %and20.i.iter3 = and i32 %shr19.i.iter3, 15, !dbg !202
  %conv21.i.iter3 = zext nneg i32 %and20.i.iter3 to i64, !dbg !203
  %mul22.i.iter3 = mul nuw i64 %and18.i.iter3, %conv21.i.iter3, !dbg !204
  %xor23.i.iter3 = xor i64 %xor15.i.iter3, %mul22.i.iter3, !dbg !205
  %arrayidx24.i.iter3 = getelementptr inbounds nuw i64, ptr %add.ptr13, i32 3, !dbg !206
  %18 = load i64, ptr %arrayidx24.i.iter3, align 8, !dbg !207
  %xor25.i.iter3 = xor i64 %18, %xor23.i.iter3, !dbg !207
  store i64 %xor25.i.iter3, ptr %arrayidx24.i.iter3, align 8, !dbg !207
    #dbg_value(i32 undef, !159, !DIExpression(), !161)
  br label %iter_3_end

iter_3_end:                                       ; preds = %for.body.i.iter3
  br label %iter_4_start

iter_4_start:                                     ; preds = %iter_3_end
  br label %for.body.i.iter4

for.body.i.iter4:                                 ; preds = %iter_4_start
    #dbg_value(i32 undef, !159, !DIExpression(), !161)
  %arrayidx.i.iter4 = getelementptr inbounds nuw i64, ptr %add.ptr, i32 4, !dbg !176
  %19 = load i64, ptr %arrayidx.i.iter4, align 8, !dbg !176
  %and.i.iter4 = and i64 %19, 1229782938247303441, !dbg !179
  %and1.i.iter4 = and i32 %xor2.i.i, 255, !dbg !180
  %conv.i.iter4 = zext nneg i32 %and1.i.iter4 to i64, !dbg !181
  %mul.i.iter4 = mul i64 %and.i.iter4, %conv.i.iter4, !dbg !182
  %shr.i.iter4 = lshr i64 %19, 1, !dbg !183
  %and3.i.iter4 = and i64 %shr.i.iter4, 1229782938247303441, !dbg !184
  %shr4.i.iter4 = lshr i32 %xor2.i.i, 8, !dbg !185
  %and5.i.iter4 = and i32 %shr4.i.iter4, 15, !dbg !186
  %conv6.i.iter4 = zext nneg i32 %and5.i.iter4 to i64, !dbg !187
  %mul7.i.iter4 = mul nuw i64 %and3.i.iter4, %conv6.i.iter4, !dbg !188
  %xor.i.iter4 = xor i64 %mul.i.iter4, %mul7.i.iter4, !dbg !189
  %arrayidx8.i.iter4 = getelementptr inbounds nuw i64, ptr %add.ptr, i32 4, !dbg !190
  %20 = load i64, ptr %arrayidx8.i.iter4, align 8, !dbg !190
  %shr9.i.iter4 = lshr i64 %20, 2, !dbg !191
  %and10.i.iter4 = and i64 %shr9.i.iter4, 1229782938247303441, !dbg !192
  %shr11.i.iter4 = lshr i32 %xor2.i.i, 16, !dbg !193
  %and12.i.iter4 = and i32 %shr11.i.iter4, 15, !dbg !194
  %conv13.i.iter4 = zext nneg i32 %and12.i.iter4 to i64, !dbg !195
  %mul14.i.iter4 = mul nuw i64 %and10.i.iter4, %conv13.i.iter4, !dbg !196
  %xor15.i.iter4 = xor i64 %xor.i.iter4, %mul14.i.iter4, !dbg !197
  %arrayidx16.i.iter4 = getelementptr inbounds nuw i64, ptr %add.ptr, i32 4, !dbg !198
  %21 = load i64, ptr %arrayidx16.i.iter4, align 8, !dbg !198
  %shr17.i.iter4 = lshr i64 %21, 3, !dbg !199
  %and18.i.iter4 = and i64 %shr17.i.iter4, 1229782938247303441, !dbg !200
  %shr19.i.iter4 = lshr i32 %xor2.i.i, 24, !dbg !201
  %and20.i.iter4 = and i32 %shr19.i.iter4, 15, !dbg !202
  %conv21.i.iter4 = zext nneg i32 %and20.i.iter4 to i64, !dbg !203
  %mul22.i.iter4 = mul nuw i64 %and18.i.iter4, %conv21.i.iter4, !dbg !204
  %xor23.i.iter4 = xor i64 %xor15.i.iter4, %mul22.i.iter4, !dbg !205
  %arrayidx24.i.iter4 = getelementptr inbounds nuw i64, ptr %add.ptr13, i32 4, !dbg !206
  %22 = load i64, ptr %arrayidx24.i.iter4, align 8, !dbg !207
  %xor25.i.iter4 = xor i64 %22, %xor23.i.iter4, !dbg !207
  store i64 %xor25.i.iter4, ptr %arrayidx24.i.iter4, align 8, !dbg !207
    #dbg_value(i32 undef, !159, !DIExpression(), !161)
  br label %iter_4_end

iter_4_end:                                       ; preds = %for.body.i.iter4
  br label %m_vec_mul_add.exit
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
!91 = distinct !DISubprogram(name: "mul_add_mat_x_m_mat", scope: !92, file: !92, line: 61, type: !93, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !37, retainedNodes: !58)
!92 = !DIFile(filename: "../../../src/generic/generic_arithmetic.h", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!93 = !DISubroutineType(types: !94)
!94 = !{null, !95, !19, !96, !39, !95, !95, !95}
!95 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 32)
!97 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !91, file: !92, line: 61, type: !95)
!98 = !DILocation(line: 0, scope: !91)
!99 = !DILocalVariable(name: "mat", arg: 2, scope: !91, file: !92, line: 61, type: !19)
!100 = !DILocalVariable(name: "bs_mat", arg: 3, scope: !91, file: !92, line: 61, type: !96)
!101 = !DILocalVariable(name: "acc", arg: 4, scope: !91, file: !92, line: 61, type: !39)
!102 = !DILocalVariable(name: "mat_rows", arg: 5, scope: !91, file: !92, line: 62, type: !95)
!103 = !DILocalVariable(name: "mat_cols", arg: 6, scope: !91, file: !92, line: 62, type: !95)
!104 = !DILocalVariable(name: "bs_mat_cols", arg: 7, scope: !91, file: !92, line: 62, type: !95)
!105 = !DILocalVariable(name: "r", scope: !106, file: !92, line: 64, type: !10)
!106 = distinct !DILexicalBlock(scope: !91, file: !92, line: 64, column: 5)
!107 = !DILocation(line: 0, scope: !106)
!108 = !DILocation(line: 64, column: 5, scope: !106)
!109 = !DILocalVariable(name: "c", scope: !110, file: !92, line: 65, type: !10)
!110 = distinct !DILexicalBlock(scope: !111, file: !92, line: 65, column: 9)
!111 = distinct !DILexicalBlock(scope: !112, file: !92, line: 64, column: 40)
!112 = distinct !DILexicalBlock(scope: !106, file: !92, line: 64, column: 5)
!113 = !DILocation(line: 0, scope: !110)
!114 = !DILocation(line: 65, column: 9, scope: !110)
!115 = !DILocalVariable(name: "k", scope: !116, file: !92, line: 66, type: !10)
!116 = distinct !DILexicalBlock(scope: !117, file: !92, line: 66, column: 13)
!117 = distinct !DILexicalBlock(scope: !118, file: !92, line: 65, column: 44)
!118 = distinct !DILexicalBlock(scope: !110, file: !92, line: 65, column: 9)
!119 = !DILocation(line: 0, scope: !116)
!120 = !DILocation(line: 66, column: 13, scope: !116)
!121 = !DILocation(line: 67, column: 70, scope: !122)
!122 = distinct !DILexicalBlock(scope: !123, file: !92, line: 66, column: 54)
!123 = distinct !DILexicalBlock(scope: !116, file: !92, line: 66, column: 13)
!124 = !DILocation(line: 67, column: 84, scope: !122)
!125 = !DILocation(line: 67, column: 51, scope: !122)
!126 = !DILocation(line: 67, column: 96, scope: !122)
!127 = !DILocation(line: 67, column: 90, scope: !122)
!128 = !DILocation(line: 67, column: 136, scope: !122)
!129 = !DILocation(line: 67, column: 150, scope: !122)
!130 = !DILocation(line: 67, column: 117, scope: !122)
!131 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !132, file: !133, line: 31, type: !10)
!132 = distinct !DISubprogram(name: "m_vec_mul_add", scope: !133, file: !133, line: 31, type: !134, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !37, retainedNodes: !58)
!133 = !DIFile(filename: "../../../src/generic/arithmetic_fixed.h", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!134 = !DISubroutineType(types: !135)
!135 = !{null, !10, !96, !15, !39}
!136 = !DILocation(line: 0, scope: !132, inlinedAt: !137)
!137 = distinct !DILocation(line: 67, column: 17, scope: !122)
!138 = !DILocalVariable(name: "in", arg: 2, scope: !132, file: !133, line: 31, type: !96)
!139 = !DILocalVariable(name: "a", arg: 3, scope: !132, file: !133, line: 31, type: !15)
!140 = !DILocalVariable(name: "acc", arg: 4, scope: !132, file: !133, line: 31, type: !39)
!141 = !DILocalVariable(name: "b", arg: 1, scope: !142, file: !143, line: 129, type: !41)
!142 = distinct !DISubprogram(name: "mul_table", scope: !143, file: !143, line: 129, type: !144, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !37, retainedNodes: !58)
!143 = !DIFile(filename: "../../../src/simple_arithmetic.h", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!144 = !DISubroutineType(types: !145)
!145 = !{!16, !41}
!146 = !DILocation(line: 0, scope: !142, inlinedAt: !147)
!147 = distinct !DILocation(line: 33, column: 20, scope: !132, inlinedAt: !137)
!148 = !DILocation(line: 130, column: 19, scope: !142, inlinedAt: !147)
!149 = !DILocation(line: 130, column: 33, scope: !142, inlinedAt: !147)
!150 = !DILocalVariable(name: "x", scope: !142, file: !143, line: 130, type: !16)
!151 = !DILocalVariable(name: "high_nibble_mask", scope: !142, file: !143, line: 132, type: !16)
!152 = !DILocation(line: 134, column: 28, scope: !142, inlinedAt: !147)
!153 = !DILocalVariable(name: "high_half", scope: !142, file: !143, line: 134, type: !16)
!154 = !DILocation(line: 135, column: 28, scope: !142, inlinedAt: !147)
!155 = !DILocation(line: 135, column: 47, scope: !142, inlinedAt: !147)
!156 = !DILocation(line: 135, column: 34, scope: !142, inlinedAt: !147)
!157 = !DILocalVariable(name: "tab", scope: !132, file: !133, line: 33, type: !16)
!158 = !DILocalVariable(name: "lsb_ask", scope: !132, file: !133, line: 35, type: !5)
!159 = !DILocalVariable(name: "i", scope: !160, file: !133, line: 37, type: !10)
!160 = distinct !DILexicalBlock(scope: !132, file: !133, line: 37, column: 5)
!161 = !DILocation(line: 0, scope: !160, inlinedAt: !137)
!162 = !DILocation(line: 66, column: 48, scope: !123)
!163 = !DILocation(line: 66, column: 31, scope: !123)
!164 = distinct !{!164, !120, !165, !166}
!165 = !DILocation(line: 68, column: 13, scope: !116)
!166 = !{!"llvm.loop.mustprogress"}
!167 = !DILocation(line: 65, column: 40, scope: !118)
!168 = !DILocation(line: 65, column: 27, scope: !118)
!169 = distinct !{!169, !114, !170, !166}
!170 = !DILocation(line: 69, column: 9, scope: !110)
!171 = !DILocation(line: 64, column: 36, scope: !112)
!172 = !DILocation(line: 64, column: 23, scope: !112)
!173 = distinct !{!173, !108, !174, !166}
!174 = !DILocation(line: 70, column: 5, scope: !106)
!175 = !DILocation(line: 71, column: 1, scope: !91)
!176 = !DILocation(line: 38, column: 21, scope: !177, inlinedAt: !137)
!177 = distinct !DILexicalBlock(scope: !178, file: !133, line: 37, column: 43)
!178 = distinct !DILexicalBlock(scope: !160, file: !133, line: 37, column: 5)
!179 = !DILocation(line: 38, column: 33, scope: !177, inlinedAt: !137)
!180 = !DILocation(line: 38, column: 51, scope: !177, inlinedAt: !137)
!181 = !DILocation(line: 38, column: 46, scope: !177, inlinedAt: !137)
!182 = !DILocation(line: 38, column: 44, scope: !177, inlinedAt: !137)
!183 = !DILocation(line: 39, column: 27, scope: !177, inlinedAt: !137)
!184 = !DILocation(line: 39, column: 33, scope: !177, inlinedAt: !137)
!185 = !DILocation(line: 39, column: 52, scope: !177, inlinedAt: !137)
!186 = !DILocation(line: 39, column: 59, scope: !177, inlinedAt: !137)
!187 = !DILocation(line: 39, column: 46, scope: !177, inlinedAt: !137)
!188 = !DILocation(line: 39, column: 44, scope: !177, inlinedAt: !137)
!189 = !DILocation(line: 39, column: 17, scope: !177, inlinedAt: !137)
!190 = !DILocation(line: 40, column: 21, scope: !177, inlinedAt: !137)
!191 = !DILocation(line: 40, column: 27, scope: !177, inlinedAt: !137)
!192 = !DILocation(line: 40, column: 33, scope: !177, inlinedAt: !137)
!193 = !DILocation(line: 40, column: 52, scope: !177, inlinedAt: !137)
!194 = !DILocation(line: 40, column: 59, scope: !177, inlinedAt: !137)
!195 = !DILocation(line: 40, column: 46, scope: !177, inlinedAt: !137)
!196 = !DILocation(line: 40, column: 44, scope: !177, inlinedAt: !137)
!197 = !DILocation(line: 40, column: 17, scope: !177, inlinedAt: !137)
!198 = !DILocation(line: 41, column: 21, scope: !177, inlinedAt: !137)
!199 = !DILocation(line: 41, column: 27, scope: !177, inlinedAt: !137)
!200 = !DILocation(line: 41, column: 33, scope: !177, inlinedAt: !137)
!201 = !DILocation(line: 41, column: 52, scope: !177, inlinedAt: !137)
!202 = !DILocation(line: 41, column: 59, scope: !177, inlinedAt: !137)
!203 = !DILocation(line: 41, column: 46, scope: !177, inlinedAt: !137)
!204 = !DILocation(line: 41, column: 44, scope: !177, inlinedAt: !137)
!205 = !DILocation(line: 41, column: 17, scope: !177, inlinedAt: !137)
!206 = !DILocation(line: 38, column: 9, scope: !177, inlinedAt: !137)
!207 = !DILocation(line: 38, column: 16, scope: !177, inlinedAt: !137)
