.class public final synthetic Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpRestrictionView$WhenMappings;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpRestrictionView$Restriction;->values()[Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpRestrictionView$Restriction;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpRestrictionView$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpRestrictionView$Restriction;->NOT_SUPPORTED_COUNTRY:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpRestrictionView$Restriction;

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpRestrictionView$Restriction;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpRestrictionView$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpRestrictionView$Restriction;->INCOMPATIBLE_WEARABLE:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpRestrictionView$Restriction;

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpRestrictionView$Restriction;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpRestrictionView$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpRestrictionView$Restriction;->NOT_INTENDED_AGE:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpRestrictionView$Restriction;

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpRestrictionView$Restriction;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    return-void
.end method
