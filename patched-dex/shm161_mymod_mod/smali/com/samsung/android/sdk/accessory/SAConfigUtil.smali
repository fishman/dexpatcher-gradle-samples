.class public Lcom/samsung/android/sdk/accessory/SAConfigUtil;
.super Ljava/lang/Object;
.source "SAConfigUtil.java"


# static fields
.field static final SA_ERROR_INVALID_APPLICATION_NAME:I = 0x1

.field static final SA_ERROR_INVALID_CHANNEL_ID:I = 0x8

.field static final SA_ERROR_INVALID_CHANNEL_QOS_PRIORITY:I = 0xa

.field static final SA_ERROR_INVALID_CHANNEL_QOS_RATE:I = 0x9

.field static final SA_ERROR_INVALID_CHANNEL_QOS_TYPE:I = 0xb

.field static final SA_ERROR_INVALID_FEATURE_TYPE:I = 0x11

.field static final SA_ERROR_INVALID_PROFILE_ID:I = 0x3

.field static final SA_ERROR_INVALID_PROFILE_NAME:I = 0x2

.field static final SA_ERROR_INVALID_PROFILE_ROLE:I = 0x4

.field static final SA_ERROR_INVALID_PROFILE_VERSION:I = 0x6

.field static final SA_ERROR_INVALID_SERVICE_IMPL:I = 0x5

.field static final SA_ERROR_INVALID_TRANSPORT_TYPE:I = 0x7

.field static final SA_ERROR_NO_CHANNEL:I = 0xd

.field static final SA_ERROR_NO_CONFIG_FILE:I = 0x10

.field static final SA_ERROR_NO_CONFIG_META_DATA:I = 0xf

.field static final SA_ERROR_NO_SERVICE_PROFILE:I = 0xe

.field static final SA_ERROR_NO_TRANSPORT:I = 0xc

.field private static final SERVICE_LIMITS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static sOnlyInstance:Lcom/samsung/android/sdk/accessory/SAConfigUtil;


# instance fields
.field private applicationName:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mServiceEndpointsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/accessory/SAServiceProfile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[SA_SDK]"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/samsung/android/sdk/accessory/SAConfigUtil;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->TAG:Ljava/lang/String;

    const-string v0, "ANY"

    const-string v1, "ONE_ACCESSORY"

    const-string v2, "ONE_PEERAGENT"

    .line 52
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->SERVICE_LIMITS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->applicationName:Ljava/lang/String;

    .line 72
    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->mContext:Landroid/content/Context;

    return-void
.end method

.method static declared-synchronized getDefaultInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/accessory/SAConfigUtil;
    .locals 2

    const-class v0, Lcom/samsung/android/sdk/accessory/SAConfigUtil;

    monitor-enter v0

    .line 315
    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->sOnlyInstance:Lcom/samsung/android/sdk/accessory/SAConfigUtil;

    if-nez v1, :cond_0

    .line 316
    new-instance v1, Lcom/samsung/android/sdk/accessory/SAConfigUtil;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/accessory/SAConfigUtil;-><init>(Landroid/content/Context;)V

    .line 317
    sput-object v1, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->sOnlyInstance:Lcom/samsung/android/sdk/accessory/SAConfigUtil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 319
    :cond_0
    :try_start_1
    sget-object p0, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->sOnlyInstance:Lcom/samsung/android/sdk/accessory/SAConfigUtil;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 314
    monitor-exit v0

    throw p0
.end method

.method private declared-synchronized parseServicesXML()Z
    .locals 23

    move-object/from16 v1, p0

    monitor-enter p0

    .line 101
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 103
    sget-object v3, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->TAG:Ljava/lang/String;

    const-string v4, "Parse Accssory Service profile xml file"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v3, v1, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/sdk/accessory/SAServiceXmlReader;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/accessory/SAServiceXmlReader;

    move-result-object v3

    .line 106
    invoke-virtual {v3}, Lcom/samsung/android/sdk/accessory/SAServiceXmlReader;->readXml()[B

    move-result-object v3

    .line 107
    new-instance v4, Ljava/lang/String;

    array-length v5, v3

    const/4 v6, 0x0

    invoke-direct {v4, v3, v6, v5}, Ljava/lang/String;-><init>([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v3

    const/4 v5, 0x1

    .line 111
    invoke-virtual {v3, v5}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 113
    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 115
    new-instance v7, Ljava/io/StringReader;

    invoke-direct {v7, v4}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    if-eqz v3, :cond_1

    .line 124
    :try_start_2
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 127
    :catch_0
    :try_start_3
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Wrong Schema of xml file. Please check"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    move v4, v6

    :goto_0
    const/4 v7, 0x0

    move/from16 v16, v6

    move/from16 v17, v16

    move/from16 v18, v17

    move/from16 v19, v18

    move/from16 v20, v19

    move-object v10, v7

    move-object v11, v10

    move-object v12, v11

    move-object v14, v12

    move-object v15, v14

    :goto_1
    if-eq v4, v5, :cond_1e

    if-nez v4, :cond_3

    .line 132
    sget-object v8, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->TAG:Ljava/lang/String;

    const-string v9, "Start document"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v21, v6

    :cond_2
    move-object v6, v15

    goto/16 :goto_8

    :cond_3
    const/4 v9, 0x4

    const/4 v13, 0x2

    if-ne v4, v13, :cond_19

    if-eqz v3, :cond_19

    .line 134
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v8, "application"

    .line 135
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v6, "name"

    .line 136
    invoke-interface {v3, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->applicationName:Ljava/lang/String;

    const-string v6, "application"

    .line 137
    iget-object v8, v1, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->applicationName:Ljava/lang/String;

    invoke-direct {v1, v6, v8, v5}, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->validateAttribute(Ljava/lang/String;Ljava/lang/String;I)V

    move-object v6, v15

    const/16 v21, 0x0

    goto/16 :goto_8

    :cond_4
    const-string v8, "serviceProfile"

    .line 138
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    const-string v6, "serviceImpl"

    .line 139
    invoke-interface {v3, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "serviceImpl"

    const/4 v10, 0x5

    .line 140
    invoke-direct {v1, v8, v6, v10}, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->validateAttribute(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v8, "name"

    .line 142
    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v10, "name"

    .line 143
    invoke-direct {v1, v10, v8, v13}, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->validateAttribute(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v10, "role"

    .line 145
    invoke-interface {v3, v7, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "role"

    .line 146
    invoke-direct {v1, v11, v10, v9}, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->validateAttribute(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v9, "id"

    .line 148
    invoke-interface {v3, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v11, "id"

    const/4 v12, 0x3

    .line 149
    invoke-direct {v1, v11, v9, v12}, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->validateAttribute(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v11, "version"

    .line 151
    invoke-interface {v3, v7, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "version"

    const/4 v14, 0x6

    .line 152
    invoke-direct {v1, v12, v11, v14}, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->validateAttribute(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v12, "serviceLimit"

    .line 154
    invoke-interface {v3, v7, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_8

    .line 155
    sget-object v14, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->SERVICE_LIMITS:[Ljava/lang/String;

    const/16 v21, 0x0

    aget-object v14, v14, v21

    invoke-virtual {v12, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    goto :goto_2

    .line 158
    :cond_5
    sget-object v14, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->SERVICE_LIMITS:[Ljava/lang/String;

    aget-object v14, v14, v5

    invoke-virtual {v12, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    move v13, v5

    goto :goto_3

    .line 160
    :cond_6
    sget-object v14, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->SERVICE_LIMITS:[Ljava/lang/String;

    aget-object v14, v14, v13

    invoke-virtual {v12, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    goto :goto_3

    :cond_7
    move/from16 v13, v16

    goto :goto_3

    :cond_8
    const/16 v21, 0x0

    :goto_2
    move/from16 v13, v21

    :goto_3
    const-string v12, "serviceTimeout"

    .line 164
    invoke-interface {v3, v7, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v12, :cond_9

    :catch_1
    move-object v15, v6

    move-object v12, v10

    move-object v14, v11

    move/from16 v16, v13

    move/from16 v17, v21

    move-object v11, v8

    :goto_4
    move-object v10, v9

    goto/16 :goto_9

    .line 169
    :cond_9
    :try_start_4
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-gez v12, :cond_a

    move/from16 v12, v21

    :cond_a
    move-object v15, v6

    move-object v14, v11

    move/from16 v17, v12

    move/from16 v16, v13

    move-object v11, v8

    move-object v12, v10

    goto :goto_4

    :cond_b
    const/16 v21, 0x0

    :try_start_5
    const-string v8, "transport"

    .line 179
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    const-string v6, "type"

    .line 180
    invoke-interface {v3, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "Transport"

    const/4 v9, 0x7

    .line 181
    invoke-direct {v1, v8, v6, v9}, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->validateAttribute(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v8, "TRANSPORT_BT"

    .line 182
    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    or-int/lit8 v6, v18, 0x1

    :goto_5
    move/from16 v18, v6

    goto/16 :goto_9

    :cond_c
    const-string v8, "TRANSPORT_WIFI"

    .line 184
    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d

    or-int/lit8 v6, v18, 0x2

    goto :goto_5

    :cond_d
    const-string v8, "TRANSPORT_BLE"

    .line 186
    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e

    or-int/lit8 v6, v18, 0x4

    goto :goto_5

    :cond_e
    const-string v8, "TRANSPORT_USB"

    .line 188
    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    or-int/lit8 v6, v18, 0x8

    goto :goto_5

    :cond_f
    const-string v8, "serviceChannel"

    .line 192
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_18

    const-string v6, "id"

    .line 193
    invoke-interface {v3, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "serviceChannel/id"

    const/16 v9, 0x8

    .line 194
    invoke-direct {v1, v8, v6, v9}, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->validateAttribute(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v8, "dataRate"

    .line 196
    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_10

    .line 198
    sget-object v8, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->TAG:Ljava/lang/String;

    const-string v9, "Parsing new attribute failed.Trying to access old attribute"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "qosDataRate"

    .line 199
    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :cond_10
    const-string v9, "serviceChannel/qoSDataRate"

    const/16 v13, 0x9

    .line 201
    invoke-direct {v1, v9, v8, v13}, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->validateAttribute(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v9, "priority"

    .line 203
    invoke-interface {v3, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_11

    const-string v9, "qosPriority"

    .line 205
    invoke-interface {v3, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :cond_11
    const-string v13, "serviceChannel/qoSPriority"

    const/16 v5, 0xa

    .line 207
    invoke-direct {v1, v13, v9, v5}, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->validateAttribute(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v5, "reliability"

    .line 209
    invoke-interface {v3, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_12

    const-string v5, "qosType"

    .line 211
    invoke-interface {v3, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_12
    const-string v13, "serviceChannel/qoSType"

    const/16 v7, 0xb

    .line 213
    invoke-direct {v1, v13, v5, v7}, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->validateAttribute(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v7, "Low"

    .line 219
    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_14

    :cond_13
    move/from16 v7, v21

    goto :goto_6

    :cond_14
    const-string v7, "High"

    .line 221
    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_13

    const/4 v7, 0x1

    :goto_6
    const-string v8, "Low"

    .line 224
    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_16

    :cond_15
    move/from16 v8, v21

    goto :goto_7

    :cond_16
    const-string v8, "Medium"

    .line 226
    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_17

    const/4 v8, 0x1

    goto :goto_7

    :cond_17
    const-string v8, "High"

    .line 228
    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_15

    const/4 v8, 0x2

    :goto_7
    const-string v9, "enable"

    .line 231
    invoke-virtual {v5, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    .line 236
    new-instance v9, Lcom/samsung/android/sdk/accessory/SAServiceChannel;

    .line 237
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v9, v6, v7, v8, v5}, Lcom/samsung/android/sdk/accessory/SAServiceChannel;-><init>(IIII)V

    .line 241
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v20, 0x1

    goto/16 :goto_9

    :cond_18
    const-string v5, "feature"

    .line 243
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "type"

    const/4 v6, 0x0

    .line 244
    invoke-interface {v3, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "Feature"

    const/16 v8, 0x11

    .line 245
    invoke-direct {v1, v7, v5, v8}, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->validateAttribute(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v7, "message"

    .line 246
    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v19, 0x1

    goto :goto_9

    :cond_19
    move/from16 v21, v6

    move-object v6, v7

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1b

    if-eqz v3, :cond_1b

    .line 252
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v7, "serviceProfile"

    .line 254
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 256
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 257
    invoke-interface {v5, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 259
    new-instance v7, Lcom/samsung/android/sdk/accessory/SAServiceProfile;

    iget-object v9, v1, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->applicationName:Ljava/lang/String;

    move-object v8, v7

    move-object v13, v15

    move-object v6, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move-object/from16 v18, v5

    invoke-direct/range {v8 .. v20}, Lcom/samsung/android/sdk/accessory/SAServiceProfile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/util/List;II)V

    .line 264
    iget-object v5, v1, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->mServiceEndpointsMap:Ljava/util/HashMap;

    if-nez v5, :cond_1a

    .line 265
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v1, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->mServiceEndpointsMap:Ljava/util/HashMap;

    .line 267
    :cond_1a
    iget-object v5, v1, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->mServiceEndpointsMap:Ljava/util/HashMap;

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    invoke-interface {v2}, Ljava/util/List;->clear()V

    move/from16 v16, v21

    move/from16 v17, v16

    move/from16 v18, v17

    move/from16 v19, v18

    move/from16 v20, v19

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    goto :goto_9

    :cond_1b
    move-object v6, v15

    if-ne v4, v9, :cond_1c

    if-eqz v3, :cond_1c

    .line 285
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_1c
    :goto_8
    move-object v15, v6

    :goto_9
    if-eqz v3, :cond_1d

    .line 289
    :try_start_6
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_a

    .line 294
    :catch_2
    :try_start_7
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unable to parse the accessory services configuration file"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 292
    :catch_3
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unable to parse the accessory services configuration file"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1d
    :goto_a
    move/from16 v6, v21

    const/4 v5, 0x1

    const/4 v7, 0x0

    goto/16 :goto_1

    .line 298
    :cond_1e
    sget-object v2, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->TAG:Ljava/lang/String;

    const-string v3, "End document"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v2, v1, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->mServiceEndpointsMap:Ljava/util/HashMap;

    if-nez v2, :cond_1f

    .line 301
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unable to parse the accessory services configuration file"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 303
    :cond_1f
    monitor-exit p0

    const/4 v1, 0x1

    return v1

    .line 119
    :catch_4
    :try_start_8
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "XmlPullParserFactory Exception for Accssory Service profile XML file"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 80
    monitor-exit p0

    throw v2
.end method

.method private validateAttribute(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 345
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 346
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Unable to parse the accessory services configuration file :"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    return-void
.end method


# virtual methods
.method declared-synchronized fetchServicesDescription(Ljava/lang/String;)Lcom/samsung/android/sdk/accessory/SAServiceProfile;
    .locals 3

    monitor-enter p0

    .line 333
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->mServiceEndpointsMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 334
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->parseServicesXML()Z

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->mServiceEndpointsMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 337
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->mServiceEndpointsMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/accessory/SAServiceProfile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 339
    :cond_1
    :try_start_1
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fetchServicesDescription: Class not found in registered list"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    .line 341
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 332
    monitor-exit p0

    throw p1
.end method
