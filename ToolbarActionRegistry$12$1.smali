.class Lcom/rhmsoft/fm/core/ToolbarActionRegistry$12$1;
.super Lcom/rhmsoft/fm/action/BaseAction;
.source "ToolbarActionRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rhmsoft/fm/core/ToolbarActionRegistry$12;->createToolbarAction(Lcom/rhmsoft/fm/pro/FileManager;)Lcom/rhmsoft/fm/action/Action;
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
.field final synthetic this$1:Lcom/rhmsoft/fm/core/ToolbarActionRegistry$12;


# direct methods
.method constructor <init>(Lcom/rhmsoft/fm/core/ToolbarActionRegistry$12;IILcom/rhmsoft/fm/pro/FileManager;)V
    .locals 0
    .param p2, "$anonymous0"    # I
    .param p3, "$anonymous1"    # I
    .param p4, "$anonymous2"    # Lcom/rhmsoft/fm/pro/FileManager;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rhmsoft/fm/core/ToolbarActionRegistry$12$1;->this$1:Lcom/rhmsoft/fm/core/ToolbarActionRegistry$12;

    .line 252
    invoke-direct {p0, p2, p3, p4}, Lcom/rhmsoft/fm/action/BaseAction;-><init>(IILandroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onAction()V
    .locals 3

    .prologue
    .line 256
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 257
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/rhmsoft/fm/core/ToolbarActionRegistry$12$1;->context:Landroid/content/Context;

    const-class v2, Lcom/rhmsoft/fm/pro/NetworkViewer;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 258
    iget-object v1, p0, Lcom/rhmsoft/fm/core/ToolbarActionRegistry$12$1;->context:Landroid/content/Context;

    check-cast v1, Lcom/rhmsoft/fm/pro/FileManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/rhmsoft/fm/pro/FileManager;->startActivityForResult(Landroid/content/Intent;I)V

    .line 259
    return-void
.end method
