.class public Lcom/rhmsoft/fm/core/Clipboard;
.super Ljava/lang/Object;
.source "Clipboard.java"


# static fields
.field private static INSTANCE:Lcom/rhmsoft/fm/core/Clipboard; = null

.field public static final MODE_COPY:I = 0x0

.field public static final MODE_MOVE:I = 0x1


# instance fields
.field private contents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/rhmsoft/fm/model/IFileWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/rhmsoft/fm/core/Clipboard;

    invoke-direct {v0}, Lcom/rhmsoft/fm/core/Clipboard;-><init>()V

    sput-object v0, Lcom/rhmsoft/fm/core/Clipboard;->INSTANCE:Lcom/rhmsoft/fm/core/Clipboard;

    .line 9
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/rhmsoft/fm/core/Clipboard;->contents:Ljava/util/List;

    .line 18
    return-void
.end method

.method public static getInstance()Lcom/rhmsoft/fm/core/Clipboard;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/rhmsoft/fm/core/Clipboard;->INSTANCE:Lcom/rhmsoft/fm/core/Clipboard;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/rhmsoft/fm/core/Clipboard;->contents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 50
    return-void
.end method

.method public getContents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/rhmsoft/fm/model/IFileWrapper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/rhmsoft/fm/core/Clipboard;->contents:Ljava/util/List;

    return-object v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/rhmsoft/fm/core/Clipboard;->mode:I

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/rhmsoft/fm/core/Clipboard;->contents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public setContent(Lcom/rhmsoft/fm/model/IFileWrapper;I)V
    .locals 2
    .param p1, "file"    # Lcom/rhmsoft/fm/model/IFileWrapper;
    .param p2, "mode"    # I

    .prologue
    .line 25
    sget-object v1, Lcom/rhmsoft/fm/core/Clipboard;->INSTANCE:Lcom/rhmsoft/fm/core/Clipboard;

    monitor-enter v1

    .line 26
    :try_start_0
    iget-object v0, p0, Lcom/rhmsoft/fm/core/Clipboard;->contents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 27
    iget-object v0, p0, Lcom/rhmsoft/fm/core/Clipboard;->contents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    iput p2, p0, Lcom/rhmsoft/fm/core/Clipboard;->mode:I

    .line 25
    monitor-exit v1

    .line 30
    return-void

    .line 25
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setContents(Ljava/util/List;I)V
    .locals 2
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/rhmsoft/fm/model/IFileWrapper;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p1, "files":Ljava/util/List;, "Ljava/util/List<Lcom/rhmsoft/fm/model/IFileWrapper;>;"
    sget-object v1, Lcom/rhmsoft/fm/core/Clipboard;->INSTANCE:Lcom/rhmsoft/fm/core/Clipboard;

    monitor-enter v1

    .line 34
    :try_start_0
    iget-object v0, p0, Lcom/rhmsoft/fm/core/Clipboard;->contents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 35
    iget-object v0, p0, Lcom/rhmsoft/fm/core/Clipboard;->contents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 36
    iput p2, p0, Lcom/rhmsoft/fm/core/Clipboard;->mode:I

    .line 33
    monitor-exit v1

    .line 38
    return-void

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
