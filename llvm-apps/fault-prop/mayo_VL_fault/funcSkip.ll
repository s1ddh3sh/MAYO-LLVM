; ModuleID = '../no_struct/mayo1.ll'
source_filename = "composite"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "arm-unknown-none-eabi"

@pqmayo_MAYO_1_ref_uint32_t_blocker = dso_local local_unnamed_addr global i32 0, align 4, !dbg !0
@pqmayo_MAYO_1_ref_uint64_t_blocker = dso_local local_unnamed_addr global i64 0, align 8, !dbg !27
@pqmayo_MAYO_1_ref_unsigned_char_blocker = dso_local local_unnamed_addr global i8 0, align 1, !dbg !31

; Function Attrs: inlinehint nounwind
define dso_local fastcc void @mul_add_mat_x_m_mat(i32 noundef %m_vec_limbs, ptr noundef nonnull %mat, ptr noundef nonnull %bs_mat, ptr noundef nonnull %acc, i32 noundef %mat_rows, i32 noundef %mat_cols, i32 noundef range(i32 8, 11) %bs_mat_cols) unnamed_addr #0 !dbg !71 {
entry:
    #dbg_value(i32 5, !77, !DIExpression(), !78)
    #dbg_value(ptr %mat, !79, !DIExpression(), !78)
    #dbg_value(ptr %bs_mat, !80, !DIExpression(), !78)
    #dbg_value(ptr %acc, !81, !DIExpression(), !78)
    #dbg_value(i32 10, !82, !DIExpression(), !78)
    #dbg_value(i32 78, !83, !DIExpression(), !78)
    #dbg_value(i32 %bs_mat_cols, !84, !DIExpression(), !78)
    #dbg_value(i32 0, !85, !DIExpression(), !87)
  br label %iter_0_start

for.end19:                                        ; preds = %iter_9_end
  ret void, !dbg !88

iter_0_start:                                     ; preds = %entry
  br label %for.cond1.preheader.iter0

for.cond1.preheader.iter0:                        ; preds = %iter_0_start
    #dbg_value(i32 undef, !85, !DIExpression(), !87)
    #dbg_value(i32 0, !89, !DIExpression(), !93)
  br label %for.cond4.preheader.iter0, !dbg !94

for.body6.iter0:                                  ; preds = %for.cond4.preheader.iter0, %for.body6.iter0
  %k.01.iter0 = phi i32 [ 0, %for.cond4.preheader.iter0 ], [ %add14.iter0, %for.body6.iter0 ]
    #dbg_value(i32 undef, !95, !DIExpression(), !99)
  %mul.iter0 = mul nuw nsw i32 %c.02.iter0, %bs_mat_cols, !dbg !100
  %add.iter0 = add nuw nsw i32 %mul.iter0, %k.01.iter0, !dbg !103
  %add.ptr.idx.iter0 = mul nuw nsw i32 %add.iter0, 40, !dbg !104
  %add.ptr.iter0 = getelementptr inbounds nuw i8, ptr %bs_mat, i32 %add.ptr.idx.iter0, !dbg !104
  %0 = getelementptr i8, ptr %mat, i32 0, !dbg !105
  %arrayidx.iter0 = getelementptr i8, ptr %0, i32 %c.02.iter0, !dbg !105
  %1 = load i8, ptr %arrayidx.iter0, align 1, !dbg !105
  %add11.iter0 = add nuw nsw i32 0, %k.01.iter0, !dbg !106
  %add.ptr13.idx.iter0 = mul nuw nsw i32 %add11.iter0, 40, !dbg !107
  %add.ptr13.iter0 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr13.idx.iter0, !dbg !107
  %add14.iter0 = add nuw nsw i32 %k.01.iter0, 1, !dbg !108
    #dbg_value(i32 undef, !95, !DIExpression(), !99)
  %exitcond.not.iter0 = icmp eq i32 %add14.iter0, %bs_mat_cols, !dbg !109
  br i1 %exitcond.not.iter0, label %for.inc15.iter0, label %for.body6.iter0, !dbg !110, !llvm.loop !111

for.inc15.iter0:                                  ; preds = %for.body6.iter0
  %inc.iter0 = add nuw nsw i32 %c.02.iter0, 1, !dbg !114
    #dbg_value(i32 undef, !89, !DIExpression(), !93)
  %exitcond1.not.iter0 = icmp eq i32 %inc.iter0, 78, !dbg !115
  br i1 %exitcond1.not.iter0, label %for.inc17.iter0, label %for.cond4.preheader.iter0, !dbg !94, !llvm.loop !116

for.inc17.iter0:                                  ; preds = %for.inc15.iter0
    #dbg_value(i32 undef, !85, !DIExpression(), !87)
  br label %iter_0_end

for.cond4.preheader.iter0:                        ; preds = %for.inc15.iter0, %for.cond1.preheader.iter0
  %c.02.iter0 = phi i32 [ 0, %for.cond1.preheader.iter0 ], [ %inc.iter0, %for.inc15.iter0 ]
    #dbg_value(i32 undef, !89, !DIExpression(), !93)
    #dbg_value(i32 0, !95, !DIExpression(), !99)
  br label %for.body6.iter0, !dbg !110

iter_0_end:                                       ; preds = %for.inc17.iter0
  br label %iter_1_start

iter_1_start:                                     ; preds = %iter_0_end
  br label %for.cond1.preheader.iter1

for.cond1.preheader.iter1:                        ; preds = %iter_1_start
    #dbg_value(i32 undef, !85, !DIExpression(), !87)
    #dbg_value(i32 0, !89, !DIExpression(), !93)
  br label %for.cond4.preheader.iter1, !dbg !94

for.body6.iter1:                                  ; preds = %for.cond4.preheader.iter1, %for.body6.iter1
  %k.01.iter1 = phi i32 [ 0, %for.cond4.preheader.iter1 ], [ %add14.iter1, %for.body6.iter1 ]
    #dbg_value(i32 undef, !95, !DIExpression(), !99)
  %mul.iter1 = mul nuw nsw i32 %c.02.iter1, %bs_mat_cols, !dbg !100
  %add.iter1 = add nuw nsw i32 %mul.iter1, %k.01.iter1, !dbg !103
  %add.ptr.idx.iter1 = mul nuw nsw i32 %add.iter1, 40, !dbg !104
  %add.ptr.iter1 = getelementptr inbounds nuw i8, ptr %bs_mat, i32 %add.ptr.idx.iter1, !dbg !104
  %2 = getelementptr i8, ptr %mat, i32 78, !dbg !105
  %arrayidx.iter1 = getelementptr i8, ptr %2, i32 %c.02.iter1, !dbg !105
  %3 = load i8, ptr %arrayidx.iter1, align 1, !dbg !105
  %mul10.iter1 = mul nuw nsw i32 1, %bs_mat_cols, !dbg !118
  %add11.iter1 = add nuw nsw i32 %mul10.iter1, %k.01.iter1, !dbg !106
  %add.ptr13.idx.iter1 = mul nuw nsw i32 %add11.iter1, 40, !dbg !107
  %add.ptr13.iter1 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr13.idx.iter1, !dbg !107
    #dbg_value(i32 5, !119, !DIExpression(), !124)
    #dbg_value(ptr %add.ptr.iter1, !126, !DIExpression(), !124)
    #dbg_value(i8 %3, !127, !DIExpression(), !124)
    #dbg_value(ptr %add.ptr13.iter1, !128, !DIExpression(), !124)
    #dbg_value(i8 %3, !129, !DIExpression(), !134)
  %conv.i.i764 = zext i8 %3 to i32, !dbg !136
  %mul.i.i765 = mul i32 %conv.i.i764, 134480385, !dbg !137
    #dbg_value(i32 %mul.i.i765, !138, !DIExpression(), !134)
    #dbg_value(i32 -252645136, !139, !DIExpression(), !134)
  %and.i.i766 = and i32 %mul.i.i765, -252645136, !dbg !140
    #dbg_value(i32 %and.i.i766, !141, !DIExpression(), !134)
  %shr.i.i767 = lshr exact i32 %and.i.i766, 4, !dbg !142
  %shr1.i.i768 = lshr exact i32 %and.i.i766, 3, !dbg !143
  %4 = xor i32 %shr.i.i767, %shr1.i.i768, !dbg !144
  %xor2.i.i769 = xor i32 %4, %mul.i.i765, !dbg !144
    #dbg_value(i32 %xor2.i.i769, !145, !DIExpression(), !124)
    #dbg_value(i64 1229782938247303441, !146, !DIExpression(), !124)
    #dbg_value(i32 0, !147, !DIExpression(), !149)
    #dbg_value(i32 undef, !147, !DIExpression(), !149)
  %5 = load i64, ptr %add.ptr.iter1, align 8, !dbg !150
  %and.iter0.i770 = and i64 %5, 1229782938247303441, !dbg !153
  %and1.iter0.i771 = and i32 %xor2.i.i769, 255, !dbg !154
  %conv.iter0.i772 = zext nneg i32 %and1.iter0.i771 to i64, !dbg !155
  %mul.iter0.i773 = mul i64 %and.iter0.i770, %conv.iter0.i772, !dbg !156
  %shr.iter0.i774 = lshr i64 %5, 1, !dbg !157
  %and3.iter0.i775 = and i64 %shr.iter0.i774, 1229782938247303441, !dbg !158
  %shr4.iter0.i776 = lshr i32 %xor2.i.i769, 8, !dbg !159
  %and5.iter0.i777 = and i32 %shr4.iter0.i776, 15, !dbg !160
  %conv6.iter0.i778 = zext nneg i32 %and5.iter0.i777 to i64, !dbg !161
  %mul7.iter0.i779 = mul nuw i64 %and3.iter0.i775, %conv6.iter0.i778, !dbg !162
  %xor.iter0.i780 = xor i64 %mul.iter0.i773, %mul7.iter0.i779, !dbg !163
  %6 = load i64, ptr %add.ptr.iter1, align 8, !dbg !164
  %shr9.iter0.i781 = lshr i64 %6, 2, !dbg !165
  %and10.iter0.i782 = and i64 %shr9.iter0.i781, 1229782938247303441, !dbg !166
  %shr11.iter0.i783 = lshr i32 %xor2.i.i769, 16, !dbg !167
  %and12.iter0.i784 = and i32 %shr11.iter0.i783, 15, !dbg !168
  %conv13.iter0.i785 = zext nneg i32 %and12.iter0.i784 to i64, !dbg !169
  %mul14.iter0.i786 = mul nuw i64 %and10.iter0.i782, %conv13.iter0.i785, !dbg !170
  %xor15.iter0.i787 = xor i64 %xor.iter0.i780, %mul14.iter0.i786, !dbg !171
  %7 = load i64, ptr %add.ptr.iter1, align 8, !dbg !172
  %shr17.iter0.i788 = lshr i64 %7, 3, !dbg !173
  %and18.iter0.i789 = and i64 %shr17.iter0.i788, 1229782938247303441, !dbg !174
  %shr19.iter0.i790 = lshr i32 %xor2.i.i769, 24, !dbg !175
  %and20.iter0.i791 = and i32 %shr19.iter0.i790, 15, !dbg !176
  %conv21.iter0.i792 = zext nneg i32 %and20.iter0.i791 to i64, !dbg !177
  %mul22.iter0.i793 = mul nuw i64 %and18.iter0.i789, %conv21.iter0.i792, !dbg !178
  %xor23.iter0.i794 = xor i64 %xor15.iter0.i787, %mul22.iter0.i793, !dbg !179
  %8 = load i64, ptr %add.ptr13.iter1, align 8, !dbg !180
  %xor25.iter0.i795 = xor i64 %8, %xor23.iter0.i794, !dbg !180
  store i64 %xor25.iter0.i795, ptr %add.ptr13.iter1, align 8, !dbg !180
    #dbg_value(i32 undef, !147, !DIExpression(), !149)
    #dbg_value(i32 undef, !147, !DIExpression(), !149)
  %arrayidx.iter1.i796 = getelementptr inbounds nuw i64, ptr %add.ptr.iter1, i32 1, !dbg !150
  %9 = load i64, ptr %arrayidx.iter1.i796, align 8, !dbg !150
  %and.iter1.i797 = and i64 %9, 1229782938247303441, !dbg !153
  %and1.iter1.i798 = and i32 %xor2.i.i769, 255, !dbg !154
  %conv.iter1.i799 = zext nneg i32 %and1.iter1.i798 to i64, !dbg !155
  %mul.iter1.i800 = mul i64 %and.iter1.i797, %conv.iter1.i799, !dbg !156
  %shr.iter1.i801 = lshr i64 %9, 1, !dbg !157
  %and3.iter1.i802 = and i64 %shr.iter1.i801, 1229782938247303441, !dbg !158
  %shr4.iter1.i803 = lshr i32 %xor2.i.i769, 8, !dbg !159
  %and5.iter1.i804 = and i32 %shr4.iter1.i803, 15, !dbg !160
  %conv6.iter1.i805 = zext nneg i32 %and5.iter1.i804 to i64, !dbg !161
  %mul7.iter1.i806 = mul nuw i64 %and3.iter1.i802, %conv6.iter1.i805, !dbg !162
  %xor.iter1.i807 = xor i64 %mul.iter1.i800, %mul7.iter1.i806, !dbg !163
  %arrayidx8.iter1.i808 = getelementptr inbounds nuw i64, ptr %add.ptr.iter1, i32 1, !dbg !164
  %10 = load i64, ptr %arrayidx8.iter1.i808, align 8, !dbg !164
  %shr9.iter1.i809 = lshr i64 %10, 2, !dbg !165
  %and10.iter1.i810 = and i64 %shr9.iter1.i809, 1229782938247303441, !dbg !166
  %shr11.iter1.i811 = lshr i32 %xor2.i.i769, 16, !dbg !167
  %and12.iter1.i812 = and i32 %shr11.iter1.i811, 15, !dbg !168
  %conv13.iter1.i813 = zext nneg i32 %and12.iter1.i812 to i64, !dbg !169
  %mul14.iter1.i814 = mul nuw i64 %and10.iter1.i810, %conv13.iter1.i813, !dbg !170
  %xor15.iter1.i815 = xor i64 %xor.iter1.i807, %mul14.iter1.i814, !dbg !171
  %arrayidx16.iter1.i816 = getelementptr inbounds nuw i64, ptr %add.ptr.iter1, i32 1, !dbg !172
  %11 = load i64, ptr %arrayidx16.iter1.i816, align 8, !dbg !172
  %shr17.iter1.i817 = lshr i64 %11, 3, !dbg !173
  %and18.iter1.i818 = and i64 %shr17.iter1.i817, 1229782938247303441, !dbg !174
  %shr19.iter1.i819 = lshr i32 %xor2.i.i769, 24, !dbg !175
  %and20.iter1.i820 = and i32 %shr19.iter1.i819, 15, !dbg !176
  %conv21.iter1.i821 = zext nneg i32 %and20.iter1.i820 to i64, !dbg !177
  %mul22.iter1.i822 = mul nuw i64 %and18.iter1.i818, %conv21.iter1.i821, !dbg !178
  %xor23.iter1.i823 = xor i64 %xor15.iter1.i815, %mul22.iter1.i822, !dbg !179
  %arrayidx24.iter1.i824 = getelementptr inbounds nuw i64, ptr %add.ptr13.iter1, i32 1, !dbg !181
  %12 = load i64, ptr %arrayidx24.iter1.i824, align 8, !dbg !180
  %xor25.iter1.i825 = xor i64 %12, %xor23.iter1.i823, !dbg !180
  store i64 %xor25.iter1.i825, ptr %arrayidx24.iter1.i824, align 8, !dbg !180
    #dbg_value(i32 undef, !147, !DIExpression(), !149)
    #dbg_value(i32 undef, !147, !DIExpression(), !149)
  %arrayidx.iter2.i826 = getelementptr inbounds nuw i64, ptr %add.ptr.iter1, i32 2, !dbg !150
  %13 = load i64, ptr %arrayidx.iter2.i826, align 8, !dbg !150
  %and.iter2.i827 = and i64 %13, 1229782938247303441, !dbg !153
  %and1.iter2.i828 = and i32 %xor2.i.i769, 255, !dbg !154
  %conv.iter2.i829 = zext nneg i32 %and1.iter2.i828 to i64, !dbg !155
  %mul.iter2.i830 = mul i64 %and.iter2.i827, %conv.iter2.i829, !dbg !156
  %shr.iter2.i831 = lshr i64 %13, 1, !dbg !157
  %and3.iter2.i832 = and i64 %shr.iter2.i831, 1229782938247303441, !dbg !158
  %shr4.iter2.i833 = lshr i32 %xor2.i.i769, 8, !dbg !159
  %and5.iter2.i834 = and i32 %shr4.iter2.i833, 15, !dbg !160
  %conv6.iter2.i835 = zext nneg i32 %and5.iter2.i834 to i64, !dbg !161
  %mul7.iter2.i836 = mul nuw i64 %and3.iter2.i832, %conv6.iter2.i835, !dbg !162
  %xor.iter2.i837 = xor i64 %mul.iter2.i830, %mul7.iter2.i836, !dbg !163
  %arrayidx8.iter2.i838 = getelementptr inbounds nuw i64, ptr %add.ptr.iter1, i32 2, !dbg !164
  %14 = load i64, ptr %arrayidx8.iter2.i838, align 8, !dbg !164
  %shr9.iter2.i839 = lshr i64 %14, 2, !dbg !165
  %and10.iter2.i840 = and i64 %shr9.iter2.i839, 1229782938247303441, !dbg !166
  %shr11.iter2.i841 = lshr i32 %xor2.i.i769, 16, !dbg !167
  %and12.iter2.i842 = and i32 %shr11.iter2.i841, 15, !dbg !168
  %conv13.iter2.i843 = zext nneg i32 %and12.iter2.i842 to i64, !dbg !169
  %mul14.iter2.i844 = mul nuw i64 %and10.iter2.i840, %conv13.iter2.i843, !dbg !170
  %xor15.iter2.i845 = xor i64 %xor.iter2.i837, %mul14.iter2.i844, !dbg !171
  %arrayidx16.iter2.i846 = getelementptr inbounds nuw i64, ptr %add.ptr.iter1, i32 2, !dbg !172
  %15 = load i64, ptr %arrayidx16.iter2.i846, align 8, !dbg !172
  %shr17.iter2.i847 = lshr i64 %15, 3, !dbg !173
  %and18.iter2.i848 = and i64 %shr17.iter2.i847, 1229782938247303441, !dbg !174
  %shr19.iter2.i849 = lshr i32 %xor2.i.i769, 24, !dbg !175
  %and20.iter2.i850 = and i32 %shr19.iter2.i849, 15, !dbg !176
  %conv21.iter2.i851 = zext nneg i32 %and20.iter2.i850 to i64, !dbg !177
  %mul22.iter2.i852 = mul nuw i64 %and18.iter2.i848, %conv21.iter2.i851, !dbg !178
  %xor23.iter2.i853 = xor i64 %xor15.iter2.i845, %mul22.iter2.i852, !dbg !179
  %arrayidx24.iter2.i854 = getelementptr inbounds nuw i64, ptr %add.ptr13.iter1, i32 2, !dbg !181
  %16 = load i64, ptr %arrayidx24.iter2.i854, align 8, !dbg !180
  %xor25.iter2.i855 = xor i64 %16, %xor23.iter2.i853, !dbg !180
  store i64 %xor25.iter2.i855, ptr %arrayidx24.iter2.i854, align 8, !dbg !180
    #dbg_value(i32 undef, !147, !DIExpression(), !149)
    #dbg_value(i32 undef, !147, !DIExpression(), !149)
  %arrayidx.iter3.i856 = getelementptr inbounds nuw i64, ptr %add.ptr.iter1, i32 3, !dbg !150
  %17 = load i64, ptr %arrayidx.iter3.i856, align 8, !dbg !150
  %and.iter3.i857 = and i64 %17, 1229782938247303441, !dbg !153
  %and1.iter3.i858 = and i32 %xor2.i.i769, 255, !dbg !154
  %conv.iter3.i859 = zext nneg i32 %and1.iter3.i858 to i64, !dbg !155
  %mul.iter3.i860 = mul i64 %and.iter3.i857, %conv.iter3.i859, !dbg !156
  %shr.iter3.i861 = lshr i64 %17, 1, !dbg !157
  %and3.iter3.i862 = and i64 %shr.iter3.i861, 1229782938247303441, !dbg !158
  %shr4.iter3.i863 = lshr i32 %xor2.i.i769, 8, !dbg !159
  %and5.iter3.i864 = and i32 %shr4.iter3.i863, 15, !dbg !160
  %conv6.iter3.i865 = zext nneg i32 %and5.iter3.i864 to i64, !dbg !161
  %mul7.iter3.i866 = mul nuw i64 %and3.iter3.i862, %conv6.iter3.i865, !dbg !162
  %xor.iter3.i867 = xor i64 %mul.iter3.i860, %mul7.iter3.i866, !dbg !163
  %arrayidx8.iter3.i868 = getelementptr inbounds nuw i64, ptr %add.ptr.iter1, i32 3, !dbg !164
  %18 = load i64, ptr %arrayidx8.iter3.i868, align 8, !dbg !164
  %shr9.iter3.i869 = lshr i64 %18, 2, !dbg !165
  %and10.iter3.i870 = and i64 %shr9.iter3.i869, 1229782938247303441, !dbg !166
  %shr11.iter3.i871 = lshr i32 %xor2.i.i769, 16, !dbg !167
  %and12.iter3.i872 = and i32 %shr11.iter3.i871, 15, !dbg !168
  %conv13.iter3.i873 = zext nneg i32 %and12.iter3.i872 to i64, !dbg !169
  %mul14.iter3.i874 = mul nuw i64 %and10.iter3.i870, %conv13.iter3.i873, !dbg !170
  %xor15.iter3.i875 = xor i64 %xor.iter3.i867, %mul14.iter3.i874, !dbg !171
  %arrayidx16.iter3.i876 = getelementptr inbounds nuw i64, ptr %add.ptr.iter1, i32 3, !dbg !172
  %19 = load i64, ptr %arrayidx16.iter3.i876, align 8, !dbg !172
  %shr17.iter3.i877 = lshr i64 %19, 3, !dbg !173
  %and18.iter3.i878 = and i64 %shr17.iter3.i877, 1229782938247303441, !dbg !174
  %shr19.iter3.i879 = lshr i32 %xor2.i.i769, 24, !dbg !175
  %and20.iter3.i880 = and i32 %shr19.iter3.i879, 15, !dbg !176
  %conv21.iter3.i881 = zext nneg i32 %and20.iter3.i880 to i64, !dbg !177
  %mul22.iter3.i882 = mul nuw i64 %and18.iter3.i878, %conv21.iter3.i881, !dbg !178
  %xor23.iter3.i883 = xor i64 %xor15.iter3.i875, %mul22.iter3.i882, !dbg !179
  %arrayidx24.iter3.i884 = getelementptr inbounds nuw i64, ptr %add.ptr13.iter1, i32 3, !dbg !181
  %20 = load i64, ptr %arrayidx24.iter3.i884, align 8, !dbg !180
  %xor25.iter3.i885 = xor i64 %20, %xor23.iter3.i883, !dbg !180
  store i64 %xor25.iter3.i885, ptr %arrayidx24.iter3.i884, align 8, !dbg !180
    #dbg_value(i32 undef, !147, !DIExpression(), !149)
    #dbg_value(i32 undef, !147, !DIExpression(), !149)
  %arrayidx.iter4.i886 = getelementptr inbounds nuw i64, ptr %add.ptr.iter1, i32 4, !dbg !150
  %21 = load i64, ptr %arrayidx.iter4.i886, align 8, !dbg !150
  %and.iter4.i887 = and i64 %21, 1229782938247303441, !dbg !153
  %and1.iter4.i888 = and i32 %xor2.i.i769, 255, !dbg !154
  %conv.iter4.i889 = zext nneg i32 %and1.iter4.i888 to i64, !dbg !155
  %mul.iter4.i890 = mul i64 %and.iter4.i887, %conv.iter4.i889, !dbg !156
  %shr.iter4.i891 = lshr i64 %21, 1, !dbg !157
  %and3.iter4.i892 = and i64 %shr.iter4.i891, 1229782938247303441, !dbg !158
  %shr4.iter4.i893 = lshr i32 %xor2.i.i769, 8, !dbg !159
  %and5.iter4.i894 = and i32 %shr4.iter4.i893, 15, !dbg !160
  %conv6.iter4.i895 = zext nneg i32 %and5.iter4.i894 to i64, !dbg !161
  %mul7.iter4.i896 = mul nuw i64 %and3.iter4.i892, %conv6.iter4.i895, !dbg !162
  %xor.iter4.i897 = xor i64 %mul.iter4.i890, %mul7.iter4.i896, !dbg !163
  %arrayidx8.iter4.i898 = getelementptr inbounds nuw i64, ptr %add.ptr.iter1, i32 4, !dbg !164
  %22 = load i64, ptr %arrayidx8.iter4.i898, align 8, !dbg !164
  %shr9.iter4.i899 = lshr i64 %22, 2, !dbg !165
  %and10.iter4.i900 = and i64 %shr9.iter4.i899, 1229782938247303441, !dbg !166
  %shr11.iter4.i901 = lshr i32 %xor2.i.i769, 16, !dbg !167
  %and12.iter4.i902 = and i32 %shr11.iter4.i901, 15, !dbg !168
  %conv13.iter4.i903 = zext nneg i32 %and12.iter4.i902 to i64, !dbg !169
  %mul14.iter4.i904 = mul nuw i64 %and10.iter4.i900, %conv13.iter4.i903, !dbg !170
  %xor15.iter4.i905 = xor i64 %xor.iter4.i897, %mul14.iter4.i904, !dbg !171
  %arrayidx16.iter4.i906 = getelementptr inbounds nuw i64, ptr %add.ptr.iter1, i32 4, !dbg !172
  %23 = load i64, ptr %arrayidx16.iter4.i906, align 8, !dbg !172
  %shr17.iter4.i907 = lshr i64 %23, 3, !dbg !173
  %and18.iter4.i908 = and i64 %shr17.iter4.i907, 1229782938247303441, !dbg !174
  %shr19.iter4.i909 = lshr i32 %xor2.i.i769, 24, !dbg !175
  %and20.iter4.i910 = and i32 %shr19.iter4.i909, 15, !dbg !176
  %conv21.iter4.i911 = zext nneg i32 %and20.iter4.i910 to i64, !dbg !177
  %mul22.iter4.i912 = mul nuw i64 %and18.iter4.i908, %conv21.iter4.i911, !dbg !178
  %xor23.iter4.i913 = xor i64 %xor15.iter4.i905, %mul22.iter4.i912, !dbg !179
  %arrayidx24.iter4.i914 = getelementptr inbounds nuw i64, ptr %add.ptr13.iter1, i32 4, !dbg !181
  %24 = load i64, ptr %arrayidx24.iter4.i914, align 8, !dbg !180
  %xor25.iter4.i915 = xor i64 %24, %xor23.iter4.i913, !dbg !180
  store i64 %xor25.iter4.i915, ptr %arrayidx24.iter4.i914, align 8, !dbg !180
    #dbg_value(i32 undef, !147, !DIExpression(), !149)
  %add14.iter1 = add nuw nsw i32 %k.01.iter1, 1, !dbg !108
    #dbg_value(i32 undef, !95, !DIExpression(), !99)
  %exitcond.not.iter1 = icmp eq i32 %add14.iter1, %bs_mat_cols, !dbg !109
  br i1 %exitcond.not.iter1, label %for.inc15.iter1, label %for.body6.iter1, !dbg !110, !llvm.loop !111

for.inc15.iter1:                                  ; preds = %for.body6.iter1
  %inc.iter1 = add nuw nsw i32 %c.02.iter1, 1, !dbg !114
    #dbg_value(i32 undef, !89, !DIExpression(), !93)
  %exitcond1.not.iter1 = icmp eq i32 %inc.iter1, 78, !dbg !115
  br i1 %exitcond1.not.iter1, label %for.inc17.iter1, label %for.cond4.preheader.iter1, !dbg !94, !llvm.loop !116

for.inc17.iter1:                                  ; preds = %for.inc15.iter1
    #dbg_value(i32 undef, !85, !DIExpression(), !87)
  br label %iter_1_end

for.cond4.preheader.iter1:                        ; preds = %for.inc15.iter1, %for.cond1.preheader.iter1
  %c.02.iter1 = phi i32 [ 0, %for.cond1.preheader.iter1 ], [ %inc.iter1, %for.inc15.iter1 ]
    #dbg_value(i32 undef, !89, !DIExpression(), !93)
    #dbg_value(i32 0, !95, !DIExpression(), !99)
  br label %for.body6.iter1, !dbg !110

iter_1_end:                                       ; preds = %for.inc17.iter1
  br label %iter_2_start

iter_2_start:                                     ; preds = %iter_1_end
  br label %for.cond1.preheader.iter2

for.cond1.preheader.iter2:                        ; preds = %iter_2_start
    #dbg_value(i32 undef, !85, !DIExpression(), !87)
    #dbg_value(i32 0, !89, !DIExpression(), !93)
  br label %for.cond4.preheader.iter2, !dbg !94

for.body6.iter2:                                  ; preds = %for.cond4.preheader.iter2, %for.body6.iter2
  %k.01.iter2 = phi i32 [ 0, %for.cond4.preheader.iter2 ], [ %add14.iter2, %for.body6.iter2 ]
    #dbg_value(i32 undef, !95, !DIExpression(), !99)
  %mul.iter2 = mul nuw nsw i32 %c.02.iter2, %bs_mat_cols, !dbg !100
  %add.iter2 = add nuw nsw i32 %mul.iter2, %k.01.iter2, !dbg !103
  %add.ptr.idx.iter2 = mul nuw nsw i32 %add.iter2, 40, !dbg !104
  %add.ptr.iter2 = getelementptr inbounds nuw i8, ptr %bs_mat, i32 %add.ptr.idx.iter2, !dbg !104
  %25 = getelementptr i8, ptr %mat, i32 156, !dbg !105
  %arrayidx.iter2 = getelementptr i8, ptr %25, i32 %c.02.iter2, !dbg !105
  %26 = load i8, ptr %arrayidx.iter2, align 1, !dbg !105
  %mul10.iter2 = mul nuw nsw i32 2, %bs_mat_cols, !dbg !118
  %add11.iter2 = add nuw nsw i32 %mul10.iter2, %k.01.iter2, !dbg !106
  %add.ptr13.idx.iter2 = mul nuw nsw i32 %add11.iter2, 40, !dbg !107
  %add.ptr13.iter2 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr13.idx.iter2, !dbg !107
    #dbg_value(i32 5, !119, !DIExpression(), !182)
    #dbg_value(ptr %add.ptr.iter2, !126, !DIExpression(), !182)
    #dbg_value(i8 %26, !127, !DIExpression(), !182)
    #dbg_value(ptr %add.ptr13.iter2, !128, !DIExpression(), !182)
    #dbg_value(i8 %26, !129, !DIExpression(), !184)
  %conv.i.i4 = zext i8 %26 to i32, !dbg !186
  %mul.i.i5 = mul i32 %conv.i.i4, 134480385, !dbg !187
    #dbg_value(i32 %mul.i.i5, !138, !DIExpression(), !184)
    #dbg_value(i32 -252645136, !139, !DIExpression(), !184)
  %and.i.i6 = and i32 %mul.i.i5, -252645136, !dbg !188
    #dbg_value(i32 %and.i.i6, !141, !DIExpression(), !184)
  %shr.i.i7 = lshr exact i32 %and.i.i6, 4, !dbg !189
  %shr1.i.i8 = lshr exact i32 %and.i.i6, 3, !dbg !190
  %27 = xor i32 %shr.i.i7, %shr1.i.i8, !dbg !191
  %xor2.i.i9 = xor i32 %27, %mul.i.i5, !dbg !191
    #dbg_value(i32 %xor2.i.i9, !145, !DIExpression(), !182)
    #dbg_value(i64 1229782938247303441, !146, !DIExpression(), !182)
    #dbg_value(i32 0, !147, !DIExpression(), !192)
    #dbg_value(i32 undef, !147, !DIExpression(), !192)
  %28 = load i64, ptr %add.ptr.iter2, align 8, !dbg !193
  %and.iter0.i10 = and i64 %28, 1229782938247303441, !dbg !194
  %and1.iter0.i11 = and i32 %xor2.i.i9, 255, !dbg !195
  %conv.iter0.i12 = zext nneg i32 %and1.iter0.i11 to i64, !dbg !196
  %mul.iter0.i13 = mul i64 %and.iter0.i10, %conv.iter0.i12, !dbg !197
  %shr.iter0.i14 = lshr i64 %28, 1, !dbg !198
  %and3.iter0.i15 = and i64 %shr.iter0.i14, 1229782938247303441, !dbg !199
  %shr4.iter0.i16 = lshr i32 %xor2.i.i9, 8, !dbg !200
  %and5.iter0.i17 = and i32 %shr4.iter0.i16, 15, !dbg !201
  %conv6.iter0.i18 = zext nneg i32 %and5.iter0.i17 to i64, !dbg !202
  %mul7.iter0.i19 = mul nuw i64 %and3.iter0.i15, %conv6.iter0.i18, !dbg !203
  %xor.iter0.i20 = xor i64 %mul.iter0.i13, %mul7.iter0.i19, !dbg !204
  %29 = load i64, ptr %add.ptr.iter2, align 8, !dbg !205
  %shr9.iter0.i21 = lshr i64 %29, 2, !dbg !206
  %and10.iter0.i22 = and i64 %shr9.iter0.i21, 1229782938247303441, !dbg !207
  %shr11.iter0.i23 = lshr i32 %xor2.i.i9, 16, !dbg !208
  %and12.iter0.i24 = and i32 %shr11.iter0.i23, 15, !dbg !209
  %conv13.iter0.i25 = zext nneg i32 %and12.iter0.i24 to i64, !dbg !210
  %mul14.iter0.i26 = mul nuw i64 %and10.iter0.i22, %conv13.iter0.i25, !dbg !211
  %xor15.iter0.i27 = xor i64 %xor.iter0.i20, %mul14.iter0.i26, !dbg !212
  %30 = load i64, ptr %add.ptr.iter2, align 8, !dbg !213
  %shr17.iter0.i28 = lshr i64 %30, 3, !dbg !214
  %and18.iter0.i29 = and i64 %shr17.iter0.i28, 1229782938247303441, !dbg !215
  %shr19.iter0.i30 = lshr i32 %xor2.i.i9, 24, !dbg !216
  %and20.iter0.i31 = and i32 %shr19.iter0.i30, 15, !dbg !217
  %conv21.iter0.i32 = zext nneg i32 %and20.iter0.i31 to i64, !dbg !218
  %mul22.iter0.i33 = mul nuw i64 %and18.iter0.i29, %conv21.iter0.i32, !dbg !219
  %xor23.iter0.i34 = xor i64 %xor15.iter0.i27, %mul22.iter0.i33, !dbg !220
  %31 = load i64, ptr %add.ptr13.iter2, align 8, !dbg !221
  %xor25.iter0.i35 = xor i64 %31, %xor23.iter0.i34, !dbg !221
  store i64 %xor25.iter0.i35, ptr %add.ptr13.iter2, align 8, !dbg !221
    #dbg_value(i32 undef, !147, !DIExpression(), !192)
    #dbg_value(i32 undef, !147, !DIExpression(), !192)
  %arrayidx.iter1.i36 = getelementptr inbounds nuw i64, ptr %add.ptr.iter2, i32 1, !dbg !193
  %32 = load i64, ptr %arrayidx.iter1.i36, align 8, !dbg !193
  %and.iter1.i37 = and i64 %32, 1229782938247303441, !dbg !194
  %and1.iter1.i38 = and i32 %xor2.i.i9, 255, !dbg !195
  %conv.iter1.i39 = zext nneg i32 %and1.iter1.i38 to i64, !dbg !196
  %mul.iter1.i40 = mul i64 %and.iter1.i37, %conv.iter1.i39, !dbg !197
  %shr.iter1.i41 = lshr i64 %32, 1, !dbg !198
  %and3.iter1.i42 = and i64 %shr.iter1.i41, 1229782938247303441, !dbg !199
  %shr4.iter1.i43 = lshr i32 %xor2.i.i9, 8, !dbg !200
  %and5.iter1.i44 = and i32 %shr4.iter1.i43, 15, !dbg !201
  %conv6.iter1.i45 = zext nneg i32 %and5.iter1.i44 to i64, !dbg !202
  %mul7.iter1.i46 = mul nuw i64 %and3.iter1.i42, %conv6.iter1.i45, !dbg !203
  %xor.iter1.i47 = xor i64 %mul.iter1.i40, %mul7.iter1.i46, !dbg !204
  %arrayidx8.iter1.i48 = getelementptr inbounds nuw i64, ptr %add.ptr.iter2, i32 1, !dbg !205
  %33 = load i64, ptr %arrayidx8.iter1.i48, align 8, !dbg !205
  %shr9.iter1.i49 = lshr i64 %33, 2, !dbg !206
  %and10.iter1.i50 = and i64 %shr9.iter1.i49, 1229782938247303441, !dbg !207
  %shr11.iter1.i51 = lshr i32 %xor2.i.i9, 16, !dbg !208
  %and12.iter1.i52 = and i32 %shr11.iter1.i51, 15, !dbg !209
  %conv13.iter1.i53 = zext nneg i32 %and12.iter1.i52 to i64, !dbg !210
  %mul14.iter1.i54 = mul nuw i64 %and10.iter1.i50, %conv13.iter1.i53, !dbg !211
  %xor15.iter1.i55 = xor i64 %xor.iter1.i47, %mul14.iter1.i54, !dbg !212
  %arrayidx16.iter1.i56 = getelementptr inbounds nuw i64, ptr %add.ptr.iter2, i32 1, !dbg !213
  %34 = load i64, ptr %arrayidx16.iter1.i56, align 8, !dbg !213
  %shr17.iter1.i57 = lshr i64 %34, 3, !dbg !214
  %and18.iter1.i58 = and i64 %shr17.iter1.i57, 1229782938247303441, !dbg !215
  %shr19.iter1.i59 = lshr i32 %xor2.i.i9, 24, !dbg !216
  %and20.iter1.i60 = and i32 %shr19.iter1.i59, 15, !dbg !217
  %conv21.iter1.i61 = zext nneg i32 %and20.iter1.i60 to i64, !dbg !218
  %mul22.iter1.i62 = mul nuw i64 %and18.iter1.i58, %conv21.iter1.i61, !dbg !219
  %xor23.iter1.i63 = xor i64 %xor15.iter1.i55, %mul22.iter1.i62, !dbg !220
  %arrayidx24.iter1.i64 = getelementptr inbounds nuw i64, ptr %add.ptr13.iter2, i32 1, !dbg !222
  %35 = load i64, ptr %arrayidx24.iter1.i64, align 8, !dbg !221
  %xor25.iter1.i65 = xor i64 %35, %xor23.iter1.i63, !dbg !221
  store i64 %xor25.iter1.i65, ptr %arrayidx24.iter1.i64, align 8, !dbg !221
    #dbg_value(i32 undef, !147, !DIExpression(), !192)
    #dbg_value(i32 undef, !147, !DIExpression(), !192)
  %arrayidx.iter2.i66 = getelementptr inbounds nuw i64, ptr %add.ptr.iter2, i32 2, !dbg !193
  %36 = load i64, ptr %arrayidx.iter2.i66, align 8, !dbg !193
  %and.iter2.i67 = and i64 %36, 1229782938247303441, !dbg !194
  %and1.iter2.i68 = and i32 %xor2.i.i9, 255, !dbg !195
  %conv.iter2.i69 = zext nneg i32 %and1.iter2.i68 to i64, !dbg !196
  %mul.iter2.i70 = mul i64 %and.iter2.i67, %conv.iter2.i69, !dbg !197
  %shr.iter2.i71 = lshr i64 %36, 1, !dbg !198
  %and3.iter2.i72 = and i64 %shr.iter2.i71, 1229782938247303441, !dbg !199
  %shr4.iter2.i73 = lshr i32 %xor2.i.i9, 8, !dbg !200
  %and5.iter2.i74 = and i32 %shr4.iter2.i73, 15, !dbg !201
  %conv6.iter2.i75 = zext nneg i32 %and5.iter2.i74 to i64, !dbg !202
  %mul7.iter2.i76 = mul nuw i64 %and3.iter2.i72, %conv6.iter2.i75, !dbg !203
  %xor.iter2.i77 = xor i64 %mul.iter2.i70, %mul7.iter2.i76, !dbg !204
  %arrayidx8.iter2.i78 = getelementptr inbounds nuw i64, ptr %add.ptr.iter2, i32 2, !dbg !205
  %37 = load i64, ptr %arrayidx8.iter2.i78, align 8, !dbg !205
  %shr9.iter2.i79 = lshr i64 %37, 2, !dbg !206
  %and10.iter2.i80 = and i64 %shr9.iter2.i79, 1229782938247303441, !dbg !207
  %shr11.iter2.i81 = lshr i32 %xor2.i.i9, 16, !dbg !208
  %and12.iter2.i82 = and i32 %shr11.iter2.i81, 15, !dbg !209
  %conv13.iter2.i83 = zext nneg i32 %and12.iter2.i82 to i64, !dbg !210
  %mul14.iter2.i84 = mul nuw i64 %and10.iter2.i80, %conv13.iter2.i83, !dbg !211
  %xor15.iter2.i85 = xor i64 %xor.iter2.i77, %mul14.iter2.i84, !dbg !212
  %arrayidx16.iter2.i86 = getelementptr inbounds nuw i64, ptr %add.ptr.iter2, i32 2, !dbg !213
  %38 = load i64, ptr %arrayidx16.iter2.i86, align 8, !dbg !213
  %shr17.iter2.i87 = lshr i64 %38, 3, !dbg !214
  %and18.iter2.i88 = and i64 %shr17.iter2.i87, 1229782938247303441, !dbg !215
  %shr19.iter2.i89 = lshr i32 %xor2.i.i9, 24, !dbg !216
  %and20.iter2.i90 = and i32 %shr19.iter2.i89, 15, !dbg !217
  %conv21.iter2.i91 = zext nneg i32 %and20.iter2.i90 to i64, !dbg !218
  %mul22.iter2.i92 = mul nuw i64 %and18.iter2.i88, %conv21.iter2.i91, !dbg !219
  %xor23.iter2.i93 = xor i64 %xor15.iter2.i85, %mul22.iter2.i92, !dbg !220
  %arrayidx24.iter2.i94 = getelementptr inbounds nuw i64, ptr %add.ptr13.iter2, i32 2, !dbg !222
  %39 = load i64, ptr %arrayidx24.iter2.i94, align 8, !dbg !221
  %xor25.iter2.i95 = xor i64 %39, %xor23.iter2.i93, !dbg !221
  store i64 %xor25.iter2.i95, ptr %arrayidx24.iter2.i94, align 8, !dbg !221
    #dbg_value(i32 undef, !147, !DIExpression(), !192)
    #dbg_value(i32 undef, !147, !DIExpression(), !192)
  %arrayidx.iter3.i96 = getelementptr inbounds nuw i64, ptr %add.ptr.iter2, i32 3, !dbg !193
  %40 = load i64, ptr %arrayidx.iter3.i96, align 8, !dbg !193
  %and.iter3.i97 = and i64 %40, 1229782938247303441, !dbg !194
  %and1.iter3.i98 = and i32 %xor2.i.i9, 255, !dbg !195
  %conv.iter3.i99 = zext nneg i32 %and1.iter3.i98 to i64, !dbg !196
  %mul.iter3.i100 = mul i64 %and.iter3.i97, %conv.iter3.i99, !dbg !197
  %shr.iter3.i101 = lshr i64 %40, 1, !dbg !198
  %and3.iter3.i102 = and i64 %shr.iter3.i101, 1229782938247303441, !dbg !199
  %shr4.iter3.i103 = lshr i32 %xor2.i.i9, 8, !dbg !200
  %and5.iter3.i104 = and i32 %shr4.iter3.i103, 15, !dbg !201
  %conv6.iter3.i105 = zext nneg i32 %and5.iter3.i104 to i64, !dbg !202
  %mul7.iter3.i106 = mul nuw i64 %and3.iter3.i102, %conv6.iter3.i105, !dbg !203
  %xor.iter3.i107 = xor i64 %mul.iter3.i100, %mul7.iter3.i106, !dbg !204
  %arrayidx8.iter3.i108 = getelementptr inbounds nuw i64, ptr %add.ptr.iter2, i32 3, !dbg !205
  %41 = load i64, ptr %arrayidx8.iter3.i108, align 8, !dbg !205
  %shr9.iter3.i109 = lshr i64 %41, 2, !dbg !206
  %and10.iter3.i110 = and i64 %shr9.iter3.i109, 1229782938247303441, !dbg !207
  %shr11.iter3.i111 = lshr i32 %xor2.i.i9, 16, !dbg !208
  %and12.iter3.i112 = and i32 %shr11.iter3.i111, 15, !dbg !209
  %conv13.iter3.i113 = zext nneg i32 %and12.iter3.i112 to i64, !dbg !210
  %mul14.iter3.i114 = mul nuw i64 %and10.iter3.i110, %conv13.iter3.i113, !dbg !211
  %xor15.iter3.i115 = xor i64 %xor.iter3.i107, %mul14.iter3.i114, !dbg !212
  %arrayidx16.iter3.i116 = getelementptr inbounds nuw i64, ptr %add.ptr.iter2, i32 3, !dbg !213
  %42 = load i64, ptr %arrayidx16.iter3.i116, align 8, !dbg !213
  %shr17.iter3.i117 = lshr i64 %42, 3, !dbg !214
  %and18.iter3.i118 = and i64 %shr17.iter3.i117, 1229782938247303441, !dbg !215
  %shr19.iter3.i119 = lshr i32 %xor2.i.i9, 24, !dbg !216
  %and20.iter3.i120 = and i32 %shr19.iter3.i119, 15, !dbg !217
  %conv21.iter3.i121 = zext nneg i32 %and20.iter3.i120 to i64, !dbg !218
  %mul22.iter3.i122 = mul nuw i64 %and18.iter3.i118, %conv21.iter3.i121, !dbg !219
  %xor23.iter3.i123 = xor i64 %xor15.iter3.i115, %mul22.iter3.i122, !dbg !220
  %arrayidx24.iter3.i124 = getelementptr inbounds nuw i64, ptr %add.ptr13.iter2, i32 3, !dbg !222
  %43 = load i64, ptr %arrayidx24.iter3.i124, align 8, !dbg !221
  %xor25.iter3.i125 = xor i64 %43, %xor23.iter3.i123, !dbg !221
  store i64 %xor25.iter3.i125, ptr %arrayidx24.iter3.i124, align 8, !dbg !221
    #dbg_value(i32 undef, !147, !DIExpression(), !192)
    #dbg_value(i32 undef, !147, !DIExpression(), !192)
  %arrayidx.iter4.i126 = getelementptr inbounds nuw i64, ptr %add.ptr.iter2, i32 4, !dbg !193
  %44 = load i64, ptr %arrayidx.iter4.i126, align 8, !dbg !193
  %and.iter4.i127 = and i64 %44, 1229782938247303441, !dbg !194
  %and1.iter4.i128 = and i32 %xor2.i.i9, 255, !dbg !195
  %conv.iter4.i129 = zext nneg i32 %and1.iter4.i128 to i64, !dbg !196
  %mul.iter4.i130 = mul i64 %and.iter4.i127, %conv.iter4.i129, !dbg !197
  %shr.iter4.i131 = lshr i64 %44, 1, !dbg !198
  %and3.iter4.i132 = and i64 %shr.iter4.i131, 1229782938247303441, !dbg !199
  %shr4.iter4.i133 = lshr i32 %xor2.i.i9, 8, !dbg !200
  %and5.iter4.i134 = and i32 %shr4.iter4.i133, 15, !dbg !201
  %conv6.iter4.i135 = zext nneg i32 %and5.iter4.i134 to i64, !dbg !202
  %mul7.iter4.i136 = mul nuw i64 %and3.iter4.i132, %conv6.iter4.i135, !dbg !203
  %xor.iter4.i137 = xor i64 %mul.iter4.i130, %mul7.iter4.i136, !dbg !204
  %arrayidx8.iter4.i138 = getelementptr inbounds nuw i64, ptr %add.ptr.iter2, i32 4, !dbg !205
  %45 = load i64, ptr %arrayidx8.iter4.i138, align 8, !dbg !205
  %shr9.iter4.i139 = lshr i64 %45, 2, !dbg !206
  %and10.iter4.i140 = and i64 %shr9.iter4.i139, 1229782938247303441, !dbg !207
  %shr11.iter4.i141 = lshr i32 %xor2.i.i9, 16, !dbg !208
  %and12.iter4.i142 = and i32 %shr11.iter4.i141, 15, !dbg !209
  %conv13.iter4.i143 = zext nneg i32 %and12.iter4.i142 to i64, !dbg !210
  %mul14.iter4.i144 = mul nuw i64 %and10.iter4.i140, %conv13.iter4.i143, !dbg !211
  %xor15.iter4.i145 = xor i64 %xor.iter4.i137, %mul14.iter4.i144, !dbg !212
  %arrayidx16.iter4.i146 = getelementptr inbounds nuw i64, ptr %add.ptr.iter2, i32 4, !dbg !213
  %46 = load i64, ptr %arrayidx16.iter4.i146, align 8, !dbg !213
  %shr17.iter4.i147 = lshr i64 %46, 3, !dbg !214
  %and18.iter4.i148 = and i64 %shr17.iter4.i147, 1229782938247303441, !dbg !215
  %shr19.iter4.i149 = lshr i32 %xor2.i.i9, 24, !dbg !216
  %and20.iter4.i150 = and i32 %shr19.iter4.i149, 15, !dbg !217
  %conv21.iter4.i151 = zext nneg i32 %and20.iter4.i150 to i64, !dbg !218
  %mul22.iter4.i152 = mul nuw i64 %and18.iter4.i148, %conv21.iter4.i151, !dbg !219
  %xor23.iter4.i153 = xor i64 %xor15.iter4.i145, %mul22.iter4.i152, !dbg !220
  %arrayidx24.iter4.i154 = getelementptr inbounds nuw i64, ptr %add.ptr13.iter2, i32 4, !dbg !222
  %47 = load i64, ptr %arrayidx24.iter4.i154, align 8, !dbg !221
  %xor25.iter4.i155 = xor i64 %47, %xor23.iter4.i153, !dbg !221
  store i64 %xor25.iter4.i155, ptr %arrayidx24.iter4.i154, align 8, !dbg !221
    #dbg_value(i32 undef, !147, !DIExpression(), !192)
  %add14.iter2 = add nuw nsw i32 %k.01.iter2, 1, !dbg !108
    #dbg_value(i32 undef, !95, !DIExpression(), !99)
  %exitcond.not.iter2 = icmp eq i32 %add14.iter2, %bs_mat_cols, !dbg !109
  br i1 %exitcond.not.iter2, label %for.inc15.iter2, label %for.body6.iter2, !dbg !110, !llvm.loop !111

for.inc15.iter2:                                  ; preds = %for.body6.iter2
  %inc.iter2 = add nuw nsw i32 %c.02.iter2, 1, !dbg !114
    #dbg_value(i32 undef, !89, !DIExpression(), !93)
  %exitcond1.not.iter2 = icmp eq i32 %inc.iter2, 78, !dbg !115
  br i1 %exitcond1.not.iter2, label %for.inc17.iter2, label %for.cond4.preheader.iter2, !dbg !94, !llvm.loop !116

for.inc17.iter2:                                  ; preds = %for.inc15.iter2
    #dbg_value(i32 undef, !85, !DIExpression(), !87)
  br label %iter_2_end

for.cond4.preheader.iter2:                        ; preds = %for.inc15.iter2, %for.cond1.preheader.iter2
  %c.02.iter2 = phi i32 [ 0, %for.cond1.preheader.iter2 ], [ %inc.iter2, %for.inc15.iter2 ]
    #dbg_value(i32 undef, !89, !DIExpression(), !93)
    #dbg_value(i32 0, !95, !DIExpression(), !99)
  br label %for.body6.iter2, !dbg !110

iter_2_end:                                       ; preds = %for.inc17.iter2
  br label %iter_3_start

iter_3_start:                                     ; preds = %iter_2_end
  br label %for.cond1.preheader.iter3

for.cond1.preheader.iter3:                        ; preds = %iter_3_start
    #dbg_value(i32 undef, !85, !DIExpression(), !87)
    #dbg_value(i32 0, !89, !DIExpression(), !93)
  br label %for.cond4.preheader.iter3, !dbg !94

for.body6.iter3:                                  ; preds = %for.cond4.preheader.iter3, %for.body6.iter3
  %k.01.iter3 = phi i32 [ 0, %for.cond4.preheader.iter3 ], [ %add14.iter3, %for.body6.iter3 ]
    #dbg_value(i32 undef, !95, !DIExpression(), !99)
  %mul.iter3 = mul nuw nsw i32 %c.02.iter3, %bs_mat_cols, !dbg !100
  %add.iter3 = add nuw nsw i32 %mul.iter3, %k.01.iter3, !dbg !103
  %add.ptr.idx.iter3 = mul nuw nsw i32 %add.iter3, 40, !dbg !104
  %add.ptr.iter3 = getelementptr inbounds nuw i8, ptr %bs_mat, i32 %add.ptr.idx.iter3, !dbg !104
  %48 = getelementptr i8, ptr %mat, i32 234, !dbg !105
  %arrayidx.iter3 = getelementptr i8, ptr %48, i32 %c.02.iter3, !dbg !105
  %49 = load i8, ptr %arrayidx.iter3, align 1, !dbg !105
  %mul10.iter3 = mul nuw nsw i32 3, %bs_mat_cols, !dbg !118
  %add11.iter3 = add nuw nsw i32 %mul10.iter3, %k.01.iter3, !dbg !106
  %add.ptr13.idx.iter3 = mul nuw nsw i32 %add11.iter3, 40, !dbg !107
  %add.ptr13.iter3 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr13.idx.iter3, !dbg !107
    #dbg_value(i32 5, !119, !DIExpression(), !223)
    #dbg_value(ptr %add.ptr.iter3, !126, !DIExpression(), !223)
    #dbg_value(i8 %49, !127, !DIExpression(), !223)
    #dbg_value(ptr %add.ptr13.iter3, !128, !DIExpression(), !223)
    #dbg_value(i8 %49, !129, !DIExpression(), !225)
  %conv.i.i916 = zext i8 %49 to i32, !dbg !227
  %mul.i.i917 = mul i32 %conv.i.i916, 134480385, !dbg !228
    #dbg_value(i32 %mul.i.i917, !138, !DIExpression(), !225)
    #dbg_value(i32 -252645136, !139, !DIExpression(), !225)
  %and.i.i918 = and i32 %mul.i.i917, -252645136, !dbg !229
    #dbg_value(i32 %and.i.i918, !141, !DIExpression(), !225)
  %shr.i.i919 = lshr exact i32 %and.i.i918, 4, !dbg !230
  %shr1.i.i920 = lshr exact i32 %and.i.i918, 3, !dbg !231
  %50 = xor i32 %shr.i.i919, %shr1.i.i920, !dbg !232
  %xor2.i.i921 = xor i32 %50, %mul.i.i917, !dbg !232
    #dbg_value(i32 %xor2.i.i921, !145, !DIExpression(), !223)
    #dbg_value(i64 1229782938247303441, !146, !DIExpression(), !223)
    #dbg_value(i32 0, !147, !DIExpression(), !233)
    #dbg_value(i32 undef, !147, !DIExpression(), !233)
  %51 = load i64, ptr %add.ptr.iter3, align 8, !dbg !234
  %and.iter0.i922 = and i64 %51, 1229782938247303441, !dbg !235
  %and1.iter0.i923 = and i32 %xor2.i.i921, 255, !dbg !236
  %conv.iter0.i924 = zext nneg i32 %and1.iter0.i923 to i64, !dbg !237
  %mul.iter0.i925 = mul i64 %and.iter0.i922, %conv.iter0.i924, !dbg !238
  %shr.iter0.i926 = lshr i64 %51, 1, !dbg !239
  %and3.iter0.i927 = and i64 %shr.iter0.i926, 1229782938247303441, !dbg !240
  %shr4.iter0.i928 = lshr i32 %xor2.i.i921, 8, !dbg !241
  %and5.iter0.i929 = and i32 %shr4.iter0.i928, 15, !dbg !242
  %conv6.iter0.i930 = zext nneg i32 %and5.iter0.i929 to i64, !dbg !243
  %mul7.iter0.i931 = mul nuw i64 %and3.iter0.i927, %conv6.iter0.i930, !dbg !244
  %xor.iter0.i932 = xor i64 %mul.iter0.i925, %mul7.iter0.i931, !dbg !245
  %52 = load i64, ptr %add.ptr.iter3, align 8, !dbg !246
  %shr9.iter0.i933 = lshr i64 %52, 2, !dbg !247
  %and10.iter0.i934 = and i64 %shr9.iter0.i933, 1229782938247303441, !dbg !248
  %shr11.iter0.i935 = lshr i32 %xor2.i.i921, 16, !dbg !249
  %and12.iter0.i936 = and i32 %shr11.iter0.i935, 15, !dbg !250
  %conv13.iter0.i937 = zext nneg i32 %and12.iter0.i936 to i64, !dbg !251
  %mul14.iter0.i938 = mul nuw i64 %and10.iter0.i934, %conv13.iter0.i937, !dbg !252
  %xor15.iter0.i939 = xor i64 %xor.iter0.i932, %mul14.iter0.i938, !dbg !253
  %53 = load i64, ptr %add.ptr.iter3, align 8, !dbg !254
  %shr17.iter0.i940 = lshr i64 %53, 3, !dbg !255
  %and18.iter0.i941 = and i64 %shr17.iter0.i940, 1229782938247303441, !dbg !256
  %shr19.iter0.i942 = lshr i32 %xor2.i.i921, 24, !dbg !257
  %and20.iter0.i943 = and i32 %shr19.iter0.i942, 15, !dbg !258
  %conv21.iter0.i944 = zext nneg i32 %and20.iter0.i943 to i64, !dbg !259
  %mul22.iter0.i945 = mul nuw i64 %and18.iter0.i941, %conv21.iter0.i944, !dbg !260
  %xor23.iter0.i946 = xor i64 %xor15.iter0.i939, %mul22.iter0.i945, !dbg !261
  %54 = load i64, ptr %add.ptr13.iter3, align 8, !dbg !262
  %xor25.iter0.i947 = xor i64 %54, %xor23.iter0.i946, !dbg !262
  store i64 %xor25.iter0.i947, ptr %add.ptr13.iter3, align 8, !dbg !262
    #dbg_value(i32 undef, !147, !DIExpression(), !233)
    #dbg_value(i32 undef, !147, !DIExpression(), !233)
  %arrayidx.iter1.i948 = getelementptr inbounds nuw i64, ptr %add.ptr.iter3, i32 1, !dbg !234
  %55 = load i64, ptr %arrayidx.iter1.i948, align 8, !dbg !234
  %and.iter1.i949 = and i64 %55, 1229782938247303441, !dbg !235
  %and1.iter1.i950 = and i32 %xor2.i.i921, 255, !dbg !236
  %conv.iter1.i951 = zext nneg i32 %and1.iter1.i950 to i64, !dbg !237
  %mul.iter1.i952 = mul i64 %and.iter1.i949, %conv.iter1.i951, !dbg !238
  %shr.iter1.i953 = lshr i64 %55, 1, !dbg !239
  %and3.iter1.i954 = and i64 %shr.iter1.i953, 1229782938247303441, !dbg !240
  %shr4.iter1.i955 = lshr i32 %xor2.i.i921, 8, !dbg !241
  %and5.iter1.i956 = and i32 %shr4.iter1.i955, 15, !dbg !242
  %conv6.iter1.i957 = zext nneg i32 %and5.iter1.i956 to i64, !dbg !243
  %mul7.iter1.i958 = mul nuw i64 %and3.iter1.i954, %conv6.iter1.i957, !dbg !244
  %xor.iter1.i959 = xor i64 %mul.iter1.i952, %mul7.iter1.i958, !dbg !245
  %arrayidx8.iter1.i960 = getelementptr inbounds nuw i64, ptr %add.ptr.iter3, i32 1, !dbg !246
  %56 = load i64, ptr %arrayidx8.iter1.i960, align 8, !dbg !246
  %shr9.iter1.i961 = lshr i64 %56, 2, !dbg !247
  %and10.iter1.i962 = and i64 %shr9.iter1.i961, 1229782938247303441, !dbg !248
  %shr11.iter1.i963 = lshr i32 %xor2.i.i921, 16, !dbg !249
  %and12.iter1.i964 = and i32 %shr11.iter1.i963, 15, !dbg !250
  %conv13.iter1.i965 = zext nneg i32 %and12.iter1.i964 to i64, !dbg !251
  %mul14.iter1.i966 = mul nuw i64 %and10.iter1.i962, %conv13.iter1.i965, !dbg !252
  %xor15.iter1.i967 = xor i64 %xor.iter1.i959, %mul14.iter1.i966, !dbg !253
  %arrayidx16.iter1.i968 = getelementptr inbounds nuw i64, ptr %add.ptr.iter3, i32 1, !dbg !254
  %57 = load i64, ptr %arrayidx16.iter1.i968, align 8, !dbg !254
  %shr17.iter1.i969 = lshr i64 %57, 3, !dbg !255
  %and18.iter1.i970 = and i64 %shr17.iter1.i969, 1229782938247303441, !dbg !256
  %shr19.iter1.i971 = lshr i32 %xor2.i.i921, 24, !dbg !257
  %and20.iter1.i972 = and i32 %shr19.iter1.i971, 15, !dbg !258
  %conv21.iter1.i973 = zext nneg i32 %and20.iter1.i972 to i64, !dbg !259
  %mul22.iter1.i974 = mul nuw i64 %and18.iter1.i970, %conv21.iter1.i973, !dbg !260
  %xor23.iter1.i975 = xor i64 %xor15.iter1.i967, %mul22.iter1.i974, !dbg !261
  %arrayidx24.iter1.i976 = getelementptr inbounds nuw i64, ptr %add.ptr13.iter3, i32 1, !dbg !263
  %58 = load i64, ptr %arrayidx24.iter1.i976, align 8, !dbg !262
  %xor25.iter1.i977 = xor i64 %58, %xor23.iter1.i975, !dbg !262
  store i64 %xor25.iter1.i977, ptr %arrayidx24.iter1.i976, align 8, !dbg !262
    #dbg_value(i32 undef, !147, !DIExpression(), !233)
    #dbg_value(i32 undef, !147, !DIExpression(), !233)
  %arrayidx.iter2.i978 = getelementptr inbounds nuw i64, ptr %add.ptr.iter3, i32 2, !dbg !234
  %59 = load i64, ptr %arrayidx.iter2.i978, align 8, !dbg !234
  %and.iter2.i979 = and i64 %59, 1229782938247303441, !dbg !235
  %and1.iter2.i980 = and i32 %xor2.i.i921, 255, !dbg !236
  %conv.iter2.i981 = zext nneg i32 %and1.iter2.i980 to i64, !dbg !237
  %mul.iter2.i982 = mul i64 %and.iter2.i979, %conv.iter2.i981, !dbg !238
  %shr.iter2.i983 = lshr i64 %59, 1, !dbg !239
  %and3.iter2.i984 = and i64 %shr.iter2.i983, 1229782938247303441, !dbg !240
  %shr4.iter2.i985 = lshr i32 %xor2.i.i921, 8, !dbg !241
  %and5.iter2.i986 = and i32 %shr4.iter2.i985, 15, !dbg !242
  %conv6.iter2.i987 = zext nneg i32 %and5.iter2.i986 to i64, !dbg !243
  %mul7.iter2.i988 = mul nuw i64 %and3.iter2.i984, %conv6.iter2.i987, !dbg !244
  %xor.iter2.i989 = xor i64 %mul.iter2.i982, %mul7.iter2.i988, !dbg !245
  %arrayidx8.iter2.i990 = getelementptr inbounds nuw i64, ptr %add.ptr.iter3, i32 2, !dbg !246
  %60 = load i64, ptr %arrayidx8.iter2.i990, align 8, !dbg !246
  %shr9.iter2.i991 = lshr i64 %60, 2, !dbg !247
  %and10.iter2.i992 = and i64 %shr9.iter2.i991, 1229782938247303441, !dbg !248
  %shr11.iter2.i993 = lshr i32 %xor2.i.i921, 16, !dbg !249
  %and12.iter2.i994 = and i32 %shr11.iter2.i993, 15, !dbg !250
  %conv13.iter2.i995 = zext nneg i32 %and12.iter2.i994 to i64, !dbg !251
  %mul14.iter2.i996 = mul nuw i64 %and10.iter2.i992, %conv13.iter2.i995, !dbg !252
  %xor15.iter2.i997 = xor i64 %xor.iter2.i989, %mul14.iter2.i996, !dbg !253
  %arrayidx16.iter2.i998 = getelementptr inbounds nuw i64, ptr %add.ptr.iter3, i32 2, !dbg !254
  %61 = load i64, ptr %arrayidx16.iter2.i998, align 8, !dbg !254
  %shr17.iter2.i999 = lshr i64 %61, 3, !dbg !255
  %and18.iter2.i1000 = and i64 %shr17.iter2.i999, 1229782938247303441, !dbg !256
  %shr19.iter2.i1001 = lshr i32 %xor2.i.i921, 24, !dbg !257
  %and20.iter2.i1002 = and i32 %shr19.iter2.i1001, 15, !dbg !258
  %conv21.iter2.i1003 = zext nneg i32 %and20.iter2.i1002 to i64, !dbg !259
  %mul22.iter2.i1004 = mul nuw i64 %and18.iter2.i1000, %conv21.iter2.i1003, !dbg !260
  %xor23.iter2.i1005 = xor i64 %xor15.iter2.i997, %mul22.iter2.i1004, !dbg !261
  %arrayidx24.iter2.i1006 = getelementptr inbounds nuw i64, ptr %add.ptr13.iter3, i32 2, !dbg !263
  %62 = load i64, ptr %arrayidx24.iter2.i1006, align 8, !dbg !262
  %xor25.iter2.i1007 = xor i64 %62, %xor23.iter2.i1005, !dbg !262
  store i64 %xor25.iter2.i1007, ptr %arrayidx24.iter2.i1006, align 8, !dbg !262
    #dbg_value(i32 undef, !147, !DIExpression(), !233)
    #dbg_value(i32 undef, !147, !DIExpression(), !233)
  %arrayidx.iter3.i1008 = getelementptr inbounds nuw i64, ptr %add.ptr.iter3, i32 3, !dbg !234
  %63 = load i64, ptr %arrayidx.iter3.i1008, align 8, !dbg !234
  %and.iter3.i1009 = and i64 %63, 1229782938247303441, !dbg !235
  %and1.iter3.i1010 = and i32 %xor2.i.i921, 255, !dbg !236
  %conv.iter3.i1011 = zext nneg i32 %and1.iter3.i1010 to i64, !dbg !237
  %mul.iter3.i1012 = mul i64 %and.iter3.i1009, %conv.iter3.i1011, !dbg !238
  %shr.iter3.i1013 = lshr i64 %63, 1, !dbg !239
  %and3.iter3.i1014 = and i64 %shr.iter3.i1013, 1229782938247303441, !dbg !240
  %shr4.iter3.i1015 = lshr i32 %xor2.i.i921, 8, !dbg !241
  %and5.iter3.i1016 = and i32 %shr4.iter3.i1015, 15, !dbg !242
  %conv6.iter3.i1017 = zext nneg i32 %and5.iter3.i1016 to i64, !dbg !243
  %mul7.iter3.i1018 = mul nuw i64 %and3.iter3.i1014, %conv6.iter3.i1017, !dbg !244
  %xor.iter3.i1019 = xor i64 %mul.iter3.i1012, %mul7.iter3.i1018, !dbg !245
  %arrayidx8.iter3.i1020 = getelementptr inbounds nuw i64, ptr %add.ptr.iter3, i32 3, !dbg !246
  %64 = load i64, ptr %arrayidx8.iter3.i1020, align 8, !dbg !246
  %shr9.iter3.i1021 = lshr i64 %64, 2, !dbg !247
  %and10.iter3.i1022 = and i64 %shr9.iter3.i1021, 1229782938247303441, !dbg !248
  %shr11.iter3.i1023 = lshr i32 %xor2.i.i921, 16, !dbg !249
  %and12.iter3.i1024 = and i32 %shr11.iter3.i1023, 15, !dbg !250
  %conv13.iter3.i1025 = zext nneg i32 %and12.iter3.i1024 to i64, !dbg !251
  %mul14.iter3.i1026 = mul nuw i64 %and10.iter3.i1022, %conv13.iter3.i1025, !dbg !252
  %xor15.iter3.i1027 = xor i64 %xor.iter3.i1019, %mul14.iter3.i1026, !dbg !253
  %arrayidx16.iter3.i1028 = getelementptr inbounds nuw i64, ptr %add.ptr.iter3, i32 3, !dbg !254
  %65 = load i64, ptr %arrayidx16.iter3.i1028, align 8, !dbg !254
  %shr17.iter3.i1029 = lshr i64 %65, 3, !dbg !255
  %and18.iter3.i1030 = and i64 %shr17.iter3.i1029, 1229782938247303441, !dbg !256
  %shr19.iter3.i1031 = lshr i32 %xor2.i.i921, 24, !dbg !257
  %and20.iter3.i1032 = and i32 %shr19.iter3.i1031, 15, !dbg !258
  %conv21.iter3.i1033 = zext nneg i32 %and20.iter3.i1032 to i64, !dbg !259
  %mul22.iter3.i1034 = mul nuw i64 %and18.iter3.i1030, %conv21.iter3.i1033, !dbg !260
  %xor23.iter3.i1035 = xor i64 %xor15.iter3.i1027, %mul22.iter3.i1034, !dbg !261
  %arrayidx24.iter3.i1036 = getelementptr inbounds nuw i64, ptr %add.ptr13.iter3, i32 3, !dbg !263
  %66 = load i64, ptr %arrayidx24.iter3.i1036, align 8, !dbg !262
  %xor25.iter3.i1037 = xor i64 %66, %xor23.iter3.i1035, !dbg !262
  store i64 %xor25.iter3.i1037, ptr %arrayidx24.iter3.i1036, align 8, !dbg !262
    #dbg_value(i32 undef, !147, !DIExpression(), !233)
    #dbg_value(i32 undef, !147, !DIExpression(), !233)
  %arrayidx.iter4.i1038 = getelementptr inbounds nuw i64, ptr %add.ptr.iter3, i32 4, !dbg !234
  %67 = load i64, ptr %arrayidx.iter4.i1038, align 8, !dbg !234
  %and.iter4.i1039 = and i64 %67, 1229782938247303441, !dbg !235
  %and1.iter4.i1040 = and i32 %xor2.i.i921, 255, !dbg !236
  %conv.iter4.i1041 = zext nneg i32 %and1.iter4.i1040 to i64, !dbg !237
  %mul.iter4.i1042 = mul i64 %and.iter4.i1039, %conv.iter4.i1041, !dbg !238
  %shr.iter4.i1043 = lshr i64 %67, 1, !dbg !239
  %and3.iter4.i1044 = and i64 %shr.iter4.i1043, 1229782938247303441, !dbg !240
  %shr4.iter4.i1045 = lshr i32 %xor2.i.i921, 8, !dbg !241
  %and5.iter4.i1046 = and i32 %shr4.iter4.i1045, 15, !dbg !242
  %conv6.iter4.i1047 = zext nneg i32 %and5.iter4.i1046 to i64, !dbg !243
  %mul7.iter4.i1048 = mul nuw i64 %and3.iter4.i1044, %conv6.iter4.i1047, !dbg !244
  %xor.iter4.i1049 = xor i64 %mul.iter4.i1042, %mul7.iter4.i1048, !dbg !245
  %arrayidx8.iter4.i1050 = getelementptr inbounds nuw i64, ptr %add.ptr.iter3, i32 4, !dbg !246
  %68 = load i64, ptr %arrayidx8.iter4.i1050, align 8, !dbg !246
  %shr9.iter4.i1051 = lshr i64 %68, 2, !dbg !247
  %and10.iter4.i1052 = and i64 %shr9.iter4.i1051, 1229782938247303441, !dbg !248
  %shr11.iter4.i1053 = lshr i32 %xor2.i.i921, 16, !dbg !249
  %and12.iter4.i1054 = and i32 %shr11.iter4.i1053, 15, !dbg !250
  %conv13.iter4.i1055 = zext nneg i32 %and12.iter4.i1054 to i64, !dbg !251
  %mul14.iter4.i1056 = mul nuw i64 %and10.iter4.i1052, %conv13.iter4.i1055, !dbg !252
  %xor15.iter4.i1057 = xor i64 %xor.iter4.i1049, %mul14.iter4.i1056, !dbg !253
  %arrayidx16.iter4.i1058 = getelementptr inbounds nuw i64, ptr %add.ptr.iter3, i32 4, !dbg !254
  %69 = load i64, ptr %arrayidx16.iter4.i1058, align 8, !dbg !254
  %shr17.iter4.i1059 = lshr i64 %69, 3, !dbg !255
  %and18.iter4.i1060 = and i64 %shr17.iter4.i1059, 1229782938247303441, !dbg !256
  %shr19.iter4.i1061 = lshr i32 %xor2.i.i921, 24, !dbg !257
  %and20.iter4.i1062 = and i32 %shr19.iter4.i1061, 15, !dbg !258
  %conv21.iter4.i1063 = zext nneg i32 %and20.iter4.i1062 to i64, !dbg !259
  %mul22.iter4.i1064 = mul nuw i64 %and18.iter4.i1060, %conv21.iter4.i1063, !dbg !260
  %xor23.iter4.i1065 = xor i64 %xor15.iter4.i1057, %mul22.iter4.i1064, !dbg !261
  %arrayidx24.iter4.i1066 = getelementptr inbounds nuw i64, ptr %add.ptr13.iter3, i32 4, !dbg !263
  %70 = load i64, ptr %arrayidx24.iter4.i1066, align 8, !dbg !262
  %xor25.iter4.i1067 = xor i64 %70, %xor23.iter4.i1065, !dbg !262
  store i64 %xor25.iter4.i1067, ptr %arrayidx24.iter4.i1066, align 8, !dbg !262
    #dbg_value(i32 undef, !147, !DIExpression(), !233)
  %add14.iter3 = add nuw nsw i32 %k.01.iter3, 1, !dbg !108
    #dbg_value(i32 undef, !95, !DIExpression(), !99)
  %exitcond.not.iter3 = icmp eq i32 %add14.iter3, %bs_mat_cols, !dbg !109
  br i1 %exitcond.not.iter3, label %for.inc15.iter3, label %for.body6.iter3, !dbg !110, !llvm.loop !111

for.inc15.iter3:                                  ; preds = %for.body6.iter3
  %inc.iter3 = add nuw nsw i32 %c.02.iter3, 1, !dbg !114
    #dbg_value(i32 undef, !89, !DIExpression(), !93)
  %exitcond1.not.iter3 = icmp eq i32 %inc.iter3, 78, !dbg !115
  br i1 %exitcond1.not.iter3, label %for.inc17.iter3, label %for.cond4.preheader.iter3, !dbg !94, !llvm.loop !116

for.inc17.iter3:                                  ; preds = %for.inc15.iter3
    #dbg_value(i32 undef, !85, !DIExpression(), !87)
  br label %iter_3_end

for.cond4.preheader.iter3:                        ; preds = %for.inc15.iter3, %for.cond1.preheader.iter3
  %c.02.iter3 = phi i32 [ 0, %for.cond1.preheader.iter3 ], [ %inc.iter3, %for.inc15.iter3 ]
    #dbg_value(i32 undef, !89, !DIExpression(), !93)
    #dbg_value(i32 0, !95, !DIExpression(), !99)
  br label %for.body6.iter3, !dbg !110

iter_3_end:                                       ; preds = %for.inc17.iter3
  br label %iter_4_start

iter_4_start:                                     ; preds = %iter_3_end
  br label %for.cond1.preheader.iter4

for.cond1.preheader.iter4:                        ; preds = %iter_4_start
    #dbg_value(i32 undef, !85, !DIExpression(), !87)
    #dbg_value(i32 0, !89, !DIExpression(), !93)
  br label %for.cond4.preheader.iter4, !dbg !94

for.body6.iter4:                                  ; preds = %for.cond4.preheader.iter4, %for.body6.iter4
  %k.01.iter4 = phi i32 [ 0, %for.cond4.preheader.iter4 ], [ %add14.iter4, %for.body6.iter4 ]
    #dbg_value(i32 undef, !95, !DIExpression(), !99)
  %mul.iter4 = mul nuw nsw i32 %c.02.iter4, %bs_mat_cols, !dbg !100
  %add.iter4 = add nuw nsw i32 %mul.iter4, %k.01.iter4, !dbg !103
  %add.ptr.idx.iter4 = mul nuw nsw i32 %add.iter4, 40, !dbg !104
  %add.ptr.iter4 = getelementptr inbounds nuw i8, ptr %bs_mat, i32 %add.ptr.idx.iter4, !dbg !104
  %71 = getelementptr i8, ptr %mat, i32 312, !dbg !105
  %arrayidx.iter4 = getelementptr i8, ptr %71, i32 %c.02.iter4, !dbg !105
  %72 = load i8, ptr %arrayidx.iter4, align 1, !dbg !105
  %mul10.iter4 = mul nuw nsw i32 4, %bs_mat_cols, !dbg !118
  %add11.iter4 = add nuw nsw i32 %mul10.iter4, %k.01.iter4, !dbg !106
  %add.ptr13.idx.iter4 = mul nuw nsw i32 %add11.iter4, 40, !dbg !107
  %add.ptr13.iter4 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr13.idx.iter4, !dbg !107
    #dbg_value(i32 5, !119, !DIExpression(), !264)
    #dbg_value(ptr %add.ptr.iter4, !126, !DIExpression(), !264)
    #dbg_value(i8 %72, !127, !DIExpression(), !264)
    #dbg_value(ptr %add.ptr13.iter4, !128, !DIExpression(), !264)
    #dbg_value(i8 %72, !129, !DIExpression(), !266)
  %conv.i.i612 = zext i8 %72 to i32, !dbg !268
  %mul.i.i613 = mul i32 %conv.i.i612, 134480385, !dbg !269
    #dbg_value(i32 %mul.i.i613, !138, !DIExpression(), !266)
    #dbg_value(i32 -252645136, !139, !DIExpression(), !266)
  %and.i.i614 = and i32 %mul.i.i613, -252645136, !dbg !270
    #dbg_value(i32 %and.i.i614, !141, !DIExpression(), !266)
  %shr.i.i615 = lshr exact i32 %and.i.i614, 4, !dbg !271
  %shr1.i.i616 = lshr exact i32 %and.i.i614, 3, !dbg !272
  %73 = xor i32 %shr.i.i615, %shr1.i.i616, !dbg !273
  %xor2.i.i617 = xor i32 %73, %mul.i.i613, !dbg !273
    #dbg_value(i32 %xor2.i.i617, !145, !DIExpression(), !264)
    #dbg_value(i64 1229782938247303441, !146, !DIExpression(), !264)
    #dbg_value(i32 0, !147, !DIExpression(), !274)
    #dbg_value(i32 undef, !147, !DIExpression(), !274)
  %74 = load i64, ptr %add.ptr.iter4, align 8, !dbg !275
  %and.iter0.i618 = and i64 %74, 1229782938247303441, !dbg !276
  %and1.iter0.i619 = and i32 %xor2.i.i617, 255, !dbg !277
  %conv.iter0.i620 = zext nneg i32 %and1.iter0.i619 to i64, !dbg !278
  %mul.iter0.i621 = mul i64 %and.iter0.i618, %conv.iter0.i620, !dbg !279
  %shr.iter0.i622 = lshr i64 %74, 1, !dbg !280
  %and3.iter0.i623 = and i64 %shr.iter0.i622, 1229782938247303441, !dbg !281
  %shr4.iter0.i624 = lshr i32 %xor2.i.i617, 8, !dbg !282
  %and5.iter0.i625 = and i32 %shr4.iter0.i624, 15, !dbg !283
  %conv6.iter0.i626 = zext nneg i32 %and5.iter0.i625 to i64, !dbg !284
  %mul7.iter0.i627 = mul nuw i64 %and3.iter0.i623, %conv6.iter0.i626, !dbg !285
  %xor.iter0.i628 = xor i64 %mul.iter0.i621, %mul7.iter0.i627, !dbg !286
  %75 = load i64, ptr %add.ptr.iter4, align 8, !dbg !287
  %shr9.iter0.i629 = lshr i64 %75, 2, !dbg !288
  %and10.iter0.i630 = and i64 %shr9.iter0.i629, 1229782938247303441, !dbg !289
  %shr11.iter0.i631 = lshr i32 %xor2.i.i617, 16, !dbg !290
  %and12.iter0.i632 = and i32 %shr11.iter0.i631, 15, !dbg !291
  %conv13.iter0.i633 = zext nneg i32 %and12.iter0.i632 to i64, !dbg !292
  %mul14.iter0.i634 = mul nuw i64 %and10.iter0.i630, %conv13.iter0.i633, !dbg !293
  %xor15.iter0.i635 = xor i64 %xor.iter0.i628, %mul14.iter0.i634, !dbg !294
  %76 = load i64, ptr %add.ptr.iter4, align 8, !dbg !295
  %shr17.iter0.i636 = lshr i64 %76, 3, !dbg !296
  %and18.iter0.i637 = and i64 %shr17.iter0.i636, 1229782938247303441, !dbg !297
  %shr19.iter0.i638 = lshr i32 %xor2.i.i617, 24, !dbg !298
  %and20.iter0.i639 = and i32 %shr19.iter0.i638, 15, !dbg !299
  %conv21.iter0.i640 = zext nneg i32 %and20.iter0.i639 to i64, !dbg !300
  %mul22.iter0.i641 = mul nuw i64 %and18.iter0.i637, %conv21.iter0.i640, !dbg !301
  %xor23.iter0.i642 = xor i64 %xor15.iter0.i635, %mul22.iter0.i641, !dbg !302
  %77 = load i64, ptr %add.ptr13.iter4, align 8, !dbg !303
  %xor25.iter0.i643 = xor i64 %77, %xor23.iter0.i642, !dbg !303
  store i64 %xor25.iter0.i643, ptr %add.ptr13.iter4, align 8, !dbg !303
    #dbg_value(i32 undef, !147, !DIExpression(), !274)
    #dbg_value(i32 undef, !147, !DIExpression(), !274)
  %arrayidx.iter1.i644 = getelementptr inbounds nuw i64, ptr %add.ptr.iter4, i32 1, !dbg !275
  %78 = load i64, ptr %arrayidx.iter1.i644, align 8, !dbg !275
  %and.iter1.i645 = and i64 %78, 1229782938247303441, !dbg !276
  %and1.iter1.i646 = and i32 %xor2.i.i617, 255, !dbg !277
  %conv.iter1.i647 = zext nneg i32 %and1.iter1.i646 to i64, !dbg !278
  %mul.iter1.i648 = mul i64 %and.iter1.i645, %conv.iter1.i647, !dbg !279
  %shr.iter1.i649 = lshr i64 %78, 1, !dbg !280
  %and3.iter1.i650 = and i64 %shr.iter1.i649, 1229782938247303441, !dbg !281
  %shr4.iter1.i651 = lshr i32 %xor2.i.i617, 8, !dbg !282
  %and5.iter1.i652 = and i32 %shr4.iter1.i651, 15, !dbg !283
  %conv6.iter1.i653 = zext nneg i32 %and5.iter1.i652 to i64, !dbg !284
  %mul7.iter1.i654 = mul nuw i64 %and3.iter1.i650, %conv6.iter1.i653, !dbg !285
  %xor.iter1.i655 = xor i64 %mul.iter1.i648, %mul7.iter1.i654, !dbg !286
  %arrayidx8.iter1.i656 = getelementptr inbounds nuw i64, ptr %add.ptr.iter4, i32 1, !dbg !287
  %79 = load i64, ptr %arrayidx8.iter1.i656, align 8, !dbg !287
  %shr9.iter1.i657 = lshr i64 %79, 2, !dbg !288
  %and10.iter1.i658 = and i64 %shr9.iter1.i657, 1229782938247303441, !dbg !289
  %shr11.iter1.i659 = lshr i32 %xor2.i.i617, 16, !dbg !290
  %and12.iter1.i660 = and i32 %shr11.iter1.i659, 15, !dbg !291
  %conv13.iter1.i661 = zext nneg i32 %and12.iter1.i660 to i64, !dbg !292
  %mul14.iter1.i662 = mul nuw i64 %and10.iter1.i658, %conv13.iter1.i661, !dbg !293
  %xor15.iter1.i663 = xor i64 %xor.iter1.i655, %mul14.iter1.i662, !dbg !294
  %arrayidx16.iter1.i664 = getelementptr inbounds nuw i64, ptr %add.ptr.iter4, i32 1, !dbg !295
  %80 = load i64, ptr %arrayidx16.iter1.i664, align 8, !dbg !295
  %shr17.iter1.i665 = lshr i64 %80, 3, !dbg !296
  %and18.iter1.i666 = and i64 %shr17.iter1.i665, 1229782938247303441, !dbg !297
  %shr19.iter1.i667 = lshr i32 %xor2.i.i617, 24, !dbg !298
  %and20.iter1.i668 = and i32 %shr19.iter1.i667, 15, !dbg !299
  %conv21.iter1.i669 = zext nneg i32 %and20.iter1.i668 to i64, !dbg !300
  %mul22.iter1.i670 = mul nuw i64 %and18.iter1.i666, %conv21.iter1.i669, !dbg !301
  %xor23.iter1.i671 = xor i64 %xor15.iter1.i663, %mul22.iter1.i670, !dbg !302
  %arrayidx24.iter1.i672 = getelementptr inbounds nuw i64, ptr %add.ptr13.iter4, i32 1, !dbg !304
  %81 = load i64, ptr %arrayidx24.iter1.i672, align 8, !dbg !303
  %xor25.iter1.i673 = xor i64 %81, %xor23.iter1.i671, !dbg !303
  store i64 %xor25.iter1.i673, ptr %arrayidx24.iter1.i672, align 8, !dbg !303
    #dbg_value(i32 undef, !147, !DIExpression(), !274)
    #dbg_value(i32 undef, !147, !DIExpression(), !274)
  %arrayidx.iter2.i674 = getelementptr inbounds nuw i64, ptr %add.ptr.iter4, i32 2, !dbg !275
  %82 = load i64, ptr %arrayidx.iter2.i674, align 8, !dbg !275
  %and.iter2.i675 = and i64 %82, 1229782938247303441, !dbg !276
  %and1.iter2.i676 = and i32 %xor2.i.i617, 255, !dbg !277
  %conv.iter2.i677 = zext nneg i32 %and1.iter2.i676 to i64, !dbg !278
  %mul.iter2.i678 = mul i64 %and.iter2.i675, %conv.iter2.i677, !dbg !279
  %shr.iter2.i679 = lshr i64 %82, 1, !dbg !280
  %and3.iter2.i680 = and i64 %shr.iter2.i679, 1229782938247303441, !dbg !281
  %shr4.iter2.i681 = lshr i32 %xor2.i.i617, 8, !dbg !282
  %and5.iter2.i682 = and i32 %shr4.iter2.i681, 15, !dbg !283
  %conv6.iter2.i683 = zext nneg i32 %and5.iter2.i682 to i64, !dbg !284
  %mul7.iter2.i684 = mul nuw i64 %and3.iter2.i680, %conv6.iter2.i683, !dbg !285
  %xor.iter2.i685 = xor i64 %mul.iter2.i678, %mul7.iter2.i684, !dbg !286
  %arrayidx8.iter2.i686 = getelementptr inbounds nuw i64, ptr %add.ptr.iter4, i32 2, !dbg !287
  %83 = load i64, ptr %arrayidx8.iter2.i686, align 8, !dbg !287
  %shr9.iter2.i687 = lshr i64 %83, 2, !dbg !288
  %and10.iter2.i688 = and i64 %shr9.iter2.i687, 1229782938247303441, !dbg !289
  %shr11.iter2.i689 = lshr i32 %xor2.i.i617, 16, !dbg !290
  %and12.iter2.i690 = and i32 %shr11.iter2.i689, 15, !dbg !291
  %conv13.iter2.i691 = zext nneg i32 %and12.iter2.i690 to i64, !dbg !292
  %mul14.iter2.i692 = mul nuw i64 %and10.iter2.i688, %conv13.iter2.i691, !dbg !293
  %xor15.iter2.i693 = xor i64 %xor.iter2.i685, %mul14.iter2.i692, !dbg !294
  %arrayidx16.iter2.i694 = getelementptr inbounds nuw i64, ptr %add.ptr.iter4, i32 2, !dbg !295
  %84 = load i64, ptr %arrayidx16.iter2.i694, align 8, !dbg !295
  %shr17.iter2.i695 = lshr i64 %84, 3, !dbg !296
  %and18.iter2.i696 = and i64 %shr17.iter2.i695, 1229782938247303441, !dbg !297
  %shr19.iter2.i697 = lshr i32 %xor2.i.i617, 24, !dbg !298
  %and20.iter2.i698 = and i32 %shr19.iter2.i697, 15, !dbg !299
  %conv21.iter2.i699 = zext nneg i32 %and20.iter2.i698 to i64, !dbg !300
  %mul22.iter2.i700 = mul nuw i64 %and18.iter2.i696, %conv21.iter2.i699, !dbg !301
  %xor23.iter2.i701 = xor i64 %xor15.iter2.i693, %mul22.iter2.i700, !dbg !302
  %arrayidx24.iter2.i702 = getelementptr inbounds nuw i64, ptr %add.ptr13.iter4, i32 2, !dbg !304
  %85 = load i64, ptr %arrayidx24.iter2.i702, align 8, !dbg !303
  %xor25.iter2.i703 = xor i64 %85, %xor23.iter2.i701, !dbg !303
  store i64 %xor25.iter2.i703, ptr %arrayidx24.iter2.i702, align 8, !dbg !303
    #dbg_value(i32 undef, !147, !DIExpression(), !274)
    #dbg_value(i32 undef, !147, !DIExpression(), !274)
  %arrayidx.iter3.i704 = getelementptr inbounds nuw i64, ptr %add.ptr.iter4, i32 3, !dbg !275
  %86 = load i64, ptr %arrayidx.iter3.i704, align 8, !dbg !275
  %and.iter3.i705 = and i64 %86, 1229782938247303441, !dbg !276
  %and1.iter3.i706 = and i32 %xor2.i.i617, 255, !dbg !277
  %conv.iter3.i707 = zext nneg i32 %and1.iter3.i706 to i64, !dbg !278
  %mul.iter3.i708 = mul i64 %and.iter3.i705, %conv.iter3.i707, !dbg !279
  %shr.iter3.i709 = lshr i64 %86, 1, !dbg !280
  %and3.iter3.i710 = and i64 %shr.iter3.i709, 1229782938247303441, !dbg !281
  %shr4.iter3.i711 = lshr i32 %xor2.i.i617, 8, !dbg !282
  %and5.iter3.i712 = and i32 %shr4.iter3.i711, 15, !dbg !283
  %conv6.iter3.i713 = zext nneg i32 %and5.iter3.i712 to i64, !dbg !284
  %mul7.iter3.i714 = mul nuw i64 %and3.iter3.i710, %conv6.iter3.i713, !dbg !285
  %xor.iter3.i715 = xor i64 %mul.iter3.i708, %mul7.iter3.i714, !dbg !286
  %arrayidx8.iter3.i716 = getelementptr inbounds nuw i64, ptr %add.ptr.iter4, i32 3, !dbg !287
  %87 = load i64, ptr %arrayidx8.iter3.i716, align 8, !dbg !287
  %shr9.iter3.i717 = lshr i64 %87, 2, !dbg !288
  %and10.iter3.i718 = and i64 %shr9.iter3.i717, 1229782938247303441, !dbg !289
  %shr11.iter3.i719 = lshr i32 %xor2.i.i617, 16, !dbg !290
  %and12.iter3.i720 = and i32 %shr11.iter3.i719, 15, !dbg !291
  %conv13.iter3.i721 = zext nneg i32 %and12.iter3.i720 to i64, !dbg !292
  %mul14.iter3.i722 = mul nuw i64 %and10.iter3.i718, %conv13.iter3.i721, !dbg !293
  %xor15.iter3.i723 = xor i64 %xor.iter3.i715, %mul14.iter3.i722, !dbg !294
  %arrayidx16.iter3.i724 = getelementptr inbounds nuw i64, ptr %add.ptr.iter4, i32 3, !dbg !295
  %88 = load i64, ptr %arrayidx16.iter3.i724, align 8, !dbg !295
  %shr17.iter3.i725 = lshr i64 %88, 3, !dbg !296
  %and18.iter3.i726 = and i64 %shr17.iter3.i725, 1229782938247303441, !dbg !297
  %shr19.iter3.i727 = lshr i32 %xor2.i.i617, 24, !dbg !298
  %and20.iter3.i728 = and i32 %shr19.iter3.i727, 15, !dbg !299
  %conv21.iter3.i729 = zext nneg i32 %and20.iter3.i728 to i64, !dbg !300
  %mul22.iter3.i730 = mul nuw i64 %and18.iter3.i726, %conv21.iter3.i729, !dbg !301
  %xor23.iter3.i731 = xor i64 %xor15.iter3.i723, %mul22.iter3.i730, !dbg !302
  %arrayidx24.iter3.i732 = getelementptr inbounds nuw i64, ptr %add.ptr13.iter4, i32 3, !dbg !304
  %89 = load i64, ptr %arrayidx24.iter3.i732, align 8, !dbg !303
  %xor25.iter3.i733 = xor i64 %89, %xor23.iter3.i731, !dbg !303
  store i64 %xor25.iter3.i733, ptr %arrayidx24.iter3.i732, align 8, !dbg !303
    #dbg_value(i32 undef, !147, !DIExpression(), !274)
    #dbg_value(i32 undef, !147, !DIExpression(), !274)
  %arrayidx.iter4.i734 = getelementptr inbounds nuw i64, ptr %add.ptr.iter4, i32 4, !dbg !275
  %90 = load i64, ptr %arrayidx.iter4.i734, align 8, !dbg !275
  %and.iter4.i735 = and i64 %90, 1229782938247303441, !dbg !276
  %and1.iter4.i736 = and i32 %xor2.i.i617, 255, !dbg !277
  %conv.iter4.i737 = zext nneg i32 %and1.iter4.i736 to i64, !dbg !278
  %mul.iter4.i738 = mul i64 %and.iter4.i735, %conv.iter4.i737, !dbg !279
  %shr.iter4.i739 = lshr i64 %90, 1, !dbg !280
  %and3.iter4.i740 = and i64 %shr.iter4.i739, 1229782938247303441, !dbg !281
  %shr4.iter4.i741 = lshr i32 %xor2.i.i617, 8, !dbg !282
  %and5.iter4.i742 = and i32 %shr4.iter4.i741, 15, !dbg !283
  %conv6.iter4.i743 = zext nneg i32 %and5.iter4.i742 to i64, !dbg !284
  %mul7.iter4.i744 = mul nuw i64 %and3.iter4.i740, %conv6.iter4.i743, !dbg !285
  %xor.iter4.i745 = xor i64 %mul.iter4.i738, %mul7.iter4.i744, !dbg !286
  %arrayidx8.iter4.i746 = getelementptr inbounds nuw i64, ptr %add.ptr.iter4, i32 4, !dbg !287
  %91 = load i64, ptr %arrayidx8.iter4.i746, align 8, !dbg !287
  %shr9.iter4.i747 = lshr i64 %91, 2, !dbg !288
  %and10.iter4.i748 = and i64 %shr9.iter4.i747, 1229782938247303441, !dbg !289
  %shr11.iter4.i749 = lshr i32 %xor2.i.i617, 16, !dbg !290
  %and12.iter4.i750 = and i32 %shr11.iter4.i749, 15, !dbg !291
  %conv13.iter4.i751 = zext nneg i32 %and12.iter4.i750 to i64, !dbg !292
  %mul14.iter4.i752 = mul nuw i64 %and10.iter4.i748, %conv13.iter4.i751, !dbg !293
  %xor15.iter4.i753 = xor i64 %xor.iter4.i745, %mul14.iter4.i752, !dbg !294
  %arrayidx16.iter4.i754 = getelementptr inbounds nuw i64, ptr %add.ptr.iter4, i32 4, !dbg !295
  %92 = load i64, ptr %arrayidx16.iter4.i754, align 8, !dbg !295
  %shr17.iter4.i755 = lshr i64 %92, 3, !dbg !296
  %and18.iter4.i756 = and i64 %shr17.iter4.i755, 1229782938247303441, !dbg !297
  %shr19.iter4.i757 = lshr i32 %xor2.i.i617, 24, !dbg !298
  %and20.iter4.i758 = and i32 %shr19.iter4.i757, 15, !dbg !299
  %conv21.iter4.i759 = zext nneg i32 %and20.iter4.i758 to i64, !dbg !300
  %mul22.iter4.i760 = mul nuw i64 %and18.iter4.i756, %conv21.iter4.i759, !dbg !301
  %xor23.iter4.i761 = xor i64 %xor15.iter4.i753, %mul22.iter4.i760, !dbg !302
  %arrayidx24.iter4.i762 = getelementptr inbounds nuw i64, ptr %add.ptr13.iter4, i32 4, !dbg !304
  %93 = load i64, ptr %arrayidx24.iter4.i762, align 8, !dbg !303
  %xor25.iter4.i763 = xor i64 %93, %xor23.iter4.i761, !dbg !303
  store i64 %xor25.iter4.i763, ptr %arrayidx24.iter4.i762, align 8, !dbg !303
    #dbg_value(i32 undef, !147, !DIExpression(), !274)
  %add14.iter4 = add nuw nsw i32 %k.01.iter4, 1, !dbg !108
    #dbg_value(i32 undef, !95, !DIExpression(), !99)
  %exitcond.not.iter4 = icmp eq i32 %add14.iter4, %bs_mat_cols, !dbg !109
  br i1 %exitcond.not.iter4, label %for.inc15.iter4, label %for.body6.iter4, !dbg !110, !llvm.loop !111

for.inc15.iter4:                                  ; preds = %for.body6.iter4
  %inc.iter4 = add nuw nsw i32 %c.02.iter4, 1, !dbg !114
    #dbg_value(i32 undef, !89, !DIExpression(), !93)
  %exitcond1.not.iter4 = icmp eq i32 %inc.iter4, 78, !dbg !115
  br i1 %exitcond1.not.iter4, label %for.inc17.iter4, label %for.cond4.preheader.iter4, !dbg !94, !llvm.loop !116

for.inc17.iter4:                                  ; preds = %for.inc15.iter4
    #dbg_value(i32 undef, !85, !DIExpression(), !87)
  br label %iter_4_end

for.cond4.preheader.iter4:                        ; preds = %for.inc15.iter4, %for.cond1.preheader.iter4
  %c.02.iter4 = phi i32 [ 0, %for.cond1.preheader.iter4 ], [ %inc.iter4, %for.inc15.iter4 ]
    #dbg_value(i32 undef, !89, !DIExpression(), !93)
    #dbg_value(i32 0, !95, !DIExpression(), !99)
  br label %for.body6.iter4, !dbg !110

iter_4_end:                                       ; preds = %for.inc17.iter4
  br label %iter_5_start

iter_5_start:                                     ; preds = %iter_4_end
  br label %for.cond1.preheader.iter5

for.cond1.preheader.iter5:                        ; preds = %iter_5_start
    #dbg_value(i32 undef, !85, !DIExpression(), !87)
    #dbg_value(i32 0, !89, !DIExpression(), !93)
  br label %for.cond4.preheader.iter5, !dbg !94

for.body6.iter5:                                  ; preds = %for.cond4.preheader.iter5, %for.body6.iter5
  %k.01.iter5 = phi i32 [ 0, %for.cond4.preheader.iter5 ], [ %add14.iter5, %for.body6.iter5 ]
    #dbg_value(i32 undef, !95, !DIExpression(), !99)
  %mul.iter5 = mul nuw nsw i32 %c.02.iter5, %bs_mat_cols, !dbg !100
  %add.iter5 = add nuw nsw i32 %mul.iter5, %k.01.iter5, !dbg !103
  %add.ptr.idx.iter5 = mul nuw nsw i32 %add.iter5, 40, !dbg !104
  %add.ptr.iter5 = getelementptr inbounds nuw i8, ptr %bs_mat, i32 %add.ptr.idx.iter5, !dbg !104
  %94 = getelementptr i8, ptr %mat, i32 390, !dbg !105
  %arrayidx.iter5 = getelementptr i8, ptr %94, i32 %c.02.iter5, !dbg !105
  %95 = load i8, ptr %arrayidx.iter5, align 1, !dbg !105
  %mul10.iter5 = mul nuw nsw i32 5, %bs_mat_cols, !dbg !118
  %add11.iter5 = add nuw nsw i32 %mul10.iter5, %k.01.iter5, !dbg !106
  %add.ptr13.idx.iter5 = mul nuw nsw i32 %add11.iter5, 40, !dbg !107
  %add.ptr13.iter5 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr13.idx.iter5, !dbg !107
    #dbg_value(i32 5, !119, !DIExpression(), !305)
    #dbg_value(ptr %add.ptr.iter5, !126, !DIExpression(), !305)
    #dbg_value(i8 %95, !127, !DIExpression(), !305)
    #dbg_value(ptr %add.ptr13.iter5, !128, !DIExpression(), !305)
    #dbg_value(i8 %95, !129, !DIExpression(), !307)
  %conv.i.i1068 = zext i8 %95 to i32, !dbg !309
  %mul.i.i1069 = mul i32 %conv.i.i1068, 134480385, !dbg !310
    #dbg_value(i32 %mul.i.i1069, !138, !DIExpression(), !307)
    #dbg_value(i32 -252645136, !139, !DIExpression(), !307)
  %and.i.i1070 = and i32 %mul.i.i1069, -252645136, !dbg !311
    #dbg_value(i32 %and.i.i1070, !141, !DIExpression(), !307)
  %shr.i.i1071 = lshr exact i32 %and.i.i1070, 4, !dbg !312
  %shr1.i.i1072 = lshr exact i32 %and.i.i1070, 3, !dbg !313
  %96 = xor i32 %shr.i.i1071, %shr1.i.i1072, !dbg !314
  %xor2.i.i1073 = xor i32 %96, %mul.i.i1069, !dbg !314
    #dbg_value(i32 %xor2.i.i1073, !145, !DIExpression(), !305)
    #dbg_value(i64 1229782938247303441, !146, !DIExpression(), !305)
    #dbg_value(i32 0, !147, !DIExpression(), !315)
    #dbg_value(i32 undef, !147, !DIExpression(), !315)
  %97 = load i64, ptr %add.ptr.iter5, align 8, !dbg !316
  %and.iter0.i1074 = and i64 %97, 1229782938247303441, !dbg !317
  %and1.iter0.i1075 = and i32 %xor2.i.i1073, 255, !dbg !318
  %conv.iter0.i1076 = zext nneg i32 %and1.iter0.i1075 to i64, !dbg !319
  %mul.iter0.i1077 = mul i64 %and.iter0.i1074, %conv.iter0.i1076, !dbg !320
  %shr.iter0.i1078 = lshr i64 %97, 1, !dbg !321
  %and3.iter0.i1079 = and i64 %shr.iter0.i1078, 1229782938247303441, !dbg !322
  %shr4.iter0.i1080 = lshr i32 %xor2.i.i1073, 8, !dbg !323
  %and5.iter0.i1081 = and i32 %shr4.iter0.i1080, 15, !dbg !324
  %conv6.iter0.i1082 = zext nneg i32 %and5.iter0.i1081 to i64, !dbg !325
  %mul7.iter0.i1083 = mul nuw i64 %and3.iter0.i1079, %conv6.iter0.i1082, !dbg !326
  %xor.iter0.i1084 = xor i64 %mul.iter0.i1077, %mul7.iter0.i1083, !dbg !327
  %98 = load i64, ptr %add.ptr.iter5, align 8, !dbg !328
  %shr9.iter0.i1085 = lshr i64 %98, 2, !dbg !329
  %and10.iter0.i1086 = and i64 %shr9.iter0.i1085, 1229782938247303441, !dbg !330
  %shr11.iter0.i1087 = lshr i32 %xor2.i.i1073, 16, !dbg !331
  %and12.iter0.i1088 = and i32 %shr11.iter0.i1087, 15, !dbg !332
  %conv13.iter0.i1089 = zext nneg i32 %and12.iter0.i1088 to i64, !dbg !333
  %mul14.iter0.i1090 = mul nuw i64 %and10.iter0.i1086, %conv13.iter0.i1089, !dbg !334
  %xor15.iter0.i1091 = xor i64 %xor.iter0.i1084, %mul14.iter0.i1090, !dbg !335
  %99 = load i64, ptr %add.ptr.iter5, align 8, !dbg !336
  %shr17.iter0.i1092 = lshr i64 %99, 3, !dbg !337
  %and18.iter0.i1093 = and i64 %shr17.iter0.i1092, 1229782938247303441, !dbg !338
  %shr19.iter0.i1094 = lshr i32 %xor2.i.i1073, 24, !dbg !339
  %and20.iter0.i1095 = and i32 %shr19.iter0.i1094, 15, !dbg !340
  %conv21.iter0.i1096 = zext nneg i32 %and20.iter0.i1095 to i64, !dbg !341
  %mul22.iter0.i1097 = mul nuw i64 %and18.iter0.i1093, %conv21.iter0.i1096, !dbg !342
  %xor23.iter0.i1098 = xor i64 %xor15.iter0.i1091, %mul22.iter0.i1097, !dbg !343
  %100 = load i64, ptr %add.ptr13.iter5, align 8, !dbg !344
  %xor25.iter0.i1099 = xor i64 %100, %xor23.iter0.i1098, !dbg !344
  store i64 %xor25.iter0.i1099, ptr %add.ptr13.iter5, align 8, !dbg !344
    #dbg_value(i32 undef, !147, !DIExpression(), !315)
    #dbg_value(i32 undef, !147, !DIExpression(), !315)
  %arrayidx.iter1.i1100 = getelementptr inbounds nuw i64, ptr %add.ptr.iter5, i32 1, !dbg !316
  %101 = load i64, ptr %arrayidx.iter1.i1100, align 8, !dbg !316
  %and.iter1.i1101 = and i64 %101, 1229782938247303441, !dbg !317
  %and1.iter1.i1102 = and i32 %xor2.i.i1073, 255, !dbg !318
  %conv.iter1.i1103 = zext nneg i32 %and1.iter1.i1102 to i64, !dbg !319
  %mul.iter1.i1104 = mul i64 %and.iter1.i1101, %conv.iter1.i1103, !dbg !320
  %shr.iter1.i1105 = lshr i64 %101, 1, !dbg !321
  %and3.iter1.i1106 = and i64 %shr.iter1.i1105, 1229782938247303441, !dbg !322
  %shr4.iter1.i1107 = lshr i32 %xor2.i.i1073, 8, !dbg !323
  %and5.iter1.i1108 = and i32 %shr4.iter1.i1107, 15, !dbg !324
  %conv6.iter1.i1109 = zext nneg i32 %and5.iter1.i1108 to i64, !dbg !325
  %mul7.iter1.i1110 = mul nuw i64 %and3.iter1.i1106, %conv6.iter1.i1109, !dbg !326
  %xor.iter1.i1111 = xor i64 %mul.iter1.i1104, %mul7.iter1.i1110, !dbg !327
  %arrayidx8.iter1.i1112 = getelementptr inbounds nuw i64, ptr %add.ptr.iter5, i32 1, !dbg !328
  %102 = load i64, ptr %arrayidx8.iter1.i1112, align 8, !dbg !328
  %shr9.iter1.i1113 = lshr i64 %102, 2, !dbg !329
  %and10.iter1.i1114 = and i64 %shr9.iter1.i1113, 1229782938247303441, !dbg !330
  %shr11.iter1.i1115 = lshr i32 %xor2.i.i1073, 16, !dbg !331
  %and12.iter1.i1116 = and i32 %shr11.iter1.i1115, 15, !dbg !332
  %conv13.iter1.i1117 = zext nneg i32 %and12.iter1.i1116 to i64, !dbg !333
  %mul14.iter1.i1118 = mul nuw i64 %and10.iter1.i1114, %conv13.iter1.i1117, !dbg !334
  %xor15.iter1.i1119 = xor i64 %xor.iter1.i1111, %mul14.iter1.i1118, !dbg !335
  %arrayidx16.iter1.i1120 = getelementptr inbounds nuw i64, ptr %add.ptr.iter5, i32 1, !dbg !336
  %103 = load i64, ptr %arrayidx16.iter1.i1120, align 8, !dbg !336
  %shr17.iter1.i1121 = lshr i64 %103, 3, !dbg !337
  %and18.iter1.i1122 = and i64 %shr17.iter1.i1121, 1229782938247303441, !dbg !338
  %shr19.iter1.i1123 = lshr i32 %xor2.i.i1073, 24, !dbg !339
  %and20.iter1.i1124 = and i32 %shr19.iter1.i1123, 15, !dbg !340
  %conv21.iter1.i1125 = zext nneg i32 %and20.iter1.i1124 to i64, !dbg !341
  %mul22.iter1.i1126 = mul nuw i64 %and18.iter1.i1122, %conv21.iter1.i1125, !dbg !342
  %xor23.iter1.i1127 = xor i64 %xor15.iter1.i1119, %mul22.iter1.i1126, !dbg !343
  %arrayidx24.iter1.i1128 = getelementptr inbounds nuw i64, ptr %add.ptr13.iter5, i32 1, !dbg !345
  %104 = load i64, ptr %arrayidx24.iter1.i1128, align 8, !dbg !344
  %xor25.iter1.i1129 = xor i64 %104, %xor23.iter1.i1127, !dbg !344
  store i64 %xor25.iter1.i1129, ptr %arrayidx24.iter1.i1128, align 8, !dbg !344
    #dbg_value(i32 undef, !147, !DIExpression(), !315)
    #dbg_value(i32 undef, !147, !DIExpression(), !315)
  %arrayidx.iter2.i1130 = getelementptr inbounds nuw i64, ptr %add.ptr.iter5, i32 2, !dbg !316
  %105 = load i64, ptr %arrayidx.iter2.i1130, align 8, !dbg !316
  %and.iter2.i1131 = and i64 %105, 1229782938247303441, !dbg !317
  %and1.iter2.i1132 = and i32 %xor2.i.i1073, 255, !dbg !318
  %conv.iter2.i1133 = zext nneg i32 %and1.iter2.i1132 to i64, !dbg !319
  %mul.iter2.i1134 = mul i64 %and.iter2.i1131, %conv.iter2.i1133, !dbg !320
  %shr.iter2.i1135 = lshr i64 %105, 1, !dbg !321
  %and3.iter2.i1136 = and i64 %shr.iter2.i1135, 1229782938247303441, !dbg !322
  %shr4.iter2.i1137 = lshr i32 %xor2.i.i1073, 8, !dbg !323
  %and5.iter2.i1138 = and i32 %shr4.iter2.i1137, 15, !dbg !324
  %conv6.iter2.i1139 = zext nneg i32 %and5.iter2.i1138 to i64, !dbg !325
  %mul7.iter2.i1140 = mul nuw i64 %and3.iter2.i1136, %conv6.iter2.i1139, !dbg !326
  %xor.iter2.i1141 = xor i64 %mul.iter2.i1134, %mul7.iter2.i1140, !dbg !327
  %arrayidx8.iter2.i1142 = getelementptr inbounds nuw i64, ptr %add.ptr.iter5, i32 2, !dbg !328
  %106 = load i64, ptr %arrayidx8.iter2.i1142, align 8, !dbg !328
  %shr9.iter2.i1143 = lshr i64 %106, 2, !dbg !329
  %and10.iter2.i1144 = and i64 %shr9.iter2.i1143, 1229782938247303441, !dbg !330
  %shr11.iter2.i1145 = lshr i32 %xor2.i.i1073, 16, !dbg !331
  %and12.iter2.i1146 = and i32 %shr11.iter2.i1145, 15, !dbg !332
  %conv13.iter2.i1147 = zext nneg i32 %and12.iter2.i1146 to i64, !dbg !333
  %mul14.iter2.i1148 = mul nuw i64 %and10.iter2.i1144, %conv13.iter2.i1147, !dbg !334
  %xor15.iter2.i1149 = xor i64 %xor.iter2.i1141, %mul14.iter2.i1148, !dbg !335
  %arrayidx16.iter2.i1150 = getelementptr inbounds nuw i64, ptr %add.ptr.iter5, i32 2, !dbg !336
  %107 = load i64, ptr %arrayidx16.iter2.i1150, align 8, !dbg !336
  %shr17.iter2.i1151 = lshr i64 %107, 3, !dbg !337
  %and18.iter2.i1152 = and i64 %shr17.iter2.i1151, 1229782938247303441, !dbg !338
  %shr19.iter2.i1153 = lshr i32 %xor2.i.i1073, 24, !dbg !339
  %and20.iter2.i1154 = and i32 %shr19.iter2.i1153, 15, !dbg !340
  %conv21.iter2.i1155 = zext nneg i32 %and20.iter2.i1154 to i64, !dbg !341
  %mul22.iter2.i1156 = mul nuw i64 %and18.iter2.i1152, %conv21.iter2.i1155, !dbg !342
  %xor23.iter2.i1157 = xor i64 %xor15.iter2.i1149, %mul22.iter2.i1156, !dbg !343
  %arrayidx24.iter2.i1158 = getelementptr inbounds nuw i64, ptr %add.ptr13.iter5, i32 2, !dbg !345
  %108 = load i64, ptr %arrayidx24.iter2.i1158, align 8, !dbg !344
  %xor25.iter2.i1159 = xor i64 %108, %xor23.iter2.i1157, !dbg !344
  store i64 %xor25.iter2.i1159, ptr %arrayidx24.iter2.i1158, align 8, !dbg !344
    #dbg_value(i32 undef, !147, !DIExpression(), !315)
    #dbg_value(i32 undef, !147, !DIExpression(), !315)
  %arrayidx.iter3.i1160 = getelementptr inbounds nuw i64, ptr %add.ptr.iter5, i32 3, !dbg !316
  %109 = load i64, ptr %arrayidx.iter3.i1160, align 8, !dbg !316
  %and.iter3.i1161 = and i64 %109, 1229782938247303441, !dbg !317
  %and1.iter3.i1162 = and i32 %xor2.i.i1073, 255, !dbg !318
  %conv.iter3.i1163 = zext nneg i32 %and1.iter3.i1162 to i64, !dbg !319
  %mul.iter3.i1164 = mul i64 %and.iter3.i1161, %conv.iter3.i1163, !dbg !320
  %shr.iter3.i1165 = lshr i64 %109, 1, !dbg !321
  %and3.iter3.i1166 = and i64 %shr.iter3.i1165, 1229782938247303441, !dbg !322
  %shr4.iter3.i1167 = lshr i32 %xor2.i.i1073, 8, !dbg !323
  %and5.iter3.i1168 = and i32 %shr4.iter3.i1167, 15, !dbg !324
  %conv6.iter3.i1169 = zext nneg i32 %and5.iter3.i1168 to i64, !dbg !325
  %mul7.iter3.i1170 = mul nuw i64 %and3.iter3.i1166, %conv6.iter3.i1169, !dbg !326
  %xor.iter3.i1171 = xor i64 %mul.iter3.i1164, %mul7.iter3.i1170, !dbg !327
  %arrayidx8.iter3.i1172 = getelementptr inbounds nuw i64, ptr %add.ptr.iter5, i32 3, !dbg !328
  %110 = load i64, ptr %arrayidx8.iter3.i1172, align 8, !dbg !328
  %shr9.iter3.i1173 = lshr i64 %110, 2, !dbg !329
  %and10.iter3.i1174 = and i64 %shr9.iter3.i1173, 1229782938247303441, !dbg !330
  %shr11.iter3.i1175 = lshr i32 %xor2.i.i1073, 16, !dbg !331
  %and12.iter3.i1176 = and i32 %shr11.iter3.i1175, 15, !dbg !332
  %conv13.iter3.i1177 = zext nneg i32 %and12.iter3.i1176 to i64, !dbg !333
  %mul14.iter3.i1178 = mul nuw i64 %and10.iter3.i1174, %conv13.iter3.i1177, !dbg !334
  %xor15.iter3.i1179 = xor i64 %xor.iter3.i1171, %mul14.iter3.i1178, !dbg !335
  %arrayidx16.iter3.i1180 = getelementptr inbounds nuw i64, ptr %add.ptr.iter5, i32 3, !dbg !336
  %111 = load i64, ptr %arrayidx16.iter3.i1180, align 8, !dbg !336
  %shr17.iter3.i1181 = lshr i64 %111, 3, !dbg !337
  %and18.iter3.i1182 = and i64 %shr17.iter3.i1181, 1229782938247303441, !dbg !338
  %shr19.iter3.i1183 = lshr i32 %xor2.i.i1073, 24, !dbg !339
  %and20.iter3.i1184 = and i32 %shr19.iter3.i1183, 15, !dbg !340
  %conv21.iter3.i1185 = zext nneg i32 %and20.iter3.i1184 to i64, !dbg !341
  %mul22.iter3.i1186 = mul nuw i64 %and18.iter3.i1182, %conv21.iter3.i1185, !dbg !342
  %xor23.iter3.i1187 = xor i64 %xor15.iter3.i1179, %mul22.iter3.i1186, !dbg !343
  %arrayidx24.iter3.i1188 = getelementptr inbounds nuw i64, ptr %add.ptr13.iter5, i32 3, !dbg !345
  %112 = load i64, ptr %arrayidx24.iter3.i1188, align 8, !dbg !344
  %xor25.iter3.i1189 = xor i64 %112, %xor23.iter3.i1187, !dbg !344
  store i64 %xor25.iter3.i1189, ptr %arrayidx24.iter3.i1188, align 8, !dbg !344
    #dbg_value(i32 undef, !147, !DIExpression(), !315)
    #dbg_value(i32 undef, !147, !DIExpression(), !315)
  %arrayidx.iter4.i1190 = getelementptr inbounds nuw i64, ptr %add.ptr.iter5, i32 4, !dbg !316
  %113 = load i64, ptr %arrayidx.iter4.i1190, align 8, !dbg !316
  %and.iter4.i1191 = and i64 %113, 1229782938247303441, !dbg !317
  %and1.iter4.i1192 = and i32 %xor2.i.i1073, 255, !dbg !318
  %conv.iter4.i1193 = zext nneg i32 %and1.iter4.i1192 to i64, !dbg !319
  %mul.iter4.i1194 = mul i64 %and.iter4.i1191, %conv.iter4.i1193, !dbg !320
  %shr.iter4.i1195 = lshr i64 %113, 1, !dbg !321
  %and3.iter4.i1196 = and i64 %shr.iter4.i1195, 1229782938247303441, !dbg !322
  %shr4.iter4.i1197 = lshr i32 %xor2.i.i1073, 8, !dbg !323
  %and5.iter4.i1198 = and i32 %shr4.iter4.i1197, 15, !dbg !324
  %conv6.iter4.i1199 = zext nneg i32 %and5.iter4.i1198 to i64, !dbg !325
  %mul7.iter4.i1200 = mul nuw i64 %and3.iter4.i1196, %conv6.iter4.i1199, !dbg !326
  %xor.iter4.i1201 = xor i64 %mul.iter4.i1194, %mul7.iter4.i1200, !dbg !327
  %arrayidx8.iter4.i1202 = getelementptr inbounds nuw i64, ptr %add.ptr.iter5, i32 4, !dbg !328
  %114 = load i64, ptr %arrayidx8.iter4.i1202, align 8, !dbg !328
  %shr9.iter4.i1203 = lshr i64 %114, 2, !dbg !329
  %and10.iter4.i1204 = and i64 %shr9.iter4.i1203, 1229782938247303441, !dbg !330
  %shr11.iter4.i1205 = lshr i32 %xor2.i.i1073, 16, !dbg !331
  %and12.iter4.i1206 = and i32 %shr11.iter4.i1205, 15, !dbg !332
  %conv13.iter4.i1207 = zext nneg i32 %and12.iter4.i1206 to i64, !dbg !333
  %mul14.iter4.i1208 = mul nuw i64 %and10.iter4.i1204, %conv13.iter4.i1207, !dbg !334
  %xor15.iter4.i1209 = xor i64 %xor.iter4.i1201, %mul14.iter4.i1208, !dbg !335
  %arrayidx16.iter4.i1210 = getelementptr inbounds nuw i64, ptr %add.ptr.iter5, i32 4, !dbg !336
  %115 = load i64, ptr %arrayidx16.iter4.i1210, align 8, !dbg !336
  %shr17.iter4.i1211 = lshr i64 %115, 3, !dbg !337
  %and18.iter4.i1212 = and i64 %shr17.iter4.i1211, 1229782938247303441, !dbg !338
  %shr19.iter4.i1213 = lshr i32 %xor2.i.i1073, 24, !dbg !339
  %and20.iter4.i1214 = and i32 %shr19.iter4.i1213, 15, !dbg !340
  %conv21.iter4.i1215 = zext nneg i32 %and20.iter4.i1214 to i64, !dbg !341
  %mul22.iter4.i1216 = mul nuw i64 %and18.iter4.i1212, %conv21.iter4.i1215, !dbg !342
  %xor23.iter4.i1217 = xor i64 %xor15.iter4.i1209, %mul22.iter4.i1216, !dbg !343
  %arrayidx24.iter4.i1218 = getelementptr inbounds nuw i64, ptr %add.ptr13.iter5, i32 4, !dbg !345
  %116 = load i64, ptr %arrayidx24.iter4.i1218, align 8, !dbg !344
  %xor25.iter4.i1219 = xor i64 %116, %xor23.iter4.i1217, !dbg !344
  store i64 %xor25.iter4.i1219, ptr %arrayidx24.iter4.i1218, align 8, !dbg !344
    #dbg_value(i32 undef, !147, !DIExpression(), !315)
  %add14.iter5 = add nuw nsw i32 %k.01.iter5, 1, !dbg !108
    #dbg_value(i32 undef, !95, !DIExpression(), !99)
  %exitcond.not.iter5 = icmp eq i32 %add14.iter5, %bs_mat_cols, !dbg !109
  br i1 %exitcond.not.iter5, label %for.inc15.iter5, label %for.body6.iter5, !dbg !110, !llvm.loop !111

for.inc15.iter5:                                  ; preds = %for.body6.iter5
  %inc.iter5 = add nuw nsw i32 %c.02.iter5, 1, !dbg !114
    #dbg_value(i32 undef, !89, !DIExpression(), !93)
  %exitcond1.not.iter5 = icmp eq i32 %inc.iter5, 78, !dbg !115
  br i1 %exitcond1.not.iter5, label %for.inc17.iter5, label %for.cond4.preheader.iter5, !dbg !94, !llvm.loop !116

for.inc17.iter5:                                  ; preds = %for.inc15.iter5
    #dbg_value(i32 undef, !85, !DIExpression(), !87)
  br label %iter_5_end

for.cond4.preheader.iter5:                        ; preds = %for.inc15.iter5, %for.cond1.preheader.iter5
  %c.02.iter5 = phi i32 [ 0, %for.cond1.preheader.iter5 ], [ %inc.iter5, %for.inc15.iter5 ]
    #dbg_value(i32 undef, !89, !DIExpression(), !93)
    #dbg_value(i32 0, !95, !DIExpression(), !99)
  br label %for.body6.iter5, !dbg !110

iter_5_end:                                       ; preds = %for.inc17.iter5
  br label %iter_6_start

iter_6_start:                                     ; preds = %iter_5_end
  br label %for.cond1.preheader.iter6

for.cond1.preheader.iter6:                        ; preds = %iter_6_start
    #dbg_value(i32 undef, !85, !DIExpression(), !87)
    #dbg_value(i32 0, !89, !DIExpression(), !93)
  br label %for.cond4.preheader.iter6, !dbg !94

for.body6.iter6:                                  ; preds = %for.cond4.preheader.iter6, %for.body6.iter6
  %k.01.iter6 = phi i32 [ 0, %for.cond4.preheader.iter6 ], [ %add14.iter6, %for.body6.iter6 ]
    #dbg_value(i32 undef, !95, !DIExpression(), !99)
  %mul.iter6 = mul nuw nsw i32 %c.02.iter6, %bs_mat_cols, !dbg !100
  %add.iter6 = add nuw nsw i32 %mul.iter6, %k.01.iter6, !dbg !103
  %add.ptr.idx.iter6 = mul nuw nsw i32 %add.iter6, 40, !dbg !104
  %add.ptr.iter6 = getelementptr inbounds nuw i8, ptr %bs_mat, i32 %add.ptr.idx.iter6, !dbg !104
  %117 = getelementptr i8, ptr %mat, i32 468, !dbg !105
  %arrayidx.iter6 = getelementptr i8, ptr %117, i32 %c.02.iter6, !dbg !105
  %118 = load i8, ptr %arrayidx.iter6, align 1, !dbg !105
  %mul10.iter6 = mul nuw nsw i32 6, %bs_mat_cols, !dbg !118
  %add11.iter6 = add nuw nsw i32 %mul10.iter6, %k.01.iter6, !dbg !106
  %add.ptr13.idx.iter6 = mul nuw nsw i32 %add11.iter6, 40, !dbg !107
  %add.ptr13.iter6 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr13.idx.iter6, !dbg !107
    #dbg_value(i32 5, !119, !DIExpression(), !346)
    #dbg_value(ptr %add.ptr.iter6, !126, !DIExpression(), !346)
    #dbg_value(i8 %118, !127, !DIExpression(), !346)
    #dbg_value(ptr %add.ptr13.iter6, !128, !DIExpression(), !346)
    #dbg_value(i8 %118, !129, !DIExpression(), !348)
  %conv.i.i460 = zext i8 %118 to i32, !dbg !350
  %mul.i.i461 = mul i32 %conv.i.i460, 134480385, !dbg !351
    #dbg_value(i32 %mul.i.i461, !138, !DIExpression(), !348)
    #dbg_value(i32 -252645136, !139, !DIExpression(), !348)
  %and.i.i462 = and i32 %mul.i.i461, -252645136, !dbg !352
    #dbg_value(i32 %and.i.i462, !141, !DIExpression(), !348)
  %shr.i.i463 = lshr exact i32 %and.i.i462, 4, !dbg !353
  %shr1.i.i464 = lshr exact i32 %and.i.i462, 3, !dbg !354
  %119 = xor i32 %shr.i.i463, %shr1.i.i464, !dbg !355
  %xor2.i.i465 = xor i32 %119, %mul.i.i461, !dbg !355
    #dbg_value(i32 %xor2.i.i465, !145, !DIExpression(), !346)
    #dbg_value(i64 1229782938247303441, !146, !DIExpression(), !346)
    #dbg_value(i32 0, !147, !DIExpression(), !356)
    #dbg_value(i32 undef, !147, !DIExpression(), !356)
  %120 = load i64, ptr %add.ptr.iter6, align 8, !dbg !357
  %and.iter0.i466 = and i64 %120, 1229782938247303441, !dbg !358
  %and1.iter0.i467 = and i32 %xor2.i.i465, 255, !dbg !359
  %conv.iter0.i468 = zext nneg i32 %and1.iter0.i467 to i64, !dbg !360
  %mul.iter0.i469 = mul i64 %and.iter0.i466, %conv.iter0.i468, !dbg !361
  %shr.iter0.i470 = lshr i64 %120, 1, !dbg !362
  %and3.iter0.i471 = and i64 %shr.iter0.i470, 1229782938247303441, !dbg !363
  %shr4.iter0.i472 = lshr i32 %xor2.i.i465, 8, !dbg !364
  %and5.iter0.i473 = and i32 %shr4.iter0.i472, 15, !dbg !365
  %conv6.iter0.i474 = zext nneg i32 %and5.iter0.i473 to i64, !dbg !366
  %mul7.iter0.i475 = mul nuw i64 %and3.iter0.i471, %conv6.iter0.i474, !dbg !367
  %xor.iter0.i476 = xor i64 %mul.iter0.i469, %mul7.iter0.i475, !dbg !368
  %121 = load i64, ptr %add.ptr.iter6, align 8, !dbg !369
  %shr9.iter0.i477 = lshr i64 %121, 2, !dbg !370
  %and10.iter0.i478 = and i64 %shr9.iter0.i477, 1229782938247303441, !dbg !371
  %shr11.iter0.i479 = lshr i32 %xor2.i.i465, 16, !dbg !372
  %and12.iter0.i480 = and i32 %shr11.iter0.i479, 15, !dbg !373
  %conv13.iter0.i481 = zext nneg i32 %and12.iter0.i480 to i64, !dbg !374
  %mul14.iter0.i482 = mul nuw i64 %and10.iter0.i478, %conv13.iter0.i481, !dbg !375
  %xor15.iter0.i483 = xor i64 %xor.iter0.i476, %mul14.iter0.i482, !dbg !376
  %122 = load i64, ptr %add.ptr.iter6, align 8, !dbg !377
  %shr17.iter0.i484 = lshr i64 %122, 3, !dbg !378
  %and18.iter0.i485 = and i64 %shr17.iter0.i484, 1229782938247303441, !dbg !379
  %shr19.iter0.i486 = lshr i32 %xor2.i.i465, 24, !dbg !380
  %and20.iter0.i487 = and i32 %shr19.iter0.i486, 15, !dbg !381
  %conv21.iter0.i488 = zext nneg i32 %and20.iter0.i487 to i64, !dbg !382
  %mul22.iter0.i489 = mul nuw i64 %and18.iter0.i485, %conv21.iter0.i488, !dbg !383
  %xor23.iter0.i490 = xor i64 %xor15.iter0.i483, %mul22.iter0.i489, !dbg !384
  %123 = load i64, ptr %add.ptr13.iter6, align 8, !dbg !385
  %xor25.iter0.i491 = xor i64 %123, %xor23.iter0.i490, !dbg !385
  store i64 %xor25.iter0.i491, ptr %add.ptr13.iter6, align 8, !dbg !385
    #dbg_value(i32 undef, !147, !DIExpression(), !356)
    #dbg_value(i32 undef, !147, !DIExpression(), !356)
  %arrayidx.iter1.i492 = getelementptr inbounds nuw i64, ptr %add.ptr.iter6, i32 1, !dbg !357
  %124 = load i64, ptr %arrayidx.iter1.i492, align 8, !dbg !357
  %and.iter1.i493 = and i64 %124, 1229782938247303441, !dbg !358
  %and1.iter1.i494 = and i32 %xor2.i.i465, 255, !dbg !359
  %conv.iter1.i495 = zext nneg i32 %and1.iter1.i494 to i64, !dbg !360
  %mul.iter1.i496 = mul i64 %and.iter1.i493, %conv.iter1.i495, !dbg !361
  %shr.iter1.i497 = lshr i64 %124, 1, !dbg !362
  %and3.iter1.i498 = and i64 %shr.iter1.i497, 1229782938247303441, !dbg !363
  %shr4.iter1.i499 = lshr i32 %xor2.i.i465, 8, !dbg !364
  %and5.iter1.i500 = and i32 %shr4.iter1.i499, 15, !dbg !365
  %conv6.iter1.i501 = zext nneg i32 %and5.iter1.i500 to i64, !dbg !366
  %mul7.iter1.i502 = mul nuw i64 %and3.iter1.i498, %conv6.iter1.i501, !dbg !367
  %xor.iter1.i503 = xor i64 %mul.iter1.i496, %mul7.iter1.i502, !dbg !368
  %arrayidx8.iter1.i504 = getelementptr inbounds nuw i64, ptr %add.ptr.iter6, i32 1, !dbg !369
  %125 = load i64, ptr %arrayidx8.iter1.i504, align 8, !dbg !369
  %shr9.iter1.i505 = lshr i64 %125, 2, !dbg !370
  %and10.iter1.i506 = and i64 %shr9.iter1.i505, 1229782938247303441, !dbg !371
  %shr11.iter1.i507 = lshr i32 %xor2.i.i465, 16, !dbg !372
  %and12.iter1.i508 = and i32 %shr11.iter1.i507, 15, !dbg !373
  %conv13.iter1.i509 = zext nneg i32 %and12.iter1.i508 to i64, !dbg !374
  %mul14.iter1.i510 = mul nuw i64 %and10.iter1.i506, %conv13.iter1.i509, !dbg !375
  %xor15.iter1.i511 = xor i64 %xor.iter1.i503, %mul14.iter1.i510, !dbg !376
  %arrayidx16.iter1.i512 = getelementptr inbounds nuw i64, ptr %add.ptr.iter6, i32 1, !dbg !377
  %126 = load i64, ptr %arrayidx16.iter1.i512, align 8, !dbg !377
  %shr17.iter1.i513 = lshr i64 %126, 3, !dbg !378
  %and18.iter1.i514 = and i64 %shr17.iter1.i513, 1229782938247303441, !dbg !379
  %shr19.iter1.i515 = lshr i32 %xor2.i.i465, 24, !dbg !380
  %and20.iter1.i516 = and i32 %shr19.iter1.i515, 15, !dbg !381
  %conv21.iter1.i517 = zext nneg i32 %and20.iter1.i516 to i64, !dbg !382
  %mul22.iter1.i518 = mul nuw i64 %and18.iter1.i514, %conv21.iter1.i517, !dbg !383
  %xor23.iter1.i519 = xor i64 %xor15.iter1.i511, %mul22.iter1.i518, !dbg !384
  %arrayidx24.iter1.i520 = getelementptr inbounds nuw i64, ptr %add.ptr13.iter6, i32 1, !dbg !386
  %127 = load i64, ptr %arrayidx24.iter1.i520, align 8, !dbg !385
  %xor25.iter1.i521 = xor i64 %127, %xor23.iter1.i519, !dbg !385
  store i64 %xor25.iter1.i521, ptr %arrayidx24.iter1.i520, align 8, !dbg !385
    #dbg_value(i32 undef, !147, !DIExpression(), !356)
    #dbg_value(i32 undef, !147, !DIExpression(), !356)
  %arrayidx.iter2.i522 = getelementptr inbounds nuw i64, ptr %add.ptr.iter6, i32 2, !dbg !357
  %128 = load i64, ptr %arrayidx.iter2.i522, align 8, !dbg !357
  %and.iter2.i523 = and i64 %128, 1229782938247303441, !dbg !358
  %and1.iter2.i524 = and i32 %xor2.i.i465, 255, !dbg !359
  %conv.iter2.i525 = zext nneg i32 %and1.iter2.i524 to i64, !dbg !360
  %mul.iter2.i526 = mul i64 %and.iter2.i523, %conv.iter2.i525, !dbg !361
  %shr.iter2.i527 = lshr i64 %128, 1, !dbg !362
  %and3.iter2.i528 = and i64 %shr.iter2.i527, 1229782938247303441, !dbg !363
  %shr4.iter2.i529 = lshr i32 %xor2.i.i465, 8, !dbg !364
  %and5.iter2.i530 = and i32 %shr4.iter2.i529, 15, !dbg !365
  %conv6.iter2.i531 = zext nneg i32 %and5.iter2.i530 to i64, !dbg !366
  %mul7.iter2.i532 = mul nuw i64 %and3.iter2.i528, %conv6.iter2.i531, !dbg !367
  %xor.iter2.i533 = xor i64 %mul.iter2.i526, %mul7.iter2.i532, !dbg !368
  %arrayidx8.iter2.i534 = getelementptr inbounds nuw i64, ptr %add.ptr.iter6, i32 2, !dbg !369
  %129 = load i64, ptr %arrayidx8.iter2.i534, align 8, !dbg !369
  %shr9.iter2.i535 = lshr i64 %129, 2, !dbg !370
  %and10.iter2.i536 = and i64 %shr9.iter2.i535, 1229782938247303441, !dbg !371
  %shr11.iter2.i537 = lshr i32 %xor2.i.i465, 16, !dbg !372
  %and12.iter2.i538 = and i32 %shr11.iter2.i537, 15, !dbg !373
  %conv13.iter2.i539 = zext nneg i32 %and12.iter2.i538 to i64, !dbg !374
  %mul14.iter2.i540 = mul nuw i64 %and10.iter2.i536, %conv13.iter2.i539, !dbg !375
  %xor15.iter2.i541 = xor i64 %xor.iter2.i533, %mul14.iter2.i540, !dbg !376
  %arrayidx16.iter2.i542 = getelementptr inbounds nuw i64, ptr %add.ptr.iter6, i32 2, !dbg !377
  %130 = load i64, ptr %arrayidx16.iter2.i542, align 8, !dbg !377
  %shr17.iter2.i543 = lshr i64 %130, 3, !dbg !378
  %and18.iter2.i544 = and i64 %shr17.iter2.i543, 1229782938247303441, !dbg !379
  %shr19.iter2.i545 = lshr i32 %xor2.i.i465, 24, !dbg !380
  %and20.iter2.i546 = and i32 %shr19.iter2.i545, 15, !dbg !381
  %conv21.iter2.i547 = zext nneg i32 %and20.iter2.i546 to i64, !dbg !382
  %mul22.iter2.i548 = mul nuw i64 %and18.iter2.i544, %conv21.iter2.i547, !dbg !383
  %xor23.iter2.i549 = xor i64 %xor15.iter2.i541, %mul22.iter2.i548, !dbg !384
  %arrayidx24.iter2.i550 = getelementptr inbounds nuw i64, ptr %add.ptr13.iter6, i32 2, !dbg !386
  %131 = load i64, ptr %arrayidx24.iter2.i550, align 8, !dbg !385
  %xor25.iter2.i551 = xor i64 %131, %xor23.iter2.i549, !dbg !385
  store i64 %xor25.iter2.i551, ptr %arrayidx24.iter2.i550, align 8, !dbg !385
    #dbg_value(i32 undef, !147, !DIExpression(), !356)
    #dbg_value(i32 undef, !147, !DIExpression(), !356)
  %arrayidx.iter3.i552 = getelementptr inbounds nuw i64, ptr %add.ptr.iter6, i32 3, !dbg !357
  %132 = load i64, ptr %arrayidx.iter3.i552, align 8, !dbg !357
  %and.iter3.i553 = and i64 %132, 1229782938247303441, !dbg !358
  %and1.iter3.i554 = and i32 %xor2.i.i465, 255, !dbg !359
  %conv.iter3.i555 = zext nneg i32 %and1.iter3.i554 to i64, !dbg !360
  %mul.iter3.i556 = mul i64 %and.iter3.i553, %conv.iter3.i555, !dbg !361
  %shr.iter3.i557 = lshr i64 %132, 1, !dbg !362
  %and3.iter3.i558 = and i64 %shr.iter3.i557, 1229782938247303441, !dbg !363
  %shr4.iter3.i559 = lshr i32 %xor2.i.i465, 8, !dbg !364
  %and5.iter3.i560 = and i32 %shr4.iter3.i559, 15, !dbg !365
  %conv6.iter3.i561 = zext nneg i32 %and5.iter3.i560 to i64, !dbg !366
  %mul7.iter3.i562 = mul nuw i64 %and3.iter3.i558, %conv6.iter3.i561, !dbg !367
  %xor.iter3.i563 = xor i64 %mul.iter3.i556, %mul7.iter3.i562, !dbg !368
  %arrayidx8.iter3.i564 = getelementptr inbounds nuw i64, ptr %add.ptr.iter6, i32 3, !dbg !369
  %133 = load i64, ptr %arrayidx8.iter3.i564, align 8, !dbg !369
  %shr9.iter3.i565 = lshr i64 %133, 2, !dbg !370
  %and10.iter3.i566 = and i64 %shr9.iter3.i565, 1229782938247303441, !dbg !371
  %shr11.iter3.i567 = lshr i32 %xor2.i.i465, 16, !dbg !372
  %and12.iter3.i568 = and i32 %shr11.iter3.i567, 15, !dbg !373
  %conv13.iter3.i569 = zext nneg i32 %and12.iter3.i568 to i64, !dbg !374
  %mul14.iter3.i570 = mul nuw i64 %and10.iter3.i566, %conv13.iter3.i569, !dbg !375
  %xor15.iter3.i571 = xor i64 %xor.iter3.i563, %mul14.iter3.i570, !dbg !376
  %arrayidx16.iter3.i572 = getelementptr inbounds nuw i64, ptr %add.ptr.iter6, i32 3, !dbg !377
  %134 = load i64, ptr %arrayidx16.iter3.i572, align 8, !dbg !377
  %shr17.iter3.i573 = lshr i64 %134, 3, !dbg !378
  %and18.iter3.i574 = and i64 %shr17.iter3.i573, 1229782938247303441, !dbg !379
  %shr19.iter3.i575 = lshr i32 %xor2.i.i465, 24, !dbg !380
  %and20.iter3.i576 = and i32 %shr19.iter3.i575, 15, !dbg !381
  %conv21.iter3.i577 = zext nneg i32 %and20.iter3.i576 to i64, !dbg !382
  %mul22.iter3.i578 = mul nuw i64 %and18.iter3.i574, %conv21.iter3.i577, !dbg !383
  %xor23.iter3.i579 = xor i64 %xor15.iter3.i571, %mul22.iter3.i578, !dbg !384
  %arrayidx24.iter3.i580 = getelementptr inbounds nuw i64, ptr %add.ptr13.iter6, i32 3, !dbg !386
  %135 = load i64, ptr %arrayidx24.iter3.i580, align 8, !dbg !385
  %xor25.iter3.i581 = xor i64 %135, %xor23.iter3.i579, !dbg !385
  store i64 %xor25.iter3.i581, ptr %arrayidx24.iter3.i580, align 8, !dbg !385
    #dbg_value(i32 undef, !147, !DIExpression(), !356)
    #dbg_value(i32 undef, !147, !DIExpression(), !356)
  %arrayidx.iter4.i582 = getelementptr inbounds nuw i64, ptr %add.ptr.iter6, i32 4, !dbg !357
  %136 = load i64, ptr %arrayidx.iter4.i582, align 8, !dbg !357
  %and.iter4.i583 = and i64 %136, 1229782938247303441, !dbg !358
  %and1.iter4.i584 = and i32 %xor2.i.i465, 255, !dbg !359
  %conv.iter4.i585 = zext nneg i32 %and1.iter4.i584 to i64, !dbg !360
  %mul.iter4.i586 = mul i64 %and.iter4.i583, %conv.iter4.i585, !dbg !361
  %shr.iter4.i587 = lshr i64 %136, 1, !dbg !362
  %and3.iter4.i588 = and i64 %shr.iter4.i587, 1229782938247303441, !dbg !363
  %shr4.iter4.i589 = lshr i32 %xor2.i.i465, 8, !dbg !364
  %and5.iter4.i590 = and i32 %shr4.iter4.i589, 15, !dbg !365
  %conv6.iter4.i591 = zext nneg i32 %and5.iter4.i590 to i64, !dbg !366
  %mul7.iter4.i592 = mul nuw i64 %and3.iter4.i588, %conv6.iter4.i591, !dbg !367
  %xor.iter4.i593 = xor i64 %mul.iter4.i586, %mul7.iter4.i592, !dbg !368
  %arrayidx8.iter4.i594 = getelementptr inbounds nuw i64, ptr %add.ptr.iter6, i32 4, !dbg !369
  %137 = load i64, ptr %arrayidx8.iter4.i594, align 8, !dbg !369
  %shr9.iter4.i595 = lshr i64 %137, 2, !dbg !370
  %and10.iter4.i596 = and i64 %shr9.iter4.i595, 1229782938247303441, !dbg !371
  %shr11.iter4.i597 = lshr i32 %xor2.i.i465, 16, !dbg !372
  %and12.iter4.i598 = and i32 %shr11.iter4.i597, 15, !dbg !373
  %conv13.iter4.i599 = zext nneg i32 %and12.iter4.i598 to i64, !dbg !374
  %mul14.iter4.i600 = mul nuw i64 %and10.iter4.i596, %conv13.iter4.i599, !dbg !375
  %xor15.iter4.i601 = xor i64 %xor.iter4.i593, %mul14.iter4.i600, !dbg !376
  %arrayidx16.iter4.i602 = getelementptr inbounds nuw i64, ptr %add.ptr.iter6, i32 4, !dbg !377
  %138 = load i64, ptr %arrayidx16.iter4.i602, align 8, !dbg !377
  %shr17.iter4.i603 = lshr i64 %138, 3, !dbg !378
  %and18.iter4.i604 = and i64 %shr17.iter4.i603, 1229782938247303441, !dbg !379
  %shr19.iter4.i605 = lshr i32 %xor2.i.i465, 24, !dbg !380
  %and20.iter4.i606 = and i32 %shr19.iter4.i605, 15, !dbg !381
  %conv21.iter4.i607 = zext nneg i32 %and20.iter4.i606 to i64, !dbg !382
  %mul22.iter4.i608 = mul nuw i64 %and18.iter4.i604, %conv21.iter4.i607, !dbg !383
  %xor23.iter4.i609 = xor i64 %xor15.iter4.i601, %mul22.iter4.i608, !dbg !384
  %arrayidx24.iter4.i610 = getelementptr inbounds nuw i64, ptr %add.ptr13.iter6, i32 4, !dbg !386
  %139 = load i64, ptr %arrayidx24.iter4.i610, align 8, !dbg !385
  %xor25.iter4.i611 = xor i64 %139, %xor23.iter4.i609, !dbg !385
  store i64 %xor25.iter4.i611, ptr %arrayidx24.iter4.i610, align 8, !dbg !385
    #dbg_value(i32 undef, !147, !DIExpression(), !356)
  %add14.iter6 = add nuw nsw i32 %k.01.iter6, 1, !dbg !108
    #dbg_value(i32 undef, !95, !DIExpression(), !99)
  %exitcond.not.iter6 = icmp eq i32 %add14.iter6, %bs_mat_cols, !dbg !109
  br i1 %exitcond.not.iter6, label %for.inc15.iter6, label %for.body6.iter6, !dbg !110, !llvm.loop !111

for.inc15.iter6:                                  ; preds = %for.body6.iter6
  %inc.iter6 = add nuw nsw i32 %c.02.iter6, 1, !dbg !114
    #dbg_value(i32 undef, !89, !DIExpression(), !93)
  %exitcond1.not.iter6 = icmp eq i32 %inc.iter6, 78, !dbg !115
  br i1 %exitcond1.not.iter6, label %for.inc17.iter6, label %for.cond4.preheader.iter6, !dbg !94, !llvm.loop !116

for.inc17.iter6:                                  ; preds = %for.inc15.iter6
    #dbg_value(i32 undef, !85, !DIExpression(), !87)
  br label %iter_6_end

for.cond4.preheader.iter6:                        ; preds = %for.inc15.iter6, %for.cond1.preheader.iter6
  %c.02.iter6 = phi i32 [ 0, %for.cond1.preheader.iter6 ], [ %inc.iter6, %for.inc15.iter6 ]
    #dbg_value(i32 undef, !89, !DIExpression(), !93)
    #dbg_value(i32 0, !95, !DIExpression(), !99)
  br label %for.body6.iter6, !dbg !110

iter_6_end:                                       ; preds = %for.inc17.iter6
  br label %iter_7_start

iter_7_start:                                     ; preds = %iter_6_end
  br label %for.cond1.preheader.iter7

for.cond1.preheader.iter7:                        ; preds = %iter_7_start
    #dbg_value(i32 undef, !85, !DIExpression(), !87)
    #dbg_value(i32 0, !89, !DIExpression(), !93)
  br label %for.cond4.preheader.iter7, !dbg !94

for.body6.iter7:                                  ; preds = %for.cond4.preheader.iter7, %for.body6.iter7
  %k.01.iter7 = phi i32 [ 0, %for.cond4.preheader.iter7 ], [ %add14.iter7, %for.body6.iter7 ]
    #dbg_value(i32 undef, !95, !DIExpression(), !99)
  %mul.iter7 = mul nuw nsw i32 %c.02.iter7, %bs_mat_cols, !dbg !100
  %add.iter7 = add nuw nsw i32 %mul.iter7, %k.01.iter7, !dbg !103
  %add.ptr.idx.iter7 = mul nuw nsw i32 %add.iter7, 40, !dbg !104
  %add.ptr.iter7 = getelementptr inbounds nuw i8, ptr %bs_mat, i32 %add.ptr.idx.iter7, !dbg !104
  %140 = getelementptr i8, ptr %mat, i32 546, !dbg !105
  %arrayidx.iter7 = getelementptr i8, ptr %140, i32 %c.02.iter7, !dbg !105
  %141 = load i8, ptr %arrayidx.iter7, align 1, !dbg !105
  %mul10.iter7 = mul nuw nsw i32 7, %bs_mat_cols, !dbg !118
  %add11.iter7 = add nuw nsw i32 %mul10.iter7, %k.01.iter7, !dbg !106
  %add.ptr13.idx.iter7 = mul nuw nsw i32 %add11.iter7, 40, !dbg !107
  %add.ptr13.iter7 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr13.idx.iter7, !dbg !107
    #dbg_value(i32 5, !119, !DIExpression(), !387)
    #dbg_value(ptr %add.ptr.iter7, !126, !DIExpression(), !387)
    #dbg_value(i8 %141, !127, !DIExpression(), !387)
    #dbg_value(ptr %add.ptr13.iter7, !128, !DIExpression(), !387)
    #dbg_value(i8 %141, !129, !DIExpression(), !389)
  %conv.i.i308 = zext i8 %141 to i32, !dbg !391
  %mul.i.i309 = mul i32 %conv.i.i308, 134480385, !dbg !392
    #dbg_value(i32 %mul.i.i309, !138, !DIExpression(), !389)
    #dbg_value(i32 -252645136, !139, !DIExpression(), !389)
  %and.i.i310 = and i32 %mul.i.i309, -252645136, !dbg !393
    #dbg_value(i32 %and.i.i310, !141, !DIExpression(), !389)
  %shr.i.i311 = lshr exact i32 %and.i.i310, 4, !dbg !394
  %shr1.i.i312 = lshr exact i32 %and.i.i310, 3, !dbg !395
  %142 = xor i32 %shr.i.i311, %shr1.i.i312, !dbg !396
  %xor2.i.i313 = xor i32 %142, %mul.i.i309, !dbg !396
    #dbg_value(i32 %xor2.i.i313, !145, !DIExpression(), !387)
    #dbg_value(i64 1229782938247303441, !146, !DIExpression(), !387)
    #dbg_value(i32 0, !147, !DIExpression(), !397)
    #dbg_value(i32 undef, !147, !DIExpression(), !397)
  %143 = load i64, ptr %add.ptr.iter7, align 8, !dbg !398
  %and.iter0.i314 = and i64 %143, 1229782938247303441, !dbg !399
  %and1.iter0.i315 = and i32 %xor2.i.i313, 255, !dbg !400
  %conv.iter0.i316 = zext nneg i32 %and1.iter0.i315 to i64, !dbg !401
  %mul.iter0.i317 = mul i64 %and.iter0.i314, %conv.iter0.i316, !dbg !402
  %shr.iter0.i318 = lshr i64 %143, 1, !dbg !403
  %and3.iter0.i319 = and i64 %shr.iter0.i318, 1229782938247303441, !dbg !404
  %shr4.iter0.i320 = lshr i32 %xor2.i.i313, 8, !dbg !405
  %and5.iter0.i321 = and i32 %shr4.iter0.i320, 15, !dbg !406
  %conv6.iter0.i322 = zext nneg i32 %and5.iter0.i321 to i64, !dbg !407
  %mul7.iter0.i323 = mul nuw i64 %and3.iter0.i319, %conv6.iter0.i322, !dbg !408
  %xor.iter0.i324 = xor i64 %mul.iter0.i317, %mul7.iter0.i323, !dbg !409
  %144 = load i64, ptr %add.ptr.iter7, align 8, !dbg !410
  %shr9.iter0.i325 = lshr i64 %144, 2, !dbg !411
  %and10.iter0.i326 = and i64 %shr9.iter0.i325, 1229782938247303441, !dbg !412
  %shr11.iter0.i327 = lshr i32 %xor2.i.i313, 16, !dbg !413
  %and12.iter0.i328 = and i32 %shr11.iter0.i327, 15, !dbg !414
  %conv13.iter0.i329 = zext nneg i32 %and12.iter0.i328 to i64, !dbg !415
  %mul14.iter0.i330 = mul nuw i64 %and10.iter0.i326, %conv13.iter0.i329, !dbg !416
  %xor15.iter0.i331 = xor i64 %xor.iter0.i324, %mul14.iter0.i330, !dbg !417
  %145 = load i64, ptr %add.ptr.iter7, align 8, !dbg !418
  %shr17.iter0.i332 = lshr i64 %145, 3, !dbg !419
  %and18.iter0.i333 = and i64 %shr17.iter0.i332, 1229782938247303441, !dbg !420
  %shr19.iter0.i334 = lshr i32 %xor2.i.i313, 24, !dbg !421
  %and20.iter0.i335 = and i32 %shr19.iter0.i334, 15, !dbg !422
  %conv21.iter0.i336 = zext nneg i32 %and20.iter0.i335 to i64, !dbg !423
  %mul22.iter0.i337 = mul nuw i64 %and18.iter0.i333, %conv21.iter0.i336, !dbg !424
  %xor23.iter0.i338 = xor i64 %xor15.iter0.i331, %mul22.iter0.i337, !dbg !425
  %146 = load i64, ptr %add.ptr13.iter7, align 8, !dbg !426
  %xor25.iter0.i339 = xor i64 %146, %xor23.iter0.i338, !dbg !426
  store i64 %xor25.iter0.i339, ptr %add.ptr13.iter7, align 8, !dbg !426
    #dbg_value(i32 undef, !147, !DIExpression(), !397)
    #dbg_value(i32 undef, !147, !DIExpression(), !397)
  %arrayidx.iter1.i340 = getelementptr inbounds nuw i64, ptr %add.ptr.iter7, i32 1, !dbg !398
  %147 = load i64, ptr %arrayidx.iter1.i340, align 8, !dbg !398
  %and.iter1.i341 = and i64 %147, 1229782938247303441, !dbg !399
  %and1.iter1.i342 = and i32 %xor2.i.i313, 255, !dbg !400
  %conv.iter1.i343 = zext nneg i32 %and1.iter1.i342 to i64, !dbg !401
  %mul.iter1.i344 = mul i64 %and.iter1.i341, %conv.iter1.i343, !dbg !402
  %shr.iter1.i345 = lshr i64 %147, 1, !dbg !403
  %and3.iter1.i346 = and i64 %shr.iter1.i345, 1229782938247303441, !dbg !404
  %shr4.iter1.i347 = lshr i32 %xor2.i.i313, 8, !dbg !405
  %and5.iter1.i348 = and i32 %shr4.iter1.i347, 15, !dbg !406
  %conv6.iter1.i349 = zext nneg i32 %and5.iter1.i348 to i64, !dbg !407
  %mul7.iter1.i350 = mul nuw i64 %and3.iter1.i346, %conv6.iter1.i349, !dbg !408
  %xor.iter1.i351 = xor i64 %mul.iter1.i344, %mul7.iter1.i350, !dbg !409
  %arrayidx8.iter1.i352 = getelementptr inbounds nuw i64, ptr %add.ptr.iter7, i32 1, !dbg !410
  %148 = load i64, ptr %arrayidx8.iter1.i352, align 8, !dbg !410
  %shr9.iter1.i353 = lshr i64 %148, 2, !dbg !411
  %and10.iter1.i354 = and i64 %shr9.iter1.i353, 1229782938247303441, !dbg !412
  %shr11.iter1.i355 = lshr i32 %xor2.i.i313, 16, !dbg !413
  %and12.iter1.i356 = and i32 %shr11.iter1.i355, 15, !dbg !414
  %conv13.iter1.i357 = zext nneg i32 %and12.iter1.i356 to i64, !dbg !415
  %mul14.iter1.i358 = mul nuw i64 %and10.iter1.i354, %conv13.iter1.i357, !dbg !416
  %xor15.iter1.i359 = xor i64 %xor.iter1.i351, %mul14.iter1.i358, !dbg !417
  %arrayidx16.iter1.i360 = getelementptr inbounds nuw i64, ptr %add.ptr.iter7, i32 1, !dbg !418
  %149 = load i64, ptr %arrayidx16.iter1.i360, align 8, !dbg !418
  %shr17.iter1.i361 = lshr i64 %149, 3, !dbg !419
  %and18.iter1.i362 = and i64 %shr17.iter1.i361, 1229782938247303441, !dbg !420
  %shr19.iter1.i363 = lshr i32 %xor2.i.i313, 24, !dbg !421
  %and20.iter1.i364 = and i32 %shr19.iter1.i363, 15, !dbg !422
  %conv21.iter1.i365 = zext nneg i32 %and20.iter1.i364 to i64, !dbg !423
  %mul22.iter1.i366 = mul nuw i64 %and18.iter1.i362, %conv21.iter1.i365, !dbg !424
  %xor23.iter1.i367 = xor i64 %xor15.iter1.i359, %mul22.iter1.i366, !dbg !425
  %arrayidx24.iter1.i368 = getelementptr inbounds nuw i64, ptr %add.ptr13.iter7, i32 1, !dbg !427
  %150 = load i64, ptr %arrayidx24.iter1.i368, align 8, !dbg !426
  %xor25.iter1.i369 = xor i64 %150, %xor23.iter1.i367, !dbg !426
  store i64 %xor25.iter1.i369, ptr %arrayidx24.iter1.i368, align 8, !dbg !426
    #dbg_value(i32 undef, !147, !DIExpression(), !397)
    #dbg_value(i32 undef, !147, !DIExpression(), !397)
  %arrayidx.iter2.i370 = getelementptr inbounds nuw i64, ptr %add.ptr.iter7, i32 2, !dbg !398
  %151 = load i64, ptr %arrayidx.iter2.i370, align 8, !dbg !398
  %and.iter2.i371 = and i64 %151, 1229782938247303441, !dbg !399
  %and1.iter2.i372 = and i32 %xor2.i.i313, 255, !dbg !400
  %conv.iter2.i373 = zext nneg i32 %and1.iter2.i372 to i64, !dbg !401
  %mul.iter2.i374 = mul i64 %and.iter2.i371, %conv.iter2.i373, !dbg !402
  %shr.iter2.i375 = lshr i64 %151, 1, !dbg !403
  %and3.iter2.i376 = and i64 %shr.iter2.i375, 1229782938247303441, !dbg !404
  %shr4.iter2.i377 = lshr i32 %xor2.i.i313, 8, !dbg !405
  %and5.iter2.i378 = and i32 %shr4.iter2.i377, 15, !dbg !406
  %conv6.iter2.i379 = zext nneg i32 %and5.iter2.i378 to i64, !dbg !407
  %mul7.iter2.i380 = mul nuw i64 %and3.iter2.i376, %conv6.iter2.i379, !dbg !408
  %xor.iter2.i381 = xor i64 %mul.iter2.i374, %mul7.iter2.i380, !dbg !409
  %arrayidx8.iter2.i382 = getelementptr inbounds nuw i64, ptr %add.ptr.iter7, i32 2, !dbg !410
  %152 = load i64, ptr %arrayidx8.iter2.i382, align 8, !dbg !410
  %shr9.iter2.i383 = lshr i64 %152, 2, !dbg !411
  %and10.iter2.i384 = and i64 %shr9.iter2.i383, 1229782938247303441, !dbg !412
  %shr11.iter2.i385 = lshr i32 %xor2.i.i313, 16, !dbg !413
  %and12.iter2.i386 = and i32 %shr11.iter2.i385, 15, !dbg !414
  %conv13.iter2.i387 = zext nneg i32 %and12.iter2.i386 to i64, !dbg !415
  %mul14.iter2.i388 = mul nuw i64 %and10.iter2.i384, %conv13.iter2.i387, !dbg !416
  %xor15.iter2.i389 = xor i64 %xor.iter2.i381, %mul14.iter2.i388, !dbg !417
  %arrayidx16.iter2.i390 = getelementptr inbounds nuw i64, ptr %add.ptr.iter7, i32 2, !dbg !418
  %153 = load i64, ptr %arrayidx16.iter2.i390, align 8, !dbg !418
  %shr17.iter2.i391 = lshr i64 %153, 3, !dbg !419
  %and18.iter2.i392 = and i64 %shr17.iter2.i391, 1229782938247303441, !dbg !420
  %shr19.iter2.i393 = lshr i32 %xor2.i.i313, 24, !dbg !421
  %and20.iter2.i394 = and i32 %shr19.iter2.i393, 15, !dbg !422
  %conv21.iter2.i395 = zext nneg i32 %and20.iter2.i394 to i64, !dbg !423
  %mul22.iter2.i396 = mul nuw i64 %and18.iter2.i392, %conv21.iter2.i395, !dbg !424
  %xor23.iter2.i397 = xor i64 %xor15.iter2.i389, %mul22.iter2.i396, !dbg !425
  %arrayidx24.iter2.i398 = getelementptr inbounds nuw i64, ptr %add.ptr13.iter7, i32 2, !dbg !427
  %154 = load i64, ptr %arrayidx24.iter2.i398, align 8, !dbg !426
  %xor25.iter2.i399 = xor i64 %154, %xor23.iter2.i397, !dbg !426
  store i64 %xor25.iter2.i399, ptr %arrayidx24.iter2.i398, align 8, !dbg !426
    #dbg_value(i32 undef, !147, !DIExpression(), !397)
    #dbg_value(i32 undef, !147, !DIExpression(), !397)
  %arrayidx.iter3.i400 = getelementptr inbounds nuw i64, ptr %add.ptr.iter7, i32 3, !dbg !398
  %155 = load i64, ptr %arrayidx.iter3.i400, align 8, !dbg !398
  %and.iter3.i401 = and i64 %155, 1229782938247303441, !dbg !399
  %and1.iter3.i402 = and i32 %xor2.i.i313, 255, !dbg !400
  %conv.iter3.i403 = zext nneg i32 %and1.iter3.i402 to i64, !dbg !401
  %mul.iter3.i404 = mul i64 %and.iter3.i401, %conv.iter3.i403, !dbg !402
  %shr.iter3.i405 = lshr i64 %155, 1, !dbg !403
  %and3.iter3.i406 = and i64 %shr.iter3.i405, 1229782938247303441, !dbg !404
  %shr4.iter3.i407 = lshr i32 %xor2.i.i313, 8, !dbg !405
  %and5.iter3.i408 = and i32 %shr4.iter3.i407, 15, !dbg !406
  %conv6.iter3.i409 = zext nneg i32 %and5.iter3.i408 to i64, !dbg !407
  %mul7.iter3.i410 = mul nuw i64 %and3.iter3.i406, %conv6.iter3.i409, !dbg !408
  %xor.iter3.i411 = xor i64 %mul.iter3.i404, %mul7.iter3.i410, !dbg !409
  %arrayidx8.iter3.i412 = getelementptr inbounds nuw i64, ptr %add.ptr.iter7, i32 3, !dbg !410
  %156 = load i64, ptr %arrayidx8.iter3.i412, align 8, !dbg !410
  %shr9.iter3.i413 = lshr i64 %156, 2, !dbg !411
  %and10.iter3.i414 = and i64 %shr9.iter3.i413, 1229782938247303441, !dbg !412
  %shr11.iter3.i415 = lshr i32 %xor2.i.i313, 16, !dbg !413
  %and12.iter3.i416 = and i32 %shr11.iter3.i415, 15, !dbg !414
  %conv13.iter3.i417 = zext nneg i32 %and12.iter3.i416 to i64, !dbg !415
  %mul14.iter3.i418 = mul nuw i64 %and10.iter3.i414, %conv13.iter3.i417, !dbg !416
  %xor15.iter3.i419 = xor i64 %xor.iter3.i411, %mul14.iter3.i418, !dbg !417
  %arrayidx16.iter3.i420 = getelementptr inbounds nuw i64, ptr %add.ptr.iter7, i32 3, !dbg !418
  %157 = load i64, ptr %arrayidx16.iter3.i420, align 8, !dbg !418
  %shr17.iter3.i421 = lshr i64 %157, 3, !dbg !419
  %and18.iter3.i422 = and i64 %shr17.iter3.i421, 1229782938247303441, !dbg !420
  %shr19.iter3.i423 = lshr i32 %xor2.i.i313, 24, !dbg !421
  %and20.iter3.i424 = and i32 %shr19.iter3.i423, 15, !dbg !422
  %conv21.iter3.i425 = zext nneg i32 %and20.iter3.i424 to i64, !dbg !423
  %mul22.iter3.i426 = mul nuw i64 %and18.iter3.i422, %conv21.iter3.i425, !dbg !424
  %xor23.iter3.i427 = xor i64 %xor15.iter3.i419, %mul22.iter3.i426, !dbg !425
  %arrayidx24.iter3.i428 = getelementptr inbounds nuw i64, ptr %add.ptr13.iter7, i32 3, !dbg !427
  %158 = load i64, ptr %arrayidx24.iter3.i428, align 8, !dbg !426
  %xor25.iter3.i429 = xor i64 %158, %xor23.iter3.i427, !dbg !426
  store i64 %xor25.iter3.i429, ptr %arrayidx24.iter3.i428, align 8, !dbg !426
    #dbg_value(i32 undef, !147, !DIExpression(), !397)
    #dbg_value(i32 undef, !147, !DIExpression(), !397)
  %arrayidx.iter4.i430 = getelementptr inbounds nuw i64, ptr %add.ptr.iter7, i32 4, !dbg !398
  %159 = load i64, ptr %arrayidx.iter4.i430, align 8, !dbg !398
  %and.iter4.i431 = and i64 %159, 1229782938247303441, !dbg !399
  %and1.iter4.i432 = and i32 %xor2.i.i313, 255, !dbg !400
  %conv.iter4.i433 = zext nneg i32 %and1.iter4.i432 to i64, !dbg !401
  %mul.iter4.i434 = mul i64 %and.iter4.i431, %conv.iter4.i433, !dbg !402
  %shr.iter4.i435 = lshr i64 %159, 1, !dbg !403
  %and3.iter4.i436 = and i64 %shr.iter4.i435, 1229782938247303441, !dbg !404
  %shr4.iter4.i437 = lshr i32 %xor2.i.i313, 8, !dbg !405
  %and5.iter4.i438 = and i32 %shr4.iter4.i437, 15, !dbg !406
  %conv6.iter4.i439 = zext nneg i32 %and5.iter4.i438 to i64, !dbg !407
  %mul7.iter4.i440 = mul nuw i64 %and3.iter4.i436, %conv6.iter4.i439, !dbg !408
  %xor.iter4.i441 = xor i64 %mul.iter4.i434, %mul7.iter4.i440, !dbg !409
  %arrayidx8.iter4.i442 = getelementptr inbounds nuw i64, ptr %add.ptr.iter7, i32 4, !dbg !410
  %160 = load i64, ptr %arrayidx8.iter4.i442, align 8, !dbg !410
  %shr9.iter4.i443 = lshr i64 %160, 2, !dbg !411
  %and10.iter4.i444 = and i64 %shr9.iter4.i443, 1229782938247303441, !dbg !412
  %shr11.iter4.i445 = lshr i32 %xor2.i.i313, 16, !dbg !413
  %and12.iter4.i446 = and i32 %shr11.iter4.i445, 15, !dbg !414
  %conv13.iter4.i447 = zext nneg i32 %and12.iter4.i446 to i64, !dbg !415
  %mul14.iter4.i448 = mul nuw i64 %and10.iter4.i444, %conv13.iter4.i447, !dbg !416
  %xor15.iter4.i449 = xor i64 %xor.iter4.i441, %mul14.iter4.i448, !dbg !417
  %arrayidx16.iter4.i450 = getelementptr inbounds nuw i64, ptr %add.ptr.iter7, i32 4, !dbg !418
  %161 = load i64, ptr %arrayidx16.iter4.i450, align 8, !dbg !418
  %shr17.iter4.i451 = lshr i64 %161, 3, !dbg !419
  %and18.iter4.i452 = and i64 %shr17.iter4.i451, 1229782938247303441, !dbg !420
  %shr19.iter4.i453 = lshr i32 %xor2.i.i313, 24, !dbg !421
  %and20.iter4.i454 = and i32 %shr19.iter4.i453, 15, !dbg !422
  %conv21.iter4.i455 = zext nneg i32 %and20.iter4.i454 to i64, !dbg !423
  %mul22.iter4.i456 = mul nuw i64 %and18.iter4.i452, %conv21.iter4.i455, !dbg !424
  %xor23.iter4.i457 = xor i64 %xor15.iter4.i449, %mul22.iter4.i456, !dbg !425
  %arrayidx24.iter4.i458 = getelementptr inbounds nuw i64, ptr %add.ptr13.iter7, i32 4, !dbg !427
  %162 = load i64, ptr %arrayidx24.iter4.i458, align 8, !dbg !426
  %xor25.iter4.i459 = xor i64 %162, %xor23.iter4.i457, !dbg !426
  store i64 %xor25.iter4.i459, ptr %arrayidx24.iter4.i458, align 8, !dbg !426
    #dbg_value(i32 undef, !147, !DIExpression(), !397)
  %add14.iter7 = add nuw nsw i32 %k.01.iter7, 1, !dbg !108
    #dbg_value(i32 undef, !95, !DIExpression(), !99)
  %exitcond.not.iter7 = icmp eq i32 %add14.iter7, %bs_mat_cols, !dbg !109
  br i1 %exitcond.not.iter7, label %for.inc15.iter7, label %for.body6.iter7, !dbg !110, !llvm.loop !111

for.inc15.iter7:                                  ; preds = %for.body6.iter7
  %inc.iter7 = add nuw nsw i32 %c.02.iter7, 1, !dbg !114
    #dbg_value(i32 undef, !89, !DIExpression(), !93)
  %exitcond1.not.iter7 = icmp eq i32 %inc.iter7, 78, !dbg !115
  br i1 %exitcond1.not.iter7, label %for.inc17.iter7, label %for.cond4.preheader.iter7, !dbg !94, !llvm.loop !116

for.inc17.iter7:                                  ; preds = %for.inc15.iter7
    #dbg_value(i32 undef, !85, !DIExpression(), !87)
  br label %iter_7_end

for.cond4.preheader.iter7:                        ; preds = %for.inc15.iter7, %for.cond1.preheader.iter7
  %c.02.iter7 = phi i32 [ 0, %for.cond1.preheader.iter7 ], [ %inc.iter7, %for.inc15.iter7 ]
    #dbg_value(i32 undef, !89, !DIExpression(), !93)
    #dbg_value(i32 0, !95, !DIExpression(), !99)
  br label %for.body6.iter7, !dbg !110

iter_7_end:                                       ; preds = %for.inc17.iter7
  br label %iter_8_start

iter_8_start:                                     ; preds = %iter_7_end
  br label %for.cond1.preheader.iter8

for.cond1.preheader.iter8:                        ; preds = %iter_8_start
    #dbg_value(i32 undef, !85, !DIExpression(), !87)
    #dbg_value(i32 0, !89, !DIExpression(), !93)
  br label %for.cond4.preheader.iter8, !dbg !94

for.body6.iter8:                                  ; preds = %for.cond4.preheader.iter8, %for.body6.iter8
  %k.01.iter8 = phi i32 [ 0, %for.cond4.preheader.iter8 ], [ %add14.iter8, %for.body6.iter8 ]
    #dbg_value(i32 undef, !95, !DIExpression(), !99)
  %mul.iter8 = mul nuw nsw i32 %c.02.iter8, %bs_mat_cols, !dbg !100
  %add.iter8 = add nuw nsw i32 %mul.iter8, %k.01.iter8, !dbg !103
  %add.ptr.idx.iter8 = mul nuw nsw i32 %add.iter8, 40, !dbg !104
  %add.ptr.iter8 = getelementptr inbounds nuw i8, ptr %bs_mat, i32 %add.ptr.idx.iter8, !dbg !104
  %163 = getelementptr i8, ptr %mat, i32 624, !dbg !105
  %arrayidx.iter8 = getelementptr i8, ptr %163, i32 %c.02.iter8, !dbg !105
  %164 = load i8, ptr %arrayidx.iter8, align 1, !dbg !105
  %mul10.iter8 = mul nuw nsw i32 8, %bs_mat_cols, !dbg !118
  %add11.iter8 = add nuw nsw i32 %mul10.iter8, %k.01.iter8, !dbg !106
  %add.ptr13.idx.iter8 = mul nuw nsw i32 %add11.iter8, 40, !dbg !107
  %add.ptr13.iter8 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr13.idx.iter8, !dbg !107
    #dbg_value(i32 5, !119, !DIExpression(), !428)
    #dbg_value(ptr %add.ptr.iter8, !126, !DIExpression(), !428)
    #dbg_value(i8 %164, !127, !DIExpression(), !428)
    #dbg_value(ptr %add.ptr13.iter8, !128, !DIExpression(), !428)
    #dbg_value(i8 %164, !129, !DIExpression(), !430)
  %conv.i.i156 = zext i8 %164 to i32, !dbg !432
  %mul.i.i157 = mul i32 %conv.i.i156, 134480385, !dbg !433
    #dbg_value(i32 %mul.i.i157, !138, !DIExpression(), !430)
    #dbg_value(i32 -252645136, !139, !DIExpression(), !430)
  %and.i.i158 = and i32 %mul.i.i157, -252645136, !dbg !434
    #dbg_value(i32 %and.i.i158, !141, !DIExpression(), !430)
  %shr.i.i159 = lshr exact i32 %and.i.i158, 4, !dbg !435
  %shr1.i.i160 = lshr exact i32 %and.i.i158, 3, !dbg !436
  %165 = xor i32 %shr.i.i159, %shr1.i.i160, !dbg !437
  %xor2.i.i161 = xor i32 %165, %mul.i.i157, !dbg !437
    #dbg_value(i32 %xor2.i.i161, !145, !DIExpression(), !428)
    #dbg_value(i64 1229782938247303441, !146, !DIExpression(), !428)
    #dbg_value(i32 0, !147, !DIExpression(), !438)
    #dbg_value(i32 undef, !147, !DIExpression(), !438)
  %166 = load i64, ptr %add.ptr.iter8, align 8, !dbg !439
  %and.iter0.i162 = and i64 %166, 1229782938247303441, !dbg !440
  %and1.iter0.i163 = and i32 %xor2.i.i161, 255, !dbg !441
  %conv.iter0.i164 = zext nneg i32 %and1.iter0.i163 to i64, !dbg !442
  %mul.iter0.i165 = mul i64 %and.iter0.i162, %conv.iter0.i164, !dbg !443
  %shr.iter0.i166 = lshr i64 %166, 1, !dbg !444
  %and3.iter0.i167 = and i64 %shr.iter0.i166, 1229782938247303441, !dbg !445
  %shr4.iter0.i168 = lshr i32 %xor2.i.i161, 8, !dbg !446
  %and5.iter0.i169 = and i32 %shr4.iter0.i168, 15, !dbg !447
  %conv6.iter0.i170 = zext nneg i32 %and5.iter0.i169 to i64, !dbg !448
  %mul7.iter0.i171 = mul nuw i64 %and3.iter0.i167, %conv6.iter0.i170, !dbg !449
  %xor.iter0.i172 = xor i64 %mul.iter0.i165, %mul7.iter0.i171, !dbg !450
  %167 = load i64, ptr %add.ptr.iter8, align 8, !dbg !451
  %shr9.iter0.i173 = lshr i64 %167, 2, !dbg !452
  %and10.iter0.i174 = and i64 %shr9.iter0.i173, 1229782938247303441, !dbg !453
  %shr11.iter0.i175 = lshr i32 %xor2.i.i161, 16, !dbg !454
  %and12.iter0.i176 = and i32 %shr11.iter0.i175, 15, !dbg !455
  %conv13.iter0.i177 = zext nneg i32 %and12.iter0.i176 to i64, !dbg !456
  %mul14.iter0.i178 = mul nuw i64 %and10.iter0.i174, %conv13.iter0.i177, !dbg !457
  %xor15.iter0.i179 = xor i64 %xor.iter0.i172, %mul14.iter0.i178, !dbg !458
  %168 = load i64, ptr %add.ptr.iter8, align 8, !dbg !459
  %shr17.iter0.i180 = lshr i64 %168, 3, !dbg !460
  %and18.iter0.i181 = and i64 %shr17.iter0.i180, 1229782938247303441, !dbg !461
  %shr19.iter0.i182 = lshr i32 %xor2.i.i161, 24, !dbg !462
  %and20.iter0.i183 = and i32 %shr19.iter0.i182, 15, !dbg !463
  %conv21.iter0.i184 = zext nneg i32 %and20.iter0.i183 to i64, !dbg !464
  %mul22.iter0.i185 = mul nuw i64 %and18.iter0.i181, %conv21.iter0.i184, !dbg !465
  %xor23.iter0.i186 = xor i64 %xor15.iter0.i179, %mul22.iter0.i185, !dbg !466
  %169 = load i64, ptr %add.ptr13.iter8, align 8, !dbg !467
  %xor25.iter0.i187 = xor i64 %169, %xor23.iter0.i186, !dbg !467
  store i64 %xor25.iter0.i187, ptr %add.ptr13.iter8, align 8, !dbg !467
    #dbg_value(i32 undef, !147, !DIExpression(), !438)
    #dbg_value(i32 undef, !147, !DIExpression(), !438)
  %arrayidx.iter1.i188 = getelementptr inbounds nuw i64, ptr %add.ptr.iter8, i32 1, !dbg !439
  %170 = load i64, ptr %arrayidx.iter1.i188, align 8, !dbg !439
  %and.iter1.i189 = and i64 %170, 1229782938247303441, !dbg !440
  %and1.iter1.i190 = and i32 %xor2.i.i161, 255, !dbg !441
  %conv.iter1.i191 = zext nneg i32 %and1.iter1.i190 to i64, !dbg !442
  %mul.iter1.i192 = mul i64 %and.iter1.i189, %conv.iter1.i191, !dbg !443
  %shr.iter1.i193 = lshr i64 %170, 1, !dbg !444
  %and3.iter1.i194 = and i64 %shr.iter1.i193, 1229782938247303441, !dbg !445
  %shr4.iter1.i195 = lshr i32 %xor2.i.i161, 8, !dbg !446
  %and5.iter1.i196 = and i32 %shr4.iter1.i195, 15, !dbg !447
  %conv6.iter1.i197 = zext nneg i32 %and5.iter1.i196 to i64, !dbg !448
  %mul7.iter1.i198 = mul nuw i64 %and3.iter1.i194, %conv6.iter1.i197, !dbg !449
  %xor.iter1.i199 = xor i64 %mul.iter1.i192, %mul7.iter1.i198, !dbg !450
  %arrayidx8.iter1.i200 = getelementptr inbounds nuw i64, ptr %add.ptr.iter8, i32 1, !dbg !451
  %171 = load i64, ptr %arrayidx8.iter1.i200, align 8, !dbg !451
  %shr9.iter1.i201 = lshr i64 %171, 2, !dbg !452
  %and10.iter1.i202 = and i64 %shr9.iter1.i201, 1229782938247303441, !dbg !453
  %shr11.iter1.i203 = lshr i32 %xor2.i.i161, 16, !dbg !454
  %and12.iter1.i204 = and i32 %shr11.iter1.i203, 15, !dbg !455
  %conv13.iter1.i205 = zext nneg i32 %and12.iter1.i204 to i64, !dbg !456
  %mul14.iter1.i206 = mul nuw i64 %and10.iter1.i202, %conv13.iter1.i205, !dbg !457
  %xor15.iter1.i207 = xor i64 %xor.iter1.i199, %mul14.iter1.i206, !dbg !458
  %arrayidx16.iter1.i208 = getelementptr inbounds nuw i64, ptr %add.ptr.iter8, i32 1, !dbg !459
  %172 = load i64, ptr %arrayidx16.iter1.i208, align 8, !dbg !459
  %shr17.iter1.i209 = lshr i64 %172, 3, !dbg !460
  %and18.iter1.i210 = and i64 %shr17.iter1.i209, 1229782938247303441, !dbg !461
  %shr19.iter1.i211 = lshr i32 %xor2.i.i161, 24, !dbg !462
  %and20.iter1.i212 = and i32 %shr19.iter1.i211, 15, !dbg !463
  %conv21.iter1.i213 = zext nneg i32 %and20.iter1.i212 to i64, !dbg !464
  %mul22.iter1.i214 = mul nuw i64 %and18.iter1.i210, %conv21.iter1.i213, !dbg !465
  %xor23.iter1.i215 = xor i64 %xor15.iter1.i207, %mul22.iter1.i214, !dbg !466
  %arrayidx24.iter1.i216 = getelementptr inbounds nuw i64, ptr %add.ptr13.iter8, i32 1, !dbg !468
  %173 = load i64, ptr %arrayidx24.iter1.i216, align 8, !dbg !467
  %xor25.iter1.i217 = xor i64 %173, %xor23.iter1.i215, !dbg !467
  store i64 %xor25.iter1.i217, ptr %arrayidx24.iter1.i216, align 8, !dbg !467
    #dbg_value(i32 undef, !147, !DIExpression(), !438)
    #dbg_value(i32 undef, !147, !DIExpression(), !438)
  %arrayidx.iter2.i218 = getelementptr inbounds nuw i64, ptr %add.ptr.iter8, i32 2, !dbg !439
  %174 = load i64, ptr %arrayidx.iter2.i218, align 8, !dbg !439
  %and.iter2.i219 = and i64 %174, 1229782938247303441, !dbg !440
  %and1.iter2.i220 = and i32 %xor2.i.i161, 255, !dbg !441
  %conv.iter2.i221 = zext nneg i32 %and1.iter2.i220 to i64, !dbg !442
  %mul.iter2.i222 = mul i64 %and.iter2.i219, %conv.iter2.i221, !dbg !443
  %shr.iter2.i223 = lshr i64 %174, 1, !dbg !444
  %and3.iter2.i224 = and i64 %shr.iter2.i223, 1229782938247303441, !dbg !445
  %shr4.iter2.i225 = lshr i32 %xor2.i.i161, 8, !dbg !446
  %and5.iter2.i226 = and i32 %shr4.iter2.i225, 15, !dbg !447
  %conv6.iter2.i227 = zext nneg i32 %and5.iter2.i226 to i64, !dbg !448
  %mul7.iter2.i228 = mul nuw i64 %and3.iter2.i224, %conv6.iter2.i227, !dbg !449
  %xor.iter2.i229 = xor i64 %mul.iter2.i222, %mul7.iter2.i228, !dbg !450
  %arrayidx8.iter2.i230 = getelementptr inbounds nuw i64, ptr %add.ptr.iter8, i32 2, !dbg !451
  %175 = load i64, ptr %arrayidx8.iter2.i230, align 8, !dbg !451
  %shr9.iter2.i231 = lshr i64 %175, 2, !dbg !452
  %and10.iter2.i232 = and i64 %shr9.iter2.i231, 1229782938247303441, !dbg !453
  %shr11.iter2.i233 = lshr i32 %xor2.i.i161, 16, !dbg !454
  %and12.iter2.i234 = and i32 %shr11.iter2.i233, 15, !dbg !455
  %conv13.iter2.i235 = zext nneg i32 %and12.iter2.i234 to i64, !dbg !456
  %mul14.iter2.i236 = mul nuw i64 %and10.iter2.i232, %conv13.iter2.i235, !dbg !457
  %xor15.iter2.i237 = xor i64 %xor.iter2.i229, %mul14.iter2.i236, !dbg !458
  %arrayidx16.iter2.i238 = getelementptr inbounds nuw i64, ptr %add.ptr.iter8, i32 2, !dbg !459
  %176 = load i64, ptr %arrayidx16.iter2.i238, align 8, !dbg !459
  %shr17.iter2.i239 = lshr i64 %176, 3, !dbg !460
  %and18.iter2.i240 = and i64 %shr17.iter2.i239, 1229782938247303441, !dbg !461
  %shr19.iter2.i241 = lshr i32 %xor2.i.i161, 24, !dbg !462
  %and20.iter2.i242 = and i32 %shr19.iter2.i241, 15, !dbg !463
  %conv21.iter2.i243 = zext nneg i32 %and20.iter2.i242 to i64, !dbg !464
  %mul22.iter2.i244 = mul nuw i64 %and18.iter2.i240, %conv21.iter2.i243, !dbg !465
  %xor23.iter2.i245 = xor i64 %xor15.iter2.i237, %mul22.iter2.i244, !dbg !466
  %arrayidx24.iter2.i246 = getelementptr inbounds nuw i64, ptr %add.ptr13.iter8, i32 2, !dbg !468
  %177 = load i64, ptr %arrayidx24.iter2.i246, align 8, !dbg !467
  %xor25.iter2.i247 = xor i64 %177, %xor23.iter2.i245, !dbg !467
  store i64 %xor25.iter2.i247, ptr %arrayidx24.iter2.i246, align 8, !dbg !467
    #dbg_value(i32 undef, !147, !DIExpression(), !438)
    #dbg_value(i32 undef, !147, !DIExpression(), !438)
  %arrayidx.iter3.i248 = getelementptr inbounds nuw i64, ptr %add.ptr.iter8, i32 3, !dbg !439
  %178 = load i64, ptr %arrayidx.iter3.i248, align 8, !dbg !439
  %and.iter3.i249 = and i64 %178, 1229782938247303441, !dbg !440
  %and1.iter3.i250 = and i32 %xor2.i.i161, 255, !dbg !441
  %conv.iter3.i251 = zext nneg i32 %and1.iter3.i250 to i64, !dbg !442
  %mul.iter3.i252 = mul i64 %and.iter3.i249, %conv.iter3.i251, !dbg !443
  %shr.iter3.i253 = lshr i64 %178, 1, !dbg !444
  %and3.iter3.i254 = and i64 %shr.iter3.i253, 1229782938247303441, !dbg !445
  %shr4.iter3.i255 = lshr i32 %xor2.i.i161, 8, !dbg !446
  %and5.iter3.i256 = and i32 %shr4.iter3.i255, 15, !dbg !447
  %conv6.iter3.i257 = zext nneg i32 %and5.iter3.i256 to i64, !dbg !448
  %mul7.iter3.i258 = mul nuw i64 %and3.iter3.i254, %conv6.iter3.i257, !dbg !449
  %xor.iter3.i259 = xor i64 %mul.iter3.i252, %mul7.iter3.i258, !dbg !450
  %arrayidx8.iter3.i260 = getelementptr inbounds nuw i64, ptr %add.ptr.iter8, i32 3, !dbg !451
  %179 = load i64, ptr %arrayidx8.iter3.i260, align 8, !dbg !451
  %shr9.iter3.i261 = lshr i64 %179, 2, !dbg !452
  %and10.iter3.i262 = and i64 %shr9.iter3.i261, 1229782938247303441, !dbg !453
  %shr11.iter3.i263 = lshr i32 %xor2.i.i161, 16, !dbg !454
  %and12.iter3.i264 = and i32 %shr11.iter3.i263, 15, !dbg !455
  %conv13.iter3.i265 = zext nneg i32 %and12.iter3.i264 to i64, !dbg !456
  %mul14.iter3.i266 = mul nuw i64 %and10.iter3.i262, %conv13.iter3.i265, !dbg !457
  %xor15.iter3.i267 = xor i64 %xor.iter3.i259, %mul14.iter3.i266, !dbg !458
  %arrayidx16.iter3.i268 = getelementptr inbounds nuw i64, ptr %add.ptr.iter8, i32 3, !dbg !459
  %180 = load i64, ptr %arrayidx16.iter3.i268, align 8, !dbg !459
  %shr17.iter3.i269 = lshr i64 %180, 3, !dbg !460
  %and18.iter3.i270 = and i64 %shr17.iter3.i269, 1229782938247303441, !dbg !461
  %shr19.iter3.i271 = lshr i32 %xor2.i.i161, 24, !dbg !462
  %and20.iter3.i272 = and i32 %shr19.iter3.i271, 15, !dbg !463
  %conv21.iter3.i273 = zext nneg i32 %and20.iter3.i272 to i64, !dbg !464
  %mul22.iter3.i274 = mul nuw i64 %and18.iter3.i270, %conv21.iter3.i273, !dbg !465
  %xor23.iter3.i275 = xor i64 %xor15.iter3.i267, %mul22.iter3.i274, !dbg !466
  %arrayidx24.iter3.i276 = getelementptr inbounds nuw i64, ptr %add.ptr13.iter8, i32 3, !dbg !468
  %181 = load i64, ptr %arrayidx24.iter3.i276, align 8, !dbg !467
  %xor25.iter3.i277 = xor i64 %181, %xor23.iter3.i275, !dbg !467
  store i64 %xor25.iter3.i277, ptr %arrayidx24.iter3.i276, align 8, !dbg !467
    #dbg_value(i32 undef, !147, !DIExpression(), !438)
    #dbg_value(i32 undef, !147, !DIExpression(), !438)
  %arrayidx.iter4.i278 = getelementptr inbounds nuw i64, ptr %add.ptr.iter8, i32 4, !dbg !439
  %182 = load i64, ptr %arrayidx.iter4.i278, align 8, !dbg !439
  %and.iter4.i279 = and i64 %182, 1229782938247303441, !dbg !440
  %and1.iter4.i280 = and i32 %xor2.i.i161, 255, !dbg !441
  %conv.iter4.i281 = zext nneg i32 %and1.iter4.i280 to i64, !dbg !442
  %mul.iter4.i282 = mul i64 %and.iter4.i279, %conv.iter4.i281, !dbg !443
  %shr.iter4.i283 = lshr i64 %182, 1, !dbg !444
  %and3.iter4.i284 = and i64 %shr.iter4.i283, 1229782938247303441, !dbg !445
  %shr4.iter4.i285 = lshr i32 %xor2.i.i161, 8, !dbg !446
  %and5.iter4.i286 = and i32 %shr4.iter4.i285, 15, !dbg !447
  %conv6.iter4.i287 = zext nneg i32 %and5.iter4.i286 to i64, !dbg !448
  %mul7.iter4.i288 = mul nuw i64 %and3.iter4.i284, %conv6.iter4.i287, !dbg !449
  %xor.iter4.i289 = xor i64 %mul.iter4.i282, %mul7.iter4.i288, !dbg !450
  %arrayidx8.iter4.i290 = getelementptr inbounds nuw i64, ptr %add.ptr.iter8, i32 4, !dbg !451
  %183 = load i64, ptr %arrayidx8.iter4.i290, align 8, !dbg !451
  %shr9.iter4.i291 = lshr i64 %183, 2, !dbg !452
  %and10.iter4.i292 = and i64 %shr9.iter4.i291, 1229782938247303441, !dbg !453
  %shr11.iter4.i293 = lshr i32 %xor2.i.i161, 16, !dbg !454
  %and12.iter4.i294 = and i32 %shr11.iter4.i293, 15, !dbg !455
  %conv13.iter4.i295 = zext nneg i32 %and12.iter4.i294 to i64, !dbg !456
  %mul14.iter4.i296 = mul nuw i64 %and10.iter4.i292, %conv13.iter4.i295, !dbg !457
  %xor15.iter4.i297 = xor i64 %xor.iter4.i289, %mul14.iter4.i296, !dbg !458
  %arrayidx16.iter4.i298 = getelementptr inbounds nuw i64, ptr %add.ptr.iter8, i32 4, !dbg !459
  %184 = load i64, ptr %arrayidx16.iter4.i298, align 8, !dbg !459
  %shr17.iter4.i299 = lshr i64 %184, 3, !dbg !460
  %and18.iter4.i300 = and i64 %shr17.iter4.i299, 1229782938247303441, !dbg !461
  %shr19.iter4.i301 = lshr i32 %xor2.i.i161, 24, !dbg !462
  %and20.iter4.i302 = and i32 %shr19.iter4.i301, 15, !dbg !463
  %conv21.iter4.i303 = zext nneg i32 %and20.iter4.i302 to i64, !dbg !464
  %mul22.iter4.i304 = mul nuw i64 %and18.iter4.i300, %conv21.iter4.i303, !dbg !465
  %xor23.iter4.i305 = xor i64 %xor15.iter4.i297, %mul22.iter4.i304, !dbg !466
  %arrayidx24.iter4.i306 = getelementptr inbounds nuw i64, ptr %add.ptr13.iter8, i32 4, !dbg !468
  %185 = load i64, ptr %arrayidx24.iter4.i306, align 8, !dbg !467
  %xor25.iter4.i307 = xor i64 %185, %xor23.iter4.i305, !dbg !467
  store i64 %xor25.iter4.i307, ptr %arrayidx24.iter4.i306, align 8, !dbg !467
    #dbg_value(i32 undef, !147, !DIExpression(), !438)
  %add14.iter8 = add nuw nsw i32 %k.01.iter8, 1, !dbg !108
    #dbg_value(i32 undef, !95, !DIExpression(), !99)
  %exitcond.not.iter8 = icmp eq i32 %add14.iter8, %bs_mat_cols, !dbg !109
  br i1 %exitcond.not.iter8, label %for.inc15.iter8, label %for.body6.iter8, !dbg !110, !llvm.loop !111

for.inc15.iter8:                                  ; preds = %for.body6.iter8
  %inc.iter8 = add nuw nsw i32 %c.02.iter8, 1, !dbg !114
    #dbg_value(i32 undef, !89, !DIExpression(), !93)
  %exitcond1.not.iter8 = icmp eq i32 %inc.iter8, 78, !dbg !115
  br i1 %exitcond1.not.iter8, label %for.inc17.iter8, label %for.cond4.preheader.iter8, !dbg !94, !llvm.loop !116

for.inc17.iter8:                                  ; preds = %for.inc15.iter8
    #dbg_value(i32 undef, !85, !DIExpression(), !87)
  br label %iter_8_end

for.cond4.preheader.iter8:                        ; preds = %for.inc15.iter8, %for.cond1.preheader.iter8
  %c.02.iter8 = phi i32 [ 0, %for.cond1.preheader.iter8 ], [ %inc.iter8, %for.inc15.iter8 ]
    #dbg_value(i32 undef, !89, !DIExpression(), !93)
    #dbg_value(i32 0, !95, !DIExpression(), !99)
  br label %for.body6.iter8, !dbg !110

iter_8_end:                                       ; preds = %for.inc17.iter8
  br label %iter_9_start

iter_9_start:                                     ; preds = %iter_8_end
  br label %for.cond1.preheader.iter9

for.cond1.preheader.iter9:                        ; preds = %iter_9_start
    #dbg_value(i32 undef, !85, !DIExpression(), !87)
    #dbg_value(i32 0, !89, !DIExpression(), !93)
  br label %for.cond4.preheader.iter9, !dbg !94

for.body6.iter9:                                  ; preds = %for.cond4.preheader.iter9, %for.body6.iter9
  %k.01.iter9 = phi i32 [ 0, %for.cond4.preheader.iter9 ], [ %add14.iter9, %for.body6.iter9 ]
    #dbg_value(i32 undef, !95, !DIExpression(), !99)
  %mul.iter9 = mul nuw nsw i32 %c.02.iter9, %bs_mat_cols, !dbg !100
  %add.iter9 = add nuw nsw i32 %mul.iter9, %k.01.iter9, !dbg !103
  %add.ptr.idx.iter9 = mul nuw nsw i32 %add.iter9, 40, !dbg !104
  %add.ptr.iter9 = getelementptr inbounds nuw i8, ptr %bs_mat, i32 %add.ptr.idx.iter9, !dbg !104
  %186 = getelementptr i8, ptr %mat, i32 702, !dbg !105
  %arrayidx.iter9 = getelementptr i8, ptr %186, i32 %c.02.iter9, !dbg !105
  %187 = load i8, ptr %arrayidx.iter9, align 1, !dbg !105
  %mul10.iter9 = mul nuw nsw i32 9, %bs_mat_cols, !dbg !118
  %add11.iter9 = add nuw nsw i32 %mul10.iter9, %k.01.iter9, !dbg !106
  %add.ptr13.idx.iter9 = mul nuw nsw i32 %add11.iter9, 40, !dbg !107
  %add.ptr13.iter9 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr13.idx.iter9, !dbg !107
    #dbg_value(i32 5, !119, !DIExpression(), !469)
    #dbg_value(ptr %add.ptr.iter9, !126, !DIExpression(), !469)
    #dbg_value(i8 %187, !127, !DIExpression(), !469)
    #dbg_value(ptr %add.ptr13.iter9, !128, !DIExpression(), !469)
    #dbg_value(i8 %187, !129, !DIExpression(), !471)
  %conv.i.i = zext i8 %187 to i32, !dbg !473
  %mul.i.i = mul i32 %conv.i.i, 134480385, !dbg !474
    #dbg_value(i32 %mul.i.i, !138, !DIExpression(), !471)
    #dbg_value(i32 -252645136, !139, !DIExpression(), !471)
  %and.i.i = and i32 %mul.i.i, -252645136, !dbg !475
    #dbg_value(i32 %and.i.i, !141, !DIExpression(), !471)
  %shr.i.i = lshr exact i32 %and.i.i, 4, !dbg !476
  %shr1.i.i = lshr exact i32 %and.i.i, 3, !dbg !477
  %188 = xor i32 %shr.i.i, %shr1.i.i, !dbg !478
  %xor2.i.i = xor i32 %188, %mul.i.i, !dbg !478
    #dbg_value(i32 %xor2.i.i, !145, !DIExpression(), !469)
    #dbg_value(i64 1229782938247303441, !146, !DIExpression(), !469)
    #dbg_value(i32 0, !147, !DIExpression(), !479)
    #dbg_value(i32 undef, !147, !DIExpression(), !479)
  %189 = load i64, ptr %add.ptr.iter9, align 8, !dbg !480
  %and.iter0.i = and i64 %189, 1229782938247303441, !dbg !481
  %and1.iter0.i = and i32 %xor2.i.i, 255, !dbg !482
  %conv.iter0.i = zext nneg i32 %and1.iter0.i to i64, !dbg !483
  %mul.iter0.i = mul i64 %and.iter0.i, %conv.iter0.i, !dbg !484
  %shr.iter0.i = lshr i64 %189, 1, !dbg !485
  %and3.iter0.i = and i64 %shr.iter0.i, 1229782938247303441, !dbg !486
  %shr4.iter0.i = lshr i32 %xor2.i.i, 8, !dbg !487
  %and5.iter0.i = and i32 %shr4.iter0.i, 15, !dbg !488
  %conv6.iter0.i = zext nneg i32 %and5.iter0.i to i64, !dbg !489
  %mul7.iter0.i = mul nuw i64 %and3.iter0.i, %conv6.iter0.i, !dbg !490
  %xor.iter0.i = xor i64 %mul.iter0.i, %mul7.iter0.i, !dbg !491
  %190 = load i64, ptr %add.ptr.iter9, align 8, !dbg !492
  %shr9.iter0.i = lshr i64 %190, 2, !dbg !493
  %and10.iter0.i = and i64 %shr9.iter0.i, 1229782938247303441, !dbg !494
  %shr11.iter0.i = lshr i32 %xor2.i.i, 16, !dbg !495
  %and12.iter0.i = and i32 %shr11.iter0.i, 15, !dbg !496
  %conv13.iter0.i = zext nneg i32 %and12.iter0.i to i64, !dbg !497
  %mul14.iter0.i = mul nuw i64 %and10.iter0.i, %conv13.iter0.i, !dbg !498
  %xor15.iter0.i = xor i64 %xor.iter0.i, %mul14.iter0.i, !dbg !499
  %191 = load i64, ptr %add.ptr.iter9, align 8, !dbg !500
  %shr17.iter0.i = lshr i64 %191, 3, !dbg !501
  %and18.iter0.i = and i64 %shr17.iter0.i, 1229782938247303441, !dbg !502
  %shr19.iter0.i = lshr i32 %xor2.i.i, 24, !dbg !503
  %and20.iter0.i = and i32 %shr19.iter0.i, 15, !dbg !504
  %conv21.iter0.i = zext nneg i32 %and20.iter0.i to i64, !dbg !505
  %mul22.iter0.i = mul nuw i64 %and18.iter0.i, %conv21.iter0.i, !dbg !506
  %xor23.iter0.i = xor i64 %xor15.iter0.i, %mul22.iter0.i, !dbg !507
  %192 = load i64, ptr %add.ptr13.iter9, align 8, !dbg !508
  %xor25.iter0.i = xor i64 %192, %xor23.iter0.i, !dbg !508
  store i64 %xor25.iter0.i, ptr %add.ptr13.iter9, align 8, !dbg !508
    #dbg_value(i32 undef, !147, !DIExpression(), !479)
    #dbg_value(i32 undef, !147, !DIExpression(), !479)
  %arrayidx.iter1.i = getelementptr inbounds nuw i64, ptr %add.ptr.iter9, i32 1, !dbg !480
  %193 = load i64, ptr %arrayidx.iter1.i, align 8, !dbg !480
  %and.iter1.i = and i64 %193, 1229782938247303441, !dbg !481
  %and1.iter1.i = and i32 %xor2.i.i, 255, !dbg !482
  %conv.iter1.i = zext nneg i32 %and1.iter1.i to i64, !dbg !483
  %mul.iter1.i = mul i64 %and.iter1.i, %conv.iter1.i, !dbg !484
  %shr.iter1.i = lshr i64 %193, 1, !dbg !485
  %and3.iter1.i = and i64 %shr.iter1.i, 1229782938247303441, !dbg !486
  %shr4.iter1.i = lshr i32 %xor2.i.i, 8, !dbg !487
  %and5.iter1.i = and i32 %shr4.iter1.i, 15, !dbg !488
  %conv6.iter1.i = zext nneg i32 %and5.iter1.i to i64, !dbg !489
  %mul7.iter1.i = mul nuw i64 %and3.iter1.i, %conv6.iter1.i, !dbg !490
  %xor.iter1.i = xor i64 %mul.iter1.i, %mul7.iter1.i, !dbg !491
  %arrayidx8.iter1.i = getelementptr inbounds nuw i64, ptr %add.ptr.iter9, i32 1, !dbg !492
  %194 = load i64, ptr %arrayidx8.iter1.i, align 8, !dbg !492
  %shr9.iter1.i = lshr i64 %194, 2, !dbg !493
  %and10.iter1.i = and i64 %shr9.iter1.i, 1229782938247303441, !dbg !494
  %shr11.iter1.i = lshr i32 %xor2.i.i, 16, !dbg !495
  %and12.iter1.i = and i32 %shr11.iter1.i, 15, !dbg !496
  %conv13.iter1.i = zext nneg i32 %and12.iter1.i to i64, !dbg !497
  %mul14.iter1.i = mul nuw i64 %and10.iter1.i, %conv13.iter1.i, !dbg !498
  %xor15.iter1.i = xor i64 %xor.iter1.i, %mul14.iter1.i, !dbg !499
  %arrayidx16.iter1.i = getelementptr inbounds nuw i64, ptr %add.ptr.iter9, i32 1, !dbg !500
  %195 = load i64, ptr %arrayidx16.iter1.i, align 8, !dbg !500
  %shr17.iter1.i = lshr i64 %195, 3, !dbg !501
  %and18.iter1.i = and i64 %shr17.iter1.i, 1229782938247303441, !dbg !502
  %shr19.iter1.i = lshr i32 %xor2.i.i, 24, !dbg !503
  %and20.iter1.i = and i32 %shr19.iter1.i, 15, !dbg !504
  %conv21.iter1.i = zext nneg i32 %and20.iter1.i to i64, !dbg !505
  %mul22.iter1.i = mul nuw i64 %and18.iter1.i, %conv21.iter1.i, !dbg !506
  %xor23.iter1.i = xor i64 %xor15.iter1.i, %mul22.iter1.i, !dbg !507
  %arrayidx24.iter1.i = getelementptr inbounds nuw i64, ptr %add.ptr13.iter9, i32 1, !dbg !509
  %196 = load i64, ptr %arrayidx24.iter1.i, align 8, !dbg !508
  %xor25.iter1.i = xor i64 %196, %xor23.iter1.i, !dbg !508
  store i64 %xor25.iter1.i, ptr %arrayidx24.iter1.i, align 8, !dbg !508
    #dbg_value(i32 undef, !147, !DIExpression(), !479)
    #dbg_value(i32 undef, !147, !DIExpression(), !479)
  %arrayidx.iter2.i = getelementptr inbounds nuw i64, ptr %add.ptr.iter9, i32 2, !dbg !480
  %197 = load i64, ptr %arrayidx.iter2.i, align 8, !dbg !480
  %and.iter2.i = and i64 %197, 1229782938247303441, !dbg !481
  %and1.iter2.i = and i32 %xor2.i.i, 255, !dbg !482
  %conv.iter2.i = zext nneg i32 %and1.iter2.i to i64, !dbg !483
  %mul.iter2.i = mul i64 %and.iter2.i, %conv.iter2.i, !dbg !484
  %shr.iter2.i = lshr i64 %197, 1, !dbg !485
  %and3.iter2.i = and i64 %shr.iter2.i, 1229782938247303441, !dbg !486
  %shr4.iter2.i = lshr i32 %xor2.i.i, 8, !dbg !487
  %and5.iter2.i = and i32 %shr4.iter2.i, 15, !dbg !488
  %conv6.iter2.i = zext nneg i32 %and5.iter2.i to i64, !dbg !489
  %mul7.iter2.i = mul nuw i64 %and3.iter2.i, %conv6.iter2.i, !dbg !490
  %xor.iter2.i = xor i64 %mul.iter2.i, %mul7.iter2.i, !dbg !491
  %arrayidx8.iter2.i = getelementptr inbounds nuw i64, ptr %add.ptr.iter9, i32 2, !dbg !492
  %198 = load i64, ptr %arrayidx8.iter2.i, align 8, !dbg !492
  %shr9.iter2.i = lshr i64 %198, 2, !dbg !493
  %and10.iter2.i = and i64 %shr9.iter2.i, 1229782938247303441, !dbg !494
  %shr11.iter2.i = lshr i32 %xor2.i.i, 16, !dbg !495
  %and12.iter2.i = and i32 %shr11.iter2.i, 15, !dbg !496
  %conv13.iter2.i = zext nneg i32 %and12.iter2.i to i64, !dbg !497
  %mul14.iter2.i = mul nuw i64 %and10.iter2.i, %conv13.iter2.i, !dbg !498
  %xor15.iter2.i = xor i64 %xor.iter2.i, %mul14.iter2.i, !dbg !499
  %arrayidx16.iter2.i = getelementptr inbounds nuw i64, ptr %add.ptr.iter9, i32 2, !dbg !500
  %199 = load i64, ptr %arrayidx16.iter2.i, align 8, !dbg !500
  %shr17.iter2.i = lshr i64 %199, 3, !dbg !501
  %and18.iter2.i = and i64 %shr17.iter2.i, 1229782938247303441, !dbg !502
  %shr19.iter2.i = lshr i32 %xor2.i.i, 24, !dbg !503
  %and20.iter2.i = and i32 %shr19.iter2.i, 15, !dbg !504
  %conv21.iter2.i = zext nneg i32 %and20.iter2.i to i64, !dbg !505
  %mul22.iter2.i = mul nuw i64 %and18.iter2.i, %conv21.iter2.i, !dbg !506
  %xor23.iter2.i = xor i64 %xor15.iter2.i, %mul22.iter2.i, !dbg !507
  %arrayidx24.iter2.i = getelementptr inbounds nuw i64, ptr %add.ptr13.iter9, i32 2, !dbg !509
  %200 = load i64, ptr %arrayidx24.iter2.i, align 8, !dbg !508
  %xor25.iter2.i = xor i64 %200, %xor23.iter2.i, !dbg !508
  store i64 %xor25.iter2.i, ptr %arrayidx24.iter2.i, align 8, !dbg !508
    #dbg_value(i32 undef, !147, !DIExpression(), !479)
    #dbg_value(i32 undef, !147, !DIExpression(), !479)
  %arrayidx.iter3.i = getelementptr inbounds nuw i64, ptr %add.ptr.iter9, i32 3, !dbg !480
  %201 = load i64, ptr %arrayidx.iter3.i, align 8, !dbg !480
  %and.iter3.i = and i64 %201, 1229782938247303441, !dbg !481
  %and1.iter3.i = and i32 %xor2.i.i, 255, !dbg !482
  %conv.iter3.i = zext nneg i32 %and1.iter3.i to i64, !dbg !483
  %mul.iter3.i = mul i64 %and.iter3.i, %conv.iter3.i, !dbg !484
  %shr.iter3.i = lshr i64 %201, 1, !dbg !485
  %and3.iter3.i = and i64 %shr.iter3.i, 1229782938247303441, !dbg !486
  %shr4.iter3.i = lshr i32 %xor2.i.i, 8, !dbg !487
  %and5.iter3.i = and i32 %shr4.iter3.i, 15, !dbg !488
  %conv6.iter3.i = zext nneg i32 %and5.iter3.i to i64, !dbg !489
  %mul7.iter3.i = mul nuw i64 %and3.iter3.i, %conv6.iter3.i, !dbg !490
  %xor.iter3.i = xor i64 %mul.iter3.i, %mul7.iter3.i, !dbg !491
  %arrayidx8.iter3.i = getelementptr inbounds nuw i64, ptr %add.ptr.iter9, i32 3, !dbg !492
  %202 = load i64, ptr %arrayidx8.iter3.i, align 8, !dbg !492
  %shr9.iter3.i = lshr i64 %202, 2, !dbg !493
  %and10.iter3.i = and i64 %shr9.iter3.i, 1229782938247303441, !dbg !494
  %shr11.iter3.i = lshr i32 %xor2.i.i, 16, !dbg !495
  %and12.iter3.i = and i32 %shr11.iter3.i, 15, !dbg !496
  %conv13.iter3.i = zext nneg i32 %and12.iter3.i to i64, !dbg !497
  %mul14.iter3.i = mul nuw i64 %and10.iter3.i, %conv13.iter3.i, !dbg !498
  %xor15.iter3.i = xor i64 %xor.iter3.i, %mul14.iter3.i, !dbg !499
  %arrayidx16.iter3.i = getelementptr inbounds nuw i64, ptr %add.ptr.iter9, i32 3, !dbg !500
  %203 = load i64, ptr %arrayidx16.iter3.i, align 8, !dbg !500
  %shr17.iter3.i = lshr i64 %203, 3, !dbg !501
  %and18.iter3.i = and i64 %shr17.iter3.i, 1229782938247303441, !dbg !502
  %shr19.iter3.i = lshr i32 %xor2.i.i, 24, !dbg !503
  %and20.iter3.i = and i32 %shr19.iter3.i, 15, !dbg !504
  %conv21.iter3.i = zext nneg i32 %and20.iter3.i to i64, !dbg !505
  %mul22.iter3.i = mul nuw i64 %and18.iter3.i, %conv21.iter3.i, !dbg !506
  %xor23.iter3.i = xor i64 %xor15.iter3.i, %mul22.iter3.i, !dbg !507
  %arrayidx24.iter3.i = getelementptr inbounds nuw i64, ptr %add.ptr13.iter9, i32 3, !dbg !509
  %204 = load i64, ptr %arrayidx24.iter3.i, align 8, !dbg !508
  %xor25.iter3.i = xor i64 %204, %xor23.iter3.i, !dbg !508
  store i64 %xor25.iter3.i, ptr %arrayidx24.iter3.i, align 8, !dbg !508
    #dbg_value(i32 undef, !147, !DIExpression(), !479)
    #dbg_value(i32 undef, !147, !DIExpression(), !479)
  %arrayidx.iter4.i = getelementptr inbounds nuw i64, ptr %add.ptr.iter9, i32 4, !dbg !480
  %205 = load i64, ptr %arrayidx.iter4.i, align 8, !dbg !480
  %and.iter4.i = and i64 %205, 1229782938247303441, !dbg !481
  %and1.iter4.i = and i32 %xor2.i.i, 255, !dbg !482
  %conv.iter4.i = zext nneg i32 %and1.iter4.i to i64, !dbg !483
  %mul.iter4.i = mul i64 %and.iter4.i, %conv.iter4.i, !dbg !484
  %shr.iter4.i = lshr i64 %205, 1, !dbg !485
  %and3.iter4.i = and i64 %shr.iter4.i, 1229782938247303441, !dbg !486
  %shr4.iter4.i = lshr i32 %xor2.i.i, 8, !dbg !487
  %and5.iter4.i = and i32 %shr4.iter4.i, 15, !dbg !488
  %conv6.iter4.i = zext nneg i32 %and5.iter4.i to i64, !dbg !489
  %mul7.iter4.i = mul nuw i64 %and3.iter4.i, %conv6.iter4.i, !dbg !490
  %xor.iter4.i = xor i64 %mul.iter4.i, %mul7.iter4.i, !dbg !491
  %arrayidx8.iter4.i = getelementptr inbounds nuw i64, ptr %add.ptr.iter9, i32 4, !dbg !492
  %206 = load i64, ptr %arrayidx8.iter4.i, align 8, !dbg !492
  %shr9.iter4.i = lshr i64 %206, 2, !dbg !493
  %and10.iter4.i = and i64 %shr9.iter4.i, 1229782938247303441, !dbg !494
  %shr11.iter4.i = lshr i32 %xor2.i.i, 16, !dbg !495
  %and12.iter4.i = and i32 %shr11.iter4.i, 15, !dbg !496
  %conv13.iter4.i = zext nneg i32 %and12.iter4.i to i64, !dbg !497
  %mul14.iter4.i = mul nuw i64 %and10.iter4.i, %conv13.iter4.i, !dbg !498
  %xor15.iter4.i = xor i64 %xor.iter4.i, %mul14.iter4.i, !dbg !499
  %arrayidx16.iter4.i = getelementptr inbounds nuw i64, ptr %add.ptr.iter9, i32 4, !dbg !500
  %207 = load i64, ptr %arrayidx16.iter4.i, align 8, !dbg !500
  %shr17.iter4.i = lshr i64 %207, 3, !dbg !501
  %and18.iter4.i = and i64 %shr17.iter4.i, 1229782938247303441, !dbg !502
  %shr19.iter4.i = lshr i32 %xor2.i.i, 24, !dbg !503
  %and20.iter4.i = and i32 %shr19.iter4.i, 15, !dbg !504
  %conv21.iter4.i = zext nneg i32 %and20.iter4.i to i64, !dbg !505
  %mul22.iter4.i = mul nuw i64 %and18.iter4.i, %conv21.iter4.i, !dbg !506
  %xor23.iter4.i = xor i64 %xor15.iter4.i, %mul22.iter4.i, !dbg !507
  %arrayidx24.iter4.i = getelementptr inbounds nuw i64, ptr %add.ptr13.iter9, i32 4, !dbg !509
  %208 = load i64, ptr %arrayidx24.iter4.i, align 8, !dbg !508
  %xor25.iter4.i = xor i64 %208, %xor23.iter4.i, !dbg !508
  store i64 %xor25.iter4.i, ptr %arrayidx24.iter4.i, align 8, !dbg !508
    #dbg_value(i32 undef, !147, !DIExpression(), !479)
  %add14.iter9 = add nuw nsw i32 %k.01.iter9, 1, !dbg !108
    #dbg_value(i32 undef, !95, !DIExpression(), !99)
  %exitcond.not.iter9 = icmp eq i32 %add14.iter9, %bs_mat_cols, !dbg !109
  br i1 %exitcond.not.iter9, label %for.inc15.iter9, label %for.body6.iter9, !dbg !110, !llvm.loop !111

for.inc15.iter9:                                  ; preds = %for.body6.iter9
  %inc.iter9 = add nuw nsw i32 %c.02.iter9, 1, !dbg !114
    #dbg_value(i32 undef, !89, !DIExpression(), !93)
  %exitcond1.not.iter9 = icmp eq i32 %inc.iter9, 78, !dbg !115
  br i1 %exitcond1.not.iter9, label %for.inc17.iter9, label %for.cond4.preheader.iter9, !dbg !94, !llvm.loop !116

for.inc17.iter9:                                  ; preds = %for.inc15.iter9
    #dbg_value(i32 undef, !85, !DIExpression(), !87)
  br label %iter_9_end

for.cond4.preheader.iter9:                        ; preds = %for.inc15.iter9, %for.cond1.preheader.iter9
  %c.02.iter9 = phi i32 [ 0, %for.cond1.preheader.iter9 ], [ %inc.iter9, %for.inc15.iter9 ]
    #dbg_value(i32 undef, !89, !DIExpression(), !93)
    #dbg_value(i32 0, !95, !DIExpression(), !99)
  br label %for.body6.iter9, !dbg !110

iter_9_end:                                       ; preds = %for.inc17.iter9
  br label %for.end19
}

attributes #0 = { inlinehint nounwind "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-thumb-mode" }

!llvm.dbg.cu = !{!35, !37, !2}
!llvm.ident = !{!66, !66, !66}
!llvm.module.flags = !{!67, !68, !69, !70}

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
!66 = !{!"Ubuntu clang version 20.1.2 (0ubuntu1~24.04.2)"}
!67 = !{i32 2, !"Debug Info Version", i32 3}
!68 = !{i32 1, !"wchar_size", i32 4}
!69 = !{i32 1, !"min_enum_size", i32 4}
!70 = !{i32 1, !"Code Model", i32 1}
!71 = distinct !DISubprogram(name: "mul_add_mat_x_m_mat", scope: !72, file: !72, line: 61, type: !73, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !37, retainedNodes: !58)
!72 = !DIFile(filename: "../../../src/generic/generic_arithmetic.h", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!73 = !DISubroutineType(types: !74)
!74 = !{null, !75, !19, !76, !39, !75, !75, !75}
!75 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 32)
!77 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !71, file: !72, line: 61, type: !75)
!78 = !DILocation(line: 0, scope: !71)
!79 = !DILocalVariable(name: "mat", arg: 2, scope: !71, file: !72, line: 61, type: !19)
!80 = !DILocalVariable(name: "bs_mat", arg: 3, scope: !71, file: !72, line: 61, type: !76)
!81 = !DILocalVariable(name: "acc", arg: 4, scope: !71, file: !72, line: 61, type: !39)
!82 = !DILocalVariable(name: "mat_rows", arg: 5, scope: !71, file: !72, line: 62, type: !75)
!83 = !DILocalVariable(name: "mat_cols", arg: 6, scope: !71, file: !72, line: 62, type: !75)
!84 = !DILocalVariable(name: "bs_mat_cols", arg: 7, scope: !71, file: !72, line: 62, type: !75)
!85 = !DILocalVariable(name: "r", scope: !86, file: !72, line: 64, type: !10)
!86 = distinct !DILexicalBlock(scope: !71, file: !72, line: 64, column: 5)
!87 = !DILocation(line: 0, scope: !86)
!88 = !DILocation(line: 71, column: 1, scope: !71)
!89 = !DILocalVariable(name: "c", scope: !90, file: !72, line: 65, type: !10)
!90 = distinct !DILexicalBlock(scope: !91, file: !72, line: 65, column: 9)
!91 = distinct !DILexicalBlock(scope: !92, file: !72, line: 64, column: 40)
!92 = distinct !DILexicalBlock(scope: !86, file: !72, line: 64, column: 5)
!93 = !DILocation(line: 0, scope: !90)
!94 = !DILocation(line: 65, column: 9, scope: !90)
!95 = !DILocalVariable(name: "k", scope: !96, file: !72, line: 66, type: !10)
!96 = distinct !DILexicalBlock(scope: !97, file: !72, line: 66, column: 13)
!97 = distinct !DILexicalBlock(scope: !98, file: !72, line: 65, column: 44)
!98 = distinct !DILexicalBlock(scope: !90, file: !72, line: 65, column: 9)
!99 = !DILocation(line: 0, scope: !96)
!100 = !DILocation(line: 67, column: 70, scope: !101)
!101 = distinct !DILexicalBlock(scope: !102, file: !72, line: 66, column: 54)
!102 = distinct !DILexicalBlock(scope: !96, file: !72, line: 66, column: 13)
!103 = !DILocation(line: 67, column: 84, scope: !101)
!104 = !DILocation(line: 67, column: 51, scope: !101)
!105 = !DILocation(line: 67, column: 90, scope: !101)
!106 = !DILocation(line: 67, column: 150, scope: !101)
!107 = !DILocation(line: 67, column: 117, scope: !101)
!108 = !DILocation(line: 66, column: 48, scope: !102)
!109 = !DILocation(line: 66, column: 31, scope: !102)
!110 = !DILocation(line: 66, column: 13, scope: !96)
!111 = distinct !{!111, !110, !112, !113}
!112 = !DILocation(line: 68, column: 13, scope: !96)
!113 = !{!"llvm.loop.mustprogress"}
!114 = !DILocation(line: 65, column: 40, scope: !98)
!115 = !DILocation(line: 65, column: 27, scope: !98)
!116 = distinct !{!116, !94, !117, !113}
!117 = !DILocation(line: 69, column: 9, scope: !90)
!118 = !DILocation(line: 67, column: 136, scope: !101)
!119 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !120, file: !121, line: 31, type: !10)
!120 = distinct !DISubprogram(name: "m_vec_mul_add", scope: !121, file: !121, line: 31, type: !122, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !37, retainedNodes: !58)
!121 = !DIFile(filename: "../../../src/generic/arithmetic_fixed.h", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!122 = !DISubroutineType(types: !123)
!123 = !{null, !10, !76, !15, !39}
!124 = !DILocation(line: 0, scope: !120, inlinedAt: !125)
!125 = distinct !DILocation(line: 67, column: 17, scope: !101)
!126 = !DILocalVariable(name: "in", arg: 2, scope: !120, file: !121, line: 31, type: !76)
!127 = !DILocalVariable(name: "a", arg: 3, scope: !120, file: !121, line: 31, type: !15)
!128 = !DILocalVariable(name: "acc", arg: 4, scope: !120, file: !121, line: 31, type: !39)
!129 = !DILocalVariable(name: "b", arg: 1, scope: !130, file: !131, line: 129, type: !41)
!130 = distinct !DISubprogram(name: "mul_table", scope: !131, file: !131, line: 129, type: !132, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !37, retainedNodes: !58)
!131 = !DIFile(filename: "../../../src/simple_arithmetic.h", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!132 = !DISubroutineType(types: !133)
!133 = !{!16, !41}
!134 = !DILocation(line: 0, scope: !130, inlinedAt: !135)
!135 = distinct !DILocation(line: 33, column: 20, scope: !120, inlinedAt: !125)
!136 = !DILocation(line: 130, column: 19, scope: !130, inlinedAt: !135)
!137 = !DILocation(line: 130, column: 33, scope: !130, inlinedAt: !135)
!138 = !DILocalVariable(name: "x", scope: !130, file: !131, line: 130, type: !16)
!139 = !DILocalVariable(name: "high_nibble_mask", scope: !130, file: !131, line: 132, type: !16)
!140 = !DILocation(line: 134, column: 28, scope: !130, inlinedAt: !135)
!141 = !DILocalVariable(name: "high_half", scope: !130, file: !131, line: 134, type: !16)
!142 = !DILocation(line: 135, column: 28, scope: !130, inlinedAt: !135)
!143 = !DILocation(line: 135, column: 47, scope: !130, inlinedAt: !135)
!144 = !DILocation(line: 135, column: 34, scope: !130, inlinedAt: !135)
!145 = !DILocalVariable(name: "tab", scope: !120, file: !121, line: 33, type: !16)
!146 = !DILocalVariable(name: "lsb_ask", scope: !120, file: !121, line: 35, type: !5)
!147 = !DILocalVariable(name: "i", scope: !148, file: !121, line: 37, type: !10)
!148 = distinct !DILexicalBlock(scope: !120, file: !121, line: 37, column: 5)
!149 = !DILocation(line: 0, scope: !148, inlinedAt: !125)
!150 = !DILocation(line: 38, column: 21, scope: !151, inlinedAt: !125)
!151 = distinct !DILexicalBlock(scope: !152, file: !121, line: 37, column: 43)
!152 = distinct !DILexicalBlock(scope: !148, file: !121, line: 37, column: 5)
!153 = !DILocation(line: 38, column: 33, scope: !151, inlinedAt: !125)
!154 = !DILocation(line: 38, column: 51, scope: !151, inlinedAt: !125)
!155 = !DILocation(line: 38, column: 46, scope: !151, inlinedAt: !125)
!156 = !DILocation(line: 38, column: 44, scope: !151, inlinedAt: !125)
!157 = !DILocation(line: 39, column: 27, scope: !151, inlinedAt: !125)
!158 = !DILocation(line: 39, column: 33, scope: !151, inlinedAt: !125)
!159 = !DILocation(line: 39, column: 52, scope: !151, inlinedAt: !125)
!160 = !DILocation(line: 39, column: 59, scope: !151, inlinedAt: !125)
!161 = !DILocation(line: 39, column: 46, scope: !151, inlinedAt: !125)
!162 = !DILocation(line: 39, column: 44, scope: !151, inlinedAt: !125)
!163 = !DILocation(line: 39, column: 17, scope: !151, inlinedAt: !125)
!164 = !DILocation(line: 40, column: 21, scope: !151, inlinedAt: !125)
!165 = !DILocation(line: 40, column: 27, scope: !151, inlinedAt: !125)
!166 = !DILocation(line: 40, column: 33, scope: !151, inlinedAt: !125)
!167 = !DILocation(line: 40, column: 52, scope: !151, inlinedAt: !125)
!168 = !DILocation(line: 40, column: 59, scope: !151, inlinedAt: !125)
!169 = !DILocation(line: 40, column: 46, scope: !151, inlinedAt: !125)
!170 = !DILocation(line: 40, column: 44, scope: !151, inlinedAt: !125)
!171 = !DILocation(line: 40, column: 17, scope: !151, inlinedAt: !125)
!172 = !DILocation(line: 41, column: 21, scope: !151, inlinedAt: !125)
!173 = !DILocation(line: 41, column: 27, scope: !151, inlinedAt: !125)
!174 = !DILocation(line: 41, column: 33, scope: !151, inlinedAt: !125)
!175 = !DILocation(line: 41, column: 52, scope: !151, inlinedAt: !125)
!176 = !DILocation(line: 41, column: 59, scope: !151, inlinedAt: !125)
!177 = !DILocation(line: 41, column: 46, scope: !151, inlinedAt: !125)
!178 = !DILocation(line: 41, column: 44, scope: !151, inlinedAt: !125)
!179 = !DILocation(line: 41, column: 17, scope: !151, inlinedAt: !125)
!180 = !DILocation(line: 38, column: 16, scope: !151, inlinedAt: !125)
!181 = !DILocation(line: 38, column: 9, scope: !151, inlinedAt: !125)
!182 = !DILocation(line: 0, scope: !120, inlinedAt: !183)
!183 = distinct !DILocation(line: 67, column: 17, scope: !101)
!184 = !DILocation(line: 0, scope: !130, inlinedAt: !185)
!185 = distinct !DILocation(line: 33, column: 20, scope: !120, inlinedAt: !183)
!186 = !DILocation(line: 130, column: 19, scope: !130, inlinedAt: !185)
!187 = !DILocation(line: 130, column: 33, scope: !130, inlinedAt: !185)
!188 = !DILocation(line: 134, column: 28, scope: !130, inlinedAt: !185)
!189 = !DILocation(line: 135, column: 28, scope: !130, inlinedAt: !185)
!190 = !DILocation(line: 135, column: 47, scope: !130, inlinedAt: !185)
!191 = !DILocation(line: 135, column: 34, scope: !130, inlinedAt: !185)
!192 = !DILocation(line: 0, scope: !148, inlinedAt: !183)
!193 = !DILocation(line: 38, column: 21, scope: !151, inlinedAt: !183)
!194 = !DILocation(line: 38, column: 33, scope: !151, inlinedAt: !183)
!195 = !DILocation(line: 38, column: 51, scope: !151, inlinedAt: !183)
!196 = !DILocation(line: 38, column: 46, scope: !151, inlinedAt: !183)
!197 = !DILocation(line: 38, column: 44, scope: !151, inlinedAt: !183)
!198 = !DILocation(line: 39, column: 27, scope: !151, inlinedAt: !183)
!199 = !DILocation(line: 39, column: 33, scope: !151, inlinedAt: !183)
!200 = !DILocation(line: 39, column: 52, scope: !151, inlinedAt: !183)
!201 = !DILocation(line: 39, column: 59, scope: !151, inlinedAt: !183)
!202 = !DILocation(line: 39, column: 46, scope: !151, inlinedAt: !183)
!203 = !DILocation(line: 39, column: 44, scope: !151, inlinedAt: !183)
!204 = !DILocation(line: 39, column: 17, scope: !151, inlinedAt: !183)
!205 = !DILocation(line: 40, column: 21, scope: !151, inlinedAt: !183)
!206 = !DILocation(line: 40, column: 27, scope: !151, inlinedAt: !183)
!207 = !DILocation(line: 40, column: 33, scope: !151, inlinedAt: !183)
!208 = !DILocation(line: 40, column: 52, scope: !151, inlinedAt: !183)
!209 = !DILocation(line: 40, column: 59, scope: !151, inlinedAt: !183)
!210 = !DILocation(line: 40, column: 46, scope: !151, inlinedAt: !183)
!211 = !DILocation(line: 40, column: 44, scope: !151, inlinedAt: !183)
!212 = !DILocation(line: 40, column: 17, scope: !151, inlinedAt: !183)
!213 = !DILocation(line: 41, column: 21, scope: !151, inlinedAt: !183)
!214 = !DILocation(line: 41, column: 27, scope: !151, inlinedAt: !183)
!215 = !DILocation(line: 41, column: 33, scope: !151, inlinedAt: !183)
!216 = !DILocation(line: 41, column: 52, scope: !151, inlinedAt: !183)
!217 = !DILocation(line: 41, column: 59, scope: !151, inlinedAt: !183)
!218 = !DILocation(line: 41, column: 46, scope: !151, inlinedAt: !183)
!219 = !DILocation(line: 41, column: 44, scope: !151, inlinedAt: !183)
!220 = !DILocation(line: 41, column: 17, scope: !151, inlinedAt: !183)
!221 = !DILocation(line: 38, column: 16, scope: !151, inlinedAt: !183)
!222 = !DILocation(line: 38, column: 9, scope: !151, inlinedAt: !183)
!223 = !DILocation(line: 0, scope: !120, inlinedAt: !224)
!224 = distinct !DILocation(line: 67, column: 17, scope: !101)
!225 = !DILocation(line: 0, scope: !130, inlinedAt: !226)
!226 = distinct !DILocation(line: 33, column: 20, scope: !120, inlinedAt: !224)
!227 = !DILocation(line: 130, column: 19, scope: !130, inlinedAt: !226)
!228 = !DILocation(line: 130, column: 33, scope: !130, inlinedAt: !226)
!229 = !DILocation(line: 134, column: 28, scope: !130, inlinedAt: !226)
!230 = !DILocation(line: 135, column: 28, scope: !130, inlinedAt: !226)
!231 = !DILocation(line: 135, column: 47, scope: !130, inlinedAt: !226)
!232 = !DILocation(line: 135, column: 34, scope: !130, inlinedAt: !226)
!233 = !DILocation(line: 0, scope: !148, inlinedAt: !224)
!234 = !DILocation(line: 38, column: 21, scope: !151, inlinedAt: !224)
!235 = !DILocation(line: 38, column: 33, scope: !151, inlinedAt: !224)
!236 = !DILocation(line: 38, column: 51, scope: !151, inlinedAt: !224)
!237 = !DILocation(line: 38, column: 46, scope: !151, inlinedAt: !224)
!238 = !DILocation(line: 38, column: 44, scope: !151, inlinedAt: !224)
!239 = !DILocation(line: 39, column: 27, scope: !151, inlinedAt: !224)
!240 = !DILocation(line: 39, column: 33, scope: !151, inlinedAt: !224)
!241 = !DILocation(line: 39, column: 52, scope: !151, inlinedAt: !224)
!242 = !DILocation(line: 39, column: 59, scope: !151, inlinedAt: !224)
!243 = !DILocation(line: 39, column: 46, scope: !151, inlinedAt: !224)
!244 = !DILocation(line: 39, column: 44, scope: !151, inlinedAt: !224)
!245 = !DILocation(line: 39, column: 17, scope: !151, inlinedAt: !224)
!246 = !DILocation(line: 40, column: 21, scope: !151, inlinedAt: !224)
!247 = !DILocation(line: 40, column: 27, scope: !151, inlinedAt: !224)
!248 = !DILocation(line: 40, column: 33, scope: !151, inlinedAt: !224)
!249 = !DILocation(line: 40, column: 52, scope: !151, inlinedAt: !224)
!250 = !DILocation(line: 40, column: 59, scope: !151, inlinedAt: !224)
!251 = !DILocation(line: 40, column: 46, scope: !151, inlinedAt: !224)
!252 = !DILocation(line: 40, column: 44, scope: !151, inlinedAt: !224)
!253 = !DILocation(line: 40, column: 17, scope: !151, inlinedAt: !224)
!254 = !DILocation(line: 41, column: 21, scope: !151, inlinedAt: !224)
!255 = !DILocation(line: 41, column: 27, scope: !151, inlinedAt: !224)
!256 = !DILocation(line: 41, column: 33, scope: !151, inlinedAt: !224)
!257 = !DILocation(line: 41, column: 52, scope: !151, inlinedAt: !224)
!258 = !DILocation(line: 41, column: 59, scope: !151, inlinedAt: !224)
!259 = !DILocation(line: 41, column: 46, scope: !151, inlinedAt: !224)
!260 = !DILocation(line: 41, column: 44, scope: !151, inlinedAt: !224)
!261 = !DILocation(line: 41, column: 17, scope: !151, inlinedAt: !224)
!262 = !DILocation(line: 38, column: 16, scope: !151, inlinedAt: !224)
!263 = !DILocation(line: 38, column: 9, scope: !151, inlinedAt: !224)
!264 = !DILocation(line: 0, scope: !120, inlinedAt: !265)
!265 = distinct !DILocation(line: 67, column: 17, scope: !101)
!266 = !DILocation(line: 0, scope: !130, inlinedAt: !267)
!267 = distinct !DILocation(line: 33, column: 20, scope: !120, inlinedAt: !265)
!268 = !DILocation(line: 130, column: 19, scope: !130, inlinedAt: !267)
!269 = !DILocation(line: 130, column: 33, scope: !130, inlinedAt: !267)
!270 = !DILocation(line: 134, column: 28, scope: !130, inlinedAt: !267)
!271 = !DILocation(line: 135, column: 28, scope: !130, inlinedAt: !267)
!272 = !DILocation(line: 135, column: 47, scope: !130, inlinedAt: !267)
!273 = !DILocation(line: 135, column: 34, scope: !130, inlinedAt: !267)
!274 = !DILocation(line: 0, scope: !148, inlinedAt: !265)
!275 = !DILocation(line: 38, column: 21, scope: !151, inlinedAt: !265)
!276 = !DILocation(line: 38, column: 33, scope: !151, inlinedAt: !265)
!277 = !DILocation(line: 38, column: 51, scope: !151, inlinedAt: !265)
!278 = !DILocation(line: 38, column: 46, scope: !151, inlinedAt: !265)
!279 = !DILocation(line: 38, column: 44, scope: !151, inlinedAt: !265)
!280 = !DILocation(line: 39, column: 27, scope: !151, inlinedAt: !265)
!281 = !DILocation(line: 39, column: 33, scope: !151, inlinedAt: !265)
!282 = !DILocation(line: 39, column: 52, scope: !151, inlinedAt: !265)
!283 = !DILocation(line: 39, column: 59, scope: !151, inlinedAt: !265)
!284 = !DILocation(line: 39, column: 46, scope: !151, inlinedAt: !265)
!285 = !DILocation(line: 39, column: 44, scope: !151, inlinedAt: !265)
!286 = !DILocation(line: 39, column: 17, scope: !151, inlinedAt: !265)
!287 = !DILocation(line: 40, column: 21, scope: !151, inlinedAt: !265)
!288 = !DILocation(line: 40, column: 27, scope: !151, inlinedAt: !265)
!289 = !DILocation(line: 40, column: 33, scope: !151, inlinedAt: !265)
!290 = !DILocation(line: 40, column: 52, scope: !151, inlinedAt: !265)
!291 = !DILocation(line: 40, column: 59, scope: !151, inlinedAt: !265)
!292 = !DILocation(line: 40, column: 46, scope: !151, inlinedAt: !265)
!293 = !DILocation(line: 40, column: 44, scope: !151, inlinedAt: !265)
!294 = !DILocation(line: 40, column: 17, scope: !151, inlinedAt: !265)
!295 = !DILocation(line: 41, column: 21, scope: !151, inlinedAt: !265)
!296 = !DILocation(line: 41, column: 27, scope: !151, inlinedAt: !265)
!297 = !DILocation(line: 41, column: 33, scope: !151, inlinedAt: !265)
!298 = !DILocation(line: 41, column: 52, scope: !151, inlinedAt: !265)
!299 = !DILocation(line: 41, column: 59, scope: !151, inlinedAt: !265)
!300 = !DILocation(line: 41, column: 46, scope: !151, inlinedAt: !265)
!301 = !DILocation(line: 41, column: 44, scope: !151, inlinedAt: !265)
!302 = !DILocation(line: 41, column: 17, scope: !151, inlinedAt: !265)
!303 = !DILocation(line: 38, column: 16, scope: !151, inlinedAt: !265)
!304 = !DILocation(line: 38, column: 9, scope: !151, inlinedAt: !265)
!305 = !DILocation(line: 0, scope: !120, inlinedAt: !306)
!306 = distinct !DILocation(line: 67, column: 17, scope: !101)
!307 = !DILocation(line: 0, scope: !130, inlinedAt: !308)
!308 = distinct !DILocation(line: 33, column: 20, scope: !120, inlinedAt: !306)
!309 = !DILocation(line: 130, column: 19, scope: !130, inlinedAt: !308)
!310 = !DILocation(line: 130, column: 33, scope: !130, inlinedAt: !308)
!311 = !DILocation(line: 134, column: 28, scope: !130, inlinedAt: !308)
!312 = !DILocation(line: 135, column: 28, scope: !130, inlinedAt: !308)
!313 = !DILocation(line: 135, column: 47, scope: !130, inlinedAt: !308)
!314 = !DILocation(line: 135, column: 34, scope: !130, inlinedAt: !308)
!315 = !DILocation(line: 0, scope: !148, inlinedAt: !306)
!316 = !DILocation(line: 38, column: 21, scope: !151, inlinedAt: !306)
!317 = !DILocation(line: 38, column: 33, scope: !151, inlinedAt: !306)
!318 = !DILocation(line: 38, column: 51, scope: !151, inlinedAt: !306)
!319 = !DILocation(line: 38, column: 46, scope: !151, inlinedAt: !306)
!320 = !DILocation(line: 38, column: 44, scope: !151, inlinedAt: !306)
!321 = !DILocation(line: 39, column: 27, scope: !151, inlinedAt: !306)
!322 = !DILocation(line: 39, column: 33, scope: !151, inlinedAt: !306)
!323 = !DILocation(line: 39, column: 52, scope: !151, inlinedAt: !306)
!324 = !DILocation(line: 39, column: 59, scope: !151, inlinedAt: !306)
!325 = !DILocation(line: 39, column: 46, scope: !151, inlinedAt: !306)
!326 = !DILocation(line: 39, column: 44, scope: !151, inlinedAt: !306)
!327 = !DILocation(line: 39, column: 17, scope: !151, inlinedAt: !306)
!328 = !DILocation(line: 40, column: 21, scope: !151, inlinedAt: !306)
!329 = !DILocation(line: 40, column: 27, scope: !151, inlinedAt: !306)
!330 = !DILocation(line: 40, column: 33, scope: !151, inlinedAt: !306)
!331 = !DILocation(line: 40, column: 52, scope: !151, inlinedAt: !306)
!332 = !DILocation(line: 40, column: 59, scope: !151, inlinedAt: !306)
!333 = !DILocation(line: 40, column: 46, scope: !151, inlinedAt: !306)
!334 = !DILocation(line: 40, column: 44, scope: !151, inlinedAt: !306)
!335 = !DILocation(line: 40, column: 17, scope: !151, inlinedAt: !306)
!336 = !DILocation(line: 41, column: 21, scope: !151, inlinedAt: !306)
!337 = !DILocation(line: 41, column: 27, scope: !151, inlinedAt: !306)
!338 = !DILocation(line: 41, column: 33, scope: !151, inlinedAt: !306)
!339 = !DILocation(line: 41, column: 52, scope: !151, inlinedAt: !306)
!340 = !DILocation(line: 41, column: 59, scope: !151, inlinedAt: !306)
!341 = !DILocation(line: 41, column: 46, scope: !151, inlinedAt: !306)
!342 = !DILocation(line: 41, column: 44, scope: !151, inlinedAt: !306)
!343 = !DILocation(line: 41, column: 17, scope: !151, inlinedAt: !306)
!344 = !DILocation(line: 38, column: 16, scope: !151, inlinedAt: !306)
!345 = !DILocation(line: 38, column: 9, scope: !151, inlinedAt: !306)
!346 = !DILocation(line: 0, scope: !120, inlinedAt: !347)
!347 = distinct !DILocation(line: 67, column: 17, scope: !101)
!348 = !DILocation(line: 0, scope: !130, inlinedAt: !349)
!349 = distinct !DILocation(line: 33, column: 20, scope: !120, inlinedAt: !347)
!350 = !DILocation(line: 130, column: 19, scope: !130, inlinedAt: !349)
!351 = !DILocation(line: 130, column: 33, scope: !130, inlinedAt: !349)
!352 = !DILocation(line: 134, column: 28, scope: !130, inlinedAt: !349)
!353 = !DILocation(line: 135, column: 28, scope: !130, inlinedAt: !349)
!354 = !DILocation(line: 135, column: 47, scope: !130, inlinedAt: !349)
!355 = !DILocation(line: 135, column: 34, scope: !130, inlinedAt: !349)
!356 = !DILocation(line: 0, scope: !148, inlinedAt: !347)
!357 = !DILocation(line: 38, column: 21, scope: !151, inlinedAt: !347)
!358 = !DILocation(line: 38, column: 33, scope: !151, inlinedAt: !347)
!359 = !DILocation(line: 38, column: 51, scope: !151, inlinedAt: !347)
!360 = !DILocation(line: 38, column: 46, scope: !151, inlinedAt: !347)
!361 = !DILocation(line: 38, column: 44, scope: !151, inlinedAt: !347)
!362 = !DILocation(line: 39, column: 27, scope: !151, inlinedAt: !347)
!363 = !DILocation(line: 39, column: 33, scope: !151, inlinedAt: !347)
!364 = !DILocation(line: 39, column: 52, scope: !151, inlinedAt: !347)
!365 = !DILocation(line: 39, column: 59, scope: !151, inlinedAt: !347)
!366 = !DILocation(line: 39, column: 46, scope: !151, inlinedAt: !347)
!367 = !DILocation(line: 39, column: 44, scope: !151, inlinedAt: !347)
!368 = !DILocation(line: 39, column: 17, scope: !151, inlinedAt: !347)
!369 = !DILocation(line: 40, column: 21, scope: !151, inlinedAt: !347)
!370 = !DILocation(line: 40, column: 27, scope: !151, inlinedAt: !347)
!371 = !DILocation(line: 40, column: 33, scope: !151, inlinedAt: !347)
!372 = !DILocation(line: 40, column: 52, scope: !151, inlinedAt: !347)
!373 = !DILocation(line: 40, column: 59, scope: !151, inlinedAt: !347)
!374 = !DILocation(line: 40, column: 46, scope: !151, inlinedAt: !347)
!375 = !DILocation(line: 40, column: 44, scope: !151, inlinedAt: !347)
!376 = !DILocation(line: 40, column: 17, scope: !151, inlinedAt: !347)
!377 = !DILocation(line: 41, column: 21, scope: !151, inlinedAt: !347)
!378 = !DILocation(line: 41, column: 27, scope: !151, inlinedAt: !347)
!379 = !DILocation(line: 41, column: 33, scope: !151, inlinedAt: !347)
!380 = !DILocation(line: 41, column: 52, scope: !151, inlinedAt: !347)
!381 = !DILocation(line: 41, column: 59, scope: !151, inlinedAt: !347)
!382 = !DILocation(line: 41, column: 46, scope: !151, inlinedAt: !347)
!383 = !DILocation(line: 41, column: 44, scope: !151, inlinedAt: !347)
!384 = !DILocation(line: 41, column: 17, scope: !151, inlinedAt: !347)
!385 = !DILocation(line: 38, column: 16, scope: !151, inlinedAt: !347)
!386 = !DILocation(line: 38, column: 9, scope: !151, inlinedAt: !347)
!387 = !DILocation(line: 0, scope: !120, inlinedAt: !388)
!388 = distinct !DILocation(line: 67, column: 17, scope: !101)
!389 = !DILocation(line: 0, scope: !130, inlinedAt: !390)
!390 = distinct !DILocation(line: 33, column: 20, scope: !120, inlinedAt: !388)
!391 = !DILocation(line: 130, column: 19, scope: !130, inlinedAt: !390)
!392 = !DILocation(line: 130, column: 33, scope: !130, inlinedAt: !390)
!393 = !DILocation(line: 134, column: 28, scope: !130, inlinedAt: !390)
!394 = !DILocation(line: 135, column: 28, scope: !130, inlinedAt: !390)
!395 = !DILocation(line: 135, column: 47, scope: !130, inlinedAt: !390)
!396 = !DILocation(line: 135, column: 34, scope: !130, inlinedAt: !390)
!397 = !DILocation(line: 0, scope: !148, inlinedAt: !388)
!398 = !DILocation(line: 38, column: 21, scope: !151, inlinedAt: !388)
!399 = !DILocation(line: 38, column: 33, scope: !151, inlinedAt: !388)
!400 = !DILocation(line: 38, column: 51, scope: !151, inlinedAt: !388)
!401 = !DILocation(line: 38, column: 46, scope: !151, inlinedAt: !388)
!402 = !DILocation(line: 38, column: 44, scope: !151, inlinedAt: !388)
!403 = !DILocation(line: 39, column: 27, scope: !151, inlinedAt: !388)
!404 = !DILocation(line: 39, column: 33, scope: !151, inlinedAt: !388)
!405 = !DILocation(line: 39, column: 52, scope: !151, inlinedAt: !388)
!406 = !DILocation(line: 39, column: 59, scope: !151, inlinedAt: !388)
!407 = !DILocation(line: 39, column: 46, scope: !151, inlinedAt: !388)
!408 = !DILocation(line: 39, column: 44, scope: !151, inlinedAt: !388)
!409 = !DILocation(line: 39, column: 17, scope: !151, inlinedAt: !388)
!410 = !DILocation(line: 40, column: 21, scope: !151, inlinedAt: !388)
!411 = !DILocation(line: 40, column: 27, scope: !151, inlinedAt: !388)
!412 = !DILocation(line: 40, column: 33, scope: !151, inlinedAt: !388)
!413 = !DILocation(line: 40, column: 52, scope: !151, inlinedAt: !388)
!414 = !DILocation(line: 40, column: 59, scope: !151, inlinedAt: !388)
!415 = !DILocation(line: 40, column: 46, scope: !151, inlinedAt: !388)
!416 = !DILocation(line: 40, column: 44, scope: !151, inlinedAt: !388)
!417 = !DILocation(line: 40, column: 17, scope: !151, inlinedAt: !388)
!418 = !DILocation(line: 41, column: 21, scope: !151, inlinedAt: !388)
!419 = !DILocation(line: 41, column: 27, scope: !151, inlinedAt: !388)
!420 = !DILocation(line: 41, column: 33, scope: !151, inlinedAt: !388)
!421 = !DILocation(line: 41, column: 52, scope: !151, inlinedAt: !388)
!422 = !DILocation(line: 41, column: 59, scope: !151, inlinedAt: !388)
!423 = !DILocation(line: 41, column: 46, scope: !151, inlinedAt: !388)
!424 = !DILocation(line: 41, column: 44, scope: !151, inlinedAt: !388)
!425 = !DILocation(line: 41, column: 17, scope: !151, inlinedAt: !388)
!426 = !DILocation(line: 38, column: 16, scope: !151, inlinedAt: !388)
!427 = !DILocation(line: 38, column: 9, scope: !151, inlinedAt: !388)
!428 = !DILocation(line: 0, scope: !120, inlinedAt: !429)
!429 = distinct !DILocation(line: 67, column: 17, scope: !101)
!430 = !DILocation(line: 0, scope: !130, inlinedAt: !431)
!431 = distinct !DILocation(line: 33, column: 20, scope: !120, inlinedAt: !429)
!432 = !DILocation(line: 130, column: 19, scope: !130, inlinedAt: !431)
!433 = !DILocation(line: 130, column: 33, scope: !130, inlinedAt: !431)
!434 = !DILocation(line: 134, column: 28, scope: !130, inlinedAt: !431)
!435 = !DILocation(line: 135, column: 28, scope: !130, inlinedAt: !431)
!436 = !DILocation(line: 135, column: 47, scope: !130, inlinedAt: !431)
!437 = !DILocation(line: 135, column: 34, scope: !130, inlinedAt: !431)
!438 = !DILocation(line: 0, scope: !148, inlinedAt: !429)
!439 = !DILocation(line: 38, column: 21, scope: !151, inlinedAt: !429)
!440 = !DILocation(line: 38, column: 33, scope: !151, inlinedAt: !429)
!441 = !DILocation(line: 38, column: 51, scope: !151, inlinedAt: !429)
!442 = !DILocation(line: 38, column: 46, scope: !151, inlinedAt: !429)
!443 = !DILocation(line: 38, column: 44, scope: !151, inlinedAt: !429)
!444 = !DILocation(line: 39, column: 27, scope: !151, inlinedAt: !429)
!445 = !DILocation(line: 39, column: 33, scope: !151, inlinedAt: !429)
!446 = !DILocation(line: 39, column: 52, scope: !151, inlinedAt: !429)
!447 = !DILocation(line: 39, column: 59, scope: !151, inlinedAt: !429)
!448 = !DILocation(line: 39, column: 46, scope: !151, inlinedAt: !429)
!449 = !DILocation(line: 39, column: 44, scope: !151, inlinedAt: !429)
!450 = !DILocation(line: 39, column: 17, scope: !151, inlinedAt: !429)
!451 = !DILocation(line: 40, column: 21, scope: !151, inlinedAt: !429)
!452 = !DILocation(line: 40, column: 27, scope: !151, inlinedAt: !429)
!453 = !DILocation(line: 40, column: 33, scope: !151, inlinedAt: !429)
!454 = !DILocation(line: 40, column: 52, scope: !151, inlinedAt: !429)
!455 = !DILocation(line: 40, column: 59, scope: !151, inlinedAt: !429)
!456 = !DILocation(line: 40, column: 46, scope: !151, inlinedAt: !429)
!457 = !DILocation(line: 40, column: 44, scope: !151, inlinedAt: !429)
!458 = !DILocation(line: 40, column: 17, scope: !151, inlinedAt: !429)
!459 = !DILocation(line: 41, column: 21, scope: !151, inlinedAt: !429)
!460 = !DILocation(line: 41, column: 27, scope: !151, inlinedAt: !429)
!461 = !DILocation(line: 41, column: 33, scope: !151, inlinedAt: !429)
!462 = !DILocation(line: 41, column: 52, scope: !151, inlinedAt: !429)
!463 = !DILocation(line: 41, column: 59, scope: !151, inlinedAt: !429)
!464 = !DILocation(line: 41, column: 46, scope: !151, inlinedAt: !429)
!465 = !DILocation(line: 41, column: 44, scope: !151, inlinedAt: !429)
!466 = !DILocation(line: 41, column: 17, scope: !151, inlinedAt: !429)
!467 = !DILocation(line: 38, column: 16, scope: !151, inlinedAt: !429)
!468 = !DILocation(line: 38, column: 9, scope: !151, inlinedAt: !429)
!469 = !DILocation(line: 0, scope: !120, inlinedAt: !470)
!470 = distinct !DILocation(line: 67, column: 17, scope: !101)
!471 = !DILocation(line: 0, scope: !130, inlinedAt: !472)
!472 = distinct !DILocation(line: 33, column: 20, scope: !120, inlinedAt: !470)
!473 = !DILocation(line: 130, column: 19, scope: !130, inlinedAt: !472)
!474 = !DILocation(line: 130, column: 33, scope: !130, inlinedAt: !472)
!475 = !DILocation(line: 134, column: 28, scope: !130, inlinedAt: !472)
!476 = !DILocation(line: 135, column: 28, scope: !130, inlinedAt: !472)
!477 = !DILocation(line: 135, column: 47, scope: !130, inlinedAt: !472)
!478 = !DILocation(line: 135, column: 34, scope: !130, inlinedAt: !472)
!479 = !DILocation(line: 0, scope: !148, inlinedAt: !470)
!480 = !DILocation(line: 38, column: 21, scope: !151, inlinedAt: !470)
!481 = !DILocation(line: 38, column: 33, scope: !151, inlinedAt: !470)
!482 = !DILocation(line: 38, column: 51, scope: !151, inlinedAt: !470)
!483 = !DILocation(line: 38, column: 46, scope: !151, inlinedAt: !470)
!484 = !DILocation(line: 38, column: 44, scope: !151, inlinedAt: !470)
!485 = !DILocation(line: 39, column: 27, scope: !151, inlinedAt: !470)
!486 = !DILocation(line: 39, column: 33, scope: !151, inlinedAt: !470)
!487 = !DILocation(line: 39, column: 52, scope: !151, inlinedAt: !470)
!488 = !DILocation(line: 39, column: 59, scope: !151, inlinedAt: !470)
!489 = !DILocation(line: 39, column: 46, scope: !151, inlinedAt: !470)
!490 = !DILocation(line: 39, column: 44, scope: !151, inlinedAt: !470)
!491 = !DILocation(line: 39, column: 17, scope: !151, inlinedAt: !470)
!492 = !DILocation(line: 40, column: 21, scope: !151, inlinedAt: !470)
!493 = !DILocation(line: 40, column: 27, scope: !151, inlinedAt: !470)
!494 = !DILocation(line: 40, column: 33, scope: !151, inlinedAt: !470)
!495 = !DILocation(line: 40, column: 52, scope: !151, inlinedAt: !470)
!496 = !DILocation(line: 40, column: 59, scope: !151, inlinedAt: !470)
!497 = !DILocation(line: 40, column: 46, scope: !151, inlinedAt: !470)
!498 = !DILocation(line: 40, column: 44, scope: !151, inlinedAt: !470)
!499 = !DILocation(line: 40, column: 17, scope: !151, inlinedAt: !470)
!500 = !DILocation(line: 41, column: 21, scope: !151, inlinedAt: !470)
!501 = !DILocation(line: 41, column: 27, scope: !151, inlinedAt: !470)
!502 = !DILocation(line: 41, column: 33, scope: !151, inlinedAt: !470)
!503 = !DILocation(line: 41, column: 52, scope: !151, inlinedAt: !470)
!504 = !DILocation(line: 41, column: 59, scope: !151, inlinedAt: !470)
!505 = !DILocation(line: 41, column: 46, scope: !151, inlinedAt: !470)
!506 = !DILocation(line: 41, column: 44, scope: !151, inlinedAt: !470)
!507 = !DILocation(line: 41, column: 17, scope: !151, inlinedAt: !470)
!508 = !DILocation(line: 38, column: 16, scope: !151, inlinedAt: !470)
!509 = !DILocation(line: 38, column: 9, scope: !151, inlinedAt: !470)
