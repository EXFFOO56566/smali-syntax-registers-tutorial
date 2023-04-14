.class Lcom/rhmsoft/fm/core/ToolbarHelper$1;
.super Ljava/lang/Object;
.source "ToolbarHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rhmsoft/fm/core/ToolbarHelper;->initToolbar(Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rhmsoft/fm/core/ToolbarHelper;

.field private final synthetic val$action:Lcom/rhmsoft/fm/action/Action;


# direct methods
.method constructor <init>(Lcom/rhmsoft/fm/core/ToolbarHelper;Lcom/rhmsoft/fm/action/Action;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rhmsoft/fm/core/ToolbarHelper$1;->this$0:Lcom/rhmsoft/fm/core/ToolbarHelper;

    iput-object p2, p0, Lcom/rhmsoft/fm/core/ToolbarHelper$1;->val$action:Lcom/rhmsoft/fm/action/Action;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/rhmsoft/fm/core/ToolbarHelper$1;->val$action:Lcom/rhmsoft/fm/action/Action;

    invoke-virtual {v0}, Lcom/rhmsoft/fm/action/Action;->onAction()V

    .line 65
    return-void
.end method
