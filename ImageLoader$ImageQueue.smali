.class Lcom/rhmsoft/fm/core/ImageLoader$ImageQueue;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rhmsoft/fm/core/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImageQueue"
.end annotation


# instance fields
.field private imagesToLoad:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/rhmsoft/fm/core/ImageLoader$ImageToLoad;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/rhmsoft/fm/core/ImageLoader;


# direct methods
.method constructor <init>(Lcom/rhmsoft/fm/core/ImageLoader;)V
    .locals 1

    .prologue
    .line 413
    iput-object p1, p0, Lcom/rhmsoft/fm/core/ImageLoader$ImageQueue;->this$0:Lcom/rhmsoft/fm/core/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 414
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/rhmsoft/fm/core/ImageLoader$ImageQueue;->imagesToLoad:Ljava/util/LinkedList;

    return-void
.end method

.method static synthetic access$0(Lcom/rhmsoft/fm/core/ImageLoader$ImageQueue;)Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/rhmsoft/fm/core/ImageLoader$ImageQueue;->imagesToLoad:Ljava/util/LinkedList;

    return-object v0
.end method


# virtual methods
.method public clean(Landroid/widget/ImageView;)V
    .locals 2
    .param p1, "image"    # Landroid/widget/ImageView;

    .prologue
    .line 418
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    iget-object v1, p0, Lcom/rhmsoft/fm/core/ImageLoader$ImageQueue;->imagesToLoad:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 424
    return-void

    .line 419
    :cond_0
    iget-object v1, p0, Lcom/rhmsoft/fm/core/ImageLoader$ImageQueue;->imagesToLoad:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rhmsoft/fm/core/ImageLoader$ImageToLoad;

    iget-object v1, v1, Lcom/rhmsoft/fm/core/ImageLoader$ImageToLoad;->imageView:Landroid/widget/ImageView;

    if-ne v1, p1, :cond_1

    .line 420
    iget-object v1, p0, Lcom/rhmsoft/fm/core/ImageLoader$ImageQueue;->imagesToLoad:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 422
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
