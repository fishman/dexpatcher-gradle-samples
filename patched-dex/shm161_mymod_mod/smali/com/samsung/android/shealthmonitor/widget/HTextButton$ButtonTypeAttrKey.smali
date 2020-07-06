.class final enum Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeAttrKey;
.super Ljava/lang/Enum;
.source "HTextButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/shealthmonitor/widget/HTextButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ButtonTypeAttrKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeAttrKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeAttrKey;

.field public static final enum BOTTOM_BAR_TEXT_ONLY:Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeAttrKey;

.field public static final enum BUTTON_FLAT_TEXT_ONLY:Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeAttrKey;

.field public static final enum DIALOG_ACTION_BUTTON:Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeAttrKey;

.field public static final enum PREVIOUS_NEXT:Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeAttrKey;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 64
    new-instance v0, Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeAttrKey;

    const-string v1, "BUTTON_FLAT_TEXT_ONLY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeAttrKey;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeAttrKey;->BUTTON_FLAT_TEXT_ONLY:Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeAttrKey;

    .line 65
    new-instance v0, Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeAttrKey;

    const-string v1, "PREVIOUS_NEXT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeAttrKey;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeAttrKey;->PREVIOUS_NEXT:Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeAttrKey;

    .line 66
    new-instance v0, Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeAttrKey;

    const-string v1, "DIALOG_ACTION_BUTTON"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeAttrKey;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeAttrKey;->DIALOG_ACTION_BUTTON:Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeAttrKey;

    .line 67
    new-instance v0, Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeAttrKey;

    const-string v1, "BOTTOM_BAR_TEXT_ONLY"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeAttrKey;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeAttrKey;->BOTTOM_BAR_TEXT_ONLY:Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeAttrKey;

    const/4 v0, 0x4

    .line 63
    new-array v0, v0, [Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeAttrKey;

    sget-object v1, Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeAttrKey;->BUTTON_FLAT_TEXT_ONLY:Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeAttrKey;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeAttrKey;->PREVIOUS_NEXT:Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeAttrKey;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeAttrKey;->DIALOG_ACTION_BUTTON:Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeAttrKey;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeAttrKey;->BOTTOM_BAR_TEXT_ONLY:Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeAttrKey;

    aput-object v1, v0, v5

    sput-object v0, Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeAttrKey;->$VALUES:[Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeAttrKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 72
    iput p3, p0, Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeAttrKey;->mValue:I

    return-void
.end method

.method static setValue(I)Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeAttrKey;
    .locals 5

    .line 80
    invoke-static {}, Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeAttrKey;->values()[Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeAttrKey;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 81
    invoke-virtual {v3}, Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeAttrKey;->getValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeAttrKey;
    .locals 1

    .line 63
    const-class v0, Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeAttrKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeAttrKey;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeAttrKey;
    .locals 1

    .line 63
    sget-object v0, Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeAttrKey;->$VALUES:[Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeAttrKey;

    invoke-virtual {v0}, [Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeAttrKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeAttrKey;

    return-object v0
.end method


# virtual methods
.method final getValue()I
    .locals 0

    .line 76
    iget p0, p0, Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeAttrKey;->mValue:I

    return p0
.end method
