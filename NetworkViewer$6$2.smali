.class Lcom/rhmsoft/fm/pro/NetworkViewer$6$2;
.super Lcom/rhmsoft/fm/core/ProgressTask;
.source "NetworkViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rhmsoft/fm/pro/NetworkViewer$6;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/rhmsoft/fm/core/ProgressTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/rhmsoft/fm/pro/NetworkViewer$6;


# direct methods
.method constructor <init>(Lcom/rhmsoft/fm/pro/NetworkViewer$6;Landroid/content/Context;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/content/Context;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rhmsoft/fm/pro/NetworkViewer$6$2;->this$1:Lcom/rhmsoft/fm/pro/NetworkViewer$6;

    .line 294
    invoke-direct {p0, p2}, Lcom/rhmsoft/fm/core/ProgressTask;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 13
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 311
    const/4 v2, 0x0

    .line 312
    .local v2, "expired":Z
    iget-object v4, p0, Lcom/rhmsoft/fm/pro/NetworkViewer$6$2;->this$1:Lcom/rhmsoft/fm/pro/NetworkViewer$6;

    invoke-static {v4}, Lcom/rhmsoft/fm/pro/NetworkViewer$6;->access$0(Lcom/rhmsoft/fm/pro/NetworkViewer$6;)Lcom/rhmsoft/fm/pro/NetworkViewer;

    move-result-object v4

    invoke-static {v4}, Lcom/rhmsoft/fm/pro/NetworkViewer;->access$3(Lcom/rhmsoft/fm/pro/NetworkViewer;)Lcom/rhmsoft/fm/network/NetInfo;

    move-result-object v4

    instance-of v4, v4, Lcom/rhmsoft/fm/network/BoxInfo;

    if-eqz v4, :cond_2

    .line 313
    iget-object v4, p0, Lcom/rhmsoft/fm/pro/NetworkViewer$6$2;->this$1:Lcom/rhmsoft/fm/pro/NetworkViewer$6;

    invoke-static {v4}, Lcom/rhmsoft/fm/pro/NetworkViewer$6;->access$0(Lcom/rhmsoft/fm/pro/NetworkViewer$6;)Lcom/rhmsoft/fm/pro/NetworkViewer;

    move-result-object v4

    invoke-static {v4}, Lcom/rhmsoft/fm/pro/NetworkViewer;->access$3(Lcom/rhmsoft/fm/pro/NetworkViewer;)Lcom/rhmsoft/fm/network/NetInfo;

    move-result-object v4

    check-cast v4, Lcom/rhmsoft/fm/network/BoxInfo;

    invoke-static {v4}, Lcom/rhmsoft/fm/network/BoxHelper2;->checkAccountInfo(Lcom/rhmsoft/fm/network/BoxInfo;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v2, v5

    .line 322
    :cond_0
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    return-object v4

    :cond_1
    move v2, v6

    .line 313
    goto :goto_0

    .line 314
    :cond_2
    iget-object v4, p0, Lcom/rhmsoft/fm/pro/NetworkViewer$6$2;->this$1:Lcom/rhmsoft/fm/pro/NetworkViewer$6;

    invoke-static {v4}, Lcom/rhmsoft/fm/pro/NetworkViewer$6;->access$0(Lcom/rhmsoft/fm/pro/NetworkViewer$6;)Lcom/rhmsoft/fm/pro/NetworkViewer;

    move-result-object v4

    invoke-static {v4}, Lcom/rhmsoft/fm/pro/NetworkViewer;->access$3(Lcom/rhmsoft/fm/pro/NetworkViewer;)Lcom/rhmsoft/fm/network/NetInfo;

    move-result-object v4

    instance-of v4, v4, Lcom/rhmsoft/fm/network/BoxInfo2;

    if-eqz v4, :cond_0

    .line 315
    iget-object v4, p0, Lcom/rhmsoft/fm/pro/NetworkViewer$6$2;->this$1:Lcom/rhmsoft/fm/pro/NetworkViewer$6;

    invoke-static {v4}, Lcom/rhmsoft/fm/pro/NetworkViewer$6;->access$0(Lcom/rhmsoft/fm/pro/NetworkViewer$6;)Lcom/rhmsoft/fm/pro/NetworkViewer;

    move-result-object v4

    invoke-static {v4}, Lcom/rhmsoft/fm/pro/NetworkViewer;->access$3(Lcom/rhmsoft/fm/pro/NetworkViewer;)Lcom/rhmsoft/fm/network/NetInfo;

    move-result-object v3

    check-cast v3, Lcom/rhmsoft/fm/network/BoxInfo2;

    .line 316
    .local v3, "info":Lcom/rhmsoft/fm/network/BoxInfo2;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 317
    .local v0, "current":J
    const-wide/32 v7, 0x48190800

    sub-long v7, v0, v7

    iget-wide v9, v3, Lcom/rhmsoft/fm/network/BoxInfo2;->expireTime:J

    const-wide/32 v11, 0x36ee80

    sub-long/2addr v9, v11

    cmp-long v4, v7, v9

    if-lez v4, :cond_3

    .line 318
    const/4 v2, 0x1

    goto :goto_0

    .line 320
    :cond_3
    iget-object v4, p0, Lcom/rhmsoft/fm/pro/NetworkViewer$6$2;->this$1:Lcom/rhmsoft/fm/pro/NetworkViewer$6;

    invoke-static {v4}, Lcom/rhmsoft/fm/pro/NetworkViewer$6;->access$0(Lcom/rhmsoft/fm/pro/NetworkViewer$6;)Lcom/rhmsoft/fm/pro/NetworkViewer;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/rhmsoft/fm/network/BoxHelper2;->checkAccountInfo(Landroid/content/Context;Lcom/rhmsoft/fm/network/BoxInfo2;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v2, v5

    :goto_1
    goto :goto_0

    :cond_4
    move v2, v6

    goto :goto_1
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/rhmsoft/fm/pro/NetworkViewer$6$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected doPostExecute(Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 298
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 299
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/rhmsoft/fm/pro/NetworkViewer$6$2;->this$1:Lcom/rhmsoft/fm/pro/NetworkViewer$6;

    invoke-static {v2}, Lcom/rhmsoft/fm/pro/NetworkViewer$6;->access$0(Lcom/rhmsoft/fm/pro/NetworkViewer$6;)Lcom/rhmsoft/fm/pro/NetworkViewer;

    move-result-object v2

    const-class v3, Lcom/rhmsoft/fm/network/AuthBoxActivity2;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 300
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/rhmsoft/fm/pro/NetworkViewer$6$2;->this$1:Lcom/rhmsoft/fm/pro/NetworkViewer$6;

    invoke-static {v2}, Lcom/rhmsoft/fm/pro/NetworkViewer$6;->access$0(Lcom/rhmsoft/fm/pro/NetworkViewer$6;)Lcom/rhmsoft/fm/pro/NetworkViewer;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v1, v3}, Lcom/rhmsoft/fm/pro/NetworkViewer;->startActivityForResult(Landroid/content/Intent;I)V

    .line 307
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 302
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 303
    .local v0, "data":Landroid/content/Intent;
    const-string v2, "path"

    iget-object v3, p0, Lcom/rhmsoft/fm/pro/NetworkViewer$6$2;->this$1:Lcom/rhmsoft/fm/pro/NetworkViewer$6;

    invoke-static {v3}, Lcom/rhmsoft/fm/pro/NetworkViewer$6;->access$0(Lcom/rhmsoft/fm/pro/NetworkViewer$6;)Lcom/rhmsoft/fm/pro/NetworkViewer;

    move-result-object v3

    invoke-static {v3}, Lcom/rhmsoft/fm/pro/NetworkViewer;->access$3(Lcom/rhmsoft/fm/pro/NetworkViewer;)Lcom/rhmsoft/fm/network/NetInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/rhmsoft/fm/network/NetInfo;->toPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 304
    iget-object v2, p0, Lcom/rhmsoft/fm/pro/NetworkViewer$6$2;->this$1:Lcom/rhmsoft/fm/pro/NetworkViewer$6;

    invoke-static {v2}, Lcom/rhmsoft/fm/pro/NetworkViewer$6;->access$0(Lcom/rhmsoft/fm/pro/NetworkViewer$6;)Lcom/rhmsoft/fm/pro/NetworkViewer;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v0}, Lcom/rhmsoft/fm/pro/NetworkViewer;->setResult(ILandroid/content/Intent;)V

    .line 305
    iget-object v2, p0, Lcom/rhmsoft/fm/pro/NetworkViewer$6$2;->this$1:Lcom/rhmsoft/fm/pro/NetworkViewer$6;

    invoke-static {v2}, Lcom/rhmsoft/fm/pro/NetworkViewer$6;->access$0(Lcom/rhmsoft/fm/pro/NetworkViewer$6;)Lcom/rhmsoft/fm/pro/NetworkViewer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/rhmsoft/fm/pro/NetworkViewer;->finish()V

    goto :goto_0
.end method

.method protected bridge synthetic doPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/rhmsoft/fm/pro/NetworkViewer$6$2;->doPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
