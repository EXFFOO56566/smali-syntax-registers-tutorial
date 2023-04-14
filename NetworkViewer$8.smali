.class Lcom/rhmsoft/fm/pro/NetworkViewer$8;
.super Ljava/lang/Thread;
.source "NetworkViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rhmsoft/fm/pro/NetworkViewer;->startScan()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rhmsoft/fm/pro/NetworkViewer;


# direct methods
.method constructor <init>(Lcom/rhmsoft/fm/pro/NetworkViewer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rhmsoft/fm/pro/NetworkViewer$8;->this$0:Lcom/rhmsoft/fm/pro/NetworkViewer;

    .line 388
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method private intToIpPrefix(I)Ljava/lang/String;
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    and-int/lit16 v1, p1, 0xff

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 393
    :try_start_0
    iget-object v12, p0, Lcom/rhmsoft/fm/pro/NetworkViewer$8;->this$0:Lcom/rhmsoft/fm/pro/NetworkViewer;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/rhmsoft/fm/pro/NetworkViewer;->access$5(Lcom/rhmsoft/fm/pro/NetworkViewer;Z)V

    .line 395
    iget-object v12, p0, Lcom/rhmsoft/fm/pro/NetworkViewer$8;->this$0:Lcom/rhmsoft/fm/pro/NetworkViewer;

    const-string v13, "wifi"

    invoke-virtual {v12, v13}, Lcom/rhmsoft/fm/pro/NetworkViewer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/WifiManager;

    .line 397
    .local v10, "localWifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v9

    .line 398
    .local v9, "localWifiInfo":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v6

    .line 399
    .local v6, "localDhcpInfo":Landroid/net/DhcpInfo;
    const/4 v4, -0x1

    .line 400
    .local v4, "ip":I
    if-eqz v9, :cond_2

    .line 401
    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v4

    .line 404
    :cond_0
    :goto_0
    const/4 v12, -0x1

    if-ne v4, v12, :cond_3

    .line 405
    new-instance v12, Ljava/net/UnknownHostException;

    const-string v13, "No network."

    invoke-direct {v12, v13}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 430
    .end local v4    # "ip":I
    .end local v6    # "localDhcpInfo":Landroid/net/DhcpInfo;
    .end local v9    # "localWifiInfo":Landroid/net/wifi/WifiInfo;
    .end local v10    # "localWifiManager":Landroid/net/wifi/WifiManager;
    :catch_0
    move-exception v2

    .line 431
    .local v2, "e":Ljava/net/UnknownHostException;
    new-instance v11, Landroid/os/Message;

    invoke-direct {v11}, Landroid/os/Message;-><init>()V

    .line 432
    .local v11, "msg":Landroid/os/Message;
    const/4 v12, 0x3

    iput v12, v11, Landroid/os/Message;->what:I

    .line 433
    const v12, 0x7f060094

    iput v12, v11, Landroid/os/Message;->arg1:I

    .line 434
    iget-object v12, p0, Lcom/rhmsoft/fm/pro/NetworkViewer$8;->this$0:Lcom/rhmsoft/fm/pro/NetworkViewer;

    invoke-static {v12}, Lcom/rhmsoft/fm/pro/NetworkViewer;->access$7(Lcom/rhmsoft/fm/pro/NetworkViewer;)Landroid/os/Handler;

    move-result-object v12

    invoke-virtual {v12, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 436
    .end local v2    # "e":Ljava/net/UnknownHostException;
    .end local v11    # "msg":Landroid/os/Message;
    :cond_1
    new-instance v11, Landroid/os/Message;

    invoke-direct {v11}, Landroid/os/Message;-><init>()V

    .line 437
    .restart local v11    # "msg":Landroid/os/Message;
    const/4 v12, 0x1

    iput v12, v11, Landroid/os/Message;->what:I

    .line 438
    iget-object v12, p0, Lcom/rhmsoft/fm/pro/NetworkViewer$8;->this$0:Lcom/rhmsoft/fm/pro/NetworkViewer;

    invoke-static {v12}, Lcom/rhmsoft/fm/pro/NetworkViewer;->access$7(Lcom/rhmsoft/fm/pro/NetworkViewer;)Landroid/os/Handler;

    move-result-object v12

    invoke-virtual {v12, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 439
    return-void

    .line 402
    .end local v11    # "msg":Landroid/os/Message;
    .restart local v4    # "ip":I
    .restart local v6    # "localDhcpInfo":Landroid/net/DhcpInfo;
    .restart local v9    # "localWifiInfo":Landroid/net/wifi/WifiInfo;
    .restart local v10    # "localWifiManager":Landroid/net/wifi/WifiManager;
    :cond_2
    if-eqz v6, :cond_0

    .line 403
    :try_start_1
    iget v4, v6, Landroid/net/DhcpInfo;->ipAddress:I

    goto :goto_0

    .line 407
    :cond_3
    invoke-direct {p0, v4}, Lcom/rhmsoft/fm/pro/NetworkViewer$8;->intToIpPrefix(I)Ljava/lang/String;

    move-result-object v5

    .line 408
    .local v5, "ipPrefix":Ljava/lang/String;
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_1
    const/16 v12, 0xfe

    if-gt v3, v12, :cond_1

    .line 409
    iget-object v12, p0, Lcom/rhmsoft/fm/pro/NetworkViewer$8;->this$0:Lcom/rhmsoft/fm/pro/NetworkViewer;

    invoke-static {v12}, Lcom/rhmsoft/fm/pro/NetworkViewer;->access$6(Lcom/rhmsoft/fm/pro/NetworkViewer;)Z
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v12

    if-nez v12, :cond_1

    .line 412
    :try_start_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 413
    .local v0, "address":Ljava/net/InetAddress;
    new-instance v8, Ljava/net/Socket;

    invoke-direct {v8}, Ljava/net/Socket;-><init>()V

    .line 414
    .local v8, "localSocket":Ljava/net/Socket;
    new-instance v7, Ljava/net/InetSocketAddress;

    const/16 v12, 0x1bd

    invoke-direct {v7, v0, v12}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 415
    .local v7, "localInetSocketAddress":Ljava/net/InetSocketAddress;
    const/16 v12, 0x1f4

    invoke-virtual {v8, v7, v12}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 416
    invoke-virtual {v8}, Ljava/net/Socket;->close()V

    .line 419
    new-instance v11, Landroid/os/Message;

    invoke-direct {v11}, Landroid/os/Message;-><init>()V

    .line 420
    .restart local v11    # "msg":Landroid/os/Message;
    const/4 v12, 0x2

    iput v12, v11, Landroid/os/Message;->what:I

    .line 421
    new-instance v1, Lcom/rhmsoft/fm/network/LANInfo;

    invoke-direct {v1}, Lcom/rhmsoft/fm/network/LANInfo;-><init>()V

    .line 422
    .local v1, "conn":Lcom/rhmsoft/fm/network/LANInfo;
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v1, Lcom/rhmsoft/fm/network/LANInfo;->address:Ljava/lang/String;

    .line 423
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v1, Lcom/rhmsoft/fm/network/LANInfo;->account:Ljava/lang/String;

    .line 424
    iput-object v1, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 425
    iget-object v12, p0, Lcom/rhmsoft/fm/pro/NetworkViewer$8;->this$0:Lcom/rhmsoft/fm/pro/NetworkViewer;

    invoke-static {v12}, Lcom/rhmsoft/fm/pro/NetworkViewer;->access$7(Lcom/rhmsoft/fm/pro/NetworkViewer;)Landroid/os/Handler;

    move-result-object v12

    invoke-virtual {v12, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_0

    .line 408
    .end local v0    # "address":Ljava/net/InetAddress;
    .end local v1    # "conn":Lcom/rhmsoft/fm/network/LANInfo;
    .end local v7    # "localInetSocketAddress":Ljava/net/InetSocketAddress;
    .end local v8    # "localSocket":Ljava/net/Socket;
    .end local v11    # "msg":Landroid/os/Message;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 426
    :catch_1
    move-exception v12

    goto :goto_2
.end method
