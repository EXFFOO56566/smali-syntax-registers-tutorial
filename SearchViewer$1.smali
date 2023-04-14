.class Lcom/rhmsoft/fm/pro/SearchViewer$1;
.super Ljava/lang/Object;
.source "SearchViewer.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rhmsoft/fm/pro/SearchViewer;


# direct methods
.method constructor <init>(Lcom/rhmsoft/fm/pro/SearchViewer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rhmsoft/fm/pro/SearchViewer$1;->this$0:Lcom/rhmsoft/fm/pro/SearchViewer;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/rhmsoft/fm/pro/SearchViewer$1;->this$0:Lcom/rhmsoft/fm/pro/SearchViewer;

    iget-object v0, p0, Lcom/rhmsoft/fm/pro/SearchViewer$1;->this$0:Lcom/rhmsoft/fm/pro/SearchViewer;

    invoke-static {v0}, Lcom/rhmsoft/fm/pro/SearchViewer;->access$1(Lcom/rhmsoft/fm/pro/SearchViewer;)Lcom/rhmsoft/fm/core/FileListAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/rhmsoft/fm/core/FileListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rhmsoft/fm/model/IFileWrapper;

    invoke-static {v1, v0}, Lcom/rhmsoft/fm/pro/SearchViewer;->access$2(Lcom/rhmsoft/fm/pro/SearchViewer;Lcom/rhmsoft/fm/model/IFileWrapper;)V

    .line 101
    iget-object v0, p0, Lcom/rhmsoft/fm/pro/SearchViewer$1;->this$0:Lcom/rhmsoft/fm/pro/SearchViewer;

    iget-object v1, p0, Lcom/rhmsoft/fm/pro/SearchViewer$1;->this$0:Lcom/rhmsoft/fm/pro/SearchViewer;

    invoke-static {v1}, Lcom/rhmsoft/fm/pro/SearchViewer;->access$3(Lcom/rhmsoft/fm/pro/SearchViewer;)Lcom/rhmsoft/fm/model/IFileWrapper;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/rhmsoft/fm/pro/SearchViewer;->access$4(Lcom/rhmsoft/fm/pro/SearchViewer;Lcom/rhmsoft/fm/model/IFileWrapper;)V

    .line 102
    return-void
.end method
