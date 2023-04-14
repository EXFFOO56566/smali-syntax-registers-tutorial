.class Lcom/rhmsoft/fm/core/ImageLoader$ImageToLoad;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rhmsoft/fm/core/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageToLoad"
.end annotation


# instance fields
.field public file:Lcom/rhmsoft/fm/model/IFileWrapper;

.field public imageView:Landroid/widget/ImageView;

.field public path:Ljava/lang/String;

.field final synthetic this$0:Lcom/rhmsoft/fm/core/ImageLoader;


# direct methods
.method public constructor <init>(Lcom/rhmsoft/fm/core/ImageLoader;Ljava/lang/String;Lcom/rhmsoft/fm/model/IFileWrapper;Landroid/widget/ImageView;)V
    .locals 0
    .param p2, "imagePath"    # Ljava/lang/String;
    .param p3, "file"    # Lcom/rhmsoft/fm/model/IFileWrapper;
    .param p4, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 432
    iput-object p1, p0, Lcom/rhmsoft/fm/core/ImageLoader$ImageToLoad;->this$0:Lcom/rhmsoft/fm/core/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 433
    iput-object p2, p0, Lcom/rhmsoft/fm/core/ImageLoader$ImageToLoad;->path:Ljava/lang/String;

    .line 434
    iput-object p4, p0, Lcom/rhmsoft/fm/core/ImageLoader$ImageToLoad;->imageView:Landroid/widget/ImageView;

    .line 435
    iput-object p3, p0, Lcom/rhmsoft/fm/core/ImageLoader$ImageToLoad;->file:Lcom/rhmsoft/fm/model/IFileWrapper;

    .line 436
    return-void
.end method
