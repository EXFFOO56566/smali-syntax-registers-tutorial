.class Lcom/rhmsoft/fm/core/ProgressTask$1;
.super Ljava/lang/Object;
.source "ProgressTask.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rhmsoft/fm/core/ProgressTask;->onPreExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rhmsoft/fm/core/ProgressTask;


# direct methods
.method constructor <init>(Lcom/rhmsoft/fm/core/ProgressTask;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rhmsoft/fm/core/ProgressTask$1;->this$0:Lcom/rhmsoft/fm/core/ProgressTask;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/rhmsoft/fm/core/ProgressTask$1;->this$0:Lcom/rhmsoft/fm/core/ProgressTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/rhmsoft/fm/core/ProgressTask;->cancel(Z)Z

    .line 36
    return-void
.end method
