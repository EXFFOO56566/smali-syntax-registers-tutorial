.class public interface abstract Lcom/rhmsoft/fm/core/ImageLoader$InputStreamProvider;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rhmsoft/fm/core/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InputStreamProvider"
.end annotation


# virtual methods
.method public abstract displayProgress()Z
.end method

.method public abstract getContent()Ljava/lang/Object;
.end method

.method public abstract openInputStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
