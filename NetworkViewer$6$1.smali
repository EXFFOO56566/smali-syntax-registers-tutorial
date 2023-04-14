.class Lcom/rhmsoft/fm/pro/NetworkViewer$6$1;
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
    iput-object p1, p0, Lcom/rhmsoft/fm/pro/NetworkViewer$6$1;->this$1:Lcom/rhmsoft/fm/pro/NetworkViewer$6;

    .line 257
    invoke-direct {p0, p2}, Lcom/rhmsoft/fm/core/ProgressTask;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$2(Lcom/rhmsoft/fm/pro/NetworkViewer$6$1;)Lcom/rhmsoft/fm/pro/NetworkViewer$6;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/rhmsoft/fm/pro/NetworkViewer$6$1;->this$1:Lcom/rhmsoft/fm/pro/NetworkViewer$6;

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v2, 0x0

    .line 287
    iget-object v0, p0, Lcom/rhmsoft/fm/pro/NetworkViewer$6$1;->this$1:Lcom/rhmsoft/fm/pro/NetworkViewer$6;

    invoke-static {v0}, Lcom/rhmsoft/fm/pro/NetworkViewer$6;->access$0(Lcom/rhmsoft/fm/pro/NetworkViewer$6;)Lcom/rhmsoft/fm/pro/NetworkViewer;

    move-result-object v0

    invoke-static {v0}, Lcom/rhmsoft/fm/pro/NetworkViewer;->access$3(Lcom/rhmsoft/fm/pro/NetworkViewer;)Lcom/rhmsoft/fm/network/NetInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 288
    iget-object v0, p0, Lcom/rhmsoft/fm/pro/NetworkViewer$6$1;->this$1:Lcom/rhmsoft/fm/pro/NetworkViewer$6;

    invoke-static {v0}, Lcom/rhmsoft/fm/pro/NetworkViewer$6;->access$0(Lcom/rhmsoft/fm/pro/NetworkViewer$6;)Lcom/rhmsoft/fm/pro/NetworkViewer;

    move-result-object v0

    iget-object v1, p0, Lcom/rhmsoft/fm/pro/NetworkViewer$6$1;->this$1:Lcom/rhmsoft/fm/pro/NetworkViewer$6;

    invoke-static {v1}, Lcom/rhmsoft/fm/pro/NetworkViewer$6;->access$0(Lcom/rhmsoft/fm/pro/NetworkViewer$6;)Lcom/rhmsoft/fm/pro/NetworkViewer;

    move-result-object v1

    invoke-static {v1}, Lcom/rhmsoft/fm/pro/NetworkViewer;->access$3(Lcom/rhmsoft/fm/pro/NetworkViewer;)Lcom/rhmsoft/fm/network/NetInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/rhmsoft/fm/network/NetInfo;->toPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/rhmsoft/fm/core/FileHelper;->getFileExist(Landroid/content/Context;Ljava/lang/String;)Lcom/rhmsoft/fm/model/IFileWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 289
    :goto_0
    return-object v0

    .line 288
    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 289
    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/rhmsoft/fm/pro/NetworkViewer$6$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected doPostExecute(Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 261
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 262
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 263
    .local v0, "data":Landroid/content/Intent;
    const-string v1, "path"

    iget-object v2, p0, Lcom/rhmsoft/fm/pro/NetworkViewer$6$1;->this$1:Lcom/rhmsoft/fm/pro/NetworkViewer$6;

    invoke-static {v2}, Lcom/rhmsoft/fm/pro/NetworkViewer$6;->access$0(Lcom/rhmsoft/fm/pro/NetworkViewer$6;)Lcom/rhmsoft/fm/pro/NetworkViewer;

    move-result-object v2

    invoke-static {v2}, Lcom/rhmsoft/fm/pro/NetworkViewer;->access$3(Lcom/rhmsoft/fm/pro/NetworkViewer;)Lcom/rhmsoft/fm/network/NetInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/rhmsoft/fm/network/NetInfo;->toPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 264
    iget-object v1, p0, Lcom/rhmsoft/fm/pro/NetworkViewer$6$1;->this$1:Lcom/rhmsoft/fm/pro/NetworkViewer$6;

    invoke-static {v1}, Lcom/rhmsoft/fm/pro/NetworkViewer$6;->access$0(Lcom/rhmsoft/fm/pro/NetworkViewer$6;)Lcom/rhmsoft/fm/pro/NetworkViewer;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/rhmsoft/fm/pro/NetworkViewer;->setResult(ILandroid/content/Intent;)V

    .line 265
    iget-object v1, p0, Lcom/rhmsoft/fm/pro/NetworkViewer$6$1;->this$1:Lcom/rhmsoft/fm/pro/NetworkViewer$6;

    invoke-static {v1}, Lcom/rhmsoft/fm/pro/NetworkViewer$6;->access$0(Lcom/rhmsoft/fm/pro/NetworkViewer$6;)Lcom/rhmsoft/fm/pro/NetworkViewer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/rhmsoft/fm/pro/NetworkViewer;->finish()V

    .line 283
    .end local v0    # "data":Landroid/content/Intent;
    :goto_0
    return-void

    .line 268
    :cond_0
    :try_start_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/rhmsoft/fm/pro/NetworkViewer$6$1;->this$1:Lcom/rhmsoft/fm/pro/NetworkViewer$6;

    invoke-static {v2}, Lcom/rhmsoft/fm/pro/NetworkViewer$6;->access$0(Lcom/rhmsoft/fm/pro/NetworkViewer$6;)Lcom/rhmsoft/fm/pro/NetworkViewer;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/rhmsoft/fm/pro/NetworkViewer$6$1;->this$1:Lcom/rhmsoft/fm/pro/NetworkViewer$6;

    invoke-static {v2}, Lcom/rhmsoft/fm/pro/NetworkViewer$6;->access$0(Lcom/rhmsoft/fm/pro/NetworkViewer$6;)Lcom/rhmsoft/fm/pro/NetworkViewer;

    move-result-object v2

    invoke-static {v2}, Lcom/rhmsoft/fm/pro/NetworkViewer;->access$3(Lcom/rhmsoft/fm/pro/NetworkViewer;)Lcom/rhmsoft/fm/network/NetInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/rhmsoft/fm/network/NetInfo;->getIconRes()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f06009c

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f06009d

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 269
    const v2, 0x7f060007

    new-instance v3, Lcom/rhmsoft/fm/pro/NetworkViewer$6$1$1;

    invoke-direct {v3, p0}, Lcom/rhmsoft/fm/pro/NetworkViewer$6$1$1;-><init>(Lcom/rhmsoft/fm/pro/NetworkViewer$6$1;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 280
    const v2, 0x7f060017

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 281
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected bridge synthetic doPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/rhmsoft/fm/pro/NetworkViewer$6$1;->doPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
