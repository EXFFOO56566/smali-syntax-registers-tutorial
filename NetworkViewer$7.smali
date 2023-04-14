.class Lcom/rhmsoft/fm/pro/NetworkViewer$7;
.super Ljava/lang/Object;
.source "NetworkViewer.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rhmsoft/fm/pro/NetworkViewer;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rhmsoft/fm/pro/NetworkViewer;


# direct methods
.method constructor <init>(Lcom/rhmsoft/fm/pro/NetworkViewer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rhmsoft/fm/pro/NetworkViewer$7;->this$0:Lcom/rhmsoft/fm/pro/NetworkViewer;

    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 344
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/rhmsoft/fm/pro/NetworkViewer$7;->this$0:Lcom/rhmsoft/fm/pro/NetworkViewer;

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rhmsoft/fm/network/NetInfo;

    invoke-static {v1, v0}, Lcom/rhmsoft/fm/pro/NetworkViewer;->access$2(Lcom/rhmsoft/fm/pro/NetworkViewer;Lcom/rhmsoft/fm/network/NetInfo;)V

    .line 345
    iget-object v0, p0, Lcom/rhmsoft/fm/pro/NetworkViewer$7;->this$0:Lcom/rhmsoft/fm/pro/NetworkViewer;

    invoke-static {v0}, Lcom/rhmsoft/fm/pro/NetworkViewer;->access$4(Lcom/rhmsoft/fm/pro/NetworkViewer;)Lcom/rhmsoft/fm/dialog/NetworkConextMenuDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rhmsoft/fm/dialog/NetworkConextMenuDialog;->show()V

    .line 346
    const/4 v0, 0x1

    return v0
.end method
