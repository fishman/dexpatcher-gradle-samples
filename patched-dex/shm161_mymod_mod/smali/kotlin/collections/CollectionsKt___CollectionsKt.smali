.class Lkotlin/collections/CollectionsKt___CollectionsKt;
.super Lkotlin/collections/CollectionsKt___CollectionsJvmKt;
.source "_Collections.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\n_Collections.kt\nKotlin\n*S Kotlin\n*F\n+ 1 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 4 Iterators.kt\nkotlin/collections/CollectionsKt__IteratorsKt\n*L\n1#1,2484:1\n238#1,2:2485\n448#1,7:2487\n461#1,6:2494\n740#1,2:2500\n685#1:2502\n1583#1,2:2503\n686#1,2:2505\n1585#1:2507\n688#1:2508\n1583#1,3:2509\n702#1,2:2512\n732#1,2:2514\n1105#1,4:2520\n1078#1,4:2524\n1092#1,4:2528\n1135#1,4:2532\n1215#1,5:2536\n1256#1,3:2541\n1259#1,3:2551\n1274#1,3:2554\n1277#1,3:2564\n1370#1,3:2581\n1342#1,4:2584\n1331#1:2588\n1583#1,3:2589\n1332#1:2592\n1583#1,3:2593\n1361#1:2596\n1574#1,2:2597\n1362#1:2599\n1574#1,2:2600\n740#1,2:2602\n710#1:2604\n732#1,2:2605\n710#1:2607\n732#1,2:2608\n710#1:2610\n732#1,2:2611\n2206#1,8:2617\n2234#1,7:2625\n2265#1,10:2632\n37#2,2:2516\n37#2,2:2518\n305#3,7:2544\n305#3,7:2557\n305#3,7:2567\n305#3,7:2574\n31#4,2:2613\n31#4,2:2615\n*E\n*S KotlinDebug\n*F\n+ 1 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n153#1,2:2485\n161#1,7:2487\n169#1,6:2494\n667#1,2:2500\n676#1:2502\n676#1,2:2503\n676#1,2:2505\n676#1:2507\n676#1:2508\n685#1,3:2509\n695#1,2:2512\n710#1,2:2514\n1042#1,4:2520\n1055#1,4:2524\n1067#1,4:2528\n1124#1,4:2532\n1208#1,5:2536\n1231#1,3:2541\n1231#1,3:2551\n1244#1,3:2554\n1244#1,3:2564\n1301#1,3:2581\n1311#1,4:2584\n1321#1:2588\n1321#1,3:2589\n1321#1:2592\n1331#1,3:2593\n1353#1:2596\n1353#1,2:2597\n1353#1:2599\n1361#1,2:2600\n1939#1,2:2602\n1951#1:2604\n1951#1,2:2605\n1964#1:2607\n1964#1,2:2608\n1977#1:2610\n1977#1,2:2611\n2195#1,8:2617\n2223#1,7:2625\n2252#1,10:2632\n898#1,2:2516\n939#1,2:2518\n1231#1,7:2544\n1244#1,7:2557\n1258#1,7:2567\n1276#1,7:2574\n2142#1,2:2613\n2182#1,2:2615\n*E\n"
.end annotation


# direct methods
.method public static final last(Ljava/util/List;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+TT;>;)TT;"
        }
    .end annotation

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 359
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string v0, "List is empty."

    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    :cond_0
    const-string v0, "receiver$0"

    .line 361
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1161
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 361
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final single(Ljava/lang/Iterable;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TT;>;)TT;"
        }
    .end annotation

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 497
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/List;

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1514
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1517
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "List has more than one element."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    :pswitch_0
    const/4 v0, 0x0

    .line 1516
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 1515
    :pswitch_1
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string v0, "List is empty."

    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    .line 499
    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 500
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 501
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string v0, "Collection is empty."

    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    .line 502
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 503
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 504
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Collection has more than one element."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    :cond_2
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
