.class Lcom/baidu/location/e/a$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/location/e/a;->a(Ljava/lang/String;Ljava/util/List;Z)Lcom/baidu/location/BDLocation;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/baidu/location/e/a;


# direct methods
.method constructor <init>(Lcom/baidu/location/e/a;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/e/a$2;->c:Lcom/baidu/location/e/a;

    iput-object p2, p0, Lcom/baidu/location/e/a$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/baidu/location/e/a$2;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/baidu/location/e/a$2;->c:Lcom/baidu/location/e/a;

    iget-object v1, p0, Lcom/baidu/location/e/a$2;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/location/e/a$2;->b:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/baidu/location/e/a;->a(Lcom/baidu/location/e/a;Ljava/lang/String;Ljava/util/List;)V

    iget-object v0, p0, Lcom/baidu/location/e/a$2;->c:Lcom/baidu/location/e/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/baidu/location/e/a;->a(Lcom/baidu/location/e/a;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/baidu/location/e/a$2;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
