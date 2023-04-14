.class Lcom/rhmsoft/fm/core/ToolbarActionRegistry$5$1;
.super Lcom/rhmsoft/fm/action/BaseAction;
.source "ToolbarActionRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rhmsoft/fm/core/ToolbarActionRegistry$5;->createToolbarAction(Lcom/rhmsoft/fm/pro/FileManager;)Lcom/rhmsoft/fm/action/Action;
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
.field final synthetic this$1:Lcom/rhmsoft/fm/core/ToolbarActionRegistry$5;


# direct methods
.method constructor <init>(Lcom/rhmsoft/fm/core/ToolbarActionRegistry$5;IIILcom/rhmsoft/fm/pro/FileManager;)V
    .locals 0
    .param p2, "$anonymous0"    # I
    .param p3, "$anonymous1"    # I
    .param p4, "$anonymous2"    # I
    .param p5, "$anonymous3"    # Lcom/rhmsoft/fm/pro/FileManager;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rhmsoft/fm/core/ToolbarActionRegistry$5$1;->this$1:Lcom/rhmsoft/fm/core/ToolbarActionRegistry$5;

    .line 134
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/rhmsoft/fm/action/BaseAction;-><init>(IIILandroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/rhmsoft/fm/core/ToolbarActionRegistry$5$1;->context:Landroid/content/Context;

    check-cast v0, Lcom/rhmsoft/fm/pro/FileManager;

    invoke-virtual {v0}, Lcom/rhmsoft/fm/pro/FileManager;->getNavigator()Lcom/rhmsoft/fm/core/NavigateHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rhmsoft/fm/core/NavigateHelper;->canNext()Z

    move-result v0

    return v0
.end method

.method public onAction()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/rhmsoft/fm/core/ToolbarActionRegistry$5$1;->context:Landroid/content/Context;

    check-cast v0, Lcom/rhmsoft/fm/pro/FileManager;

    invoke-virtual {v0}, Lcom/rhmsoft/fm/pro/FileManager;->getNavigator()Lcom/rhmsoft/fm/core/NavigateHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rhmsoft/fm/core/NavigateHelper;->next()V

    .line 139
    return-void
.end method
