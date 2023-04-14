.class Lcom/rhmsoft/fm/pro/TextEditor$1;
.super Landroid/os/AsyncTask;
.source "TextEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rhmsoft/fm/pro/TextEditor;->loadContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private exceedSize:Ljava/lang/Object;

.field private openError:Ljava/lang/Object;

.field final synthetic this$0:Lcom/rhmsoft/fm/pro/TextEditor;


# direct methods
.method constructor <init>(Lcom/rhmsoft/fm/pro/TextEditor;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rhmsoft/fm/pro/TextEditor$1;->this$0:Lcom/rhmsoft/fm/pro/TextEditor;

    .line 79
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 81
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/rhmsoft/fm/pro/TextEditor$1;->openError:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/rhmsoft/fm/pro/TextEditor$1;->exceedSize:Ljava/lang/Object;

    return-void
.end method

.method private read(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 141
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    .local v2, "sb":Ljava/lang/StringBuilder;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 144
    .local v0, "in":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, "s":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 148
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 149
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 145
    :cond_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/rhmsoft/fm/pro/TextEditor$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Object;
    .locals 8
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 85
    const/4 v2, 0x0

    .line 88
    .local v2, "stream":Ljava/io/InputStream;
    :try_start_0
    const-string v4, "content"

    iget-object v5, p0, Lcom/rhmsoft/fm/pro/TextEditor$1;->this$0:Lcom/rhmsoft/fm/pro/TextEditor;

    invoke-virtual {v5}, Lcom/rhmsoft/fm/pro/TextEditor;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v4

    if-eqz v4, :cond_2

    .line 90
    :try_start_1
    iget-object v4, p0, Lcom/rhmsoft/fm/pro/TextEditor$1;->this$0:Lcom/rhmsoft/fm/pro/TextEditor;

    invoke-virtual {v4}, Lcom/rhmsoft/fm/pro/TextEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/rhmsoft/fm/pro/TextEditor$1;->this$0:Lcom/rhmsoft/fm/pro/TextEditor;

    invoke-virtual {v5}, Lcom/rhmsoft/fm/pro/TextEditor;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v2

    .line 121
    :cond_0
    :goto_0
    if-nez v2, :cond_7

    .line 122
    :try_start_2
    iget-object v4, p0, Lcom/rhmsoft/fm/pro/TextEditor$1;->openError:Ljava/lang/Object;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 133
    if-eqz v2, :cond_1

    .line 135
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8

    .line 131
    :cond_1
    :goto_1
    return-object v4

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/SecurityException;
    :try_start_4
    iget-object v4, p0, Lcom/rhmsoft/fm/pro/TextEditor$1;->openError:Ljava/lang/Object;

    goto :goto_1

    .line 95
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_2
    iget-object v4, p0, Lcom/rhmsoft/fm/pro/TextEditor$1;->this$0:Lcom/rhmsoft/fm/pro/TextEditor;

    invoke-virtual {v4}, Lcom/rhmsoft/fm/pro/TextEditor;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 96
    .local v3, "uri":Landroid/net/Uri;
    if-nez v3, :cond_3

    .line 97
    iget-object v4, p0, Lcom/rhmsoft/fm/pro/TextEditor$1;->openError:Ljava/lang/Object;

    goto :goto_1

    .line 98
    :cond_3
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/rhmsoft/fm/core/PropertiesHelper;->isRemoteFile(Ljava/lang/String;)Z

    move-result v1

    .line 99
    .local v1, "remoteFiles":Z
    const-string v4, "file"

    iget-object v5, p0, Lcom/rhmsoft/fm/pro/TextEditor$1;->this$0:Lcom/rhmsoft/fm/pro/TextEditor;

    invoke-virtual {v5}, Lcom/rhmsoft/fm/pro/TextEditor;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    if-eqz v1, :cond_0

    .line 100
    :cond_4
    iget-object v5, p0, Lcom/rhmsoft/fm/pro/TextEditor$1;->this$0:Lcom/rhmsoft/fm/pro/TextEditor;

    if-eqz v1, :cond_5

    iget-object v4, p0, Lcom/rhmsoft/fm/pro/TextEditor$1;->this$0:Lcom/rhmsoft/fm/pro/TextEditor;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/rhmsoft/fm/core/FileHelper;->toFile(Landroid/content/Context;Ljava/lang/String;)Lcom/rhmsoft/fm/model/IFileWrapper;

    move-result-object v4

    :goto_2
    invoke-static {v5, v4}, Lcom/rhmsoft/fm/pro/TextEditor;->access$1(Lcom/rhmsoft/fm/pro/TextEditor;Lcom/rhmsoft/fm/model/IFileWrapper;)V

    .line 101
    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/rhmsoft/fm/pro/TextEditor$1;->this$0:Lcom/rhmsoft/fm/pro/TextEditor;

    invoke-static {v4}, Lcom/rhmsoft/fm/pro/TextEditor;->access$2(Lcom/rhmsoft/fm/pro/TextEditor;)Lcom/rhmsoft/fm/model/IFileWrapper;

    move-result-object v4

    invoke-interface {v4}, Lcom/rhmsoft/fm/model/IFileWrapper;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 102
    iget-object v4, p0, Lcom/rhmsoft/fm/pro/TextEditor$1;->this$0:Lcom/rhmsoft/fm/pro/TextEditor;

    iget-object v5, p0, Lcom/rhmsoft/fm/pro/TextEditor$1;->this$0:Lcom/rhmsoft/fm/pro/TextEditor;

    invoke-static {v5}, Lcom/rhmsoft/fm/pro/TextEditor;->access$2(Lcom/rhmsoft/fm/pro/TextEditor;)Lcom/rhmsoft/fm/model/IFileWrapper;

    move-result-object v5

    invoke-interface {v5}, Lcom/rhmsoft/fm/model/IFileWrapper;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/rhmsoft/fm/pro/TextEditor;->access$3(Lcom/rhmsoft/fm/pro/TextEditor;Ljava/lang/String;)V

    .line 103
    iget-object v4, p0, Lcom/rhmsoft/fm/pro/TextEditor$1;->this$0:Lcom/rhmsoft/fm/pro/TextEditor;

    invoke-static {v4}, Lcom/rhmsoft/fm/pro/TextEditor;->access$2(Lcom/rhmsoft/fm/pro/TextEditor;)Lcom/rhmsoft/fm/model/IFileWrapper;

    move-result-object v4

    invoke-interface {v4}, Lcom/rhmsoft/fm/model/IFileWrapper;->length()J

    move-result-wide v4

    const-wide/32 v6, 0x100000

    cmp-long v4, v4, v6

    if-lez v4, :cond_6

    .line 104
    iget-object v4, p0, Lcom/rhmsoft/fm/pro/TextEditor$1;->exceedSize:Ljava/lang/Object;

    goto :goto_1

    .line 100
    :cond_5
    iget-object v4, p0, Lcom/rhmsoft/fm/pro/TextEditor$1;->this$0:Lcom/rhmsoft/fm/pro/TextEditor;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/rhmsoft/fm/core/FileHelper;->toFile(Landroid/content/Context;Ljava/lang/String;)Lcom/rhmsoft/fm/model/IFileWrapper;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v4

    goto :goto_2

    .line 107
    :cond_6
    :try_start_5
    iget-object v4, p0, Lcom/rhmsoft/fm/pro/TextEditor$1;->this$0:Lcom/rhmsoft/fm/pro/TextEditor;

    invoke-static {v4}, Lcom/rhmsoft/fm/pro/TextEditor;->access$2(Lcom/rhmsoft/fm/pro/TextEditor;)Lcom/rhmsoft/fm/model/IFileWrapper;

    move-result-object v4

    invoke-interface {v4}, Lcom/rhmsoft/fm/model/IFileWrapper;->openInputStream()Ljava/io/InputStream;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v2

    goto/16 :goto_0

    .line 108
    :catch_1
    move-exception v0

    .line 109
    .local v0, "e":Ljava/io/IOException;
    :try_start_6
    sget-object v4, Lcom/rhmsoft/fm/core/ShellHelper;->INSTANCE:Lcom/rhmsoft/fm/core/ShellHelper;

    iget-object v5, p0, Lcom/rhmsoft/fm/pro/TextEditor$1;->this$0:Lcom/rhmsoft/fm/pro/TextEditor;

    invoke-static {v5}, Lcom/rhmsoft/fm/pro/TextEditor;->access$2(Lcom/rhmsoft/fm/pro/TextEditor;)Lcom/rhmsoft/fm/model/IFileWrapper;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/rhmsoft/fm/core/ShellHelper;->readFileByShell(Lcom/rhmsoft/fm/model/IFileWrapper;)Ljava/io/InputStream;

    move-result-object v2

    .line 110
    if-nez v2, :cond_0

    .line 111
    throw v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 116
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "remoteFiles":Z
    .end local v3    # "uri":Landroid/net/Uri;
    :catch_2
    move-exception v0

    .line 117
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v4, "com.rhmsoft.fm"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error when reading file:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/rhmsoft/fm/pro/TextEditor$1;->this$0:Lcom/rhmsoft/fm/pro/TextEditor;

    invoke-virtual {v6}, Lcom/rhmsoft/fm/pro/TextEditor;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 118
    iget-object v4, p0, Lcom/rhmsoft/fm/pro/TextEditor$1;->openError:Ljava/lang/Object;

    goto/16 :goto_1

    .line 124
    .end local v0    # "e":Ljava/io/IOException;
    :cond_7
    :try_start_7
    iget-object v4, p0, Lcom/rhmsoft/fm/pro/TextEditor$1;->this$0:Lcom/rhmsoft/fm/pro/TextEditor;

    invoke-static {v4}, Lcom/rhmsoft/fm/pro/TextEditor;->access$4(Lcom/rhmsoft/fm/pro/TextEditor;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lcom/rhmsoft/fm/pro/TextEditor$1;->read(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v4

    .line 133
    if-eqz v2, :cond_1

    .line 135
    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_1

    .line 136
    :catch_3
    move-exception v5

    goto/16 :goto_1

    .line 125
    :catch_4
    move-exception v0

    .line 126
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_9
    const-string v4, "com.rhmsoft.fm"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error when reading file:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/rhmsoft/fm/pro/TextEditor$1;->this$0:Lcom/rhmsoft/fm/pro/TextEditor;

    invoke-virtual {v6}, Lcom/rhmsoft/fm/pro/TextEditor;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 127
    iget-object v4, p0, Lcom/rhmsoft/fm/pro/TextEditor$1;->openError:Ljava/lang/Object;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 133
    if-eqz v2, :cond_1

    .line 135
    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    goto/16 :goto_1

    .line 136
    :catch_5
    move-exception v5

    goto/16 :goto_1

    .line 128
    .end local v0    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    :try_start_b
    const-string v4, "com.rhmsoft.fm"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "File is too large to be opened by text editor: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/rhmsoft/fm/pro/TextEditor$1;->this$0:Lcom/rhmsoft/fm/pro/TextEditor;

    invoke-virtual {v6}, Lcom/rhmsoft/fm/pro/TextEditor;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 131
    iget-object v4, p0, Lcom/rhmsoft/fm/pro/TextEditor$1;->exceedSize:Ljava/lang/Object;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 133
    if-eqz v2, :cond_1

    .line 135
    :try_start_c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    goto/16 :goto_1

    .line 136
    :catch_7
    move-exception v5

    goto/16 :goto_1

    .line 132
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v4

    .line 133
    if-eqz v2, :cond_8

    .line 135
    :try_start_d
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    .line 137
    :cond_8
    :goto_3
    throw v4

    .line 136
    :catch_8
    move-exception v5

    goto/16 :goto_1

    :catch_9
    move-exception v5

    goto :goto_3
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 159
    iget-object v1, p0, Lcom/rhmsoft/fm/pro/TextEditor$1;->this$0:Lcom/rhmsoft/fm/pro/TextEditor;

    invoke-virtual {v1}, Lcom/rhmsoft/fm/pro/TextEditor;->dismissProgressDialog()V

    .line 160
    iget-object v1, p0, Lcom/rhmsoft/fm/pro/TextEditor$1;->exceedSize:Ljava/lang/Object;

    if-ne p1, v1, :cond_0

    .line 161
    iget-object v1, p0, Lcom/rhmsoft/fm/pro/TextEditor$1;->this$0:Lcom/rhmsoft/fm/pro/TextEditor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/rhmsoft/fm/pro/TextEditor;->showDialog(I)V

    .line 176
    .end local p1    # "result":Ljava/lang/Object;
    :goto_0
    return-void

    .line 162
    .restart local p1    # "result":Ljava/lang/Object;
    :cond_0
    iget-object v1, p0, Lcom/rhmsoft/fm/pro/TextEditor$1;->openError:Ljava/lang/Object;

    if-eq p1, v1, :cond_1

    instance-of v1, p1, Ljava/lang/String;

    if-nez v1, :cond_2

    .line 163
    :cond_1
    iget-object v1, p0, Lcom/rhmsoft/fm/pro/TextEditor$1;->this$0:Lcom/rhmsoft/fm/pro/TextEditor;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/rhmsoft/fm/pro/TextEditor;->showDialog(I)V

    goto :goto_0

    .line 166
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/rhmsoft/fm/pro/TextEditor$1;->this$0:Lcom/rhmsoft/fm/pro/TextEditor;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/rhmsoft/fm/pro/TextEditor;->access$5(Lcom/rhmsoft/fm/pro/TextEditor;Z)V

    .line 167
    iget-object v1, p0, Lcom/rhmsoft/fm/pro/TextEditor$1;->this$0:Lcom/rhmsoft/fm/pro/TextEditor;

    invoke-static {v1}, Lcom/rhmsoft/fm/pro/TextEditor;->access$6(Lcom/rhmsoft/fm/pro/TextEditor;)V

    .line 168
    iget-object v1, p0, Lcom/rhmsoft/fm/pro/TextEditor$1;->this$0:Lcom/rhmsoft/fm/pro/TextEditor;

    invoke-static {v1}, Lcom/rhmsoft/fm/pro/TextEditor;->access$7(Lcom/rhmsoft/fm/pro/TextEditor;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/rhmsoft/fm/pro/TextEditor$1;->this$0:Lcom/rhmsoft/fm/pro/TextEditor;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 169
    iget-object v1, p0, Lcom/rhmsoft/fm/pro/TextEditor$1;->this$0:Lcom/rhmsoft/fm/pro/TextEditor;

    invoke-static {v1}, Lcom/rhmsoft/fm/pro/TextEditor;->access$7(Lcom/rhmsoft/fm/pro/TextEditor;)Landroid/widget/EditText;

    move-result-object v1

    check-cast p1, Ljava/lang/String;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v1, p0, Lcom/rhmsoft/fm/pro/TextEditor$1;->this$0:Lcom/rhmsoft/fm/pro/TextEditor;

    invoke-static {v1}, Lcom/rhmsoft/fm/pro/TextEditor;->access$7(Lcom/rhmsoft/fm/pro/TextEditor;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/rhmsoft/fm/pro/TextEditor$1;->this$0:Lcom/rhmsoft/fm/pro/TextEditor;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .local v0, "th":Ljava/lang/Throwable;
    const-string v1, "com.rhmsoft.fm"

    const-string v2, "Error when close progress dialog"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/rhmsoft/fm/pro/TextEditor$1;->this$0:Lcom/rhmsoft/fm/pro/TextEditor;

    invoke-virtual {v0}, Lcom/rhmsoft/fm/pro/TextEditor;->showProgressDialog()Landroid/app/Dialog;

    .line 155
    return-void
.end method
