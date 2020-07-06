.class public Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorMultiLineRenderer;
.super Lcom/github/mikephil/charting/renderer/XAxisRenderer;
.source "SHealthMonitorMultiLineRenderer.java"


# static fields
.field private static final mGap:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    .line 14
    invoke-static {v0}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    sput v0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorMultiLineRenderer;->mGap:F

    return-void
.end method

.method public constructor <init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/components/XAxis;Lcom/github/mikephil/charting/utils/Transformer;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/renderer/XAxisRenderer;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/components/XAxis;Lcom/github/mikephil/charting/utils/Transformer;)V

    return-void
.end method


# virtual methods
.method protected drawLabel(Landroid/graphics/Canvas;Ljava/lang/String;FFLcom/github/mikephil/charting/utils/MPPointF;F)V
    .locals 14

    move-object v0, p0

    const-string v1, "\n"

    move-object/from16 v3, p2

    .line 22
    invoke-virtual {v3, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 23
    array-length v2, v1

    const/4 v4, 0x1

    if-le v2, v4, :cond_0

    const/4 v2, 0x0

    .line 24
    aget-object v6, v1, v2

    sget v2, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorMultiLineRenderer;->mGap:F

    sub-float v2, p4, v2

    iget-object v3, v0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorMultiLineRenderer;->mAxisLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextSize()F

    move-result v3

    sub-float v8, v2, v3

    iget-object v9, v0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorMultiLineRenderer;->mAxisLabelPaint:Landroid/graphics/Paint;

    move-object v5, p1

    move/from16 v7, p3

    move-object/from16 v10, p5

    move/from16 v11, p6

    invoke-static/range {v5 .. v11}, Lcom/github/mikephil/charting/utils/Utils;->drawXAxisValue(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;Lcom/github/mikephil/charting/utils/MPPointF;F)V

    .line 25
    aget-object v8, v1, v4

    iget-object v11, v0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorMultiLineRenderer;->mAxisLabelPaint:Landroid/graphics/Paint;

    move-object v7, p1

    move/from16 v9, p3

    move/from16 v10, p4

    move-object/from16 v12, p5

    move/from16 v13, p6

    invoke-static/range {v7 .. v13}, Lcom/github/mikephil/charting/utils/Utils;->drawXAxisValue(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;Lcom/github/mikephil/charting/utils/MPPointF;F)V

    return-void

    .line 27
    :cond_0
    iget-object v6, v0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorMultiLineRenderer;->mAxisLabelPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-static/range {v2 .. v8}, Lcom/github/mikephil/charting/utils/Utils;->drawXAxisValue(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;Lcom/github/mikephil/charting/utils/MPPointF;F)V

    return-void
.end method
