.class Lcom/rhmsoft/fm/pro/SearchViewer$2;
.super Ljava/lang/Object;
.source "SearchViewer.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rhmsoft/fm/pro/SearchViewer;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lcom/rhmsoft/fm/pro/SearchViewer;


# direct methods
.method constructor <init>(Lcom/rhmsoft/fm/pro/SearchViewer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rhmsoft/fm/pro/SearchViewer$2;->this$0:Lcom/rhmsoft/fm/pro/SearchViewer;

    .line 106
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
    .line 110
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/rhmsoft/fm/pro/SearchViewer$2;->this$0:Lcom/rhmsoft/fm/pro/SearchViewer;

    iget-object v0, p0, Lcom/rhmsoft/fm/pro/SearchViewer$2;->this$0:Lcom/rhmsoft/fm/pro/SearchViewer;

    invoke-static {v0}, Lcom/rhmsoft/fm/pro/SearchViewer;->access$1(Lcom/rhmsoft/fm/pro/SearchViewer;)Lcom/rhmsoft/fm/core/FileListAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/rhmsoft/fm/core/FileListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rhmsoft/fm/model/IFileWrapper;

    invoke-static {v1, v0}, Lcom/rhmsoft/fm/pro/SearchViewer;->access$2(Lcom/rhmsoft/fm/pro/SearchViewer;Lcom/rhmsoft/fm/model/IFileWrapper;)V

    .line 111
    iget-object v0, p0, Lcom/rhmsoft/fm/pro/SearchViewer$2;->this$0:Lcom/rhmsoft/fm/pro/SearchViewer;

    invoke-static {v0}, Lcom/rhmsoft/fm/pro/SearchViewer;->access$3(Lcom/rhmsoft/fm/pro/SearchViewer;)Lcom/rhmsoft/fm/model/IFileWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/rhmsoft/fm/pro/SearchViewer$2;->this$0:Lcom/rhmsoft/fm/pro/SearchViewer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/rhmsoft/fm/pro/SearchViewer;->showDialog(I)V

    .line 113
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
