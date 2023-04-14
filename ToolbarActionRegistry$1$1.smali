.class Lcom/rhmsoft/fm/core/ToolbarActionRegistry$1$1;
.super Lcom/rhmsoft/fm/action/BaseAction;
.source "ToolbarActionRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rhmsoft/fm/core/ToolbarActionRegistry$1;->createToolbarAction(Lcom/rhmsoft/fm/pro/FileManager;)Lcom/rhmsoft/fm/action/Action;
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
.field final synthetic this$1:Lcom/rhmsoft/fm/core/ToolbarActionRegistry$1;


# direct methods
.method constructor <init>(Lcom/rhmsoft/fm/core/ToolbarActionRegistry$1;IILcom/rhmsoft/fm/pro/FileManager;)V
    .locals 0
    .param p2, "$anonymous0"    # I
    .param p3, "$anonymous1"    # I
    .param p4, "$anonymous2"    # Lcom/rhmsoft/fm/pro/FileManager;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rhmsoft/fm/core/ToolbarActionRegistry$1$1;->this$1:Lcom/rhmsoft/fm/core/ToolbarActionRegistry$1;

    .line 58
    invoke-direct {p0, p2, p3, p4}, Lcom/rhmsoft/fm/action/BaseAction;-><init>(IILandroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onAction()V
    .locals 3

    .prologue
    .line 62
    iget-object v0, p0, Lcom/rhmsoft/fm/core/ToolbarActionRegistry$1$1;->context:Landroid/content/Context;

    check-cast v0, Lcom/rhmsoft/fm/pro/FileManager;

    invoke-virtual {v0}, Lcom/rhmsoft/fm/pro/FileManager;->getNavigator()Lcom/rhmsoft/fm/core/NavigateHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/rhmsoft/fm/core/ToolbarActionRegistry$1$1;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/rhmsoft/fm/core/ToolbarActionRegistry$1$1;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/rhmsoft/fm/core/FileHelper;->getHomeDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/rhmsoft/fm/core/FileHelper;->toFile(Landroid/content/Context;Ljava/lang/String;)Lcom/rhmsoft/fm/model/IFileWrapper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/rhmsoft/fm/core/NavigateHelper;->openFolder(Lcom/rhmsoft/fm/model/IFileWrapper;Z)V

    .line 63
    return-void
.end method
