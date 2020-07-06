.class public final enum Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpRestrictionView$Restriction;
.super Ljava/lang/Enum;
.source "SHealthMonitorBpRestrictionView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpRestrictionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Restriction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpRestrictionView$Restriction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpRestrictionView$Restriction;

.field public static final enum INCOMPATIBLE_WEARABLE:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpRestrictionView$Restriction;

.field public static final enum NOT_INTENDED_AGE:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpRestrictionView$Restriction;

.field public static final enum NOT_SUPPORTED_COUNTRY:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpRestrictionView$Restriction;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpRestrictionView$Restriction;

    new-instance v1, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpRestrictionView$Restriction;

    const-string v2, "INCOMPATIBLE_WEARABLE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpRestrictionView$Restriction;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpRestrictionView$Restriction;->INCOMPATIBLE_WEARABLE:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpRestrictionView$Restriction;

    aput-object v1, v0, v3

    new-instance v1, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpRestrictionView$Restriction;

    const-string v2, "NOT_SUPPORTED_COUNTRY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpRestrictionView$Restriction;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpRestrictionView$Restriction;->NOT_SUPPORTED_COUNTRY:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpRestrictionView$Restriction;

    aput-object v1, v0, v3

    new-instance v1, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpRestrictionView$Restriction;

    const-string v2, "NOT_INTENDED_AGE"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpRestrictionView$Restriction;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpRestrictionView$Restriction;->NOT_INTENDED_AGE:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpRestrictionView$Restriction;

    aput-object v1, v0, v3

    sput-object v0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpRestrictionView$Restriction;->$VALUES:[Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpRestrictionView$Restriction;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpRestrictionView$Restriction;
    .locals 1

    const-class v0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpRestrictionView$Restriction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpRestrictionView$Restriction;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpRestrictionView$Restriction;
    .locals 1

    sget-object v0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpRestrictionView$Restriction;->$VALUES:[Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpRestrictionView$Restriction;

    invoke-virtual {v0}, [Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpRestrictionView$Restriction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpRestrictionView$Restriction;

    return-object v0
.end method
