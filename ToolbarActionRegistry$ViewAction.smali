.class Lcom/rhmsoft/fm/core/ToolbarActionRegistry$ViewAction;
.super Lcom/rhmsoft/fm/action/BaseAction;
.source "ToolbarActionRegistry.java"

# interfaces
.implements Lcom/rhmsoft/fm/action/ActionTextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rhmsoft/fm/core/ToolbarActionRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/rhmsoft/fm/action/BaseAction",
        "<",
        "Lcom/rhmsoft/fm/pro/FileManager;",
        ">;",
        "Lcom/rhmsoft/fm/action/ActionTextWatcher;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/rhmsoft/fm/pro/FileManager;)V
    .locals 2
    .param p1, "context"    # Lcom/rhmsoft/fm/pro/FileManager;

    .prologue
    .line 379
    const v0, 0x7f0200a1

    const v1, 0x7f060042

    invoke-direct {p0, v0, v1, p1}, Lcom/rhmsoft/fm/action/BaseAction;-><init>(IILandroid/content/Context;)V

    .line 380
    return-void
.end method


# virtual methods
.method public onAction()V
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/rhmsoft/fm/core/ToolbarActionRegistry$ViewAction;->context:Landroid/content/Context;

    check-cast v0, Lcom/rhmsoft/fm/pro/FileManager;

    invoke-virtual {v0}, Lcom/rhmsoft/fm/pro/FileManager;->switchDisplayMode()V

    .line 385
    return-void
.end method

.method public refreshText(Landroid/widget/Button;)V
    .locals 4
    .param p1, "btn"    # Landroid/widget/Button;

    .prologue
    .line 389
    iget-object v1, p0, Lcom/rhmsoft/fm/core/ToolbarActionRegistry$ViewAction;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "listDisplay"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 390
    .local v0, "list":Z
    if-eqz v0, :cond_0

    .line 391
    const v1, 0x7f060042

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(I)V

    .line 394
    :goto_0
    return-void

    .line 393
    :cond_0
    const v1, 0x7f060043

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method
