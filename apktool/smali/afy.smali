.class public final Lafy;
.super Ljava/lang/Object;

# interfaces
.implements Lafz;


# annotations
.annotation runtime Lapl;
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Laqj;",
            "Lafr;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lafr;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/content/Context;

.field private final e:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final f:Lakx;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lakx;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lafy;->a:Ljava/lang/Object;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lafy;->b:Ljava/util/WeakHashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lafy;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lafy;->d:Landroid/content/Context;

    iput-object p2, p0, Lafy;->e:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p3, p0, Lafy;->f:Lakx;

    return-void
.end method

.method private a(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Laqj;Lage;Lald;)Lafr;
    .locals 8

    iget-object v7, p0, Lafy;->a:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    invoke-direct {p0, p2}, Lafy;->e(Laqj;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lafy;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lafr;

    monitor-exit v7

    :goto_0
    return-object v0

    :cond_0
    if-eqz p4, :cond_1

    new-instance v0, Laga;

    iget-object v1, p0, Lafy;->d:Landroid/content/Context;

    iget-object v4, p0, Lafy;->e:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Laga;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Laqj;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lage;Lald;)V

    :goto_1
    invoke-virtual {v0, p0}, Lafr;->a(Lafz;)V

    iget-object v1, p0, Lafy;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lafy;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    new-instance v0, Lagd;

    iget-object v1, p0, Lafy;->d:Landroid/content/Context;

    iget-object v4, p0, Lafy;->e:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v6, p0, Lafy;->f:Lakx;

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lagd;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Laqj;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lage;Lakx;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private e(Laqj;)Z
    .locals 2

    iget-object v1, p0, Lafy;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lafy;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lafr;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lafr;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Laqj;)Lafr;
    .locals 1

    iget-object v0, p2, Laqj;->b:Lasq;

    invoke-interface {v0}, Lasq;->b()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lafy;->a(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Laqj;Landroid/view/View;)Lafr;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Laqj;Landroid/view/View;)Lafr;
    .locals 2

    new-instance v0, Lafv;

    invoke-direct {v0, p3, p2}, Lafv;-><init>(Landroid/view/View;Laqj;)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lafy;->a(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Laqj;Lage;Lald;)Lafr;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Laqj;Landroid/view/View;Lald;)Lafr;
    .locals 1

    new-instance v0, Lafv;

    invoke-direct {v0, p3, p2}, Lafv;-><init>(Landroid/view/View;Laqj;)V

    invoke-direct {p0, p1, p2, v0, p4}, Lafy;->a(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Laqj;Lage;Lald;)Lafr;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Laqj;Lpe;)Lafr;
    .locals 2

    new-instance v0, Lafs;

    invoke-direct {v0, p3}, Lafs;-><init>(Lpe;)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lafy;->a(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Laqj;Lage;Lald;)Lafr;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lafr;)V
    .locals 3

    iget-object v1, p0, Lafy;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p1}, Lafr;->e()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lafy;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lafy;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final a(Laqj;)V
    .locals 2

    iget-object v1, p0, Lafy;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lafy;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lafr;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lafr;->c()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b(Laqj;)V
    .locals 2

    iget-object v1, p0, Lafy;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lafy;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lafr;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lafr;->g()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final c(Laqj;)V
    .locals 2

    iget-object v1, p0, Lafy;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lafy;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lafr;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lafr;->h()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final d(Laqj;)V
    .locals 2

    iget-object v1, p0, Lafy;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lafy;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lafr;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lafr;->i()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
