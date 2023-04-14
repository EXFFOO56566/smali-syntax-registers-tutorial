.class Lcom/rhmsoft/fm/core/ToolbarHelper$2;
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
.method constructor <init>(Lcom/rhmsoft/fm/core/ToolbarHelper;IILandroid/content/Context;)V
    .locals 0
    .param p2, "$anonymous0"    # I
    .param p3, "$anonymous1"    # I
    .param p4, "$anonymous2"    # Landroid/content/Context;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rhmsoft/fm/core/ToolbarHelper$2;->this$0:Lcom/rhmsoft/fm/core/ToolbarHelper;

    .line 88
    invoke-direct {p0, p2, p3, p4}, Lcom/rhmsoft/fm/action/BaseAction;-><init>(IILandroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onAction()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/rhmsoft/fm/core/ToolbarHelper$2;->this$0:Lcom/rhmsoft/fm/core/ToolbarHelper;

    invoke-virtual {v0}, Lcom/rhmsoft/fm/core/ToolbarHelper;->changeSelectionMode()V

    .line 93
    return-void
.end method
