.class final enum Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeMap;
.super Ljava/lang/Enum;
.source "HTextButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/shealthmonitor/widget/HTextButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ButtonTypeMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeMap;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeMap;

.field public static final enum BOTTOM_BAR_TEXT_ONLY_P_OS:Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeMap;

.field public static final enum BUTTON_FLAT_TEXT_ONLY_P_OS:Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeMap;

.field public static final enum DIALOG_ACTION_BUTTON_P_OS:Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeMap;

.field public static final enum PREVIOUS_NEXT_P_OS:Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeMap;


# instance fields
.field private mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 90
    new-instance v0, Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeMap;

    const-string v1, "BUTTON_FLAT_TEXT_ONLY_P_OS"

    const-string v2, "button_flat_text_only_p_os"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeMap;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeMap;->BUTTON_FLAT_TEXT_ONLY_P_OS:Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeMap;

    .line 91
    new-instance v0, Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeMap;

    const-string v1, "PREVIOUS_NEXT_P_OS"

    const-string v2, "previous_next_p_os"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeMap;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeMap;->PREVIOUS_NEXT_P_OS:Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeMap;

    .line 92
    new-instance v0, Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeMap;

    const-string v1, "DIALOG_ACTION_BUTTON_P_OS"

    const-string v2, "dialog_action_button_p_os"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeMap;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeMap;->DIALOG_ACTION_BUTTON_P_OS:Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeMap;

    .line 93
    new-instance v0, Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeMap;

    const-string v1, "BOTTOM_BAR_TEXT_ONLY_P_OS"

    const-string v2, "bottom_bar_text_only_p_os"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeMap;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeMap;->BOTTOM_BAR_TEXT_ONLY_P_OS:Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeMap;

    const/4 v0, 0x4

    .line 89
    new-array v0, v0, [Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeMap;

    sget-object v1, Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeMap;->BUTTON_FLAT_TEXT_ONLY_P_OS:Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeMap;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeMap;->PREVIOUS_NEXT_P_OS:Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeMap;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeMap;->DIALOG_ACTION_BUTTON_P_OS:Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeMap;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeMap;->BOTTOM_BAR_TEXT_ONLY_P_OS:Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeMap;

    aput-object v1, v0, v6

    sput-object v0, Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeMap;->$VALUES:[Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 97
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 98
    iput-object p3, p0, Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeMap;->mValue:Ljava/lang/String;

    return-void
.end method

.method static setValue(Ljava/lang/String;)Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeMap;
    .locals 5

    .line 106
    invoke-static {}, Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeMap;->values()[Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeMap;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 107
    invoke-virtual {v3}, Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeMap;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeMap;
    .locals 1

    .line 89
    const-class v0, Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeMap;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeMap;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeMap;
    .locals 1

    .line 89
    sget-object v0, Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeMap;->$VALUES:[Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeMap;

    invoke-virtual {v0}, [Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeMap;

    return-object v0
.end method


# virtual methods
.method final getValue()Ljava/lang/String;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeMap;->mValue:Ljava/lang/String;

    return-object p0
.end method
