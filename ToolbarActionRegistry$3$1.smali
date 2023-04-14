.class Lcom/rhmsoft/fm/core/ToolbarActionRegistry$3$1;
.super Lcom/rhmsoft/fm/action/BaseAction;
.source "ToolbarActionRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rhmsoft/fm/core/ToolbarActionRegistry$3;->createToolbarAction(Lcom/rhmsoft/fm/pro/FileManager;)Lcom/rhmsoft/fm/action/Action;
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
.field final synthetic this$1:Lcom/rhmsoft/fm/core/ToolbarActionRegistry$3;


# direct methods
.method constructor <init>(Lcom/rhmsoft/fm/core/ToolbarActionRegistry$3;IILcom/rhmsoft/fm/pro/FileManager;)V
    .locals 0
    .param p2, "$anonymous0"    # I
    .param p3, "$anonymous1"    # I
    .param p4, "$anonymous2"    # Lcom/rhmsoft/fm/pro/FileManager;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rhmsoft/fm/core/ToolbarActionRegistry$3$1;->this$1:Lcom/rhmsoft/fm/core/ToolbarActionRegistry$3;

    .line 99
    invoke-direct {p0, p2, p3, p4}, Lcom/rhmsoft/fm/action/BaseAction;-><init>(IILandroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onAction()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/rhmsoft/fm/core/ToolbarActionRegistry$3$1;->context:Landroid/content/Context;

    check-cast v0, Lcom/rhmsoft/fm/pro/FileManager;

    invoke-virtual {v0}, Lcom/rhmsoft/fm/pro/FileManager;->changeSelectionMode()V

    .line 104
    return-void
.end method
