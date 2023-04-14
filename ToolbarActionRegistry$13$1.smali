.class Lcom/rhmsoft/fm/core/ToolbarActionRegistry$13$1;
.super Lcom/rhmsoft/fm/action/BaseAction;
.source "ToolbarActionRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rhmsoft/fm/core/ToolbarActionRegistry$13;->createToolbarAction(Lcom/rhmsoft/fm/pro/FileManager;)Lcom/rhmsoft/fm/action/Action;
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
.field final synthetic this$1:Lcom/rhmsoft/fm/core/ToolbarActionRegistry$13;


# direct methods
.method constructor <init>(Lcom/rhmsoft/fm/core/ToolbarActionRegistry$13;IILcom/rhmsoft/fm/pro/FileManager;)V
    .locals 0
    .param p2, "$anonymous0"    # I
    .param p3, "$anonymous1"    # I
    .param p4, "$anonymous2"    # Lcom/rhmsoft/fm/pro/FileManager;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rhmsoft/fm/core/ToolbarActionRegistry$13$1;->this$1:Lcom/rhmsoft/fm/core/ToolbarActionRegistry$13;

    .line 269
    invoke-direct {p0, p2, p3, p4}, Lcom/rhmsoft/fm/action/BaseAction;-><init>(IILandroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onAction()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 273
    invoke-static {}, Lcom/rhmsoft/fm/core/FileHelper;->getExternalPath()Ljava/lang/String;

    move-result-object v0

    .line 274
    .local v0, "externalPath":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 275
    iget-object v1, p0, Lcom/rhmsoft/fm/core/ToolbarActionRegistry$13$1;->context:Landroid/content/Context;

    const v2, 0x7f06009e

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 278
    :goto_0
    return-void

    .line 277
    :cond_0
    iget-object v1, p0, Lcom/rhmsoft/fm/core/ToolbarActionRegistry$13$1;->context:Landroid/content/Context;

    check-cast v1, Lcom/rhmsoft/fm/pro/FileManager;

    invoke-virtual {v1}, Lcom/rhmsoft/fm/pro/FileManager;->getNavigator()Lcom/rhmsoft/fm/core/NavigateHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/rhmsoft/fm/core/ToolbarActionRegistry$13$1;->context:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/rhmsoft/fm/core/FileHelper;->toFile(Landroid/content/Context;Ljava/lang/String;)Lcom/rhmsoft/fm/model/IFileWrapper;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/rhmsoft/fm/core/NavigateHelper;->openFolder(Lcom/rhmsoft/fm/model/IFileWrapper;Z)V

    goto :goto_0
.end method
