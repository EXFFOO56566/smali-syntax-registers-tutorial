.class Lcom/rhmsoft/fm/pro/NetworkViewer$6;
.super Ljava/lang/Object;
.source "NetworkViewer.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rhmsoft/fm/pro/NetworkViewer;


# direct methods
.method constructor <init>(Lcom/rhmsoft/fm/pro/NetworkViewer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rhmsoft/fm/pro/NetworkViewer$6;->this$0:Lcom/rhmsoft/fm/pro/NetworkViewer;

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/rhmsoft/fm/pro/NetworkViewer$6;)Lcom/rhmsoft/fm/pro/NetworkViewer;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/rhmsoft/fm/pro/NetworkViewer$6;->this$0:Lcom/rhmsoft/fm/pro/NetworkViewer;

    return-object v0
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
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
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x0

    .line 255
    iget-object v3, p0, Lcom/rhmsoft/fm/pro/NetworkViewer$6;->this$0:Lcom/rhmsoft/fm/pro/NetworkViewer;

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/rhmsoft/fm/network/NetInfo;

    invoke-static {v3, v2}, Lcom/rhmsoft/fm/pro/NetworkViewer;->access$2(Lcom/rhmsoft/fm/pro/NetworkViewer;Lcom/rhmsoft/fm/network/NetInfo;)V

    .line 256
    iget-object v2, p0, Lcom/rhmsoft/fm/pro/NetworkViewer$6;->this$0:Lcom/rhmsoft/fm/pro/NetworkViewer;

    invoke-static {v2}, Lcom/rhmsoft/fm/pro/NetworkViewer;->access$3(Lcom/rhmsoft/fm/pro/NetworkViewer;)Lcom/rhmsoft/fm/network/NetInfo;

    move-result-object v2

    instance-of v2, v2, Lcom/rhmsoft/fm/network/LANInfo;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/rhmsoft/fm/pro/NetworkViewer$6;->this$0:Lcom/rhmsoft/fm/pro/NetworkViewer;

    invoke-static {v2}, Lcom/rhmsoft/fm/pro/NetworkViewer;->access$3(Lcom/rhmsoft/fm/pro/NetworkViewer;)Lcom/rhmsoft/fm/network/NetInfo;

    move-result-object v2

    instance-of v2, v2, Lcom/rhmsoft/fm/network/SFTPInfo;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/rhmsoft/fm/pro/NetworkViewer$6;->this$0:Lcom/rhmsoft/fm/pro/NetworkViewer;

    invoke-static {v2}, Lcom/rhmsoft/fm/pro/NetworkViewer;->access$3(Lcom/rhmsoft/fm/pro/NetworkViewer;)Lcom/rhmsoft/fm/network/NetInfo;

    move-result-object v2

    instance-of v2, v2, Lcom/rhmsoft/fm/network/DavInfo;

    if-eqz v2, :cond_3

    .line 257
    :cond_0
    new-instance v2, Lcom/rhmsoft/fm/pro/NetworkViewer$6$1;

    iget-object v3, p0, Lcom/rhmsoft/fm/pro/NetworkViewer$6;->this$0:Lcom/rhmsoft/fm/pro/NetworkViewer;

    invoke-direct {v2, p0, v3}, Lcom/rhmsoft/fm/pro/NetworkViewer$6$1;-><init>(Lcom/rhmsoft/fm/pro/NetworkViewer$6;Landroid/content/Context;)V

    new-array v3, v4, [Ljava/lang/Void;

    .line 292
    invoke-virtual {v2, v3}, Lcom/rhmsoft/fm/pro/NetworkViewer$6$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 332
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/rhmsoft/fm/pro/NetworkViewer$6;->this$0:Lcom/rhmsoft/fm/pro/NetworkViewer;

    invoke-static {v2}, Lcom/rhmsoft/fm/pro/NetworkViewer;->access$3(Lcom/rhmsoft/fm/pro/NetworkViewer;)Lcom/rhmsoft/fm/network/NetInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 334
    iget-object v2, p0, Lcom/rhmsoft/fm/pro/NetworkViewer$6;->this$0:Lcom/rhmsoft/fm/pro/NetworkViewer;

    invoke-static {v2}, Lcom/rhmsoft/fm/pro/NetworkViewer;->access$3(Lcom/rhmsoft/fm/pro/NetworkViewer;)Lcom/rhmsoft/fm/network/NetInfo;

    move-result-object v2

    instance-of v2, v2, Lcom/rhmsoft/fm/network/LANInfo;

    if-eqz v2, :cond_6

    const-string v1, "LAN"

    .line 335
    .local v1, "label":Ljava/lang/String;
    :goto_1
    const-string v2, "Network Action"

    const-string v3, "Open Network Connection"

    invoke-static {v2, v3, v1}, Lcom/rhmsoft/fm/core/AnalyticsAPI;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    .end local v1    # "label":Ljava/lang/String;
    :cond_2
    return-void

    .line 293
    :cond_3
    iget-object v2, p0, Lcom/rhmsoft/fm/pro/NetworkViewer$6;->this$0:Lcom/rhmsoft/fm/pro/NetworkViewer;

    invoke-static {v2}, Lcom/rhmsoft/fm/pro/NetworkViewer;->access$3(Lcom/rhmsoft/fm/pro/NetworkViewer;)Lcom/rhmsoft/fm/network/NetInfo;

    move-result-object v2

    instance-of v2, v2, Lcom/rhmsoft/fm/network/BoxInfo;

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/rhmsoft/fm/pro/NetworkViewer$6;->this$0:Lcom/rhmsoft/fm/pro/NetworkViewer;

    invoke-static {v2}, Lcom/rhmsoft/fm/pro/NetworkViewer;->access$3(Lcom/rhmsoft/fm/pro/NetworkViewer;)Lcom/rhmsoft/fm/network/NetInfo;

    move-result-object v2

    instance-of v2, v2, Lcom/rhmsoft/fm/network/BoxInfo2;

    if-eqz v2, :cond_5

    .line 294
    :cond_4
    new-instance v2, Lcom/rhmsoft/fm/pro/NetworkViewer$6$2;

    iget-object v3, p0, Lcom/rhmsoft/fm/pro/NetworkViewer$6;->this$0:Lcom/rhmsoft/fm/pro/NetworkViewer;

    invoke-direct {v2, p0, v3}, Lcom/rhmsoft/fm/pro/NetworkViewer$6$2;-><init>(Lcom/rhmsoft/fm/pro/NetworkViewer$6;Landroid/content/Context;)V

    new-array v3, v4, [Ljava/lang/Void;

    .line 325
    invoke-virtual {v2, v3}, Lcom/rhmsoft/fm/pro/NetworkViewer$6$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 326
    :cond_5
    iget-object v2, p0, Lcom/rhmsoft/fm/pro/NetworkViewer$6;->this$0:Lcom/rhmsoft/fm/pro/NetworkViewer;

    invoke-static {v2}, Lcom/rhmsoft/fm/pro/NetworkViewer;->access$3(Lcom/rhmsoft/fm/pro/NetworkViewer;)Lcom/rhmsoft/fm/network/NetInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 327
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 328
    .local v0, "data":Landroid/content/Intent;
    const-string v2, "path"

    iget-object v3, p0, Lcom/rhmsoft/fm/pro/NetworkViewer$6;->this$0:Lcom/rhmsoft/fm/pro/NetworkViewer;

    invoke-static {v3}, Lcom/rhmsoft/fm/pro/NetworkViewer;->access$3(Lcom/rhmsoft/fm/pro/NetworkViewer;)Lcom/rhmsoft/fm/network/NetInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/rhmsoft/fm/network/NetInfo;->toPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 329
    iget-object v2, p0, Lcom/rhmsoft/fm/pro/NetworkViewer$6;->this$0:Lcom/rhmsoft/fm/pro/NetworkViewer;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v0}, Lcom/rhmsoft/fm/pro/NetworkViewer;->setResult(ILandroid/content/Intent;)V

    .line 330
    iget-object v2, p0, Lcom/rhmsoft/fm/pro/NetworkViewer$6;->this$0:Lcom/rhmsoft/fm/pro/NetworkViewer;

    invoke-virtual {v2}, Lcom/rhmsoft/fm/pro/NetworkViewer;->finish()V

    goto :goto_0

    .line 334
    .end local v0    # "data":Landroid/content/Intent;
    :cond_6
    iget-object v2, p0, Lcom/rhmsoft/fm/pro/NetworkViewer$6;->this$0:Lcom/rhmsoft/fm/pro/NetworkViewer;

    iget-object v3, p0, Lcom/rhmsoft/fm/pro/NetworkViewer$6;->this$0:Lcom/rhmsoft/fm/pro/NetworkViewer;

    invoke-static {v3}, Lcom/rhmsoft/fm/pro/NetworkViewer;->access$3(Lcom/rhmsoft/fm/pro/NetworkViewer;)Lcom/rhmsoft/fm/network/NetInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/rhmsoft/fm/network/NetInfo;->getLabelRes()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/rhmsoft/fm/pro/NetworkViewer;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method
