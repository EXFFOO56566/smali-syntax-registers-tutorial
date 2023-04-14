.class Lcom/rhmsoft/fm/core/ToolbarHelper$3;
.super Lcom/rhmsoft/fm/action/BaseAction;
.source "ToolbarHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rhmsoft/fm/core/ToolbarHelper;->initMultiToolbar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/rhmsoft/fm/action/BaseAction",
        "<",
        "Landroid/content/Context;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rhmsoft/fm/core/ToolbarHelper;


# direct methods
.method constructor <init>(Lcom/rhmsoft/fm/core/ToolbarHelper;IIILandroid/content/Context;)V
    .locals 0
    .param p2, "$anonymous0"    # I
    .param p3, "$anonymous1"    # I
    .param p4, "$anonymous2"    # I
    .param p5, "$anonymous3"    # Landroid/content/Context;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rhmsoft/fm/core/ToolbarHelper$3;->this$0:Lcom/rhmsoft/fm/core/ToolbarHelper;

    .line 101
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/rhmsoft/fm/action/BaseAction;-><init>(IIILandroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .locals 4

    .prologue
    .line 114
    iget-object v2, p0, Lcom/rhmsoft/fm/core/ToolbarHelper$3;->this$0:Lcom/rhmsoft/fm/core/ToolbarHelper;

    invoke-static {v2}, Lcom/rhmsoft/fm/core/ToolbarHelper;->access$0(Lcom/rhmsoft/fm/core/ToolbarHelper;)Lcom/rhmsoft/fm/pro/FileManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/rhmsoft/fm/pro/FileManager;->getCurrentFiles()Ljava/util/List;

    move-result-object v1

    .line 115
    .local v1, "files":Ljava/util/List;, "Ljava/util/List<Lcom/rhmsoft/fm/model/IFileWrapper;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 119
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 115
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rhmsoft/fm/model/IFileWrapper;

    .line 116
    .local v0, "file":Lcom/rhmsoft/fm/model/IFileWrapper;
    invoke-static {}, Lcom/rhmsoft/fm/core/MultiSelectionHelper;->getInstance()Lcom/rhmsoft/fm/core/MultiSelectionHelper;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/rhmsoft/fm/core/MultiSelectionHelper;->contains(Lcom/rhmsoft/fm/model/IFileWrapper;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 117
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onAction()V
    .locals 2

    .prologue
    .line 105
    invoke-static {}, Lcom/rhmsoft/fm/core/MultiSelectionHelper;->getInstance()Lcom/rhmsoft/fm/core/MultiSelectionHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/rhmsoft/fm/core/MultiSelectionHelper;->clear()V

    .line 106
    iget-object v1, p0, Lcom/rhmsoft/fm/core/ToolbarHelper$3;->this$0:Lcom/rhmsoft/fm/core/ToolbarHelper;

    invoke-static {v1}, Lcom/rhmsoft/fm/core/ToolbarHelper;->access$0(Lcom/rhmsoft/fm/core/ToolbarHelper;)Lcom/rhmsoft/fm/pro/FileManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/rhmsoft/fm/pro/FileManager;->getCurrentFiles()Ljava/util/List;

    move-result-object v0

    .line 107
    .local v0, "files":Ljava/util/List;, "Ljava/util/List<Lcom/rhmsoft/fm/model/IFileWrapper;>;"
    invoke-static {}, Lcom/rhmsoft/fm/core/MultiSelectionHelper;->getInstance()Lcom/rhmsoft/fm/core/MultiSelectionHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/rhmsoft/fm/core/MultiSelectionHelper;->getSelections()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 108
    iget-object v1, p0, Lcom/rhmsoft/fm/core/ToolbarHelper$3;->this$0:Lcom/rhmsoft/fm/core/ToolbarHelper;

    invoke-static {v1}, Lcom/rhmsoft/fm/core/ToolbarHelper;->access$0(Lcom/rhmsoft/fm/core/ToolbarHelper;)Lcom/rhmsoft/fm/pro/FileManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/rhmsoft/fm/pro/FileManager;->refreshVisuals()V

    .line 109
    iget-object v1, p0, Lcom/rhmsoft/fm/core/ToolbarHelper$3;->this$0:Lcom/rhmsoft/fm/core/ToolbarHelper;

    invoke-virtual {v1}, Lcom/rhmsoft/fm/core/ToolbarHelper;->refreshStatus()V

    .line 110
    return-void
.end method
