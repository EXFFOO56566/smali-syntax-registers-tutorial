.class Lcom/rhmsoft/fm/pro/NetworkViewer$6$1$1;
.super Ljava/lang/Object;
.source "NetworkViewer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rhmsoft/fm/pro/NetworkViewer$6$1;->doPostExecute(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/rhmsoft/fm/pro/NetworkViewer$6$1;


# direct methods
.method constructor <init>(Lcom/rhmsoft/fm/pro/NetworkViewer$6$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rhmsoft/fm/pro/NetworkViewer$6$1$1;->this$2:Lcom/rhmsoft/fm/pro/NetworkViewer$6$1;

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 273
    iget-object v0, p0, Lcom/rhmsoft/fm/pro/NetworkViewer$6$1$1;->this$2:Lcom/rhmsoft/fm/pro/NetworkViewer$6$1;

    invoke-static {v0}, Lcom/rhmsoft/fm/pro/NetworkViewer$6$1;->access$2(Lcom/rhmsoft/fm/pro/NetworkViewer$6$1;)Lcom/rhmsoft/fm/pro/NetworkViewer$6;

    move-result-object v0

    invoke-static {v0}, Lcom/rhmsoft/fm/pro/NetworkViewer$6;->access$0(Lcom/rhmsoft/fm/pro/NetworkViewer$6;)Lcom/rhmsoft/fm/pro/NetworkViewer;

    move-result-object v0

    invoke-static {v0}, Lcom/rhmsoft/fm/pro/NetworkViewer;->access$3(Lcom/rhmsoft/fm/pro/NetworkViewer;)Lcom/rhmsoft/fm/network/NetInfo;

    move-result-object v0

    instance-of v0, v0, Lcom/rhmsoft/fm/network/LANInfo;

    if-eqz v0, :cond_1

    .line 274
    new-instance v1, Lcom/rhmsoft/fm/dialog/LANConnectionDialog;

    iget-object v0, p0, Lcom/rhmsoft/fm/pro/NetworkViewer$6$1$1;->this$2:Lcom/rhmsoft/fm/pro/NetworkViewer$6$1;

    invoke-static {v0}, Lcom/rhmsoft/fm/pro/NetworkViewer$6$1;->access$2(Lcom/rhmsoft/fm/pro/NetworkViewer$6$1;)Lcom/rhmsoft/fm/pro/NetworkViewer$6;

    move-result-object v0

    invoke-static {v0}, Lcom/rhmsoft/fm/pro/NetworkViewer$6;->access$0(Lcom/rhmsoft/fm/pro/NetworkViewer$6;)Lcom/rhmsoft/fm/pro/NetworkViewer;

    move-result-object v2

    iget-object v0, p0, Lcom/rhmsoft/fm/pro/NetworkViewer$6$1$1;->this$2:Lcom/rhmsoft/fm/pro/NetworkViewer$6$1;

    invoke-static {v0}, Lcom/rhmsoft/fm/pro/NetworkViewer$6$1;->access$2(Lcom/rhmsoft/fm/pro/NetworkViewer$6$1;)Lcom/rhmsoft/fm/pro/NetworkViewer$6;

    move-result-object v0

    invoke-static {v0}, Lcom/rhmsoft/fm/pro/NetworkViewer$6;->access$0(Lcom/rhmsoft/fm/pro/NetworkViewer$6;)Lcom/rhmsoft/fm/pro/NetworkViewer;

    move-result-object v0

    invoke-static {v0}, Lcom/rhmsoft/fm/pro/NetworkViewer;->access$3(Lcom/rhmsoft/fm/pro/NetworkViewer;)Lcom/rhmsoft/fm/network/NetInfo;

    move-result-object v0

    check-cast v0, Lcom/rhmsoft/fm/network/LANInfo;

    invoke-direct {v1, v2, v0}, Lcom/rhmsoft/fm/dialog/LANConnectionDialog;-><init>(Lcom/rhmsoft/fm/pro/NetworkViewer;Lcom/rhmsoft/fm/network/LANInfo;)V

    invoke-virtual {v1}, Lcom/rhmsoft/fm/dialog/LANConnectionDialog;->show()V

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 275
    :cond_1
    iget-object v0, p0, Lcom/rhmsoft/fm/pro/NetworkViewer$6$1$1;->this$2:Lcom/rhmsoft/fm/pro/NetworkViewer$6$1;

    invoke-static {v0}, Lcom/rhmsoft/fm/pro/NetworkViewer$6$1;->access$2(Lcom/rhmsoft/fm/pro/NetworkViewer$6$1;)Lcom/rhmsoft/fm/pro/NetworkViewer$6;

    move-result-object v0

    invoke-static {v0}, Lcom/rhmsoft/fm/pro/NetworkViewer$6;->access$0(Lcom/rhmsoft/fm/pro/NetworkViewer$6;)Lcom/rhmsoft/fm/pro/NetworkViewer;

    move-result-object v0

    invoke-static {v0}, Lcom/rhmsoft/fm/pro/NetworkViewer;->access$3(Lcom/rhmsoft/fm/pro/NetworkViewer;)Lcom/rhmsoft/fm/network/NetInfo;

    move-result-object v0

    instance-of v0, v0, Lcom/rhmsoft/fm/network/SFTPInfo;

    if-eqz v0, :cond_2

    .line 276
    new-instance v1, Lcom/rhmsoft/fm/dialog/FTPConnectionDialog;

    iget-object v0, p0, Lcom/rhmsoft/fm/pro/NetworkViewer$6$1$1;->this$2:Lcom/rhmsoft/fm/pro/NetworkViewer$6$1;

    invoke-static {v0}, Lcom/rhmsoft/fm/pro/NetworkViewer$6$1;->access$2(Lcom/rhmsoft/fm/pro/NetworkViewer$6$1;)Lcom/rhmsoft/fm/pro/NetworkViewer$6;

    move-result-object v0

    invoke-static {v0}, Lcom/rhmsoft/fm/pro/NetworkViewer$6;->access$0(Lcom/rhmsoft/fm/pro/NetworkViewer$6;)Lcom/rhmsoft/fm/pro/NetworkViewer;

    move-result-object v2

    iget-object v0, p0, Lcom/rhmsoft/fm/pro/NetworkViewer$6$1$1;->this$2:Lcom/rhmsoft/fm/pro/NetworkViewer$6$1;

    invoke-static {v0}, Lcom/rhmsoft/fm/pro/NetworkViewer$6$1;->access$2(Lcom/rhmsoft/fm/pro/NetworkViewer$6$1;)Lcom/rhmsoft/fm/pro/NetworkViewer$6;

    move-result-object v0

    invoke-static {v0}, Lcom/rhmsoft/fm/pro/NetworkViewer$6;->access$0(Lcom/rhmsoft/fm/pro/NetworkViewer$6;)Lcom/rhmsoft/fm/pro/NetworkViewer;

    move-result-object v0

    invoke-static {v0}, Lcom/rhmsoft/fm/pro/NetworkViewer;->access$3(Lcom/rhmsoft/fm/pro/NetworkViewer;)Lcom/rhmsoft/fm/network/NetInfo;

    move-result-object v0

    check-cast v0, Lcom/rhmsoft/fm/network/SFTPInfo;

    invoke-direct {v1, v2, v0}, Lcom/rhmsoft/fm/dialog/FTPConnectionDialog;-><init>(Lcom/rhmsoft/fm/pro/NetworkViewer;Lcom/rhmsoft/fm/network/SFTPInfo;)V

    invoke-virtual {v1}, Lcom/rhmsoft/fm/dialog/FTPConnectionDialog;->show()V

    goto :goto_0

    .line 277
    :cond_2
    iget-object v0, p0, Lcom/rhmsoft/fm/pro/NetworkViewer$6$1$1;->this$2:Lcom/rhmsoft/fm/pro/NetworkViewer$6$1;

    invoke-static {v0}, Lcom/rhmsoft/fm/pro/NetworkViewer$6$1;->access$2(Lcom/rhmsoft/fm/pro/NetworkViewer$6$1;)Lcom/rhmsoft/fm/pro/NetworkViewer$6;

    move-result-object v0

    invoke-static {v0}, Lcom/rhmsoft/fm/pro/NetworkViewer$6;->access$0(Lcom/rhmsoft/fm/pro/NetworkViewer$6;)Lcom/rhmsoft/fm/pro/NetworkViewer;

    move-result-object v0

    invoke-static {v0}, Lcom/rhmsoft/fm/pro/NetworkViewer;->access$3(Lcom/rhmsoft/fm/pro/NetworkViewer;)Lcom/rhmsoft/fm/network/NetInfo;

    move-result-object v0

    instance-of v0, v0, Lcom/rhmsoft/fm/network/DavInfo;

    if-eqz v0, :cond_0

    .line 278
    new-instance v1, Lcom/rhmsoft/fm/dialog/DavConnectionDialog;

    iget-object v0, p0, Lcom/rhmsoft/fm/pro/NetworkViewer$6$1$1;->this$2:Lcom/rhmsoft/fm/pro/NetworkViewer$6$1;

    invoke-static {v0}, Lcom/rhmsoft/fm/pro/NetworkViewer$6$1;->access$2(Lcom/rhmsoft/fm/pro/NetworkViewer$6$1;)Lcom/rhmsoft/fm/pro/NetworkViewer$6;

    move-result-object v0

    invoke-static {v0}, Lcom/rhmsoft/fm/pro/NetworkViewer$6;->access$0(Lcom/rhmsoft/fm/pro/NetworkViewer$6;)Lcom/rhmsoft/fm/pro/NetworkViewer;

    move-result-object v2

    iget-object v0, p0, Lcom/rhmsoft/fm/pro/NetworkViewer$6$1$1;->this$2:Lcom/rhmsoft/fm/pro/NetworkViewer$6$1;

    invoke-static {v0}, Lcom/rhmsoft/fm/pro/NetworkViewer$6$1;->access$2(Lcom/rhmsoft/fm/pro/NetworkViewer$6$1;)Lcom/rhmsoft/fm/pro/NetworkViewer$6;

    move-result-object v0

    invoke-static {v0}, Lcom/rhmsoft/fm/pro/NetworkViewer$6;->access$0(Lcom/rhmsoft/fm/pro/NetworkViewer$6;)Lcom/rhmsoft/fm/pro/NetworkViewer;

    move-result-object v0

    invoke-static {v0}, Lcom/rhmsoft/fm/pro/NetworkViewer;->access$3(Lcom/rhmsoft/fm/pro/NetworkViewer;)Lcom/rhmsoft/fm/network/NetInfo;

    move-result-object v0

    check-cast v0, Lcom/rhmsoft/fm/network/DavInfo;

    invoke-direct {v1, v2, v0}, Lcom/rhmsoft/fm/dialog/DavConnectionDialog;-><init>(Lcom/rhmsoft/fm/pro/NetworkViewer;Lcom/rhmsoft/fm/network/DavInfo;)V

    invoke-virtual {v1}, Lcom/rhmsoft/fm/dialog/DavConnectionDialog;->show()V

    goto :goto_0
.end method
