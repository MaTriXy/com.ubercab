.class final Led;
.super Leb;
.source "SourceFile"

# interfaces
.implements Landroid/view/SubMenu;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/support/v4/internal/view/SupportSubMenu;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Leb;-><init>(Landroid/content/Context;Landroid/support/v4/internal/view/SupportMenu;)V

    .line 34
    return-void
.end method

.method private b()Landroid/support/v4/internal/view/SupportSubMenu;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Led;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/internal/view/SupportSubMenu;

    return-object v0
.end method


# virtual methods
.method public final clearHeader()V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Led;->b()Landroid/support/v4/internal/view/SupportSubMenu;

    move-result-object v0

    invoke-interface {v0}, Landroid/support/v4/internal/view/SupportSubMenu;->clearHeader()V

    .line 74
    return-void
.end method

.method public final getItem()Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0}, Led;->b()Landroid/support/v4/internal/view/SupportSubMenu;

    move-result-object v0

    invoke-interface {v0}, Landroid/support/v4/internal/view/SupportSubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Led;->a(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public final setHeaderIcon(I)Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Led;->b()Landroid/support/v4/internal/view/SupportSubMenu;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/support/v4/internal/view/SupportSubMenu;->setHeaderIcon(I)Landroid/view/SubMenu;

    .line 56
    return-object p0
.end method

.method public final setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Led;->b()Landroid/support/v4/internal/view/SupportSubMenu;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/support/v4/internal/view/SupportSubMenu;->setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;

    .line 62
    return-object p0
.end method

.method public final setHeaderTitle(I)Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Led;->b()Landroid/support/v4/internal/view/SupportSubMenu;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/support/v4/internal/view/SupportSubMenu;->setHeaderTitle(I)Landroid/view/SubMenu;

    .line 44
    return-object p0
.end method

.method public final setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Led;->b()Landroid/support/v4/internal/view/SupportSubMenu;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/support/v4/internal/view/SupportSubMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    .line 50
    return-object p0
.end method

.method public final setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Led;->b()Landroid/support/v4/internal/view/SupportSubMenu;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/support/v4/internal/view/SupportSubMenu;->setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;

    .line 68
    return-object p0
.end method

.method public final setIcon(I)Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Led;->b()Landroid/support/v4/internal/view/SupportSubMenu;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/support/v4/internal/view/SupportSubMenu;->setIcon(I)Landroid/view/SubMenu;

    .line 79
    return-object p0
.end method

.method public final setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0}, Led;->b()Landroid/support/v4/internal/view/SupportSubMenu;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/support/v4/internal/view/SupportSubMenu;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;

    .line 85
    return-object p0
.end method
