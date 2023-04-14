.class public Lcom/rhmsoft/fm/core/ImageLoader$FileInputStreamProvider;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Lcom/rhmsoft/fm/core/ImageLoader$InputStreamProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rhmsoft/fm/core/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileInputStreamProvider"
.end annotation


# static fields
.field private static final MAX_IMAGE_SIZE_WITHOUT_PROGRESS:I = 0x400000


# instance fields
.field private file:Lcom/rhmsoft/fm/model/IFileWrapper;


# direct methods
.method public constructor <init>(Lcom/rhmsoft/fm/model/IFileWrapper;)V
    .locals 0
    .param p1, "file"    # Lcom/rhmsoft/fm/model/IFileWrapper;

    .prologue
    .line 540
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 541
    iput-object p1, p0, Lcom/rhmsoft/fm/core/ImageLoader$FileInputStreamProvider;->file:Lcom/rhmsoft/fm/model/IFileWrapper;

    .line 542
    return-void
.end method


# virtual methods
.method public displayProgress()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 551
    iget-object v0, p0, Lcom/rhmsoft/fm/core/ImageLoader$FileInputStreamProvider;->file:Lcom/rhmsoft/fm/model/IFileWrapper;

    invoke-interface {v0}, Lcom/rhmsoft/fm/model/IFileWrapper;->getContent()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/io/File;

    if-eqz v0, :cond_1

    .line 552
    iget-object v0, p0, Lcom/rhmsoft/fm/core/ImageLoader$FileInputStreamProvider;->file:Lcom/rhmsoft/fm/model/IFileWrapper;

    invoke-interface {v0}, Lcom/rhmsoft/fm/model/IFileWrapper;->getContent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/32 v4, 0x400000

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    move v0, v1

    .line 554
    :goto_0
    return v0

    .line 552
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 554
    goto :goto_0
.end method

.method public getContent()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Lcom/rhmsoft/fm/core/ImageLoader$FileInputStreamProvider;->file:Lcom/rhmsoft/fm/model/IFileWrapper;

    invoke-interface {v0}, Lcom/rhmsoft/fm/model/IFileWrapper;->getContent()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public openInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 546
    iget-object v0, p0, Lcom/rhmsoft/fm/core/ImageLoader$FileInputStreamProvider;->file:Lcom/rhmsoft/fm/model/IFileWrapper;

    invoke-interface {v0}, Lcom/rhmsoft/fm/model/IFileWrapper;->openInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
