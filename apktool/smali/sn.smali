.class public final Lsn;
.super Ljava/lang/Object;

# interfaces
.implements Lus;


# annotations
.annotation runtime Lapl;
.end annotation


# instance fields
.field private final a:Lsk;


# direct methods
.method public constructor <init>(Lsk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsn;->a:Lsk;

    return-void
.end method


# virtual methods
.method public final a(Lur;)V
    .locals 2

    const-string/jumbo v0, "onInitializationSucceeded must be called on the main UI thread."

    invoke-static {v0}, Labs;->b(Ljava/lang/String;)V

    const-string/jumbo v0, "Adapter called onInitializationSucceeded."

    invoke-static {v0}, Laqt;->a(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lsn;->a:Lsk;

    invoke-static {p1}, Ladg;->a(Ljava/lang/Object;)Ladd;

    move-result-object v1

    invoke-interface {v0, v1}, Lsk;->a(Ladd;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Could not call onInitializationSucceeded."

    invoke-static {v1, v0}, Laqt;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final a(Lur;I)V
    .locals 2

    const-string/jumbo v0, "onAdFailedToLoad must be called on the main UI thread."

    invoke-static {v0}, Labs;->b(Ljava/lang/String;)V

    const-string/jumbo v0, "Adapter called onAdFailedToLoad."

    invoke-static {v0}, Laqt;->a(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lsn;->a:Lsk;

    invoke-static {p1}, Ladg;->a(Ljava/lang/Object;)Ladd;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lsk;->b(Ladd;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Could not call onAdFailedToLoad."

    invoke-static {v1, v0}, Laqt;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final a(Lur;Lup;)V
    .locals 5

    const-string/jumbo v0, "onRewarded must be called on the main UI thread."

    invoke-static {v0}, Labs;->b(Ljava/lang/String;)V

    const-string/jumbo v0, "Adapter called onRewarded."

    invoke-static {v0}, Laqt;->a(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v0, p0, Lsn;->a:Lsk;

    invoke-static {p1}, Ladg;->a(Ljava/lang/Object;)Ladd;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;

    invoke-direct {v2, p2}, Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;-><init>(Lup;)V

    invoke-interface {v0, v1, v2}, Lsk;->a(Ladd;Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lsn;->a:Lsk;

    invoke-static {p1}, Ladg;->a(Ljava/lang/Object;)Ladd;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1, v2}, Lsk;->a(Ladd;Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Could not call onRewarded."

    invoke-static {v1, v0}, Laqt;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final b(Lur;)V
    .locals 2

    const-string/jumbo v0, "onAdLoaded must be called on the main UI thread."

    invoke-static {v0}, Labs;->b(Ljava/lang/String;)V

    const-string/jumbo v0, "Adapter called onAdLoaded."

    invoke-static {v0}, Laqt;->a(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lsn;->a:Lsk;

    invoke-static {p1}, Ladg;->a(Ljava/lang/Object;)Ladd;

    move-result-object v1

    invoke-interface {v0, v1}, Lsk;->b(Ladd;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Could not call onAdLoaded."

    invoke-static {v1, v0}, Laqt;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final c(Lur;)V
    .locals 2

    const-string/jumbo v0, "onAdOpened must be called on the main UI thread."

    invoke-static {v0}, Labs;->b(Ljava/lang/String;)V

    const-string/jumbo v0, "Adapter called onAdOpened."

    invoke-static {v0}, Laqt;->a(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lsn;->a:Lsk;

    invoke-static {p1}, Ladg;->a(Ljava/lang/Object;)Ladd;

    move-result-object v1

    invoke-interface {v0, v1}, Lsk;->c(Ladd;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Could not call onAdOpened."

    invoke-static {v1, v0}, Laqt;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final d(Lur;)V
    .locals 2

    const-string/jumbo v0, "onVideoStarted must be called on the main UI thread."

    invoke-static {v0}, Labs;->b(Ljava/lang/String;)V

    const-string/jumbo v0, "Adapter called onVideoStarted."

    invoke-static {v0}, Laqt;->a(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lsn;->a:Lsk;

    invoke-static {p1}, Ladg;->a(Ljava/lang/Object;)Ladd;

    move-result-object v1

    invoke-interface {v0, v1}, Lsk;->d(Ladd;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Could not call onVideoStarted."

    invoke-static {v1, v0}, Laqt;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final e(Lur;)V
    .locals 2

    const-string/jumbo v0, "onAdClosed must be called on the main UI thread."

    invoke-static {v0}, Labs;->b(Ljava/lang/String;)V

    const-string/jumbo v0, "Adapter called onAdClosed."

    invoke-static {v0}, Laqt;->a(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lsn;->a:Lsk;

    invoke-static {p1}, Ladg;->a(Ljava/lang/Object;)Ladd;

    move-result-object v1

    invoke-interface {v0, v1}, Lsk;->e(Ladd;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Could not call onAdClosed."

    invoke-static {v1, v0}, Laqt;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final f(Lur;)V
    .locals 2

    const-string/jumbo v0, "onAdLeftApplication must be called on the main UI thread."

    invoke-static {v0}, Labs;->b(Ljava/lang/String;)V

    const-string/jumbo v0, "Adapter called onAdLeftApplication."

    invoke-static {v0}, Laqt;->a(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lsn;->a:Lsk;

    invoke-static {p1}, Ladg;->a(Ljava/lang/Object;)Ladd;

    move-result-object v1

    invoke-interface {v0, v1}, Lsk;->g(Ladd;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Could not call onAdLeftApplication."

    invoke-static {v1, v0}, Laqt;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
