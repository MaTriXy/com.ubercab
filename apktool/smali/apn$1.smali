.class final Lapn$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapn;->a(Landroid/content/Context;Lakx;Lags;Lapm;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)Lcom/google/android/gms/ads/internal/request/AdResponseParcel;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lapm;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

.field final synthetic d:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lapm;Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lapn$1;->a:Lapm;

    iput-object p2, p0, Lapn$1;->b:Landroid/content/Context;

    iput-object p3, p0, Lapn$1;->c:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iput-object p4, p0, Lapn$1;->d:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Ljava/lang/Void;
    .locals 1

    iget-object v0, p0, Lapn$1;->c:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->g:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lapn$1;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
