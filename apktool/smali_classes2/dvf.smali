.class public final enum Ldvf;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/ubercab/experiment/model/TreatmentGroup;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ldvf;",
        ">;",
        "Lcom/ubercab/experiment/model/TreatmentGroup;"
    }
.end annotation


# static fields
.field public static final enum a:Ldvf;

.field public static final enum b:Ldvf;

.field public static final enum c:Ldvf;

.field private static final synthetic d:[Ldvf;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 76
    new-instance v0, Ldvf;

    const-string/jumbo v1, "SHARE_AS_TEXT"

    invoke-direct {v0, v1, v2}, Ldvf;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldvf;->a:Ldvf;

    .line 77
    new-instance v0, Ldvf;

    const-string/jumbo v1, "SHARE_AS_URL"

    invoke-direct {v0, v1, v3}, Ldvf;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldvf;->b:Ldvf;

    .line 78
    new-instance v0, Ldvf;

    const-string/jumbo v1, "SHARE_SINGLE_IMAGE"

    invoke-direct {v0, v1, v4}, Ldvf;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldvf;->c:Ldvf;

    .line 75
    const/4 v0, 0x3

    new-array v0, v0, [Ldvf;

    sget-object v1, Ldvf;->a:Ldvf;

    aput-object v1, v0, v2

    sget-object v1, Ldvf;->b:Ldvf;

    aput-object v1, v0, v3

    sget-object v1, Ldvf;->c:Ldvf;

    aput-object v1, v0, v4

    sput-object v0, Ldvf;->d:[Ldvf;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ldvf;
    .locals 1

    .prologue
    .line 75
    const-class v0, Ldvf;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ldvf;

    return-object v0
.end method

.method public static values()[Ldvf;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Ldvf;->d:[Ldvf;

    invoke-virtual {v0}, [Ldvf;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldvf;

    return-object v0
.end method
