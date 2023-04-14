.class Lcom/rhmsoft/fm/core/ToolbarActionRegistry$10$1;
.super Lcom/rhmsoft/fm/action/BaseAction;
.source "ToolbarActionRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rhmsoft/fm/core/ToolbarActionRegistry$10;->createToolbarAction(Lcom/rhmsoft/fm/pro/FileManager;)Lcom/rhmsoft/fm/action/Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/rhmsoft/fm/action/BaseAction",
        "<",
        "Lcom/rhmsoft/fm/pro/FileManager;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/rhmsoft/fm/core/ToolbarActionRegistry$10;


# direct methods
.method constructor <init>(Lcom/rhmsoft/fm/core/ToolbarActionRegistry$10;IIILcom/rhmsoft/fm/pro/FileManager;)V
    .locals 0
    .param p2, "$anonymous0"    # I
    .param p3, "$anonymous1"    # I
    .param p4, "$anonymous2"    # I
    .param p5, "$anonymous3"    # Lcom/rhmsoft/fm/pro/FileManager;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rhmsoft/fm/core/ToolbarActionRegistry$10$1;->this$1:Lcom/rhmsoft/fm/core/ToolbarActionRegistry$10;

    .line 209
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/rhmsoft/fm/action/BaseAction;-><init>(IIILandroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 218
    iget-object v1, p0, Lcom/rhmsoft/fm/core/ToolbarActionRegistry$10$1;->context:Landroid/content/Context;

    check-cast v1, Lcom/rhmsoft/fm/pro/FileManager;

    invoke-virtual {v1}, Lcom/rhmsoft/fm/pro/FileManager;->getCurrentFolder()Lcom/rhmsoft/fm/model/IFileWrapper;

    move-result-object v0

    .line 219
    .local v0, "file":Lcom/rhmsoft/fm/model/IFileWrapper;
    if-nez v0, :cond_0

    move v1, v2

    .line 226
    :goto_0
    return v1

    .line 221
    :cond_0
    invoke-interface {v0}, Lcom/rhmsoft/fm/model/IFileWrapper;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    .line 222
    goto :goto_0

    .line 223
    :cond_1
    invoke-interface {v0}, Lcom/rhmsoft/fm/model/IFileWrapper;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/rhmsoft/fm/core/FileHelper;->externalFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v3

    .line 224
    goto :goto_0

    :cond_2
    move v1, v2

    .line 226
    goto :goto_0
.end method

.method public onAction()V
    .locals 2

    .prologue
    .line 213
    new-instance v1, Lcom/rhmsoft/fm/dialog/CreateDialog;

    iget-object v0, p0, Lcom/rhmsoft/fm/core/ToolbarActionRegistry$10$1;->context:Landroid/content/Context;

    check-cast v0, Lcom/rhmsoft/fm/pro/FileManager;

    invoke-direct {v1, v0}, Lcom/rhmsoft/fm/dialog/CreateDialog;-><init>(Lcom/rhmsoft/fm/pro/FileManager;)V

    invoke-virtual {v1}, Lcom/rhmsoft/fm/dialog/CreateDialog;->show()V

    .line 214
    return-void
.end method
