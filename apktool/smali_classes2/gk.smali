.class public abstract Lgk;
.super Lhp;
.source "SourceFile"


# instance fields
.field private final a:F

.field protected final b:Landroid/view/animation/LinearInterpolator;

.field protected final c:Landroid/view/animation/DecelerateInterpolator;

.field protected d:Landroid/graphics/PointF;

.field protected e:I

.field protected f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 90
    invoke-direct {p0}, Lhp;-><init>()V

    .line 78
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lgk;->b:Landroid/view/animation/LinearInterpolator;

    .line 80
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lgk;->c:Landroid/view/animation/DecelerateInterpolator;

    .line 88
    iput v1, p0, Lgk;->e:I

    iput v1, p0, Lgk;->f:I

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgk;->a(Landroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lgk;->a:F

    .line 92
    return-void
.end method

.method private static a(II)I
    .locals 2

    .prologue
    .line 251
    .line 252
    sub-int v0, p0, p1

    .line 253
    mul-int v1, p0, v0

    if-gtz v1, :cond_0

    .line 254
    const/4 v0, 0x0

    .line 256
    :cond_0
    return v0
.end method

.method private static a(IIIII)I
    .locals 2

    .prologue
    .line 265
    packed-switch p4, :pswitch_data_0

    .line 281
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "snap preference should be one of the constants defined in SmoothScroller, starting with SNAP_"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 267
    :pswitch_0
    sub-int v0, p2, p0

    .line 284
    :cond_0
    :goto_0
    return v0

    .line 269
    :pswitch_1
    sub-int v0, p3, p1

    goto :goto_0

    .line 271
    :pswitch_2
    sub-int v0, p2, p0

    .line 272
    if-gtz v0, :cond_0

    .line 275
    sub-int v0, p3, p1

    .line 276
    if-ltz v0, :cond_0

    .line 284
    const/4 v0, 0x0

    goto :goto_0

    .line 265
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private a(Landroid/view/View;I)I
    .locals 5

    .prologue
    .line 299
    invoke-virtual {p0}, Lgk;->b()Lhh;

    move-result-object v1

    .line 300
    invoke-virtual {v1}, Lhh;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 301
    const/4 v0, 0x0

    .line 309
    :goto_0
    return v0

    .line 303
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 305
    invoke-static {p1}, Lhh;->h(Landroid/view/View;)I

    move-result v2

    iget v3, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    sub-int/2addr v2, v3

    .line 306
    invoke-static {p1}, Lhh;->j(Landroid/view/View;)I

    move-result v3

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v3

    .line 307
    invoke-virtual {v1}, Lhh;->x()I

    move-result v3

    .line 308
    invoke-virtual {v1}, Lhh;->v()I

    move-result v4

    invoke-virtual {v1}, Lhh;->z()I

    move-result v1

    sub-int v1, v4, v1

    .line 309
    invoke-static {v2, v0, v3, v1, p2}, Lgk;->a(IIIII)I

    move-result v0

    goto :goto_0
.end method

.method private a(Lhq;)V
    .locals 5

    .prologue
    const v4, 0x461c4000    # 10000.0f

    const/4 v2, 0x0

    const v3, 0x3f99999a    # 1.2f

    .line 226
    invoke-virtual {p0}, Lgk;->f()I

    move-result v0

    invoke-virtual {p0, v0}, Lgk;->a(I)Landroid/graphics/PointF;

    move-result-object v0

    .line 227
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    iget v1, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    .line 228
    :cond_0
    const-string/jumbo v0, "LinearSmoothScroller"

    const-string/jumbo v1, "To support smooth scrolling, you should override \nLayoutManager#computeScrollVectorForPosition.\nFalling back to instant scroll"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-virtual {p0}, Lgk;->f()I

    move-result v0

    .line 232
    invoke-virtual {p1, v0}, Lhq;->a(I)V

    .line 233
    invoke-virtual {p0}, Lgk;->c()V

    .line 248
    :goto_0
    return-void

    .line 236
    :cond_1
    invoke-static {v0}, Lgk;->a(Landroid/graphics/PointF;)V

    .line 237
    iput-object v0, p0, Lgk;->d:Landroid/graphics/PointF;

    .line 239
    iget v1, v0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p0, Lgk;->e:I

    .line 240
    iget v0, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, p0, Lgk;->f:I

    .line 241
    const/16 v0, 0x2710

    invoke-direct {p0, v0}, Lgk;->d(I)I

    move-result v0

    .line 245
    iget v1, p0, Lgk;->e:I

    int-to-float v1, v1

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iget v2, p0, Lgk;->f:I

    int-to-float v2, v2

    mul-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v0, v0

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iget-object v3, p0, Lgk;->b:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {p1, v1, v2, v0, v3}, Lhq;->a(IIILandroid/view/animation/Interpolator;)V

    goto :goto_0
.end method

.method private b(Landroid/view/View;I)I
    .locals 5

    .prologue
    .line 324
    invoke-virtual {p0}, Lgk;->b()Lhh;

    move-result-object v1

    .line 325
    invoke-virtual {v1}, Lhh;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 326
    const/4 v0, 0x0

    .line 334
    :goto_0
    return v0

    .line 328
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 330
    invoke-static {p1}, Lhh;->g(Landroid/view/View;)I

    move-result v2

    iget v3, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->leftMargin:I

    sub-int/2addr v2, v3

    .line 331
    invoke-static {p1}, Lhh;->i(Landroid/view/View;)I

    move-result v3

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v0, v3

    .line 332
    invoke-virtual {v1}, Lhh;->w()I

    move-result v3

    .line 333
    invoke-virtual {v1}, Lhh;->u()I

    move-result v4

    invoke-virtual {v1}, Lhh;->y()I

    move-result v1

    sub-int v1, v4, v1

    .line 334
    invoke-static {v2, v0, v3, v1, p2}, Lgk;->a(IIIII)I

    move-result v0

    goto :goto_0
.end method

.method private c(I)I
    .locals 4

    .prologue
    .line 173
    invoke-direct {p0, p1}, Lgk;->d(I)I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3fd57a786c22680aL    # 0.3356

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method private d(I)I
    .locals 2

    .prologue
    .line 187
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lgk;->a:F

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method private h()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 200
    iget-object v0, p0, Lgk;->d:Landroid/graphics/PointF;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgk;->d:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lgk;->d:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private i()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 214
    iget-object v0, p0, Lgk;->d:Landroid/graphics/PointF;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgk;->d:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lgk;->d:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method protected a(Landroid/util/DisplayMetrics;)F
    .locals 2

    .prologue
    .line 156
    const/high16 v0, 0x41c80000    # 25.0f

    iget v1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public abstract a(I)Landroid/graphics/PointF;
.end method

.method protected final a()V
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    iput v0, p0, Lgk;->f:I

    iput v0, p0, Lgk;->e:I

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lgk;->d:Landroid/graphics/PointF;

    .line 146
    return-void
.end method

.method protected final a(IILhq;)V
    .locals 1

    .prologue
    .line 121
    invoke-virtual {p0}, Lgk;->g()I

    move-result v0

    if-nez v0, :cond_1

    .line 122
    invoke-virtual {p0}, Lgk;->c()V

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    iget v0, p0, Lgk;->e:I

    invoke-static {v0, p1}, Lgk;->a(II)I

    move-result v0

    iput v0, p0, Lgk;->e:I

    .line 131
    iget v0, p0, Lgk;->f:I

    invoke-static {v0, p2}, Lgk;->a(II)I

    move-result v0

    iput v0, p0, Lgk;->f:I

    .line 133
    iget v0, p0, Lgk;->e:I

    if-nez v0, :cond_0

    iget v0, p0, Lgk;->f:I

    if-nez v0, :cond_0

    .line 134
    invoke-direct {p0, p3}, Lgk;->a(Lhq;)V

    goto :goto_0
.end method

.method protected final a(Landroid/view/View;Lhq;)V
    .locals 4

    .prologue
    .line 107
    invoke-direct {p0}, Lgk;->h()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lgk;->b(Landroid/view/View;I)I

    move-result v0

    .line 108
    invoke-direct {p0}, Lgk;->i()I

    move-result v1

    invoke-direct {p0, p1, v1}, Lgk;->a(Landroid/view/View;I)I

    move-result v1

    .line 109
    mul-int v2, v0, v0

    mul-int v3, v1, v1

    add-int/2addr v2, v3

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 110
    invoke-direct {p0, v2}, Lgk;->c(I)I

    move-result v2

    .line 111
    if-lez v2, :cond_0

    .line 112
    neg-int v0, v0

    neg-int v1, v1

    iget-object v3, p0, Lgk;->c:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p2, v0, v1, v2, v3}, Lhq;->a(IIILandroid/view/animation/Interpolator;)V

    .line 114
    :cond_0
    return-void
.end method
