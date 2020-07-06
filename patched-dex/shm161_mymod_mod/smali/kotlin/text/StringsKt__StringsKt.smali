.class Lkotlin/text/StringsKt__StringsKt;
.super Lkotlin/text/StringsKt__StringsJVMKt;
.source "Strings.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStrings.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Strings.kt\nkotlin/text/StringsKt__StringsKt\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1278:1\n17#1,22:1279\n51#1,5:1301\n68#1,5:1306\n17#1,22:1311\n45#1:1333\n17#1,22:1334\n51#1,5:1356\n62#1:1361\n51#1,5:1362\n68#1,5:1367\n79#1:1372\n68#1,5:1373\n17#1,22:1378\n51#1,5:1400\n68#1,5:1405\n346#1:1410\n1263#1:1427\n10109#2,2:1411\n10109#2,2:1413\n238#3,2:1415\n238#3,2:1417\n1301#3:1419\n1370#3,3:1420\n1301#3:1423\n1370#3,3:1424\n*E\n*S KotlinDebug\n*F\n+ 1 Strings.kt\nkotlin/text/StringsKt__StringsKt\n*L\n45#1,22:1279\n62#1,5:1301\n79#1,5:1306\n84#1,22:1311\n89#1:1333\n89#1,22:1334\n94#1,5:1356\n99#1:1361\n99#1,5:1362\n104#1,5:1367\n109#1:1372\n109#1,5:1373\n114#1,22:1378\n125#1,5:1400\n136#1,5:1405\n832#1,2:1411\n856#1,2:1413\n895#1,2:1415\n901#1,2:1417\n1197#1:1419\n1197#1,3:1420\n1222#1:1423\n1222#1,3:1424\n*E\n"
.end annotation


# direct methods
.method public static final synthetic access$findAnyOf(Ljava/lang/CharSequence;Ljava/util/Collection;IZZ)Lkotlin/Pair;
    .locals 10

    const/4 p4, 0x0

    const/4 v0, 0x0

    if-nez p3, :cond_1

    .line 11885
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 11886
    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->single(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 p3, 0x4

    .line 11887
    invoke-static {p0, p1, p2, p4, p3}, Lkotlin/text/StringsKt;->indexOf$default$49949d7e(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result p0

    if-gez p0, :cond_0

    goto/16 :goto_4

    .line 11888
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    return-object p0

    .line 11891
    :cond_1
    invoke-static {p2, p4}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p2

    new-instance p4, Lkotlin/ranges/IntRange;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-direct {p4, p2, v1}, Lkotlin/ranges/IntRange;-><init>(II)V

    check-cast p4, Lkotlin/ranges/IntProgression;

    .line 11893
    instance-of p2, p0, Ljava/lang/String;

    if-eqz p2, :cond_6

    .line 11894
    invoke-virtual {p4}, Lkotlin/ranges/IntProgression;->getFirst()I

    move-result p2

    invoke-virtual {p4}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result v1

    invoke-virtual {p4}, Lkotlin/ranges/IntProgression;->getStep()I

    move-result p4

    if-lez p4, :cond_2

    if-gt p2, v1, :cond_b

    goto :goto_0

    :cond_2
    if-lt p2, v1, :cond_b

    .line 11895
    :goto_0
    move-object v2, p1

    check-cast v2, Ljava/lang/Iterable;

    .line 12415
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v2, v9

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    .line 11895
    move-object v4, p0

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    move v5, p2

    move v7, p3

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->regionMatches(Ljava/lang/String;ILjava/lang/String;IIZ)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_4
    move-object v9, v0

    :goto_1
    check-cast v9, Ljava/lang/String;

    if-eqz v9, :cond_5

    .line 11897
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    return-object p0

    :cond_5
    if-eq p2, v1, :cond_b

    add-int/2addr p2, p4

    goto :goto_0

    .line 11900
    :cond_6
    invoke-virtual {p4}, Lkotlin/ranges/IntProgression;->getFirst()I

    move-result p2

    invoke-virtual {p4}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result v1

    invoke-virtual {p4}, Lkotlin/ranges/IntProgression;->getStep()I

    move-result p4

    if-lez p4, :cond_7

    if-gt p2, v1, :cond_b

    goto :goto_2

    :cond_7
    if-lt p2, v1, :cond_b

    .line 11901
    :goto_2
    move-object v2, p1

    check-cast v2, Ljava/lang/Iterable;

    .line 12417
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v2, v9

    check-cast v2, Ljava/lang/String;

    .line 11901
    move-object v3, v2

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    move-object v2, v3

    move v3, v4

    move-object v4, p0

    move v5, p2

    move v7, p3

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->regionMatchesImpl(Ljava/lang/CharSequence;ILjava/lang/CharSequence;IIZ)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_3

    :cond_9
    move-object v9, v0

    :goto_3
    check-cast v9, Ljava/lang/String;

    if-eqz v9, :cond_a

    .line 11903
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    return-object p0

    :cond_a
    if-eq p2, v1, :cond_b

    add-int/2addr p2, p4

    goto :goto_2

    :cond_b
    :goto_4
    return-object v0
.end method

.method public static final getLastIndex(Ljava/lang/CharSequence;)I
    .locals 1

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 307
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public static final indexOf(Ljava/lang/CharSequence;Ljava/lang/String;IZ)I
    .locals 6

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "string"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_1

    .line 993
    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 996
    :cond_0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 994
    :cond_1
    :goto_0
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p2

    move v4, p3

    .line 7864
    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt__StringsKt;->indexOf$StringsKt__StringsKt(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIZZ)I

    move-result p0

    return p0
.end method

.method private static final indexOf$StringsKt__StringsKt(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIZZ)I
    .locals 6

    const/4 v0, 0x0

    if-nez p5, :cond_0

    .line 866
    invoke-static {p2, v0}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p2

    new-instance p5, Lkotlin/ranges/IntRange;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p3, v0}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result p3

    invoke-direct {p5, p2, p3}, Lkotlin/ranges/IntRange;-><init>(II)V

    check-cast p5, Lkotlin/ranges/IntProgression;

    goto :goto_0

    .line 868
    :cond_0
    invoke-static {p0}, Lkotlin/text/StringsKt;->getLastIndex(Ljava/lang/CharSequence;)I

    move-result p5

    invoke-static {p2, p5}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result p2

    invoke-static {p3, v0}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p3

    invoke-static {p2, p3}, Lkotlin/ranges/RangesKt;->downTo(II)Lkotlin/ranges/IntProgression;

    move-result-object p5

    .line 870
    :goto_0
    instance-of p2, p0, Ljava/lang/String;

    if-eqz p2, :cond_3

    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_3

    .line 871
    invoke-virtual {p5}, Lkotlin/ranges/IntProgression;->getFirst()I

    move-result p2

    invoke-virtual {p5}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result p3

    invoke-virtual {p5}, Lkotlin/ranges/IntProgression;->getStep()I

    move-result p5

    if-lez p5, :cond_1

    if-gt p2, p3, :cond_6

    goto :goto_1

    :cond_1
    if-lt p2, p3, :cond_6

    .line 872
    :goto_1
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    move-object v2, p0

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    move v3, p2

    move v5, p4

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->regionMatches(Ljava/lang/String;ILjava/lang/String;IIZ)Z

    move-result v0

    if-eqz v0, :cond_2

    return p2

    :cond_2
    if-eq p2, p3, :cond_6

    add-int/2addr p2, p5

    goto :goto_1

    .line 876
    :cond_3
    invoke-virtual {p5}, Lkotlin/ranges/IntProgression;->getFirst()I

    move-result p2

    invoke-virtual {p5}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result p3

    invoke-virtual {p5}, Lkotlin/ranges/IntProgression;->getStep()I

    move-result p5

    if-lez p5, :cond_4

    if-gt p2, p3, :cond_6

    goto :goto_2

    :cond_4
    if-lt p2, p3, :cond_6

    :goto_2
    const/4 v1, 0x0

    .line 877
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    move-object v0, p1

    move-object v2, p0

    move v3, p2

    move v5, p4

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->regionMatchesImpl(Ljava/lang/CharSequence;ILjava/lang/CharSequence;IIZ)Z

    move-result v0

    if-eqz v0, :cond_5

    return p2

    :cond_5
    if-eq p2, p3, :cond_6

    add-int/2addr p2, p5

    goto :goto_2

    :cond_6
    const/4 p0, -0x1

    return p0
.end method

.method public static synthetic indexOf$default$49949d7e(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I
    .locals 0

    and-int/lit8 p3, p4, 0x2

    const/4 p4, 0x0

    if-eqz p3, :cond_0

    move p2, p4

    .line 992
    :cond_0
    invoke-static {p0, p1, p2, p4}, Lkotlin/text/StringsKt;->indexOf(Ljava/lang/CharSequence;Ljava/lang/String;IZ)I

    move-result p0

    return p0
.end method

.method public static synthetic indexOf$default$b46a3c3(Ljava/lang/CharSequence;CIZI)I
    .locals 4

    and-int/lit8 p1, p4, 0x2

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    move p2, p3

    :cond_0
    const/16 p1, 0x2e

    const-string p4, "receiver$0"

    .line 978
    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4979
    instance-of p4, p0, Ljava/lang/String;

    if-nez p4, :cond_1

    goto :goto_0

    .line 4982
    :cond_1
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result p0

    goto :goto_4

    :goto_0
    const/4 p4, 0x1

    .line 4980
    new-array v0, p4, [C

    aput-char p1, v0, p3

    const-string p1, "receiver$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "chars"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5825
    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_2

    const-string p1, "receiver$0"

    .line 5826
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7403
    array-length p1, v0

    packed-switch p1, :pswitch_data_0

    .line 7406
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array has more than one element."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    .line 7405
    :pswitch_0
    aget-char p1, v0, p3

    .line 5827
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result p0

    goto :goto_4

    .line 7404
    :pswitch_1
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string p1, "Array is empty."

    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    .line 5830
    :cond_2
    invoke-static {p2, p3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p1

    invoke-static {p0}, Lkotlin/text/StringsKt;->getLastIndex(Ljava/lang/CharSequence;)I

    move-result p2

    if-gt p1, p2, :cond_6

    .line 5831
    :goto_1
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    move v2, p3

    :goto_2
    if-gtz v2, :cond_4

    .line 6411
    aget-char v3, v0, v2

    .line 5832
    invoke-static {v3, v1, p3}, Lkotlin/text/CharsKt;->equals(CCZ)Z

    move-result v3

    if-eqz v3, :cond_3

    move v1, p4

    goto :goto_3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    move v1, p3

    :goto_3
    if-eqz v1, :cond_5

    move p0, p1

    :goto_4
    return p0

    :cond_5
    if-eq p1, p2, :cond_6

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_6
    const/4 p0, -0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic rangesDelimitedBy$StringsKt__StringsKt$default$74061f08(Ljava/lang/CharSequence;[Ljava/lang/String;IZII)Lkotlin/sequences/Sequence;
    .locals 1

    const/4 p2, 0x0

    if-ltz p4, :cond_0

    const/4 p5, 0x1

    goto :goto_0

    :cond_0
    move p5, p2

    :goto_0
    if-nez p5, :cond_1

    .line 8154
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Limit must be non-negative, but was "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 8155
    :cond_1
    invoke-static {p1}, Lkotlin/collections/ArraysKt;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 8157
    new-instance p5, Lkotlin/text/DelimitedRangesSequence;

    new-instance v0, Lkotlin/text/StringsKt__StringsKt$rangesDelimitedBy$4;

    invoke-direct {v0, p1, p3}, Lkotlin/text/StringsKt__StringsKt$rangesDelimitedBy$4;-><init>(Ljava/util/List;Z)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-direct {p5, p0, p2, p4, v0}, Lkotlin/text/DelimitedRangesSequence;-><init>(Ljava/lang/CharSequence;IILkotlin/jvm/functions/Function2;)V

    check-cast p5, Lkotlin/sequences/Sequence;

    return-object p5
.end method

.method public static final regionMatchesImpl(Ljava/lang/CharSequence;ILjava/lang/CharSequence;IIZ)Z
    .locals 3

    const-string p1, "receiver$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "other"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    if-ltz p3, :cond_3

    .line 713
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    sub-int/2addr v0, p4

    if-ltz v0, :cond_3

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    sub-int/2addr v0, p4

    if-le p3, v0, :cond_0

    goto :goto_1

    :cond_0
    move v0, p1

    :goto_0
    if-ge v0, p4, :cond_2

    add-int/lit8 v1, v0, 0x0

    .line 718
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    add-int v2, p3, v0

    invoke-interface {p2, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v1, v2, p5}, Lkotlin/text/CharsKt;->equals(CCZ)Z

    move-result v1

    if-nez v1, :cond_1

    return p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_1
    return p1
.end method

.method public static synthetic split$default$5b07c063(Ljava/lang/CharSequence;[Ljava/lang/String;ZII)Ljava/util/List;
    .locals 6

    const-string p2, "receiver$0"

    .line 1189
    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "delimiters"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8190
    array-length p2, p1

    const/16 p3, 0xa

    const/4 p4, 0x1

    if-ne p2, p4, :cond_3

    const/4 p2, 0x0

    .line 8191
    aget-object v0, p1, p2

    .line 8192
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move p4, p2

    :goto_0
    if-nez p4, :cond_3

    .line 9237
    invoke-static {p0, v0, p2, p2}, Lkotlin/text/StringsKt;->indexOf(Ljava/lang/CharSequence;Ljava/lang/String;IZ)I

    move-result p1

    const/4 p4, -0x1

    if-eq p1, p4, :cond_2

    .line 9243
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p3}, Ljava/util/ArrayList;-><init>(I)V

    move p3, p1

    move p1, p2

    .line 9245
    :cond_1
    invoke-interface {p0, p1, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9246
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, p3

    .line 9249
    invoke-static {p0, v0, p1, p2}, Lkotlin/text/StringsKt;->indexOf(Ljava/lang/CharSequence;Ljava/lang/String;IZ)I

    move-result p3

    if-ne p3, p4, :cond_1

    .line 9252
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p2

    invoke-interface {p0, p1, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9253
    check-cast v1, Ljava/util/List;

    return-object v1

    .line 9239
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 10019
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string p1, "java.util.Collections.singletonList(element)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    const/4 v5, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 8197
    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt__StringsKt;->rangesDelimitedBy$StringsKt__StringsKt$default$74061f08(Ljava/lang/CharSequence;[Ljava/lang/String;IZII)Lkotlin/sequences/Sequence;

    move-result-object p1

    const-string p2, "receiver$0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10741
    new-instance p2, Lkotlin/sequences/SequencesKt___SequencesKt$asIterable$$inlined$Iterable$1;

    invoke-direct {p2, p1}, Lkotlin/sequences/SequencesKt___SequencesKt$asIterable$$inlined$Iterable$1;-><init>(Lkotlin/sequences/Sequence;)V

    check-cast p2, Ljava/lang/Iterable;

    .line 8419
    new-instance p1, Ljava/util/ArrayList;

    const-string p4, "receiver$0"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11039
    instance-of p4, p2, Ljava/util/Collection;

    if-eqz p4, :cond_4

    move-object p3, p2

    check-cast p3, Ljava/util/Collection;

    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result p3

    .line 8419
    :cond_4
    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p1, Ljava/util/Collection;

    .line 8420
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    .line 8421
    check-cast p3, Lkotlin/ranges/IntRange;

    .line 8197
    invoke-static {p0, p3}, Lkotlin/text/StringsKt;->substring(Ljava/lang/CharSequence;Lkotlin/ranges/IntRange;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 8422
    :cond_5
    move-object p0, p1

    check-cast p0, Ljava/util/List;

    :goto_2
    return-object p0
.end method

.method public static final substring(Ljava/lang/CharSequence;Lkotlin/ranges/IntRange;)Ljava/lang/String;
    .locals 1

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "range"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4040
    invoke-virtual {p1}, Lkotlin/ranges/IntRange;->getFirst()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 351
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4041
    invoke-virtual {p1}, Lkotlin/ranges/IntRange;->getLast()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 351
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-interface {p0, v0, p1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 7

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1379
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v0

    move v0, v2

    move v4, v0

    :goto_0
    if-gt v0, v3, :cond_5

    if-nez v4, :cond_0

    move v5, v0

    goto :goto_1

    :cond_0
    move v5, v3

    .line 1384
    :goto_1
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 3072
    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v5}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_2

    :cond_1
    move v5, v2

    goto :goto_3

    :cond_2
    :goto_2
    move v5, v1

    :goto_3
    if-nez v4, :cond_4

    if-nez v5, :cond_3

    move v4, v1

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    if-eqz v5, :cond_5

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_5
    add-int/2addr v3, v1

    .line 1399
    invoke-interface {p0, v0, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method
