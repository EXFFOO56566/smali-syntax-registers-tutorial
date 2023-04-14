.class public abstract Lcom/rhmsoft/fm/core/ParamThread;
.super Ljava/lang/Thread;
.source "ParamThread.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Thread;"
    }
.end annotation


# instance fields
.field private param:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 7
    .local p0, "this":Lcom/rhmsoft/fm/core/ParamThread;, "Lcom/rhmsoft/fm/core/ParamThread<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/rhmsoft/fm/core/ParamThread;->param:Ljava/lang/Object;

    .line 9
    return-void
.end method


# virtual methods
.method protected abstract execute(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public final run()V
    .locals 1

    .prologue
    .line 13
    .local p0, "this":Lcom/rhmsoft/fm/core/ParamThread;, "Lcom/rhmsoft/fm/core/ParamThread<TT;>;"
    iget-object v0, p0, Lcom/rhmsoft/fm/core/ParamThread;->param:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/rhmsoft/fm/core/ParamThread;->execute(Ljava/lang/Object;)V

    .line 14
    return-void
.end method
