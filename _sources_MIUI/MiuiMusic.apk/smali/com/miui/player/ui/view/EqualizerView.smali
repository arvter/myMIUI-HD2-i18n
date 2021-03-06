.class public Lcom/miui/player/ui/view/EqualizerView;
.super Landroid/view/View;
.source "EqualizerView.java"


# static fields
.field private static final ALPHA_PARTITON:I = 0x5

.field public static final CURVE_RESOLUTION:F = 1.15f

.field private static final DEFAULT_CURVE_COLOR:I = 0xffae00

.field public static MAX_DB:I

.field public static MAX_FREQ:I

.field public static MIN_DB:I

.field public static MIN_FREQ:I

.field public static SAMPLING_RATE:I

.field public static SCALE:I


# instance fields
.field private final mCurveColor:I

.field private final mCurvePaint:Landroid/graphics/Paint;

.field private final mCurveShadowColor:I

.field private final mCurveShadowRadius:F

.field private mHeight:I

.field private final mLevels:[F

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/16 v0, 0x14

    sput v0, Lcom/miui/player/ui/view/EqualizerView;->MIN_FREQ:I

    .line 15
    const/16 v0, 0x4e20

    sput v0, Lcom/miui/player/ui/view/EqualizerView;->MAX_FREQ:I

    .line 16
    const v0, 0xac44

    sput v0, Lcom/miui/player/ui/view/EqualizerView;->SAMPLING_RATE:I

    .line 17
    const/16 v0, -0xc

    sput v0, Lcom/miui/player/ui/view/EqualizerView;->MIN_DB:I

    .line 18
    const/16 v0, 0xc

    sput v0, Lcom/miui/player/ui/view/EqualizerView;->MAX_DB:I

    .line 19
    const/16 v0, 0x64

    sput v0, Lcom/miui/player/ui/view/EqualizerView;->SCALE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attributeSet"

    .prologue
    const v5, 0xffae00

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    const/4 v1, 0x5

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/miui/player/ui/view/EqualizerView;->mLevels:[F

    .line 38
    invoke-virtual {p0, v2}, Lcom/miui/player/ui/view/EqualizerView;->setWillNotDraw(Z)V

    .line 40
    if-eqz p2, :cond_0

    .line 41
    sget-object v1, Lcom/miui/player/R$styleable;->EqualizerView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 42
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/miui/player/ui/view/EqualizerView;->mCurveColor:I

    .line 43
    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/miui/player/ui/view/EqualizerView;->mCurveShadowColor:I

    .line 44
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/miui/player/ui/view/EqualizerView;->mCurveShadowRadius:F

    .line 51
    .end local v0           #a:Landroid/content/res/TypedArray;
    :goto_0
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/miui/player/ui/view/EqualizerView;->mCurvePaint:Landroid/graphics/Paint;

    .line 52
    iget-object v1, p0, Lcom/miui/player/ui/view/EqualizerView;->mCurvePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/miui/player/ui/view/EqualizerView;->mCurveColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    iget-object v1, p0, Lcom/miui/player/ui/view/EqualizerView;->mCurvePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 54
    iget-object v1, p0, Lcom/miui/player/ui/view/EqualizerView;->mCurvePaint:Landroid/graphics/Paint;

    const/high16 v2, 0x3f80

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 55
    iget-object v1, p0, Lcom/miui/player/ui/view/EqualizerView;->mCurvePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 56
    return-void

    .line 46
    :cond_0
    iput v5, p0, Lcom/miui/player/ui/view/EqualizerView;->mCurveColor:I

    .line 47
    iput v2, p0, Lcom/miui/player/ui/view/EqualizerView;->mCurveShadowColor:I

    .line 48
    iput v3, p0, Lcom/miui/player/ui/view/EqualizerView;->mCurveShadowRadius:F

    goto :goto_0
.end method

.method private lin2dB(F)F
    .locals 4
    .parameter "rho"

    .prologue
    .line 164
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4024

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4034

    mul-double/2addr v0, v2

    double-to-float v0, v0

    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x3d3a

    goto :goto_0
.end method

.method private projectX(F)F
    .locals 10
    .parameter "freq"

    .prologue
    .line 151
    float-to-double v6, p1

    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    .line 152
    .local v4, pos:D
    sget v6, Lcom/miui/player/ui/view/EqualizerView;->MIN_FREQ:I

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    .line 153
    .local v2, minPos:D
    sget v6, Lcom/miui/player/ui/view/EqualizerView;->MAX_FREQ:I

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    .line 154
    .local v0, maxPos:D
    sub-double v6, v4, v2

    sub-double v8, v0, v2

    div-double v4, v6, v8

    .line 155
    double-to-float v6, v4

    return v6
.end method

.method private projectY(F)F
    .locals 4
    .parameter "dB"

    .prologue
    .line 159
    sget v1, Lcom/miui/player/ui/view/EqualizerView;->MIN_DB:I

    int-to-float v1, v1

    sub-float v1, p1, v1

    sget v2, Lcom/miui/player/ui/view/EqualizerView;->MAX_DB:I

    sget v3, Lcom/miui/player/ui/view/EqualizerView;->MIN_DB:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 160
    .local v0, pos:F
    const/high16 v1, 0x3f80

    sub-float/2addr v1, v0

    return v1
.end method

.method private setPanitAlpha(F)V
    .locals 4
    .parameter "percent"

    .prologue
    const/4 v3, 0x0

    .line 139
    const v0, 0x3c23d70a

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    .line 140
    const p1, 0x3c23d70a

    .line 144
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/miui/player/ui/view/EqualizerView;->mCurvePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x437f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 145
    iget v0, p0, Lcom/miui/player/ui/view/EqualizerView;->mCurveShadowColor:I

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/miui/player/ui/view/EqualizerView;->mCurvePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/player/ui/view/EqualizerView;->mCurveShadowRadius:F

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/miui/player/ui/view/EqualizerView;->mCurveShadowColor:I

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 148
    :cond_1
    return-void

    .line 141
    :cond_2
    const v0, 0x3d4ccccd

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 142
    const p1, 0x3d4ccccd

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 25
    .parameter "canvas"

    .prologue
    .line 80
    const/4 v2, 0x4

    new-array v8, v2, [Lcom/miui/player/ui/view/Biquad;

    const/4 v2, 0x0

    new-instance v3, Lcom/miui/player/ui/view/Biquad;

    invoke-direct {v3}, Lcom/miui/player/ui/view/Biquad;-><init>()V

    aput-object v3, v8, v2

    const/4 v2, 0x1

    new-instance v3, Lcom/miui/player/ui/view/Biquad;

    invoke-direct {v3}, Lcom/miui/player/ui/view/Biquad;-><init>()V

    aput-object v3, v8, v2

    const/4 v2, 0x2

    new-instance v3, Lcom/miui/player/ui/view/Biquad;

    invoke-direct {v3}, Lcom/miui/player/ui/view/Biquad;-><init>()V

    aput-object v3, v8, v2

    const/4 v2, 0x3

    new-instance v3, Lcom/miui/player/ui/view/Biquad;

    invoke-direct {v3}, Lcom/miui/player/ui/view/Biquad;-><init>()V

    aput-object v3, v8, v2

    .line 91
    .local v8, biquads:[Lcom/miui/player/ui/view/Biquad;
    const-wide/high16 v21, 0x4024

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/view/EqualizerView;->mLevels:[F

    move-object v2, v0

    const/4 v3, 0x0

    aget v2, v2, v3

    const/high16 v3, 0x41a0

    div-float/2addr v2, v3

    move v0, v2

    float-to-double v0, v0

    move-wide/from16 v23, v0

    invoke-static/range {v21 .. v24}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v21

    move-wide/from16 v0, v21

    double-to-float v0, v0

    move v13, v0

    .line 92
    .local v13, gain:F
    const/4 v2, 0x0

    aget-object v2, v8, v2

    const/high16 v3, 0x42fa

    sget v4, Lcom/miui/player/ui/view/EqualizerView;->SAMPLING_RATE:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/view/EqualizerView;->mLevels:[F

    move-object v5, v0

    const/4 v6, 0x1

    aget v5, v5, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/view/EqualizerView;->mLevels:[F

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    sub-float/2addr v5, v6

    const/high16 v6, 0x3f80

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/miui/player/ui/view/Biquad;->setHighShelf(FFFF)V

    .line 93
    const/4 v2, 0x1

    aget-object v2, v8, v2

    const/high16 v3, 0x43fa

    sget v4, Lcom/miui/player/ui/view/EqualizerView;->SAMPLING_RATE:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/view/EqualizerView;->mLevels:[F

    move-object v5, v0

    const/4 v6, 0x2

    aget v5, v5, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/view/EqualizerView;->mLevels:[F

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    sub-float/2addr v5, v6

    const/high16 v6, 0x3f80

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/miui/player/ui/view/Biquad;->setHighShelf(FFFF)V

    .line 94
    const/4 v2, 0x2

    aget-object v2, v8, v2

    const/high16 v3, 0x44fa

    sget v4, Lcom/miui/player/ui/view/EqualizerView;->SAMPLING_RATE:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/view/EqualizerView;->mLevels:[F

    move-object v5, v0

    const/4 v6, 0x3

    aget v5, v5, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/view/EqualizerView;->mLevels:[F

    move-object v6, v0

    const/4 v7, 0x2

    aget v6, v6, v7

    sub-float/2addr v5, v6

    const/high16 v6, 0x3f80

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/miui/player/ui/view/Biquad;->setHighShelf(FFFF)V

    .line 95
    const/4 v2, 0x3

    aget-object v2, v8, v2

    const/high16 v3, 0x45fa

    sget v4, Lcom/miui/player/ui/view/EqualizerView;->SAMPLING_RATE:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/view/EqualizerView;->mLevels:[F

    move-object v5, v0

    const/4 v6, 0x4

    aget v5, v5, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/view/EqualizerView;->mLevels:[F

    move-object v6, v0

    const/4 v7, 0x3

    aget v6, v6, v7

    sub-float/2addr v5, v6

    const/high16 v6, 0x3f80

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/miui/player/ui/view/Biquad;->setHighShelf(FFFF)V

    .line 99
    const/high16 v3, -0x4080

    .line 100
    .local v3, oldx:F
    const/4 v4, 0x0

    .line 101
    .local v4, olddB:F
    sget v2, Lcom/miui/player/ui/view/EqualizerView;->MIN_FREQ:I

    int-to-float v2, v2

    const v5, 0x3f933333

    div-float v12, v2, v5

    .local v12, freq:F
    :goto_0
    sget v2, Lcom/miui/player/ui/view/EqualizerView;->MAX_FREQ:I

    int-to-float v2, v2

    const v5, 0x3f933333

    mul-float/2addr v2, v5

    cmpg-float v2, v12, v2

    if-gez v2, :cond_4

    .line 102
    sget v2, Lcom/miui/player/ui/view/EqualizerView;->SAMPLING_RATE:I

    int-to-float v2, v2

    div-float v2, v12, v2

    const v5, 0x40490fdb

    mul-float/2addr v2, v5

    const/high16 v5, 0x4000

    mul-float v14, v2, v5

    .line 103
    .local v14, omega:F
    new-instance v15, Lcom/miui/player/ui/view/Complex;

    move v0, v14

    float-to-double v0, v0

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->cos(D)D

    move-result-wide v21

    move-wide/from16 v0, v21

    double-to-float v0, v0

    move v2, v0

    move v0, v14

    float-to-double v0, v0

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->sin(D)D

    move-result-wide v21

    move-wide/from16 v0, v21

    double-to-float v0, v0

    move v5, v0

    invoke-direct {v15, v2, v5}, Lcom/miui/player/ui/view/Complex;-><init>(FF)V

    .line 106
    .local v15, z:Lcom/miui/player/ui/view/Complex;
    invoke-virtual {v15, v13}, Lcom/miui/player/ui/view/Complex;->mul(F)Lcom/miui/player/ui/view/Complex;

    move-result-object v16

    .line 107
    .local v16, z1:Lcom/miui/player/ui/view/Complex;
    const/4 v2, 0x0

    aget-object v2, v8, v2

    invoke-virtual {v2, v15}, Lcom/miui/player/ui/view/Biquad;->evaluateTransfer(Lcom/miui/player/ui/view/Complex;)Lcom/miui/player/ui/view/Complex;

    move-result-object v17

    .line 108
    .local v17, z2:Lcom/miui/player/ui/view/Complex;
    const/4 v2, 0x1

    aget-object v2, v8, v2

    invoke-virtual {v2, v15}, Lcom/miui/player/ui/view/Biquad;->evaluateTransfer(Lcom/miui/player/ui/view/Complex;)Lcom/miui/player/ui/view/Complex;

    move-result-object v18

    .line 109
    .local v18, z3:Lcom/miui/player/ui/view/Complex;
    const/4 v2, 0x2

    aget-object v2, v8, v2

    invoke-virtual {v2, v15}, Lcom/miui/player/ui/view/Biquad;->evaluateTransfer(Lcom/miui/player/ui/view/Complex;)Lcom/miui/player/ui/view/Complex;

    move-result-object v19

    .line 110
    .local v19, z4:Lcom/miui/player/ui/view/Complex;
    const/4 v2, 0x3

    aget-object v2, v8, v2

    invoke-virtual {v2, v15}, Lcom/miui/player/ui/view/Biquad;->evaluateTransfer(Lcom/miui/player/ui/view/Complex;)Lcom/miui/player/ui/view/Complex;

    move-result-object v20

    .line 113
    .local v20, z5:Lcom/miui/player/ui/view/Complex;
    invoke-virtual/range {v16 .. v16}, Lcom/miui/player/ui/view/Complex;->rho()F

    move-result v2

    invoke-virtual/range {v17 .. v17}, Lcom/miui/player/ui/view/Complex;->rho()F

    move-result v5

    mul-float/2addr v2, v5

    invoke-virtual/range {v18 .. v18}, Lcom/miui/player/ui/view/Complex;->rho()F

    move-result v5

    mul-float/2addr v2, v5

    invoke-virtual/range {v19 .. v19}, Lcom/miui/player/ui/view/Complex;->rho()F

    move-result v5

    mul-float/2addr v2, v5

    invoke-virtual/range {v20 .. v20}, Lcom/miui/player/ui/view/Complex;->rho()F

    move-result v5

    mul-float/2addr v2, v5

    move-object/from16 v0, p0

    move v1, v2

    invoke-direct {v0, v1}, Lcom/miui/player/ui/view/EqualizerView;->lin2dB(F)F

    move-result v9

    .line 114
    .local v9, dB:F
    move-object/from16 v0, p0

    move v1, v9

    invoke-direct {v0, v1}, Lcom/miui/player/ui/view/EqualizerView;->projectY(F)F

    move-result v2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/player/ui/view/EqualizerView;->mHeight:I

    move v5, v0

    int-to-float v5, v5

    mul-float v6, v2, v5

    .line 115
    .local v6, newBb:F
    move-object/from16 v0, p0

    move v1, v12

    invoke-direct {v0, v1}, Lcom/miui/player/ui/view/EqualizerView;->projectX(F)F

    move-result v2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/player/ui/view/EqualizerView;->mWidth:I

    move v5, v0

    int-to-float v5, v5

    mul-float/2addr v5, v2

    .line 116
    .local v5, newx:F
    const/high16 v2, -0x4080

    cmpl-float v2, v3, v2

    if-eqz v2, :cond_1

    .line 117
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/player/ui/view/EqualizerView;->mWidth:I

    move v2, v0

    div-int/lit8 v2, v2, 0x5

    int-to-float v10, v2

    .line 118
    .local v10, edge:F
    cmpg-float v2, v3, v10

    if-gez v2, :cond_2

    .line 119
    div-float v2, v3, v10

    move-object/from16 v0, p0

    move v1, v2

    invoke-direct {v0, v1}, Lcom/miui/player/ui/view/EqualizerView;->setPanitAlpha(F)V

    .line 131
    .end local v9           #dB:F
    .end local v10           #edge:F
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/view/EqualizerView;->mCurvePaint:Landroid/graphics/Paint;

    move-object v7, v0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 133
    :cond_1
    move v3, v5

    .line 134
    move v4, v6

    .line 101
    const v2, 0x3f933333

    mul-float/2addr v12, v2

    goto/16 :goto_0

    .line 121
    .restart local v9       #dB:F
    .restart local v10       #edge:F
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/player/ui/view/EqualizerView;->mWidth:I

    move v2, v0

    int-to-float v2, v2

    sub-float v11, v2, v3

    .line 122
    .local v11, f:F
    cmpl-float v2, v10, v11

    if-lez v2, :cond_3

    .line 123
    div-float v2, v11, v10

    move-object/from16 v0, p0

    move v1, v2

    invoke-direct {v0, v1}, Lcom/miui/player/ui/view/EqualizerView;->setPanitAlpha(F)V

    goto :goto_1

    .line 125
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/view/EqualizerView;->mCurvePaint:Landroid/graphics/Paint;

    move-object v2, v0

    const/16 v7, 0xff

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 126
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/player/ui/view/EqualizerView;->mCurveShadowColor:I

    move v2, v0

    if-eqz v2, :cond_0

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/view/EqualizerView;->mCurvePaint:Landroid/graphics/Paint;

    move-object v2, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/player/ui/view/EqualizerView;->mCurveShadowRadius:F

    move v7, v0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/player/ui/view/EqualizerView;->mCurveShadowColor:I

    move v11, v0

    .end local v9           #dB:F
    .end local v10           #edge:F
    .end local v11           #f:F
    invoke-virtual {v2, v7, v9, v10, v11}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    goto :goto_1

    .line 136
    .end local v5           #newx:F
    .end local v6           #newBb:F
    .end local v14           #omega:F
    .end local v15           #z:Lcom/miui/player/ui/view/Complex;
    .end local v16           #z1:Lcom/miui/player/ui/view/Complex;
    .end local v17           #z2:Lcom/miui/player/ui/view/Complex;
    .end local v18           #z3:Lcom/miui/player/ui/view/Complex;
    .end local v19           #z4:Lcom/miui/player/ui/view/Complex;
    .end local v20           #z5:Lcom/miui/player/ui/view/Complex;
    :cond_4
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 60
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 61
    sub-int v0, p4, p2

    iput v0, p0, Lcom/miui/player/ui/view/EqualizerView;->mWidth:I

    .line 62
    sub-int v0, p5, p3

    iput v0, p0, Lcom/miui/player/ui/view/EqualizerView;->mHeight:I

    .line 63
    return-void
.end method

.method public setBand(II)V
    .locals 3
    .parameter "i"
    .parameter "value"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/miui/player/ui/view/EqualizerView;->mLevels:[F

    int-to-float v1, p2

    sget v2, Lcom/miui/player/ui/view/EqualizerView;->SCALE:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    aput v1, v0, p1

    .line 67
    invoke-virtual {p0}, Lcom/miui/player/ui/view/EqualizerView;->postInvalidate()V

    .line 68
    return-void
.end method

.method public setBands([I)V
    .locals 4
    .parameter "values"

    .prologue
    .line 71
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/miui/player/ui/view/EqualizerView;->mLevels:[F

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/miui/player/ui/view/EqualizerView;->mLevels:[F

    aget v2, p1, v0

    int-to-float v2, v2

    sget v3, Lcom/miui/player/ui/view/EqualizerView;->SCALE:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    aput v2, v1, v0

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/miui/player/ui/view/EqualizerView;->postInvalidate()V

    .line 75
    return-void
.end method
