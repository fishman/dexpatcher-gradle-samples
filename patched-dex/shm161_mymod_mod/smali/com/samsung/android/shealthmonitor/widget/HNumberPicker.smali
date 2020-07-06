.class public Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;
.super Landroid/view/View;
.source "HNumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/shealthmonitor/widget/HNumberPicker$OnScrollListener;,
        Lcom/samsung/android/shealthmonitor/widget/HNumberPicker$OnValueChangeListenerInScrolling;,
        Lcom/samsung/android/shealthmonitor/widget/HNumberPicker$OnValueChangeListenerRelativeToRaw;,
        Lcom/samsung/android/shealthmonitor/widget/HNumberPicker$OnValueChangeListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_CURRENT_ITEM_INDEX_EFFECT:Z = false

.field private static final DEFAULT_DIVIDER_COLOR:I = 0x0

.field private static final DEFAULT_DIVIDER_HEIGHT:I = 0x2

.field private static final DEFAULT_DIVIDER_MARGIN_HORIZONTAL:I = 0x0

.field private static final DEFAULT_INTERVAL_REVISE_DURATION:I = 0x12c

.field private static final DEFAULT_ITEM_PADDING_DP_H:I = 0x5

.field private static final DEFAULT_ITEM_PADDING_DP_V:I = 0x2

.field private static final DEFAULT_MARGIN_END_OF_HINT_DP:I = 0x8

.field private static final DEFAULT_MARGIN_START_OF_HINT_DP:I = 0x8

.field private static final DEFAULT_MAX_SCROLL_BY_INDEX_DURATION:I = 0x258

.field private static final DEFAULT_MIN_SCROLL_BY_INDEX_DURATION:I = 0x12c

.field private static final DEFAULT_RESPOND_CHANGE_IN_MAIN_THREAD:Z = true

.field private static final DEFAULT_RESPOND_CHANGE_ON_DETACH:Z = false

.field private static final DEFAULT_SHOWN_COUNT:I = 0x3

.field private static final DEFAULT_SHOW_DIVIDER:Z = true

.field private static final DEFAULT_TEXT_COLOR_NORMAL:I = 0x1a5280f2

.field private static final DEFAULT_TEXT_COLOR_SELECTED:I = -0xad7f0e

.field private static final DEFAULT_TEXT_SIZE_HINT_SP:I = 0xe

.field private static final DEFAULT_TEXT_SIZE_NORMAL_SP:I = 0xe

.field private static final DEFAULT_TEXT_SIZE_SELECTED_SP:I = 0x10

.field private static final DEFAULT_WRAP_SELECTOR_WHEEL:Z = true

.field private static final HANDLER_INTERVAL_REFRESH:I = 0x20

.field private static final HANDLER_WHAT_LISTENER_VALUE_CHANGED:I = 0x2

.field private static final HANDLER_WHAT_REFRESH:I = 0x1

.field private static final HANDLER_WHAT_REQUEST_LAYOUT:I = 0x3

.field private static final TEXT_ELLIPSIZE_END:Ljava/lang/String; = "end"

.field private static final TEXT_ELLIPSIZE_MIDDLE:Ljava/lang/String; = "middle"

.field private static final TEXT_ELLIPSIZE_START:Ljava/lang/String; = "start"


# instance fields
.field private currY:F

.field private dividerY0:F

.field private dividerY1:F

.field private downY:F

.field private downYGlobal:F

.field private mAlterHint:Ljava/lang/String;

.field private mAlterTextArrayWithMeasureHint:[Ljava/lang/CharSequence;

.field private mAlterTextArrayWithoutMeasureHint:[Ljava/lang/CharSequence;

.field private mCurrDrawFirstItemIndex:I

.field private mCurrDrawFirstItemY:I

.field private mCurrDrawGlobalY:I

.field private mCurrentItemIndexEffect:Z

.field private mDisplayedValues:[Ljava/lang/String;

.field private mDividerColor:I

.field private mDividerHeight:I

.field private mDividerIndex0:I

.field private mDividerIndex1:I

.field private mDividerMarginL:I

.field private mDividerMarginR:I

.field private mEmptyItemHint:Ljava/lang/String;

.field private mFlagMayPress:Z

.field private mFriction:F

.field private mHandlerInMainThread:Landroid/os/Handler;

.field private mHandlerInNewThread:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHasInit:Z

.field private mHintText:Ljava/lang/String;

.field private mInScrollingPickedNewValue:I

.field private mInScrollingPickedOldValue:I

.field private mItemHeight:I

.field private mItemPaddingHorizontal:I

.field private mItemPaddingVertical:I

.field private mMarginEndOfHint:I

.field private mMarginStartOfHint:I

.field private mMaxHeightOfDisplayedValues:I

.field private mMaxShowIndex:I

.field private mMaxValue:I

.field private mMaxWidthOfAlterArrayWithMeasureHint:I

.field private mMaxWidthOfAlterArrayWithoutMeasureHint:I

.field private mMaxWidthOfDisplayedValues:I

.field private mMinShowIndex:I

.field private mMinValue:I

.field private mMiniVelocityFling:I

.field private mNotWrapLimitYBottom:I

.field private mNotWrapLimitYTop:I

.field private mOnScrollListener:Lcom/samsung/android/shealthmonitor/widget/HNumberPicker$OnScrollListener;

.field private mOnValueChangeListener:Lcom/samsung/android/shealthmonitor/widget/HNumberPicker$OnValueChangeListener;

.field private mOnValueChangeListenerInScrolling:Lcom/samsung/android/shealthmonitor/widget/HNumberPicker$OnValueChangeListenerInScrolling;

.field private mOnValueChangeListenerRaw:Lcom/samsung/android/shealthmonitor/widget/HNumberPicker$OnValueChangeListenerRelativeToRaw;

.field private mPaintDivider:Landroid/graphics/Paint;

.field private mPaintHint:Landroid/graphics/Paint;

.field private mPaintText:Landroid/text/TextPaint;

.field private mPendingWrapToLinear:Z

.field private mPrevPickedIndex:I

.field private mRespondChangeInMainThread:Z

.field private mRespondChangeOnDetach:Z

.field private mScaledTouchSlop:I

.field private mScrollState:I

.field private mScroller:Landroid/widget/Scroller;

.field private mShowDivider:Z

.field private mShownCount:I

.field private mSpecModeH:I

.field private mSpecModeW:I

.field private mTextColorHint:I

.field private mTextColorNormal:I

.field private mTextColorSelected:I

.field private mTextEllipsize:Ljava/lang/String;

.field private mTextSizeHint:I

.field private mTextSizeHintCenterYOffset:F

.field private mTextSizeNormal:I

.field private mTextSizeNormalCenterYOffset:F

.field private mTextSizeSelected:I

.field private mTextSizeSelectedCenterYOffset:F

.field private mTextWidthCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mViewCenterX:F

.field private mViewHeight:I

.field private mViewWidth:I

.field private mWidthOfAlterHint:I

.field private mWidthOfHintText:I

.field private mWrapSelectorWheel:Z

.field private mWrapSelectorWheelCheck:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 220
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const v0, 0x1a5280f2

    .line 103
    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mTextColorNormal:I

    const v0, -0xad7f0e

    .line 104
    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mTextColorSelected:I

    .line 105
    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mTextColorHint:I

    const/4 v0, 0x0

    .line 106
    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mTextSizeNormal:I

    .line 107
    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mTextSizeSelected:I

    .line 108
    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mTextSizeHint:I

    .line 109
    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mWidthOfHintText:I

    .line 110
    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mWidthOfAlterHint:I

    .line 111
    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMarginStartOfHint:I

    .line 112
    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMarginEndOfHint:I

    .line 113
    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mItemPaddingVertical:I

    .line 114
    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mItemPaddingHorizontal:I

    .line 115
    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mDividerColor:I

    const/4 v1, 0x2

    .line 116
    iput v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mDividerHeight:I

    .line 117
    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mDividerMarginL:I

    .line 118
    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mDividerMarginR:I

    const/4 v1, 0x3

    .line 119
    iput v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mShownCount:I

    .line 120
    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mDividerIndex0:I

    .line 121
    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mDividerIndex1:I

    .line 122
    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMinShowIndex:I

    const/16 v1, 0xb

    .line 123
    iput v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMaxShowIndex:I

    .line 125
    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMinValue:I

    .line 127
    iput v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMaxValue:I

    .line 128
    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMaxWidthOfDisplayedValues:I

    .line 129
    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMaxHeightOfDisplayedValues:I

    .line 130
    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMaxWidthOfAlterArrayWithMeasureHint:I

    .line 131
    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMaxWidthOfAlterArrayWithoutMeasureHint:I

    .line 132
    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mPrevPickedIndex:I

    const/16 v1, 0x96

    .line 133
    iput v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMiniVelocityFling:I

    const/16 v1, 0x8

    .line 134
    iput v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mScaledTouchSlop:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 140
    iput v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mFriction:F

    const/4 v1, 0x0

    .line 141
    iput v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mTextSizeNormalCenterYOffset:F

    .line 142
    iput v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mTextSizeSelectedCenterYOffset:F

    .line 143
    iput v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mTextSizeHintCenterYOffset:F

    const/4 v2, 0x1

    .line 145
    iput-boolean v2, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mShowDivider:Z

    .line 147
    iput-boolean v2, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mWrapSelectorWheel:Z

    .line 149
    iput-boolean v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mCurrentItemIndexEffect:Z

    .line 151
    iput-boolean v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mHasInit:Z

    .line 153
    iput-boolean v2, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mWrapSelectorWheelCheck:Z

    .line 155
    iput-boolean v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mPendingWrapToLinear:Z

    .line 164
    iput-boolean v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mRespondChangeOnDetach:Z

    .line 169
    iput-boolean v2, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mRespondChangeInMainThread:Z

    .line 174
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mPaintDivider:Landroid/graphics/Paint;

    .line 175
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2}, Landroid/text/TextPaint;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mPaintText:Landroid/text/TextPaint;

    .line 176
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mPaintHint:Landroid/graphics/Paint;

    .line 186
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mTextWidthCache:Ljava/util/Map;

    .line 217
    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mScrollState:I

    .line 1030
    iput v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->downYGlobal:F

    .line 1031
    iput v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->downY:F

    .line 1032
    iput v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->currY:F

    .line 1044
    iput-boolean v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mFlagMayPress:Z

    .line 1156
    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mCurrDrawFirstItemIndex:I

    .line 1158
    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mCurrDrawFirstItemY:I

    .line 1160
    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mCurrDrawGlobalY:I

    .line 1209
    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mSpecModeW:I

    .line 1210
    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mSpecModeH:I

    .line 221
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 225
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x1a5280f2

    .line 103
    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mTextColorNormal:I

    const v0, -0xad7f0e

    .line 104
    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mTextColorSelected:I

    .line 105
    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mTextColorHint:I

    const/4 v0, 0x0

    .line 106
    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mTextSizeNormal:I

    .line 107
    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mTextSizeSelected:I

    .line 108
    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mTextSizeHint:I

    .line 109
    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mWidthOfHintText:I

    .line 110
    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mWidthOfAlterHint:I

    .line 111
    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMarginStartOfHint:I

    .line 112
    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMarginEndOfHint:I

    .line 113
    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mItemPaddingVertical:I

    .line 114
    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mItemPaddingHorizontal:I

    .line 115
    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mDividerColor:I

    const/4 v1, 0x2

    .line 116
    iput v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mDividerHeight:I

    .line 117
    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mDividerMarginL:I

    .line 118
    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mDividerMarginR:I

    const/4 v1, 0x3

    .line 119
    iput v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mShownCount:I

    .line 120
    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mDividerIndex0:I

    .line 121
    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mDividerIndex1:I

    .line 122
    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMinShowIndex:I

    const/16 v1, 0xb

    .line 123
    iput v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMaxShowIndex:I

    .line 125
    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMinValue:I

    .line 127
    iput v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMaxValue:I

    .line 128
    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMaxWidthOfDisplayedValues:I

    .line 129
    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMaxHeightOfDisplayedValues:I

    .line 130
    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMaxWidthOfAlterArrayWithMeasureHint:I

    .line 131
    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMaxWidthOfAlterArrayWithoutMeasureHint:I

    .line 132
    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mPrevPickedIndex:I

    const/16 v1, 0x96

    .line 133
    iput v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMiniVelocityFling:I

    const/16 v1, 0x8

    .line 134
    iput v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mScaledTouchSlop:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 140
    iput v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mFriction:F

    const/4 v1, 0x0

    .line 141
    iput v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mTextSizeNormalCenterYOffset:F

    .line 142
    iput v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mTextSizeSelectedCenterYOffset:F

    .line 143
    iput v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mTextSizeHintCenterYOffset:F

    const/4 v2, 0x1

    .line 145
    iput-boolean v2, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mShowDivider:Z

    .line 147
    iput-boolean v2, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mWrapSelectorWheel:Z

    .line 149
    iput-boolean v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mCurrentItemIndexEffect:Z

    .line 151
    iput-boolean v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mHasInit:Z

    .line 153
    iput-boolean v2, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mWrapSelectorWheelCheck:Z

    .line 155
    iput-boolean v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mPendingWrapToLinear:Z

    .line 164
    iput-boolean v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mRespondChangeOnDetach:Z

    .line 169
    iput-boolean v2, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mRespondChangeInMainThread:Z

    .line 174
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mPaintDivider:Landroid/graphics/Paint;

    .line 175
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2}, Landroid/text/TextPaint;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mPaintText:Landroid/text/TextPaint;

    .line 176
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mPaintHint:Landroid/graphics/Paint;

    .line 186
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mTextWidthCache:Ljava/util/Map;

    .line 217
    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mScrollState:I

    .line 1030
    iput v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->downYGlobal:F

    .line 1031
    iput v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->downY:F

    .line 1032
    iput v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->currY:F

    .line 1044
    iput-boolean v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mFlagMayPress:Z

    .line 1156
    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mCurrDrawFirstItemIndex:I

    .line 1158
    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mCurrDrawFirstItemY:I

    .line 1160
    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mCurrDrawGlobalY:I

    .line 1209
    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mSpecModeW:I

    .line 1210
    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mSpecModeH:I

    .line 226
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->initAttr(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 227
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 231
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p3, 0x1a5280f2

    .line 103
    iput p3, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mTextColorNormal:I

    const p3, -0xad7f0e

    .line 104
    iput p3, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mTextColorSelected:I

    .line 105
    iput p3, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mTextColorHint:I

    const/4 p3, 0x0

    .line 106
    iput p3, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mTextSizeNormal:I

    .line 107
    iput p3, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mTextSizeSelected:I

    .line 108
    iput p3, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mTextSizeHint:I

    .line 109
    iput p3, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mWidthOfHintText:I

    .line 110
    iput p3, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mWidthOfAlterHint:I

    .line 111
    iput p3, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMarginStartOfHint:I

    .line 112
    iput p3, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMarginEndOfHint:I

    .line 113
    iput p3, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mItemPaddingVertical:I

    .line 114
    iput p3, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mItemPaddingHorizontal:I

    .line 115
    iput p3, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mDividerColor:I

    const/4 v0, 0x2

    .line 116
    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mDividerHeight:I

    .line 117
    iput p3, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mDividerMarginL:I

    .line 118
    iput p3, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mDividerMarginR:I

    const/4 v0, 0x3

    .line 119
    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mShownCount:I

    .line 120
    iput p3, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mDividerIndex0:I

    .line 121
    iput p3, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mDividerIndex1:I

    .line 122
    iput p3, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMinShowIndex:I

    const/16 v0, 0xb

    .line 123
    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMaxShowIndex:I

    .line 125
    iput p3, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMinValue:I

    .line 127
    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMaxValue:I

    .line 128
    iput p3, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMaxWidthOfDisplayedValues:I

    .line 129
    iput p3, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMaxHeightOfDisplayedValues:I

    .line 130
    iput p3, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMaxWidthOfAlterArrayWithMeasureHint:I

    .line 131
    iput p3, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMaxWidthOfAlterArrayWithoutMeasureHint:I

    .line 132
    iput p3, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mPrevPickedIndex:I

    const/16 v0, 0x96

    .line 133
    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMiniVelocityFling:I

    const/16 v0, 0x8

    .line 134
    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mScaledTouchSlop:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 140
    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mFriction:F

    const/4 v0, 0x0

    .line 141
    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mTextSizeNormalCenterYOffset:F

    .line 142
    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mTextSizeSelectedCenterYOffset:F

    .line 143
    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mTextSizeHintCenterYOffset:F

    const/4 v1, 0x1

    .line 145
    iput-boolean v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mShowDivider:Z

    .line 147
    iput-boolean v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mWrapSelectorWheel:Z

    .line 149
    iput-boolean p3, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mCurrentItemIndexEffect:Z

    .line 151
    iput-boolean p3, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mHasInit:Z

    .line 153
    iput-boolean v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mWrapSelectorWheelCheck:Z

    .line 155
    iput-boolean p3, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mPendingWrapToLinear:Z

    .line 164
    iput-boolean p3, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mRespondChangeOnDetach:Z

    .line 169
    iput-boolean v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mRespondChangeInMainThread:Z

    .line 174
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mPaintDivider:Landroid/graphics/Paint;

    .line 175
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mPaintText:Landroid/text/TextPaint;

    .line 176
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mPaintHint:Landroid/graphics/Paint;

    .line 186
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mTextWidthCache:Ljava/util/Map;

    .line 217
    iput p3, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mScrollState:I

    .line 1030
    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->downYGlobal:F

    .line 1031
    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->downY:F

    .line 1032
    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->currY:F

    .line 1044
    iput-boolean p3, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mFlagMayPress:Z

    .line 1156
    iput p3, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mCurrDrawFirstItemIndex:I

    .line 1158
    iput p3, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mCurrDrawFirstItemY:I

    .line 1160
    iput p3, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mCurrDrawGlobalY:I

    .line 1209
    iput p3, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mSpecModeW:I

    .line 1210
    iput p3, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mSpecModeH:I

    .line 232
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->initAttr(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 233
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;)Landroid/widget/Scroller;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mScroller:Landroid/widget/Scroller;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mScrollState:I

    return p0
.end method

.method static synthetic access$1000(Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;)Z
    .locals 0

    .line 31
    iget-boolean p0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mRespondChangeInMainThread:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;)Landroid/os/Handler;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mHandlerInMainThread:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;IILjava/lang/Object;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->respondPickedValueChanged(IILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->onScrollStateChange(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;IIILjava/lang/Object;)Landroid/os/Message;
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->getMsg(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;)Landroid/os/Handler;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mHandlerInNewThread:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$500(Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mCurrDrawFirstItemY:I

    return p0
.end method

.method static synthetic access$600(Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mItemHeight:I

    return p0
.end method

.method static synthetic access$700(Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mCurrDrawGlobalY:I

    return p0
.end method

.method static synthetic access$800(Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;I)I
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->getWillPickIndexByGlobalY(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mPrevPickedIndex:I

    return p0
.end method

.method private calculateFirstItemParameterByGlobalY()V
    .locals 3

    .line 1173
    iget v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mCurrDrawGlobalY:I

    int-to-float v0, v0

    iget v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mItemHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mCurrDrawFirstItemIndex:I

    .line 1174
    iget v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mCurrDrawGlobalY:I

    iget v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mCurrDrawFirstItemIndex:I

    iget v2, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mItemHeight:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    neg-int v0, v0

    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mCurrDrawFirstItemY:I

    .line 1175
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mOnValueChangeListenerInScrolling:Lcom/samsung/android/shealthmonitor/widget/HNumberPicker$OnValueChangeListenerInScrolling;

    if-eqz v0, :cond_3

    .line 1176
    iget v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mCurrDrawFirstItemY:I

    neg-int v0, v0

    iget v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mItemHeight:I

    div-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_0

    .line 1177
    iget v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mCurrDrawFirstItemIndex:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mShownCount:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mInScrollingPickedNewValue:I

    goto :goto_0

    .line 1179
    :cond_0
    iget v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mCurrDrawFirstItemIndex:I

    iget v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mShownCount:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mInScrollingPickedNewValue:I

    .line 1181
    :goto_0
    iget v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mInScrollingPickedNewValue:I

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->getOneRecycleSize()I

    move-result v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mInScrollingPickedNewValue:I

    .line 1182
    iget v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mInScrollingPickedNewValue:I

    if-gez v0, :cond_1

    .line 1183
    iget v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mInScrollingPickedNewValue:I

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->getOneRecycleSize()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mInScrollingPickedNewValue:I

    .line 1185
    :cond_1
    iget v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mInScrollingPickedOldValue:I

    iget v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mInScrollingPickedNewValue:I

    if-eq v0, v1, :cond_2

    .line 1186
    iget v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mInScrollingPickedOldValue:I

    iget v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMinValue:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mInScrollingPickedNewValue:I

    iget v2, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMinValue:I

    add-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->respondPickedValueChangedInScrolling(II)V

    .line 1188
    :cond_2
    iget v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mInScrollingPickedNewValue:I

    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mInScrollingPickedOldValue:I

    :cond_3
    return-void
.end method

.method private click(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1106
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    const/4 v0, 0x0

    .line 1107
    :goto_0
    iget v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mShownCount:I

    if-ge v0, v1, :cond_1

    .line 1108
    iget v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mItemHeight:I

    mul-int/2addr v1, v0

    int-to-float v1, v1

    cmpg-float v1, v1, p1

    if-gtz v1, :cond_0

    iget v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mItemHeight:I

    add-int/lit8 v2, v0, 0x1

    mul-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    .line 1109
    invoke-direct {p0, v0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->clickItem(I)V

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private clickItem(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 1116
    iget v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mShownCount:I

    if-ge p1, v0, :cond_0

    .line 1118
    iget v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mShownCount:I

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->scrollByIndexSmoothly(I)V

    :cond_0
    return-void
.end method

.method private convertCharSequenceArrayToStringArray([Ljava/lang/CharSequence;)[Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1529
    :cond_0
    array-length p0, p1

    new-array p0, p0, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 1530
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 1531
    aget-object v1, p1, v0

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method private correctPositionByDefaultValue(IZ)V
    .locals 2

    .line 1138
    iget v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mShownCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mCurrDrawFirstItemIndex:I

    .line 1139
    iget p1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mCurrDrawFirstItemIndex:I

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->getOneRecycleSize()I

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->getIndexByRawIndex(IIZ)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mCurrDrawFirstItemIndex:I

    .line 1140
    iget p1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mItemHeight:I

    if-nez p1, :cond_0

    .line 1141
    iput-boolean v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mCurrentItemIndexEffect:Z

    return-void

    .line 1143
    :cond_0
    iget p1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mCurrDrawFirstItemIndex:I

    iget p2, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mItemHeight:I

    mul-int/2addr p1, p2

    iput p1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mCurrDrawGlobalY:I

    .line 1145
    iget p1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mCurrDrawFirstItemIndex:I

    iget p2, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mShownCount:I

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    iput p1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mInScrollingPickedOldValue:I

    .line 1146
    iget p1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mInScrollingPickedOldValue:I

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->getOneRecycleSize()I

    move-result p2

    rem-int/2addr p1, p2

    iput p1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mInScrollingPickedOldValue:I

    .line 1147
    iget p1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mInScrollingPickedOldValue:I

    if-gez p1, :cond_1

    .line 1148
    iget p1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mInScrollingPickedOldValue:I

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->getOneRecycleSize()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mInScrollingPickedOldValue:I

    .line 1150
    :cond_1
    iget p1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mInScrollingPickedOldValue:I

    iput p1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mInScrollingPickedNewValue:I

    .line 1151
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->calculateFirstItemParameterByGlobalY()V

    return-void
.end method

.method private dp2px(Landroid/content/Context;F)I
    .locals 0

    .line 1497
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p2, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p2, p0

    float-to-int p0, p2

    return p0
.end method

.method private drawContent(Landroid/graphics/Canvas;)V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    move v1, v0

    .line 1266
    :goto_0
    iget v3, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mShownCount:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    if-ge v1, v3, :cond_6

    .line 1267
    iget v3, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mCurrDrawFirstItemY:I

    iget v5, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mItemHeight:I

    mul-int/2addr v5, v1

    add-int/2addr v3, v5

    int-to-float v3, v3

    .line 1268
    iget v5, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mCurrDrawFirstItemIndex:I

    add-int/2addr v5, v1

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->getOneRecycleSize()I

    move-result v6

    iget-boolean v7, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mWrapSelectorWheel:Z

    if-eqz v7, :cond_0

    iget-boolean v7, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mWrapSelectorWheelCheck:Z

    if-eqz v7, :cond_0

    move v7, v4

    goto :goto_1

    :cond_0
    move v7, v0

    :goto_1
    invoke-direct {p0, v5, v6, v7}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->getIndexByRawIndex(IIZ)I

    move-result v5

    .line 1269
    iget v6, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mShownCount:I

    div-int/lit8 v6, v6, 0x2

    if-ne v1, v6, :cond_1

    .line 1270
    iget v2, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mItemHeight:I

    iget v4, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mCurrDrawFirstItemY:I

    add-int/2addr v2, v4

    int-to-float v2, v2

    iget v4, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mItemHeight:I

    int-to-float v4, v4

    div-float/2addr v2, v4

    .line 1271
    iget v4, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mTextColorNormal:I

    iget v6, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mTextColorSelected:I

    invoke-direct {p0, v2, v4, v6}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->getEvaluateColor(FII)I

    move-result v4

    .line 1272
    iget v6, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mTextSizeNormal:I

    int-to-float v6, v6

    iget v7, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mTextSizeSelected:I

    int-to-float v7, v7

    invoke-direct {p0, v2, v6, v7}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->getEvaluateSize(FFF)F

    move-result v6

    .line 1273
    iget v7, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mTextSizeNormalCenterYOffset:F

    iget v8, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mTextSizeSelectedCenterYOffset:F

    invoke-direct {p0, v2, v7, v8}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->getEvaluateSize(FFF)F

    move-result v7

    goto :goto_2

    .line 1275
    :cond_1
    iget v6, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mShownCount:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v4

    if-ne v1, v6, :cond_2

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v2

    .line 1276
    iget v6, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mTextColorNormal:I

    iget v7, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mTextColorSelected:I

    invoke-direct {p0, v4, v6, v7}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->getEvaluateColor(FII)I

    move-result v6

    .line 1277
    iget v7, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mTextSizeNormal:I

    int-to-float v7, v7

    iget v8, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mTextSizeSelected:I

    int-to-float v8, v8

    invoke-direct {p0, v4, v7, v8}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->getEvaluateSize(FFF)F

    move-result v7

    .line 1278
    iget v8, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mTextSizeNormalCenterYOffset:F

    iget v9, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mTextSizeSelectedCenterYOffset:F

    invoke-direct {p0, v4, v8, v9}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->getEvaluateSize(FFF)F

    move-result v4

    move v10, v7

    move v7, v4

    move v4, v6

    move v6, v10

    goto :goto_2

    .line 1281
    :cond_2
    iget v4, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mTextColorNormal:I

    .line 1282
    iget v6, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mTextSizeNormal:I

    int-to-float v6, v6

    .line 1283
    iget v7, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mTextSizeNormalCenterYOffset:F

    .line 1285
    :goto_2
    iget-object v8, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mPaintText:Landroid/text/TextPaint;

    invoke-virtual {v8, v4}, Landroid/text/TextPaint;->setColor(I)V

    .line 1286
    iget-object v4, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mPaintText:Landroid/text/TextPaint;

    invoke-virtual {v4, v6}, Landroid/text/TextPaint;->setTextSize(F)V

    const/high16 v4, 0x40000000    # 2.0f

    if-ltz v5, :cond_4

    .line 1288
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->getOneRecycleSize()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 1289
    iget-object v6, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    iget v8, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMinShowIndex:I

    add-int/2addr v5, v8

    aget-object v5, v6, v5

    .line 1290
    iget-object v6, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mTextEllipsize:Ljava/lang/String;

    if-eqz v6, :cond_3

    .line 1291
    iget-object v6, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mPaintText:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->getWidth()I

    move-result v8

    iget v9, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mItemPaddingHorizontal:I

    mul-int/lit8 v9, v9, 0x2

    sub-int/2addr v8, v9

    int-to-float v8, v8

    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->getEllipsizeType()Landroid/text/TextUtils$TruncateAt;

    move-result-object v9

    invoke-static {v5, v6, v8, v9}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 1293
    :cond_3
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mViewCenterX:F

    iget v8, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mItemHeight:I

    int-to-float v8, v8

    div-float/2addr v8, v4

    add-float/2addr v3, v8

    add-float/2addr v3, v7

    iget-object v4, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mPaintText:Landroid/text/TextPaint;

    invoke-virtual {p1, v5, v6, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 1295
    :cond_4
    iget-object v5, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mEmptyItemHint:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 1296
    iget-object v5, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mEmptyItemHint:Ljava/lang/String;

    iget v6, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mViewCenterX:F

    iget v8, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mItemHeight:I

    int-to-float v8, v8

    div-float/2addr v8, v4

    add-float/2addr v3, v8

    add-float/2addr v3, v7

    iget-object v4, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mPaintText:Landroid/text/TextPaint;

    invoke-virtual {p1, v5, v6, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_5
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method private drawHint(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1325
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mHintText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1326
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mHintText:Ljava/lang/String;

    iget v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mViewCenterX:F

    iget v2, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMaxWidthOfDisplayedValues:I

    iget v3, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mWidthOfHintText:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMarginStartOfHint:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->dividerY0:F

    iget v4, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->dividerY1:F

    add-float/2addr v2, v4

    div-float/2addr v2, v3

    iget v3, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mTextSizeHintCenterYOffset:F

    add-float/2addr v2, v3

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mPaintHint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawLine(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1316
    iget-boolean v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mShowDivider:Z

    if-eqz v0, :cond_0

    .line 1317
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mDividerMarginL:I

    add-int/2addr v0, v1

    int-to-float v2, v0

    iget v3, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->dividerY0:F

    iget v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mViewWidth:I

    .line 1318
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mDividerMarginR:I

    sub-int/2addr v0, v1

    int-to-float v4, v0

    iget v5, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->dividerY0:F

    iget-object v6, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mPaintDivider:Landroid/graphics/Paint;

    move-object v1, p1

    .line 1317
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1319
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mDividerMarginL:I

    add-int/2addr v0, v1

    int-to-float v2, v0

    iget v3, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->dividerY1:F

    iget v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mViewWidth:I

    .line 1320
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mDividerMarginR:I

    sub-int/2addr v0, v1

    int-to-float v4, v0

    iget v5, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->dividerY1:F

    iget-object v6, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mPaintDivider:Landroid/graphics/Paint;

    move-object v1, p1

    .line 1319
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private getEllipsizeType()Landroid/text/TextUtils$TruncateAt;
    .locals 2

    .line 1303
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mTextEllipsize:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x4009266b

    if-eq v0, v1, :cond_2

    const v1, 0x188db

    if-eq v0, v1, :cond_1

    const v1, 0x68ac462

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "start"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    const-string v0, "end"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x2

    goto :goto_1

    :cond_2
    const-string v0, "middle"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, -0x1

    :goto_1
    packed-switch p0, :pswitch_data_0

    .line 1311
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Illegal text ellipsize type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1309
    :pswitch_0
    sget-object p0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    return-object p0

    .line 1307
    :pswitch_1
    sget-object p0, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    return-object p0

    .line 1305
    :pswitch_2
    sget-object p0, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getEvaluateColor(FII)I
    .locals 6

    const/high16 p0, -0x1000000

    and-int v0, p2, p0

    ushr-int/lit8 v0, v0, 0x18

    const/high16 v1, 0xff0000

    and-int v2, p2, v1

    ushr-int/lit8 v2, v2, 0x10

    const v3, 0xff00

    and-int v4, p2, v3

    ushr-int/lit8 v4, v4, 0x8

    and-int/lit16 p2, p2, 0xff

    ushr-int/lit8 p2, p2, 0x0

    and-int/2addr p0, p3

    ushr-int/lit8 p0, p0, 0x18

    and-int/2addr v1, p3

    ushr-int/lit8 v1, v1, 0x10

    and-int/2addr v3, p3

    ushr-int/lit8 v3, v3, 0x8

    and-int/lit16 p3, p3, 0xff

    ushr-int/lit8 p3, p3, 0x0

    int-to-float v5, v0

    sub-int/2addr p0, v0

    int-to-float p0, p0

    mul-float/2addr p0, p1

    add-float/2addr v5, p0

    float-to-int p0, v5

    int-to-float v0, v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v1, v4

    sub-int/2addr v3, v4

    int-to-float v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v2, p2

    sub-int/2addr p3, p2

    int-to-float p2, p3

    mul-float/2addr p2, p1

    add-float/2addr v2, p2

    float-to-int p1, v2

    shl-int/lit8 p0, p0, 0x18

    shl-int/lit8 p2, v0, 0x10

    or-int/2addr p0, p2

    shl-int/lit8 p2, v1, 0x8

    or-int/2addr p0, p2

    or-int/2addr p0, p1

    return p0
.end method

.method private getEvaluateSize(FFF)F
    .locals 0

    sub-float/2addr p3, p2

    mul-float/2addr p3, p1

    add-float/2addr p2, p3

    return p2
.end method

.method private getIndexByRawIndex(IIZ)I
    .locals 0

    if-gtz p2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-eqz p3, :cond_2

    .line 965
    rem-int/2addr p1, p2

    if-gez p1, :cond_1

    add-int/2addr p1, p2

    :cond_1
    return p1

    :cond_2
    return p1
.end method

.method private getMaxWidthOfTextArray([Ljava/lang/CharSequence;Landroid/graphics/Paint;)I
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1347
    :cond_0
    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v0, v1, :cond_2

    aget-object v3, p1, v0

    if-eqz v3, :cond_1

    .line 1349
    invoke-direct {p0, v3, p2}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->getTextWidth(Ljava/lang/CharSequence;Landroid/graphics/Paint;)I

    move-result v3

    .line 1350
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method private getMsg(I)Landroid/os/Message;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1466
    invoke-direct {p0, p1, v0, v0, v1}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->getMsg(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method private getMsg(IIILjava/lang/Object;)Landroid/os/Message;
    .locals 0

    .line 1470
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p0

    .line 1471
    iput p1, p0, Landroid/os/Message;->what:I

    .line 1472
    iput p2, p0, Landroid/os/Message;->arg1:I

    .line 1473
    iput p3, p0, Landroid/os/Message;->arg2:I

    .line 1474
    iput-object p4, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    return-object p0
.end method

.method private getTextCenterYOffset(Landroid/graphics/Paint$FontMetrics;)F
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1126
    :cond_0
    iget p0, p1, Landroid/graphics/Paint$FontMetrics;->top:F

    iget p1, p1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    add-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p0, p1

    return p0
.end method

.method private getTextWidth(Ljava/lang/CharSequence;Landroid/graphics/Paint;)I
    .locals 1

    .line 1357
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1360
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1362
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mTextWidthCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1363
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mTextWidthCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 1365
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 1369
    :cond_1
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p2

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p2, v0

    float-to-int p2, p2

    .line 1370
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mTextWidthCache:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return p2
.end method

.method private getWillPickIndexByGlobalY(I)I
    .locals 3

    .line 951
    iget v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mItemHeight:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 952
    :cond_0
    iget v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mItemHeight:I

    div-int/2addr p1, v0

    iget v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mShownCount:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p1, v0

    .line 953
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->getOneRecycleSize()I

    move-result v0

    iget-boolean v2, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mWrapSelectorWheel:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mWrapSelectorWheelCheck:Z

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->getIndexByRawIndex(IIZ)I

    move-result p1

    if-ltz p1, :cond_2

    .line 954
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->getOneRecycleSize()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 955
    iget p0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMinShowIndex:I

    add-int/2addr p1, p0

    return p1

    .line 957
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getWillPickIndexByGlobalY illegal index : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " getOneRecycleSize() : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 958
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->getOneRecycleSize()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " mWrapSelectorWheel : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mWrapSelectorWheel:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private inflateDisplayedValuesIfNull()V
    .locals 4

    .line 1414
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1415
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    .line 1416
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    const-string v1, "%d"

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p0, v2

    :cond_0
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .line 306
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mScroller:Landroid/widget/Scroller;

    .line 307
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMiniVelocityFling:I

    .line 308
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mScaledTouchSlop:I

    .line 309
    iget v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mTextSizeNormal:I

    const/high16 v1, 0x41600000    # 14.0f

    if-nez v0, :cond_0

    .line 310
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->sp2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mTextSizeNormal:I

    .line 312
    :cond_0
    iget v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mTextSizeSelected:I

    if-nez v0, :cond_1

    const/high16 v0, 0x41800000    # 16.0f

    .line 313
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->sp2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mTextSizeSelected:I

    .line 315
    :cond_1
    iget v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mTextSizeHint:I

    if-nez v0, :cond_2

    .line 316
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->sp2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mTextSizeHint:I

    .line 318
    :cond_2
    iget v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMarginStartOfHint:I

    const/high16 v1, 0x41000000    # 8.0f

    if-nez v0, :cond_3

    .line 319
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->dp2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMarginStartOfHint:I

    .line 321
    :cond_3
    iget v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMarginEndOfHint:I

    if-nez v0, :cond_4

    .line 322
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->dp2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMarginEndOfHint:I

    .line 324
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mPaintDivider:Landroid/graphics/Paint;

    iget v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mDividerColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 325
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mPaintDivider:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 326
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mPaintDivider:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 327
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mPaintDivider:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mDividerHeight:I

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 329
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mPaintText:Landroid/text/TextPaint;

    iget v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mTextColorNormal:I

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 330
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mPaintText:Landroid/text/TextPaint;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 331
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mPaintText:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 333
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mPaintHint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mTextColorHint:I

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 334
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mPaintHint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 335
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mPaintHint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 336
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mPaintHint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mTextSizeHint:I

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 338
    iget p1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mShownCount:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_5

    .line 339
    iget p1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mShownCount:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mShownCount:I

    .line 341
    :cond_5
    iget p1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMinShowIndex:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_6

    iget p1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMaxShowIndex:I

    if-ne p1, v0, :cond_7

    .line 342
    :cond_6
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->updateValueForInit()V

    .line 344
    :cond_7
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->initHandler()V

    return-void
.end method

.method private initAttr(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    if-nez p2, :cond_0

    return-void

    .line 240
    :cond_0
    sget-object v0, Lcom/samsung/android/shealthmonitor/base/R$styleable;->HNumberPicker:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 241
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1d

    .line 243
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 244
    sget v4, Lcom/samsung/android/shealthmonitor/base/R$styleable;->HNumberPicker_npv_ShownCount:I

    if-ne v3, v4, :cond_1

    const/4 v4, 0x3

    .line 245
    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mShownCount:I

    goto/16 :goto_1

    .line 246
    :cond_1
    sget v4, Lcom/samsung/android/shealthmonitor/base/R$styleable;->HNumberPicker_npv_DividerColor:I

    if-ne v3, v4, :cond_2

    .line 247
    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mDividerColor:I

    goto/16 :goto_1

    .line 248
    :cond_2
    sget v4, Lcom/samsung/android/shealthmonitor/base/R$styleable;->HNumberPicker_npv_DividerHeight:I

    if-ne v3, v4, :cond_3

    const/4 v4, 0x2

    .line 249
    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mDividerHeight:I

    goto/16 :goto_1

    .line 250
    :cond_3
    sget v4, Lcom/samsung/android/shealthmonitor/base/R$styleable;->HNumberPicker_npv_DividerMarginLeft:I

    if-ne v3, v4, :cond_4

    .line 251
    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mDividerMarginL:I

    goto/16 :goto_1

    .line 252
    :cond_4
    sget v4, Lcom/samsung/android/shealthmonitor/base/R$styleable;->HNumberPicker_npv_DividerMarginRight:I

    if-ne v3, v4, :cond_5

    .line 253
    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mDividerMarginR:I

    goto/16 :goto_1

    .line 254
    :cond_5
    sget v4, Lcom/samsung/android/shealthmonitor/base/R$styleable;->HNumberPicker_npv_TextArray:I

    if-ne v3, v4, :cond_6

    .line 255
    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->convertCharSequenceArrayToStringArray([Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    goto/16 :goto_1

    .line 256
    :cond_6
    sget v4, Lcom/samsung/android/shealthmonitor/base/R$styleable;->HNumberPicker_npv_TextColorNormal:I

    if-ne v3, v4, :cond_7

    const v4, 0x1a5280f2

    .line 257
    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mTextColorNormal:I

    goto/16 :goto_1

    .line 258
    :cond_7
    sget v4, Lcom/samsung/android/shealthmonitor/base/R$styleable;->HNumberPicker_npv_TextColorSelected:I

    const v5, -0xad7f0e

    if-ne v3, v4, :cond_8

    .line 259
    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mTextColorSelected:I

    goto/16 :goto_1

    .line 260
    :cond_8
    sget v4, Lcom/samsung/android/shealthmonitor/base/R$styleable;->HNumberPicker_npv_TextColorHint:I

    if-ne v3, v4, :cond_9

    .line 261
    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mTextColorHint:I

    goto/16 :goto_1

    .line 262
    :cond_9
    sget v4, Lcom/samsung/android/shealthmonitor/base/R$styleable;->HNumberPicker_npv_TextSizeNormal:I

    const/high16 v5, 0x41600000    # 14.0f

    if-ne v3, v4, :cond_a

    .line 263
    invoke-direct {p0, p1, v5}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->sp2px(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mTextSizeNormal:I

    goto/16 :goto_1

    .line 264
    :cond_a
    sget v4, Lcom/samsung/android/shealthmonitor/base/R$styleable;->HNumberPicker_npv_TextSizeSelected:I

    if-ne v3, v4, :cond_b

    const/high16 v4, 0x41800000    # 16.0f

    .line 265
    invoke-direct {p0, p1, v4}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->sp2px(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mTextSizeSelected:I

    goto/16 :goto_1

    .line 266
    :cond_b
    sget v4, Lcom/samsung/android/shealthmonitor/base/R$styleable;->HNumberPicker_npv_TextSizeHint:I

    if-ne v3, v4, :cond_c

    .line 267
    invoke-direct {p0, p1, v5}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->sp2px(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mTextSizeHint:I

    goto/16 :goto_1

    .line 268
    :cond_c
    sget v4, Lcom/samsung/android/shealthmonitor/base/R$styleable;->HNumberPicker_npv_MinValue:I

    if-ne v3, v4, :cond_d

    .line 269
    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMinShowIndex:I

    goto/16 :goto_1

    .line 270
    :cond_d
    sget v4, Lcom/samsung/android/shealthmonitor/base/R$styleable;->HNumberPicker_npv_MaxValue:I

    if-ne v3, v4, :cond_e

    .line 271
    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMaxShowIndex:I

    goto/16 :goto_1

    .line 272
    :cond_e
    sget v4, Lcom/samsung/android/shealthmonitor/base/R$styleable;->HNumberPicker_npv_WrapSelectorWheel:I

    const/4 v5, 0x1

    if-ne v3, v4, :cond_f

    .line 273
    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mWrapSelectorWheel:Z

    goto/16 :goto_1

    .line 274
    :cond_f
    sget v4, Lcom/samsung/android/shealthmonitor/base/R$styleable;->HNumberPicker_npv_ShowDivider:I

    if-ne v3, v4, :cond_10

    .line 275
    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mShowDivider:Z

    goto/16 :goto_1

    .line 276
    :cond_10
    sget v4, Lcom/samsung/android/shealthmonitor/base/R$styleable;->HNumberPicker_npv_HintText:I

    if-ne v3, v4, :cond_11

    .line 277
    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mHintText:Ljava/lang/String;

    goto/16 :goto_1

    .line 278
    :cond_11
    sget v4, Lcom/samsung/android/shealthmonitor/base/R$styleable;->HNumberPicker_npv_AlternativeHint:I

    if-ne v3, v4, :cond_12

    .line 279
    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mAlterHint:Ljava/lang/String;

    goto/16 :goto_1

    .line 280
    :cond_12
    sget v4, Lcom/samsung/android/shealthmonitor/base/R$styleable;->HNumberPicker_npv_EmptyItemHint:I

    if-ne v3, v4, :cond_13

    .line 281
    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mEmptyItemHint:Ljava/lang/String;

    goto/16 :goto_1

    .line 282
    :cond_13
    sget v4, Lcom/samsung/android/shealthmonitor/base/R$styleable;->HNumberPicker_npv_MarginStartOfHint:I

    const/high16 v6, 0x41000000    # 8.0f

    if-ne v3, v4, :cond_14

    .line 283
    invoke-direct {p0, p1, v6}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->dp2px(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMarginStartOfHint:I

    goto/16 :goto_1

    .line 284
    :cond_14
    sget v4, Lcom/samsung/android/shealthmonitor/base/R$styleable;->HNumberPicker_npv_MarginEndOfHint:I

    if-ne v3, v4, :cond_15

    .line 285
    invoke-direct {p0, p1, v6}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->dp2px(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMarginEndOfHint:I

    goto :goto_1

    .line 286
    :cond_15
    sget v4, Lcom/samsung/android/shealthmonitor/base/R$styleable;->HNumberPicker_npv_ItemPaddingVertical:I

    if-ne v3, v4, :cond_16

    const/high16 v4, 0x40000000    # 2.0f

    .line 287
    invoke-direct {p0, p1, v4}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->dp2px(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mItemPaddingVertical:I

    goto :goto_1

    .line 288
    :cond_16
    sget v4, Lcom/samsung/android/shealthmonitor/base/R$styleable;->HNumberPicker_npv_ItemPaddingHorizontal:I

    if-ne v3, v4, :cond_17

    const/high16 v4, 0x40a00000    # 5.0f

    .line 289
    invoke-direct {p0, p1, v4}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->dp2px(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mItemPaddingHorizontal:I

    goto :goto_1

    .line 290
    :cond_17
    sget v4, Lcom/samsung/android/shealthmonitor/base/R$styleable;->HNumberPicker_npv_AlternativeTextArrayWithMeasureHint:I

    if-ne v3, v4, :cond_18

    .line 291
    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mAlterTextArrayWithMeasureHint:[Ljava/lang/CharSequence;

    goto :goto_1

    .line 292
    :cond_18
    sget v4, Lcom/samsung/android/shealthmonitor/base/R$styleable;->HNumberPicker_npv_AlternativeTextArrayWithoutMeasureHint:I

    if-ne v3, v4, :cond_19

    .line 293
    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mAlterTextArrayWithoutMeasureHint:[Ljava/lang/CharSequence;

    goto :goto_1

    .line 294
    :cond_19
    sget v4, Lcom/samsung/android/shealthmonitor/base/R$styleable;->HNumberPicker_npv_RespondChangeOnDetached:I

    if-ne v3, v4, :cond_1a

    .line 295
    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mRespondChangeOnDetach:Z

    goto :goto_1

    .line 296
    :cond_1a
    sget v4, Lcom/samsung/android/shealthmonitor/base/R$styleable;->HNumberPicker_npv_RespondChangeInMainThread:I

    if-ne v3, v4, :cond_1b

    .line 297
    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mRespondChangeInMainThread:Z

    goto :goto_1

    .line 298
    :cond_1b
    sget v4, Lcom/samsung/android/shealthmonitor/base/R$styleable;->HNumberPicker_npv_TextEllipsize:I

    if-ne v3, v4, :cond_1c

    .line 299
    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mTextEllipsize:Ljava/lang/String;

    :cond_1c
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 302
    :cond_1d
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private initHandler()V
    .locals 2

    .line 348
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "HandlerThread-For-Refreshing"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mHandlerThread:Landroid/os/HandlerThread;

    .line 349
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 351
    new-instance v0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker$1;

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker$1;-><init>(Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mHandlerInNewThread:Landroid/os/Handler;

    .line 400
    new-instance v0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker$2;-><init>(Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;)V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mHandlerInMainThread:Landroid/os/Handler;

    return-void
.end method

.method private internalSetWrapToLinear()V
    .locals 2

    .line 976
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->getPickedIndexRelativeToRaw()I

    move-result v0

    .line 977
    iget v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMinShowIndex:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->correctPositionByDefaultValue(IZ)V

    .line 978
    iput-boolean v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mWrapSelectorWheel:Z

    .line 979
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->postInvalidate()V

    return-void
.end method

.method private isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    if-nez p1, :cond_1

    if-nez p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 1487
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private limitY(I)I
    .locals 1

    .line 1035
    iget-boolean v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mWrapSelectorWheel:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mWrapSelectorWheelCheck:Z

    if-eqz v0, :cond_0

    return p1

    .line 1036
    :cond_0
    iget v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mNotWrapLimitYBottom:I

    if-ge p1, v0, :cond_1

    .line 1037
    iget p1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mNotWrapLimitYBottom:I

    goto :goto_0

    .line 1038
    :cond_1
    iget v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mNotWrapLimitYTop:I

    if-le p1, v0, :cond_2

    .line 1039
    iget p1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mNotWrapLimitYTop:I

    :cond_2
    :goto_0
    return p1
.end method

.method private measureHeight(I)I
    .locals 4

    .line 1236
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mSpecModeH:I

    .line 1237
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1242
    :cond_0
    iget v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mShownCount:I

    iget v2, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMaxHeightOfDisplayedValues:I

    iget v3, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mItemPaddingVertical:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    mul-int/2addr v1, v2

    .line 1243
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->getPaddingBottom()I

    move-result p0

    add-int/2addr v2, p0

    add-int p0, v2, v1

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_1

    .line 1245
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    :cond_1
    move p1, p0

    :goto_0
    return p1
.end method

.method private measureWidth(I)I
    .locals 7

    .line 1214
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mSpecModeW:I

    .line 1215
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    goto :goto_2

    .line 1220
    :cond_0
    iget v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mWidthOfHintText:I

    iget v2, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mWidthOfAlterHint:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMarginEndOfHint:I

    .line 1221
    :goto_0
    iget v3, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mWidthOfHintText:I

    iget v4, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mWidthOfAlterHint:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    iget v2, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMarginStartOfHint:I

    .line 1223
    :goto_1
    iget v3, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMaxWidthOfAlterArrayWithMeasureHint:I

    iget v4, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMaxWidthOfDisplayedValues:I

    iget v5, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMaxWidthOfAlterArrayWithoutMeasureHint:I

    .line 1224
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v5, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mWidthOfHintText:I

    iget v6, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mWidthOfAlterHint:I

    .line 1225
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/2addr v2, v5

    add-int/2addr v2, v1

    iget v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mItemPaddingHorizontal:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v4, v2

    .line 1223
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1226
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->getPaddingRight()I

    move-result p0

    add-int/2addr v2, p0

    add-int p0, v2, v1

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_3

    .line 1228
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_2

    :cond_3
    move p1, p0

    :goto_2
    return p1
.end method

.method private onScrollStateChange(I)V
    .locals 1

    .line 914
    iget v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mScrollState:I

    if-ne v0, p1, :cond_0

    return-void

    .line 917
    :cond_0
    iput p1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mScrollState:I

    .line 918
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mOnScrollListener:Lcom/samsung/android/shealthmonitor/widget/HNumberPicker$OnScrollListener;

    if-eqz v0, :cond_1

    .line 919
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mOnScrollListener:Lcom/samsung/android/shealthmonitor/widget/HNumberPicker$OnScrollListener;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker$OnScrollListener;->onScrollStateChange(Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;I)V

    :cond_1
    return-void
.end method

.method private refineValueByLimit(IIIZ)I
    .locals 0

    if-eqz p4, :cond_2

    if-le p1, p3, :cond_0

    sub-int/2addr p1, p3

    .line 1427
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->getOneRecycleSize()I

    move-result p0

    rem-int/2addr p1, p0

    add-int/2addr p1, p2

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    if-ge p1, p2, :cond_1

    sub-int/2addr p1, p2

    .line 1429
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->getOneRecycleSize()I

    move-result p0

    rem-int/2addr p1, p0

    add-int/2addr p1, p3

    add-int/lit8 p1, p1, 0x1

    :cond_1
    :goto_0
    return p1

    :cond_2
    if-le p1, p3, :cond_3

    move p1, p3

    goto :goto_1

    :cond_3
    if-ge p1, p2, :cond_4

    move p1, p2

    :cond_4
    :goto_1
    return p1
.end method

.method private releaseVelocityTracker()V
    .locals 1

    .line 1193
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1194
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 1195
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 1196
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private respondPickedValueChanged(IILjava/lang/Object;)V
    .locals 3

    const/4 v0, 0x0

    .line 667
    invoke-direct {p0, v0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->onScrollStateChange(I)V

    if-eq p1, p2, :cond_2

    if-eqz p3, :cond_0

    .line 669
    instance-of v1, p3, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 670
    :cond_0
    iget-object p3, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mOnValueChangeListener:Lcom/samsung/android/shealthmonitor/widget/HNumberPicker$OnValueChangeListener;

    if-eqz p3, :cond_1

    .line 671
    iget-object p3, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mOnValueChangeListener:Lcom/samsung/android/shealthmonitor/widget/HNumberPicker$OnValueChangeListener;

    iget v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMinValue:I

    add-int/2addr v1, p1

    iget v2, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMinValue:I

    add-int/2addr v2, p2

    invoke-interface {p3, p0, v1, v2}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker$OnValueChangeListener;->onValueChange(Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;II)V

    .line 673
    :cond_1
    iget-object p3, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mOnValueChangeListenerRaw:Lcom/samsung/android/shealthmonitor/widget/HNumberPicker$OnValueChangeListenerRelativeToRaw;

    if-eqz p3, :cond_2

    .line 674
    iget-object p3, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mOnValueChangeListenerRaw:Lcom/samsung/android/shealthmonitor/widget/HNumberPicker$OnValueChangeListenerRelativeToRaw;

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    invoke-interface {p3, p0, p1, p2, v1}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker$OnValueChangeListenerRelativeToRaw;->onValueChangeRelativeToRaw(Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;II[Ljava/lang/String;)V

    .line 678
    :cond_2
    iput p2, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mPrevPickedIndex:I

    .line 679
    iget-boolean p1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mPendingWrapToLinear:Z

    if-eqz p1, :cond_3

    .line 680
    iput-boolean v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mPendingWrapToLinear:Z

    .line 681
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->internalSetWrapToLinear()V

    :cond_3
    return-void
.end method

.method private respondPickedValueChangedInScrolling(II)V
    .locals 1

    .line 420
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mOnValueChangeListenerInScrolling:Lcom/samsung/android/shealthmonitor/widget/HNumberPicker$OnValueChangeListenerInScrolling;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker$OnValueChangeListenerInScrolling;->onValueChangeInScrolling(Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;II)V

    return-void
.end method

.method private scrollByIndexSmoothly(I)V
    .locals 1

    const/4 v0, 0x1

    .line 686
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->scrollByIndexSmoothly(IZ)V

    return-void
.end method

.method private scrollByIndexSmoothly(IZ)V
    .locals 8

    .line 694
    iget-boolean v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mWrapSelectorWheel:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mWrapSelectorWheelCheck:Z

    if-nez v0, :cond_2

    .line 695
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->getPickedIndexRelativeToRaw()I

    move-result v0

    add-int v1, v0, p1

    .line 696
    iget v2, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMaxShowIndex:I

    if-le v1, v2, :cond_1

    .line 697
    iget p1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMaxShowIndex:I

    sub-int/2addr p1, v0

    goto :goto_0

    .line 698
    :cond_1
    iget v2, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMinShowIndex:I

    if-ge v1, v2, :cond_2

    .line 699
    iget p1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMinShowIndex:I

    sub-int/2addr p1, v0

    .line 704
    :cond_2
    :goto_0
    iget v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mCurrDrawFirstItemY:I

    iget v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mItemHeight:I

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    const/high16 v2, 0x43960000    # 300.0f

    if-ge v0, v1, :cond_4

    .line 706
    iget v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mItemHeight:I

    iget v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mCurrDrawFirstItemY:I

    add-int/2addr v0, v1

    .line 707
    iget v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mItemHeight:I

    iget v3, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mCurrDrawFirstItemY:I

    add-int/2addr v1, v3

    int-to-float v1, v1

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mItemHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    if-gez p1, :cond_3

    neg-int v1, v1

    mul-int/lit16 v2, p1, 0x12c

    sub-int/2addr v1, v2

    goto :goto_1

    :cond_3
    mul-int/lit16 v2, p1, 0x12c

    add-int/2addr v1, v2

    goto :goto_1

    .line 715
    :cond_4
    iget v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mCurrDrawFirstItemY:I

    .line 716
    iget v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mCurrDrawFirstItemY:I

    neg-int v1, v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mItemHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    if-gez p1, :cond_5

    mul-int/lit16 v2, p1, 0x12c

    sub-int/2addr v1, v2

    goto :goto_1

    :cond_5
    mul-int/lit16 v2, p1, 0x12c

    add-int/2addr v1, v2

    .line 723
    :goto_1
    iget v2, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mItemHeight:I

    mul-int/2addr p1, v2

    add-int v6, v0, p1

    const/16 p1, 0x12c

    if-ge v1, p1, :cond_6

    goto :goto_2

    :cond_6
    move p1, v1

    :goto_2
    const/16 v0, 0x258

    if-le p1, v0, :cond_7

    move p1, v0

    .line 728
    :cond_7
    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mScroller:Landroid/widget/Scroller;

    const/4 v3, 0x0

    iget v4, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mCurrDrawGlobalY:I

    const/4 v5, 0x0

    move v7, p1

    invoke-virtual/range {v2 .. v7}, Landroid/widget/Scroller;->startScroll(IIIII)V

    const/4 v0, 0x1

    if-eqz p2, :cond_8

    .line 730
    iget-object p2, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mHandlerInNewThread:Landroid/os/Handler;

    invoke-direct {p0, v0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->getMsg(I)Landroid/os/Message;

    move-result-object v0

    div-int/lit8 p1, p1, 0x4

    int-to-long v1, p1

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_3

    .line 732
    :cond_8
    iget-object p2, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mHandlerInNewThread:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v1, v1, v2}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->getMsg(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    div-int/lit8 p1, p1, 0x4

    int-to-long v1, p1

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 734
    :goto_3
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->postInvalidate()V

    return-void
.end method

.method private sp2px(Landroid/content/Context;F)I
    .locals 0

    .line 1492
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float/2addr p2, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p2, p0

    float-to-int p0, p2

    return p0
.end method

.method private stopRefreshing()V
    .locals 1

    .line 1443
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mHandlerInNewThread:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1444
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mHandlerInNewThread:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method private updateContent([Ljava/lang/String;)V
    .locals 0

    .line 1389
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    .line 1390
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->updateWrapStateByContent()V

    return-void
.end method

.method private updateContentAndIndex([Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1382
    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMinShowIndex:I

    .line 1383
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMaxShowIndex:I

    .line 1384
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    .line 1385
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->updateWrapStateByContent()V

    return-void
.end method

.method private updateDividerAttr()V
    .locals 5

    .line 983
    iget v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mShownCount:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mDividerIndex0:I

    .line 984
    iget v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mDividerIndex0:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mDividerIndex1:I

    .line 985
    iget v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mDividerIndex0:I

    int-to-float v0, v0

    iget v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mViewHeight:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mShownCount:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->dividerY0:F

    .line 986
    iget v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mDividerIndex1:I

    int-to-float v0, v0

    iget v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mViewHeight:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mShownCount:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->dividerY1:F

    .line 987
    iget v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mDividerMarginL:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    iput v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mDividerMarginL:I

    .line 988
    :cond_0
    iget v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mDividerMarginR:I

    if-gez v0, :cond_1

    iput v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mDividerMarginR:I

    .line 990
    :cond_1
    iget v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mDividerMarginL:I

    iget v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mDividerMarginR:I

    add-int/2addr v0, v1

    if-nez v0, :cond_2

    return-void

    .line 991
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mDividerMarginL:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mViewWidth:I

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mDividerMarginR:I

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_3

    .line 992
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mDividerMarginL:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mDividerMarginR:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mViewWidth:I

    sub-int/2addr v0, v1

    .line 993
    iget v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mDividerMarginL:I

    int-to-float v1, v1

    int-to-float v0, v0

    iget v2, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mDividerMarginL:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    iget v3, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mDividerMarginL:I

    iget v4, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mDividerMarginR:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mDividerMarginL:I

    .line 994
    iget v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mDividerMarginR:I

    int-to-float v1, v1

    iget v2, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mDividerMarginR:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mDividerMarginL:I

    iget v3, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mDividerMarginR:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v0, v2

    sub-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mDividerMarginR:I

    :cond_3
    return-void
.end method

.method private updateFontAttr()V
    .locals 2

    .line 1002
    iget v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mTextSizeNormal:I

    iget v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mItemHeight:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mItemHeight:I

    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mTextSizeNormal:I

    .line 1003
    :cond_0
    iget v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mTextSizeSelected:I

    iget v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mItemHeight:I

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mItemHeight:I

    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mTextSizeSelected:I

    .line 1005
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mPaintHint:Landroid/graphics/Paint;

    if-nez v0, :cond_2

    .line 1006
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "mPaintHint should not be null."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1008
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mPaintHint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mTextSizeHint:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1009
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mPaintHint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->getTextCenterYOffset(Landroid/graphics/Paint$FontMetrics;)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mTextSizeHintCenterYOffset:F

    .line 1010
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mHintText:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mPaintHint:Landroid/graphics/Paint;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->getTextWidth(Ljava/lang/CharSequence;Landroid/graphics/Paint;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mWidthOfHintText:I

    .line 1012
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mPaintText:Landroid/text/TextPaint;

    if-nez v0, :cond_3

    .line 1013
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "mPaintText should not be null."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1015
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mPaintText:Landroid/text/TextPaint;

    iget v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mTextSizeSelected:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1016
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mPaintText:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->getTextCenterYOffset(Landroid/graphics/Paint$FontMetrics;)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mTextSizeSelectedCenterYOffset:F

    .line 1017
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mPaintText:Landroid/text/TextPaint;

    iget v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mTextSizeNormal:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1018
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mPaintText:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->getTextCenterYOffset(Landroid/graphics/Paint$FontMetrics;)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mTextSizeNormalCenterYOffset:F

    return-void
.end method

.method private updateMaxHeightOfDisplayedValues()V
    .locals 5

    .line 1375
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mPaintText:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    .line 1376
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mPaintText:Landroid/text/TextPaint;

    iget v2, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mTextSizeSelected:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1377
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mPaintText:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mPaintText:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v1, v2

    float-to-double v1, v1

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    add-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMaxHeightOfDisplayedValues:I

    .line 1378
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mPaintText:Landroid/text/TextPaint;

    invoke-virtual {p0, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    return-void
.end method

.method private updateMaxWHOfDisplayedValues(Z)V
    .locals 1

    .line 1201
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->updateMaxWidthOfDisplayedValues()V

    .line 1202
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->updateMaxHeightOfDisplayedValues()V

    if-eqz p1, :cond_1

    .line 1203
    iget p1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mSpecModeW:I

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_0

    iget p1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mSpecModeH:I

    if-ne p1, v0, :cond_1

    .line 1205
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mHandlerInMainThread:Landroid/os/Handler;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method

.method private updateMaxWidthOfDisplayedValues()V
    .locals 3

    .line 1332
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mPaintText:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    .line 1333
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mPaintText:Landroid/text/TextPaint;

    iget v2, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mTextSizeSelected:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1334
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mPaintText:Landroid/text/TextPaint;

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->getMaxWidthOfTextArray([Ljava/lang/CharSequence;Landroid/graphics/Paint;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMaxWidthOfDisplayedValues:I

    .line 1335
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mAlterTextArrayWithMeasureHint:[Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mPaintText:Landroid/text/TextPaint;

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->getMaxWidthOfTextArray([Ljava/lang/CharSequence;Landroid/graphics/Paint;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMaxWidthOfAlterArrayWithMeasureHint:I

    .line 1336
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mAlterTextArrayWithoutMeasureHint:[Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mPaintText:Landroid/text/TextPaint;

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->getMaxWidthOfTextArray([Ljava/lang/CharSequence;Landroid/graphics/Paint;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMaxWidthOfAlterArrayWithoutMeasureHint:I

    .line 1337
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mPaintText:Landroid/text/TextPaint;

    iget v2, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mTextSizeHint:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1338
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mAlterHint:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mPaintText:Landroid/text/TextPaint;

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->getTextWidth(Ljava/lang/CharSequence;Landroid/graphics/Paint;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mWidthOfAlterHint:I

    .line 1339
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mPaintText:Landroid/text/TextPaint;

    invoke-virtual {p0, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    return-void
.end method

.method private updateNotWrapYLimit()V
    .locals 2

    const/4 v0, 0x0

    .line 1022
    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mNotWrapLimitYTop:I

    .line 1023
    iget v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mShownCount:I

    neg-int v0, v0

    iget v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mItemHeight:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mNotWrapLimitYBottom:I

    .line 1024
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1025
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->getOneRecycleSize()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mShownCount:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mItemHeight:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mNotWrapLimitYTop:I

    .line 1026
    iget v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mShownCount:I

    div-int/lit8 v0, v0, 0x2

    neg-int v0, v0

    iget v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mItemHeight:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mNotWrapLimitYBottom:I

    :cond_0
    return-void
.end method

.method private updateValue()V
    .locals 1

    .line 1395
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->inflateDisplayedValuesIfNull()V

    .line 1396
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->updateWrapStateByContent()V

    const/4 v0, 0x0

    .line 1397
    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMinShowIndex:I

    .line 1398
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMaxShowIndex:I

    return-void
.end method

.method private updateValueForInit()V
    .locals 3

    .line 1402
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->inflateDisplayedValuesIfNull()V

    .line 1403
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->updateWrapStateByContent()V

    .line 1404
    iget v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMinShowIndex:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 1405
    iput v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMinShowIndex:I

    .line 1407
    :cond_0
    iget v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMaxShowIndex:I

    if-ne v0, v2, :cond_1

    .line 1408
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMaxShowIndex:I

    .line 1410
    :cond_1
    iget v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMinShowIndex:I

    iget v2, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMaxShowIndex:I

    invoke-virtual {p0, v0, v2, v1}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->setMinAndMaxShowIndex(IIZ)V

    return-void
.end method

.method private updateWrapStateByContent()V
    .locals 2

    .line 1421
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length v0, v0

    iget v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mShownCount:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mWrapSelectorWheelCheck:Z

    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 1

    .line 1164
    iget v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mItemHeight:I

    if-nez v0, :cond_0

    return-void

    .line 1165
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1166
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mCurrDrawGlobalY:I

    .line 1167
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->calculateFirstItemParameterByGlobalY()V

    .line 1168
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->postInvalidate()V

    :cond_1
    return-void
.end method

.method public getCurrContentValue()I
    .locals 1

    .line 787
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->getValue()I

    move-result v0

    iget p0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMinValue:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public getDisplayedValues()[Ljava/lang/String;
    .locals 0

    .line 564
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object p0
.end method

.method public getMaxValue()I
    .locals 0

    .line 742
    iget p0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMaxValue:I

    return p0
.end method

.method public getMinValue()I
    .locals 0

    .line 738
    iget p0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMinValue:I

    return p0
.end method

.method public getOneRecycleSize()I
    .locals 1

    .line 504
    iget v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMaxShowIndex:I

    iget p0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMinShowIndex:I

    sub-int/2addr v0, p0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getPickedIndexRelativeToRaw()I
    .locals 2

    .line 852
    iget v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mCurrDrawFirstItemY:I

    if-eqz v0, :cond_1

    .line 853
    iget v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mCurrDrawFirstItemY:I

    iget v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mItemHeight:I

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_0

    .line 854
    iget v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mCurrDrawGlobalY:I

    iget v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mItemHeight:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mCurrDrawFirstItemY:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->getWillPickIndexByGlobalY(I)I

    move-result p0

    goto :goto_0

    .line 856
    :cond_0
    iget v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mCurrDrawGlobalY:I

    iget v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mCurrDrawFirstItemY:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->getWillPickIndexByGlobalY(I)I

    move-result p0

    goto :goto_0

    .line 859
    :cond_1
    iget v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mCurrDrawGlobalY:I

    invoke-direct {p0, v0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->getWillPickIndexByGlobalY(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method public getRawContentSize()I
    .locals 1

    .line 508
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 509
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length p0, p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getValue()I
    .locals 1

    .line 779
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->getPickedIndexRelativeToRaw()I

    move-result v0

    iget p0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMinValue:I

    add-int/2addr v0, p0

    return v0
.end method

.method public getWrapSelectorWheel()Z
    .locals 0

    .line 791
    iget-boolean p0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mWrapSelectorWheel:Z

    return p0
.end method

.method public getWrapSelectorWheelAbsolutely()Z
    .locals 1

    .line 795
    iget-boolean v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mWrapSelectorWheel:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mWrapSelectorWheelCheck:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 457
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 458
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 459
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->initHandler()V

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    .line 465
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 466
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 469
    iget v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mItemHeight:I

    if-nez v0, :cond_0

    return-void

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    .line 471
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 472
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mCurrDrawGlobalY:I

    .line 473
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->calculateFirstItemParameterByGlobalY()V

    .line 474
    iget v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mCurrDrawFirstItemY:I

    if-eqz v0, :cond_2

    .line 475
    iget v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mCurrDrawFirstItemY:I

    iget v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mItemHeight:I

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_1

    .line 476
    iget v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mCurrDrawGlobalY:I

    iget v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mItemHeight:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mCurrDrawFirstItemY:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mCurrDrawGlobalY:I

    goto :goto_0

    .line 478
    :cond_1
    iget v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mCurrDrawGlobalY:I

    iget v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mCurrDrawFirstItemY:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mCurrDrawGlobalY:I

    .line 480
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->calculateFirstItemParameterByGlobalY()V

    :cond_2
    const/4 v0, 0x0

    .line 482
    invoke-direct {p0, v0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->onScrollStateChange(I)V

    .line 487
    :cond_3
    iget v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mCurrDrawGlobalY:I

    invoke-direct {p0, v0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->getWillPickIndexByGlobalY(I)I

    move-result v0

    .line 488
    iget v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mPrevPickedIndex:I

    if-eq v0, v1, :cond_5

    iget-boolean v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mRespondChangeOnDetach:Z

    if-eqz v1, :cond_5

    .line 490
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mOnValueChangeListener:Lcom/samsung/android/shealthmonitor/widget/HNumberPicker$OnValueChangeListener;

    if-eqz v1, :cond_4

    .line 491
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mOnValueChangeListener:Lcom/samsung/android/shealthmonitor/widget/HNumberPicker$OnValueChangeListener;

    iget v2, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mPrevPickedIndex:I

    iget v3, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMinValue:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMinValue:I

    add-int/2addr v3, v0

    invoke-interface {v1, p0, v2, v3}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker$OnValueChangeListener;->onValueChange(Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;II)V

    .line 493
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mOnValueChangeListenerRaw:Lcom/samsung/android/shealthmonitor/widget/HNumberPicker$OnValueChangeListenerRelativeToRaw;

    if-eqz v1, :cond_5

    .line 494
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mOnValueChangeListenerRaw:Lcom/samsung/android/shealthmonitor/widget/HNumberPicker$OnValueChangeListenerRelativeToRaw;

    iget v2, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mPrevPickedIndex:I

    iget-object v3, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    invoke-interface {v1, p0, v2, v0, v3}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker$OnValueChangeListenerRelativeToRaw;->onValueChangeRelativeToRaw(Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;II[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 497
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 500
    :cond_5
    :goto_1
    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mPrevPickedIndex:I

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1253
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 1254
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->drawContent(Landroid/graphics/Canvas;)V

    .line 1255
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->drawLine(Landroid/graphics/Canvas;)V

    .line 1256
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->drawHint(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 425
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    const/4 v0, 0x0

    .line 426
    invoke-direct {p0, v0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->updateMaxWHOfDisplayedValues(Z)V

    .line 427
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->measureWidth(I)I

    move-result p1

    .line 428
    invoke-direct {p0, p2}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->measureHeight(I)I

    move-result p2

    .line 427
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 433
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 434
    iput p1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mViewWidth:I

    .line 435
    iput p2, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mViewHeight:I

    .line 436
    iget p1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mViewHeight:I

    iget p2, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mShownCount:I

    div-int/2addr p1, p2

    iput p1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mItemHeight:I

    .line 437
    iget p1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mViewWidth:I

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->getPaddingLeft()I

    move-result p2

    add-int/2addr p1, p2

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    int-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    iput p1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mViewCenterX:F

    .line 439
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->getOneRecycleSize()I

    move-result p1

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-le p1, p3, :cond_1

    .line 440
    iget-boolean p1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mHasInit:Z

    if-eqz p1, :cond_0

    .line 441
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->getValue()I

    move-result p1

    iget p4, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMinValue:I

    sub-int/2addr p1, p4

    goto :goto_0

    .line 442
    :cond_0
    iget-boolean p1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mCurrentItemIndexEffect:Z

    if-eqz p1, :cond_1

    .line 443
    iget p1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mCurrDrawFirstItemIndex:I

    iget p4, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mShownCount:I

    sub-int/2addr p4, p3

    div-int/lit8 p4, p4, 0x2

    add-int/2addr p1, p4

    goto :goto_0

    :cond_1
    move p1, p2

    .line 448
    :goto_0
    iget-boolean p4, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mWrapSelectorWheel:Z

    if-eqz p4, :cond_2

    iget-boolean p4, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mWrapSelectorWheelCheck:Z

    if-eqz p4, :cond_2

    move p2, p3

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->correctPositionByDefaultValue(IZ)V

    .line 449
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->updateFontAttr()V

    .line 450
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->updateNotWrapYLimit()V

    .line 451
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->updateDividerAttr()V

    .line 452
    iput-boolean p3, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mHasInit:Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    .line 1048
    iget v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mItemHeight:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 1050
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_1

    .line 1051
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1053
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1054
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->currY:F

    .line 1056
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 1097
    :pswitch_0
    iget p1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mCurrDrawGlobalY:I

    int-to-float p1, p1

    iput p1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->downYGlobal:F

    .line 1098
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->stopScrolling()V

    .line 1099
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mHandlerInNewThread:Landroid/os/Handler;

    invoke-direct {p0, v1}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->getMsg(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1067
    :pswitch_1
    iget p1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->downY:F

    iget v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->currY:F

    sub-float/2addr p1, v0

    .line 1069
    iget-boolean v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mFlagMayPress:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mScaledTouchSlop:I

    neg-int v0, v0

    int-to-float v0, v0

    cmpg-float v0, v0, p1

    if-gez v0, :cond_2

    iget v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mScaledTouchSlop:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_3

    .line 1072
    :cond_2
    iput-boolean v2, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mFlagMayPress:Z

    .line 1073
    iget v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->downYGlobal:F

    add-float/2addr v0, p1

    float-to-int p1, v0

    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->limitY(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mCurrDrawGlobalY:I

    .line 1074
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->calculateFirstItemParameterByGlobalY()V

    .line 1075
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->invalidate()V

    .line 1077
    :cond_3
    invoke-direct {p0, v1}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->onScrollStateChange(I)V

    goto :goto_0

    .line 1080
    :pswitch_2
    iget-boolean v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mFlagMayPress:Z

    if-eqz v0, :cond_4

    .line 1081
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->click(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 1083
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v0, 0x3e8

    .line 1084
    invoke-virtual {p1, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 1085
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result p1

    iget v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mFriction:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    .line 1086
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v2, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMiniVelocityFling:I

    if-le v0, v2, :cond_5

    .line 1087
    iget-object v5, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mScroller:Landroid/widget/Scroller;

    const/4 v6, 0x0

    iget v7, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mCurrDrawGlobalY:I

    const/4 v8, 0x0

    neg-int v9, p1

    const/high16 v10, -0x80000000

    const v11, 0x7fffffff

    const/high16 p1, -0x80000000

    .line 1088
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->limitY(I)I

    move-result v12

    const p1, 0x7fffffff

    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->limitY(I)I

    move-result v13

    .line 1087
    invoke-virtual/range {v5 .. v13}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1089
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->invalidate()V

    const/4 p1, 0x2

    .line 1090
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->onScrollStateChange(I)V

    .line 1092
    :cond_5
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mHandlerInNewThread:Landroid/os/Handler;

    invoke-direct {p0, v1}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->getMsg(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1093
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->releaseVelocityTracker()V

    goto :goto_0

    .line 1058
    :pswitch_3
    iput-boolean v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mFlagMayPress:Z

    .line 1059
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mHandlerInNewThread:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1060
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->stopScrolling()V

    .line 1061
    iget p1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->currY:F

    iput p1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->downY:F

    .line 1062
    iget p1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mCurrDrawGlobalY:I

    int-to-float p1, p1

    iput p1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->downYGlobal:F

    .line 1063
    invoke-direct {p0, v2}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->onScrollStateChange(I)V

    .line 1064
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-interface {p0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public refreshByNewDisplayedValues([Ljava/lang/String;)V
    .locals 3

    .line 642
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->getMinValue()I

    move-result v0

    .line 644
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->getMaxValue()I

    move-result v1

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    .line 647
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    sub-int v0, v2, v0

    add-int/lit8 v0, v0, 0x1

    if-le v0, v1, :cond_0

    .line 651
    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 652
    invoke-virtual {p0, v2}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->setMaxValue(I)V

    return-void

    .line 654
    :cond_0
    invoke-virtual {p0, v2}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->setMaxValue(I)V

    .line 655
    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    return-void
.end method

.method public setContentTextTypeface(Landroid/graphics/Typeface;)V
    .locals 0

    .line 942
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mPaintText:Landroid/text/TextPaint;

    invoke-virtual {p0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method

.method public setDisplayedValues([Ljava/lang/String;)V
    .locals 4

    .line 538
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->stopRefreshing()V

    .line 539
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->stopScrolling()V

    if-nez p1, :cond_0

    .line 541
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "newDisplayedValues should not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 544
    :cond_0
    iget v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMaxValue:I

    iget v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMinValue:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    add-int/2addr v0, v1

    array-length v2, p1

    if-le v0, v2, :cond_1

    .line 545
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mMaxValue - mMinValue + 1 should not be greater than mDisplayedValues.length, now ((mMaxValue - mMinValue + 1) is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMaxValue:I

    iget p0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMinValue:I

    sub-int/2addr v3, p0

    add-int/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " newDisplayedValues.length is "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p1

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", you need to set MaxValue and MinValue before setDisplayedValues(String[])"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 550
    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->updateContent([Ljava/lang/String;)V

    .line 551
    invoke-direct {p0, v1}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->updateMaxWHOfDisplayedValues(Z)V

    .line 552
    iget p1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMinShowIndex:I

    const/4 v0, 0x0

    add-int/2addr p1, v0

    iput p1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mPrevPickedIndex:I

    .line 553
    iget-boolean p1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mWrapSelectorWheel:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mWrapSelectorWheelCheck:Z

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->correctPositionByDefaultValue(IZ)V

    .line 554
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->postInvalidate()V

    .line 555
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mHandlerInMainThread:Landroid/os/Handler;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public setDisplayedValues([Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 534
    invoke-virtual {p0, p1, v0, p2}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->setDisplayedValuesAndPickedIndex([Ljava/lang/String;IZ)V

    return-void
.end method

.method public setDisplayedValuesAndPickedIndex([Ljava/lang/String;IZ)V
    .locals 2

    .line 514
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->stopScrolling()V

    if-nez p1, :cond_0

    .line 516
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "newDisplayedValues should not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    if-gez p2, :cond_1

    .line 519
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "pickedIndex should not be negative, now pickedIndex is "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 521
    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->updateContent([Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 522
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->updateMaxWHOfDisplayedValues(Z)V

    .line 523
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->updateNotWrapYLimit()V

    .line 524
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->updateValue()V

    .line 525
    iget v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMinShowIndex:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mPrevPickedIndex:I

    .line 526
    iget-boolean v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mWrapSelectorWheel:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mWrapSelectorWheelCheck:Z

    if-eqz v0, :cond_2

    move v0, p1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p2, v0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->correctPositionByDefaultValue(IZ)V

    if-eqz p3, :cond_3

    .line 528
    iget-object p2, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mHandlerInNewThread:Landroid/os/Handler;

    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->getMsg(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 529
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->postInvalidate()V

    :cond_3
    return-void
.end method

.method public setDividerColor(I)V
    .locals 1

    .line 834
    iget v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mDividerColor:I

    if-ne v0, p1, :cond_0

    return-void

    .line 835
    :cond_0
    iput p1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mDividerColor:I

    .line 836
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mPaintDivider:Landroid/graphics/Paint;

    iget v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mDividerColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 837
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->postInvalidate()V

    return-void
.end method

.method public setFriction(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 908
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "you should set a a positive float friction, now friction is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 909
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    div-float/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mFriction:F

    return-void
.end method

.method public setHintText(Ljava/lang/String;)V
    .locals 1

    .line 799
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mHintText:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 800
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mHintText:Ljava/lang/String;

    .line 801
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mPaintHint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->getTextCenterYOffset(Landroid/graphics/Paint$FontMetrics;)F

    move-result p1

    iput p1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mTextSizeHintCenterYOffset:F

    .line 802
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mHintText:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mPaintHint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->getTextWidth(Ljava/lang/CharSequence;Landroid/graphics/Paint;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mWidthOfHintText:I

    .line 803
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mHandlerInMainThread:Landroid/os/Handler;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public setHintTextColor(I)V
    .locals 1

    .line 827
    iget v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mTextColorHint:I

    if-ne v0, p1, :cond_0

    return-void

    .line 828
    :cond_0
    iput p1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mTextColorHint:I

    .line 829
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mPaintHint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mTextColorHint:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 830
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->postInvalidate()V

    return-void
.end method

.method public setHintTextTypeface(Landroid/graphics/Typeface;)V
    .locals 0

    .line 946
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mPaintHint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method

.method public setMaxValue(I)V
    .locals 3

    .line 753
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 754
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "mDisplayedValues should not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 756
    :cond_0
    iget v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMinValue:I

    sub-int v0, p1, v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length v1, v1

    if-le v0, v1, :cond_1

    .line 757
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(maxValue - mMinValue + 1) should not be greater than mDisplayedValues.length now  (maxValue - mMinValue + 1) is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMinValue:I

    sub-int/2addr p1, v2

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " and mDisplayedValues.length is "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length p0, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 760
    :cond_1
    iput p1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMaxValue:I

    .line 761
    iget p1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMaxValue:I

    iget v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMinValue:I

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMinShowIndex:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMaxShowIndex:I

    .line 762
    iget p1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMinShowIndex:I

    iget v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMaxShowIndex:I

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->setMinAndMaxShowIndex(II)V

    .line 763
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->updateNotWrapYLimit()V

    return-void
.end method

.method public setMinAndMaxShowIndex(II)V
    .locals 1

    const/4 v0, 0x1

    .line 865
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->setMinAndMaxShowIndex(IIZ)V

    return-void
.end method

.method public setMinAndMaxShowIndex(IIZ)V
    .locals 2

    if-le p1, p2, :cond_0

    .line 870
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "minShowIndex should be less than maxShowIndex, minShowIndex is "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", maxShowIndex is "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 873
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v0, :cond_1

    .line 874
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "mDisplayedValues should not be null, you need to set mDisplayedValues first."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    if-gez p1, :cond_2

    .line 877
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "minShowIndex should not be less than 0, now minShowIndex is "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 878
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_3

    .line 879
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "minShowIndex should not be greater than (mDisplayedValues.length - 1), now (mDisplayedValues.length - 1) is "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length p0, p0

    sub-int/2addr p0, v1

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " minShowIndex is "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    if-gez p2, :cond_4

    .line 884
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "maxShowIndex should not be less than 0, now maxShowIndex is "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 885
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length v0, v0

    sub-int/2addr v0, v1

    if-le p2, v0, :cond_5

    .line 886
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "maxShowIndex should not be greater than (mDisplayedValues.length - 1), now (mDisplayedValues.length - 1) is "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length p0, p0

    sub-int/2addr p0, v1

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " maxShowIndex is "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 890
    :cond_5
    iput p1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMinShowIndex:I

    .line 891
    iput p2, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMaxShowIndex:I

    if-eqz p3, :cond_7

    .line 893
    iget p1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMinShowIndex:I

    const/4 p2, 0x0

    add-int/2addr p1, p2

    iput p1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mPrevPickedIndex:I

    .line 894
    iget-boolean p1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mWrapSelectorWheel:Z

    if-eqz p1, :cond_6

    iget-boolean p1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mWrapSelectorWheelCheck:Z

    if-eqz p1, :cond_6

    goto :goto_0

    :cond_6
    move v1, p2

    :goto_0
    invoke-direct {p0, p2, v1}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->correctPositionByDefaultValue(IZ)V

    .line 895
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->postInvalidate()V

    :cond_7
    return-void
.end method

.method public setMinValue(I)V
    .locals 0

    .line 746
    iput p1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMinValue:I

    const/4 p1, 0x0

    .line 747
    iput p1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMinShowIndex:I

    .line 748
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->updateNotWrapYLimit()V

    return-void
.end method

.method public setNormalTextColor(I)V
    .locals 1

    .line 815
    iget v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mTextColorNormal:I

    if-ne v0, p1, :cond_0

    return-void

    .line 816
    :cond_0
    iput p1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mTextColorNormal:I

    .line 817
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->postInvalidate()V

    return-void
.end method

.method public setOnScrollListener(Lcom/samsung/android/shealthmonitor/widget/HNumberPicker$OnScrollListener;)V
    .locals 0

    .line 925
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mOnScrollListener:Lcom/samsung/android/shealthmonitor/widget/HNumberPicker$OnScrollListener;

    return-void
.end method

.method public setOnValueChangeListenerInScrolling(Lcom/samsung/android/shealthmonitor/widget/HNumberPicker$OnValueChangeListenerInScrolling;)V
    .locals 0

    .line 938
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mOnValueChangeListenerInScrolling:Lcom/samsung/android/shealthmonitor/widget/HNumberPicker$OnValueChangeListenerInScrolling;

    return-void
.end method

.method public setOnValueChangedListener(Lcom/samsung/android/shealthmonitor/widget/HNumberPicker$OnValueChangeListener;)V
    .locals 0

    .line 930
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mOnValueChangeListener:Lcom/samsung/android/shealthmonitor/widget/HNumberPicker$OnValueChangeListener;

    return-void
.end method

.method public setOnValueChangedListenerRelativeToRaw(Lcom/samsung/android/shealthmonitor/widget/HNumberPicker$OnValueChangeListenerRelativeToRaw;)V
    .locals 0

    .line 934
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mOnValueChangeListenerRaw:Lcom/samsung/android/shealthmonitor/widget/HNumberPicker$OnValueChangeListenerRelativeToRaw;

    return-void
.end method

.method public setPickedIndexRelativeToMin(I)V
    .locals 1

    if-ltz p1, :cond_1

    .line 807
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->getOneRecycleSize()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 808
    iget v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMinShowIndex:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mPrevPickedIndex:I

    .line 809
    iget-boolean v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mWrapSelectorWheel:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mWrapSelectorWheelCheck:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->correctPositionByDefaultValue(IZ)V

    .line 810
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->postInvalidate()V

    :cond_1
    return-void
.end method

.method public setPickedIndexRelativeToRaw(I)V
    .locals 1

    .line 841
    iget v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMinShowIndex:I

    if-ltz v0, :cond_1

    .line 842
    iget v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMinShowIndex:I

    if-gt v0, p1, :cond_1

    iget v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMaxShowIndex:I

    if-gt p1, v0, :cond_1

    .line 843
    iput p1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mPrevPickedIndex:I

    .line 844
    iget v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMinShowIndex:I

    sub-int/2addr p1, v0

    iget-boolean v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mWrapSelectorWheel:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mWrapSelectorWheelCheck:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->correctPositionByDefaultValue(IZ)V

    .line 845
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->postInvalidate()V

    :cond_1
    return-void
.end method

.method public setSelectedTextColor(I)V
    .locals 1

    .line 821
    iget v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mTextColorSelected:I

    if-ne v0, p1, :cond_0

    return-void

    .line 822
    :cond_0
    iput p1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mTextColorSelected:I

    .line 823
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->postInvalidate()V

    return-void
.end method

.method public setValue(I)V
    .locals 1

    .line 774
    iget v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMinValue:I

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->setPickedIndexRelativeToRaw(I)V

    return-void
.end method

.method public setWrapSelectorWheel(Z)V
    .locals 1

    .line 568
    iget-boolean v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mWrapSelectorWheel:Z

    if-eq v0, p1, :cond_2

    if-nez p1, :cond_1

    .line 570
    iget p1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mScrollState:I

    if-nez p1, :cond_0

    .line 571
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->internalSetWrapToLinear()V

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 573
    iput-boolean p1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mPendingWrapToLinear:Z

    return-void

    .line 576
    :cond_1
    iput-boolean p1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mWrapSelectorWheel:Z

    .line 577
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->updateWrapStateByContent()V

    .line 578
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->postInvalidate()V

    :cond_2
    return-void
.end method

.method public smoothScrollToValue(I)V
    .locals 2

    .line 591
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->getValue()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->smoothScrollToValue(IIZ)V

    return-void
.end method

.method public smoothScrollToValue(II)V
    .locals 1

    const/4 v0, 0x1

    .line 607
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->smoothScrollToValue(IIZ)V

    return-void
.end method

.method public smoothScrollToValue(IIZ)V
    .locals 5

    .line 617
    iget v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMinValue:I

    iget v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMaxValue:I

    iget-boolean v2, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mWrapSelectorWheel:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mWrapSelectorWheelCheck:Z

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->refineValueByLimit(IIIZ)I

    move-result p1

    .line 619
    iget v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMinValue:I

    iget v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mMaxValue:I

    iget-boolean v2, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mWrapSelectorWheel:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mWrapSelectorWheelCheck:Z

    if-eqz v2, :cond_1

    move v3, v4

    :cond_1
    invoke-direct {p0, p2, v0, v1, v3}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->refineValueByLimit(IIIZ)I

    move-result p2

    .line 621
    iget-boolean v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mWrapSelectorWheel:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mWrapSelectorWheelCheck:Z

    if-eqz v0, :cond_4

    sub-int v0, p2, p1

    .line 623
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->getOneRecycleSize()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    neg-int v2, v1

    if-lt v0, v2, :cond_2

    if-ge v1, v0, :cond_5

    :cond_2
    if-lez v0, :cond_3

    .line 625
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->getOneRecycleSize()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->getOneRecycleSize()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1

    :cond_4
    sub-int v0, p2, p1

    .line 630
    :cond_5
    :goto_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->setValue(I)V

    if-ne p1, p2, :cond_6

    return-void

    .line 632
    :cond_6
    invoke-direct {p0, v0, p3}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->scrollByIndexSmoothly(IZ)V

    return-void
.end method

.method public smoothScrollToValue(IZ)V
    .locals 1

    .line 603
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->getValue()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->smoothScrollToValue(IIZ)V

    return-void
.end method

.method public stopScrolling()V
    .locals 7

    .line 1449
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mScroller:Landroid/widget/Scroller;

    if-eqz v0, :cond_0

    .line 1450
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1451
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1452
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1453
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->postInvalidate()V

    :cond_0
    return-void
.end method

.method public stopScrollingAndCorrectPosition()V
    .locals 3

    .line 1459
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->stopScrolling()V

    .line 1460
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mHandlerInNewThread:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1461
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->mHandlerInNewThread:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->getMsg(I)Landroid/os/Message;

    move-result-object p0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method
