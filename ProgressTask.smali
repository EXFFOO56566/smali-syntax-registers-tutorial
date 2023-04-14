.class public abstract Lcom/rhmsoft/fm/core/ProgressTask;
.super Landroid/os/AsyncTask;
.source "ProgressTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask",
        "<TParams;",
        "Ljava/lang/Void;",
        "TResult;>;"
    }
.end annotation


# instance fields
.field private cancellable:Z

.field private dummyProgress:Lcom/rhmsoft/fm/dialog/DummyProgressDialog;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    .local p0, "this":Lcom/rhmsoft/fm/core/ProgressTask;, "Lcom/rhmsoft/fm/core/ProgressTask<TParams;TResult;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/rhmsoft/fm/core/ProgressTask;-><init>(Landroid/content/Context;Z)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cancellable"    # Z

    .prologue
    .line 20
    .local p0, "this":Lcom/rhmsoft/fm/core/ProgressTask;, "Lcom/rhmsoft/fm/core/ProgressTask<TParams;TResult;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rhmsoft/fm/core/ProgressTask;->cancellable:Z

    .line 21
    iput-object p1, p0, Lcom/rhmsoft/fm/core/ProgressTask;->mContext:Landroid/content/Context;

    .line 22
    iput-boolean p2, p0, Lcom/rhmsoft/fm/core/ProgressTask;->cancellable:Z

    .line 23
    return-void
.end method


# virtual methods
.method protected abstract doPostExecute(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation
.end method

.method protected final onPostExecute(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "this":Lcom/rhmsoft/fm/core/ProgressTask;, "Lcom/rhmsoft/fm/core/ProgressTask<TParams;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    invoke-virtual {p0}, Lcom/rhmsoft/fm/core/ProgressTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    invoke-virtual {p0, p1}, Lcom/rhmsoft/fm/core/ProgressTask;->doPostExecute(Ljava/lang/Object;)V

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/rhmsoft/fm/core/ProgressTask;->dummyProgress:Lcom/rhmsoft/fm/dialog/DummyProgressDialog;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/rhmsoft/fm/core/ProgressTask;->dummyProgress:Lcom/rhmsoft/fm/dialog/DummyProgressDialog;

    invoke-virtual {v0}, Lcom/rhmsoft/fm/dialog/DummyProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 51
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 27
    .local p0, "this":Lcom/rhmsoft/fm/core/ProgressTask;, "Lcom/rhmsoft/fm/core/ProgressTask<TParams;TResult;>;"
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 29
    :try_start_0
    new-instance v0, Lcom/rhmsoft/fm/dialog/DummyProgressDialog;

    iget-object v1, p0, Lcom/rhmsoft/fm/core/ProgressTask;->mContext:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/rhmsoft/fm/core/ProgressTask;->cancellable:Z

    invoke-direct {v0, v1, v2}, Lcom/rhmsoft/fm/dialog/DummyProgressDialog;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/rhmsoft/fm/core/ProgressTask;->dummyProgress:Lcom/rhmsoft/fm/dialog/DummyProgressDialog;

    .line 30
    iget-boolean v0, p0, Lcom/rhmsoft/fm/core/ProgressTask;->cancellable:Z

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/rhmsoft/fm/core/ProgressTask;->dummyProgress:Lcom/rhmsoft/fm/dialog/DummyProgressDialog;

    new-instance v1, Lcom/rhmsoft/fm/core/ProgressTask$1;

    invoke-direct {v1, p0}, Lcom/rhmsoft/fm/core/ProgressTask$1;-><init>(Lcom/rhmsoft/fm/core/ProgressTask;)V

    invoke-virtual {v0, v1}, Lcom/rhmsoft/fm/dialog/DummyProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/rhmsoft/fm/core/ProgressTask;->dummyProgress:Lcom/rhmsoft/fm/dialog/DummyProgressDialog;

    invoke-virtual {v0}, Lcom/rhmsoft/fm/dialog/DummyProgressDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :goto_0
    return-void

    .line 39
    :catch_0
    move-exception v0

    goto :goto_0
.end method
