.class Lcom/rhmsoft/fm/core/ToolbarActionRegistry$2$1;
.super Lcom/rhmsoft/fm/action/BaseAction;
.source "ToolbarActionRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rhmsoft/fm/core/ToolbarActionRegistry$2;->createToolbarAction(Lcom/rhmsoft/fm/pro/FileManager;)Lcom/rhmsoft/fm/action/Action;
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
.field final synthetic this$1:Lcom/rhmsoft/fm/core/ToolbarActionRegistry$2;


# direct methods
.method constructor <init>(Lcom/rhmsoft/fm/core/ToolbarActionRegistry$2;IIILcom/rhmsoft/fm/pro/FileManager;)V
    .locals 0
    .param p2, "$anonymous0"    # I
    .param p3, "$anonymous1"    # I
    .param p4, "$anonymous2"    # I
    .param p5, "$anonymous3"    # Lcom/rhmsoft/fm/pro/FileManager;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rhmsoft/fm/core/ToolbarActionRegistry$2$1;->this$1:Lcom/rhmsoft/fm/core/ToolbarActionRegistry$2;

    .line 73
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/rhmsoft/fm/action/BaseAction;-><init>(IIILandroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .locals 2

    .prologue
    .line 84
    iget-object v1, p0, Lcom/rhmsoft/fm/core/ToolbarActionRegistry$2$1;->context:Landroid/content/Context;

    check-cast v1, Lcom/rhmsoft/fm/pro/FileManager;

    invoke-virtual {v1}, Lcom/rhmsoft/fm/pro/FileManager;->getCurrentFolder()Lcom/rhmsoft/fm/model/IFileWrapper;

    move-result-object v0

    .line 85
    .local v0, "file":Lcom/rhmsoft/fm/model/IFileWrapper;
    if-nez v0, :cond_0

    .line 86
    const/4 v1, 0x0

    .line 88
    :goto_0
    return v1

    :cond_0
    invoke-interface {v0}, Lcom/rhmsoft/fm/model/IFileWrapper;->hasParent()Z

    move-result v1

    goto :goto_0
.end method

.method public onAction()V
    .locals 4

    .prologue
    .line 77
    iget-object v1, p0, Lcom/rhmsoft/fm/core/ToolbarActionRegistry$2$1;->context:Landroid/content/Context;

    check-cast v1, Lcom/rhmsoft/fm/pro/FileManager;

    invoke-virtual {v1}, Lcom/rhmsoft/fm/pro/FileManager;->getCurrentFolder()Lcom/rhmsoft/fm/model/IFileWrapper;

    move-result-object v0

    .line 78
    .local v0, "file":Lcom/rhmsoft/fm/model/IFileWrapper;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/rhmsoft/fm/model/IFileWrapper;->getParentFile()Lcom/rhmsoft/fm/model/IFileWrapper;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 79
    iget-object v1, p0, Lcom/rhmsoft/fm/core/ToolbarActionRegistry$2$1;->context:Landroid/content/Context;

    check-cast v1, Lcom/rhmsoft/fm/pro/FileManager;

    invoke-virtual {v1}, Lcom/rhmsoft/fm/pro/FileManager;->getNavigator()Lcom/rhmsoft/fm/core/NavigateHelper;

    move-result-object v1

    invoke-interface {v0}, Lcom/rhmsoft/fm/model/IFileWrapper;->getParentFile()Lcom/rhmsoft/fm/model/IFileWrapper;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/rhmsoft/fm/core/NavigateHelper;->openFolder(Lcom/rhmsoft/fm/model/IFileWrapper;Z)V

    .line 80
    :cond_0
    return-void
.end method
