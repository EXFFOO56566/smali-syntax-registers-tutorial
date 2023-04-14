.class Lcom/rhmsoft/fm/core/ToolbarHelper$4;
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
    iput-object p1, p0, Lcom/rhmsoft/fm/core/ToolbarHelper$4;->this$0:Lcom/rhmsoft/fm/core/ToolbarHelper;

    .line 123
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/rhmsoft/fm/action/BaseAction;-><init>(IIILandroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .locals 1

    .prologue
    .line 134
    invoke-static {}, Lcom/rhmsoft/fm/core/MultiSelectionHelper;->getInstance()Lcom/rhmsoft/fm/core/MultiSelectionHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rhmsoft/fm/core/MultiSelectionHelper;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onAction()V
    .locals 1

    .prologue
    .line 127
    invoke-static {}, Lcom/rhmsoft/fm/core/MultiSelectionHelper;->getInstance()Lcom/rhmsoft/fm/core/MultiSelectionHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rhmsoft/fm/core/MultiSelectionHelper;->clear()V

    .line 128
    iget-object v0, p0, Lcom/rhmsoft/fm/core/ToolbarHelper$4;->this$0:Lcom/rhmsoft/fm/core/ToolbarHelper;

    invoke-static {v0}, Lcom/rhmsoft/fm/core/ToolbarHelper;->access$0(Lcom/rhmsoft/fm/core/ToolbarHelper;)Lcom/rhmsoft/fm/pro/FileManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rhmsoft/fm/pro/FileManager;->refreshVisuals()V

    .line 129
    iget-object v0, p0, Lcom/rhmsoft/fm/core/ToolbarHelper$4;->this$0:Lcom/rhmsoft/fm/core/ToolbarHelper;

    invoke-virtual {v0}, Lcom/rhmsoft/fm/core/ToolbarHelper;->refreshStatus()V

    .line 130
    return-void
.end method
