.class Lcom/rhmsoft/fm/core/ImageLoader$LoaderThread;
.super Ljava/lang/Thread;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rhmsoft/fm/core/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoaderThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rhmsoft/fm/core/ImageLoader;


# direct methods
.method public constructor <init>(Lcom/rhmsoft/fm/core/ImageLoader;)V
    .locals 1

    .prologue
    .line 156
    iput-object p1, p0, Lcom/rhmsoft/fm/core/ImageLoader$LoaderThread;->this$0:Lcom/rhmsoft/fm/core/ImageLoader;

    .line 157
    const-string v0, "Image Loader Thread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method private createThumbnailFromCache(Lcom/rhmsoft/fm/core/ImageLoader$ImageToLoad;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "imageToLoad"    # Lcom/rhmsoft/fm/core/ImageLoader$ImageToLoad;
    .param p2, "md5"    # Ljava/lang/String;

    .prologue
    .line 233
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/rhmsoft/fm/core/FileHelper;->getThumbnailsFolder()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 234
    .local v2, "thumbnailFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-eqz v3, :cond_0

    .line 235
    const/4 v0, 0x0

    .line 237
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 242
    :goto_0
    if-eqz v0, :cond_0

    .line 244
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/io/File;->setLastModified(J)Z

    .line 245
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/rhmsoft/fm/core/ImageLoader$LoaderThread;->this$0:Lcom/rhmsoft/fm/core/ImageLoader;

    invoke-static {v4}, Lcom/rhmsoft/fm/core/ImageLoader;->access$2(Lcom/rhmsoft/fm/core/ImageLoader;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 249
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "thumbnailFile":Ljava/io/File;
    :goto_1
    return-object v3

    .line 238
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "thumbnailFile":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 239
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    const/4 v0, 0x0

    .line 240
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 248
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    .end local v2    # "thumbnailFile":Ljava/io/File;
    :catch_1
    move-exception v3

    .line 249
    :cond_0
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private createThumbnailFromScratch(Lcom/rhmsoft/fm/core/ImageLoader$ImageToLoad;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 15
    .param p1, "imageToLoad"    # Lcom/rhmsoft/fm/core/ImageLoader$ImageToLoad;
    .param p2, "md5"    # Ljava/lang/String;

    .prologue
    .line 253
    const/4 v4, 0x0

    .line 254
    .local v4, "drawable":Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x1

    .line 255
    .local v3, "cacheImage":Z
    const/4 v8, 0x0

    .line 257
    .local v8, "in":Ljava/io/InputStream;
    :try_start_0
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/rhmsoft/fm/core/ImageLoader$ImageToLoad;->file:Lcom/rhmsoft/fm/model/IFileWrapper;

    .line 258
    .local v7, "file":Lcom/rhmsoft/fm/model/IFileWrapper;
    const/4 v1, 0x0

    .line 260
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    invoke-interface {v7}, Lcom/rhmsoft/fm/model/IFileWrapper;->getContent()Ljava/lang/Object;

    move-result-object v13

    instance-of v13, v13, Ljava/io/File;

    if-eqz v13, :cond_2

    .line 261
    invoke-static {v7}, Lcom/rhmsoft/fm/core/PropertiesHelper;->getFileExtension(Lcom/rhmsoft/fm/model/IFileWrapper;)Ljava/lang/String;

    move-result-object v6

    .line 262
    .local v6, "ext":Ljava/lang/String;
    invoke-static {v6}, Lcom/rhmsoft/fm/core/PropertiesHelper;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 264
    .local v9, "mime":Ljava/lang/String;
    if-eqz v9, :cond_1

    const-string v13, "video/"

    invoke-virtual {v9, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 265
    iget-object v13, p0, Lcom/rhmsoft/fm/core/ImageLoader$LoaderThread;->this$0:Lcom/rhmsoft/fm/core/ImageLoader;

    invoke-interface {v7}, Lcom/rhmsoft/fm/model/IFileWrapper;->getPath()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/rhmsoft/fm/core/ImageLoader;->access$5(Lcom/rhmsoft/fm/core/ImageLoader;Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 267
    if-nez v1, :cond_2

    .line 310
    if-eqz v8, :cond_0

    .line 312
    :try_start_1
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 268
    :cond_0
    :goto_0
    const/4 v13, 0x0

    .line 315
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v6    # "ext":Ljava/lang/String;
    .end local v7    # "file":Lcom/rhmsoft/fm/model/IFileWrapper;
    .end local v9    # "mime":Ljava/lang/String;
    :goto_1
    return-object v13

    .line 270
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v6    # "ext":Ljava/lang/String;
    .restart local v7    # "file":Lcom/rhmsoft/fm/model/IFileWrapper;
    .restart local v9    # "mime":Ljava/lang/String;
    :cond_1
    :try_start_2
    invoke-interface {v7}, Lcom/rhmsoft/fm/model/IFileWrapper;->getContent()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/io/File;

    invoke-direct {p0, v13}, Lcom/rhmsoft/fm/core/ImageLoader$LoaderThread;->queryThumbnailPath(Ljava/io/File;)Ljava/lang/String;

    move-result-object v11

    .line 271
    .local v11, "path":Ljava/lang/String;
    if-eqz v11, :cond_6

    .line 273
    const/4 v3, 0x0

    .line 276
    :goto_2
    new-instance v10, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v10}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 277
    .local v10, "opts":Landroid/graphics/BitmapFactory$Options;
    const/4 v13, 0x1

    iput-boolean v13, v10, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 278
    invoke-static {v11, v10}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 279
    iget-object v13, p0, Lcom/rhmsoft/fm/core/ImageLoader$LoaderThread;->this$0:Lcom/rhmsoft/fm/core/ImageLoader;

    invoke-static {v13}, Lcom/rhmsoft/fm/core/ImageLoader;->access$6(Lcom/rhmsoft/fm/core/ImageLoader;)F

    move-result v13

    invoke-static {v10, v13}, Lcom/rhmsoft/fm/core/ImageLoader;->access$7(Landroid/graphics/BitmapFactory$Options;F)I

    move-result v13

    iput v13, v10, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 280
    const/4 v13, 0x0

    iput-boolean v13, v10, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 281
    invoke-static {v11, v10}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 285
    .end local v6    # "ext":Ljava/lang/String;
    .end local v9    # "mime":Ljava/lang/String;
    .end local v10    # "opts":Landroid/graphics/BitmapFactory$Options;
    .end local v11    # "path":Ljava/lang/String;
    :cond_2
    if-nez v1, :cond_3

    .line 286
    new-instance v10, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v10}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 287
    .restart local v10    # "opts":Landroid/graphics/BitmapFactory$Options;
    const/4 v13, 0x1

    iput-boolean v13, v10, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 288
    iget-object v13, p0, Lcom/rhmsoft/fm/core/ImageLoader$LoaderThread;->this$0:Lcom/rhmsoft/fm/core/ImageLoader;

    invoke-static {v13}, Lcom/rhmsoft/fm/core/ImageLoader;->access$3(Lcom/rhmsoft/fm/core/ImageLoader;)Z

    move-result v13

    invoke-interface {v7, v13}, Lcom/rhmsoft/fm/model/IFileWrapper;->openThumbnailStream(Z)Ljava/io/InputStream;

    move-result-object v8

    .line 289
    if-eqz v8, :cond_3

    .line 290
    invoke-static {v8}, Lcom/rhmsoft/fm/core/ImageLoader;->access$8(Ljava/io/InputStream;)[B

    move-result-object v2

    .line 291
    .local v2, "bytes":[B
    const/4 v13, 0x0

    array-length v14, v2

    invoke-static {v2, v13, v14, v10}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 292
    iget-object v13, p0, Lcom/rhmsoft/fm/core/ImageLoader$LoaderThread;->this$0:Lcom/rhmsoft/fm/core/ImageLoader;

    invoke-static {v13}, Lcom/rhmsoft/fm/core/ImageLoader;->access$6(Lcom/rhmsoft/fm/core/ImageLoader;)F

    move-result v13

    invoke-static {v10, v13}, Lcom/rhmsoft/fm/core/ImageLoader;->access$7(Landroid/graphics/BitmapFactory$Options;F)I

    move-result v13

    iput v13, v10, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 293
    const/4 v13, 0x0

    iput-boolean v13, v10, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 294
    const/4 v13, 0x0

    array-length v14, v2

    invoke-static {v2, v13, v14, v10}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 298
    .end local v2    # "bytes":[B
    .end local v10    # "opts":Landroid/graphics/BitmapFactory$Options;
    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    if-lez v13, :cond_4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    if-lez v13, :cond_4

    .line 299
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v13, p0, Lcom/rhmsoft/fm/core/ImageLoader$LoaderThread;->this$0:Lcom/rhmsoft/fm/core/ImageLoader;

    invoke-static {v13}, Lcom/rhmsoft/fm/core/ImageLoader;->access$2(Lcom/rhmsoft/fm/core/ImageLoader;)Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-direct {v5, v13, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 300
    .end local v4    # "drawable":Landroid/graphics/drawable/Drawable;
    .local v5, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_9

    if-eqz p2, :cond_9

    .line 301
    :try_start_3
    move-object/from16 v0, p2

    invoke-direct {p0, v0, v1}, Lcom/rhmsoft/fm/core/ImageLoader$LoaderThread;->saveThumbnail(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v4, v5

    .line 310
    .end local v5    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v4    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_4
    :goto_3
    if-eqz v8, :cond_5

    .line 312
    :try_start_4
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v7    # "file":Lcom/rhmsoft/fm/model/IFileWrapper;
    :cond_5
    :goto_4
    move-object v13, v4

    .line 315
    goto/16 :goto_1

    .line 275
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v6    # "ext":Ljava/lang/String;
    .restart local v7    # "file":Lcom/rhmsoft/fm/model/IFileWrapper;
    .restart local v9    # "mime":Ljava/lang/String;
    .restart local v11    # "path":Ljava/lang/String;
    :cond_6
    :try_start_5
    invoke-interface {v7}, Lcom/rhmsoft/fm/model/IFileWrapper;->getPath()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v11

    goto/16 :goto_2

    .line 303
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v6    # "ext":Ljava/lang/String;
    .end local v7    # "file":Lcom/rhmsoft/fm/model/IFileWrapper;
    .end local v9    # "mime":Ljava/lang/String;
    .end local v11    # "path":Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 305
    .local v12, "th":Ljava/lang/Throwable;
    :goto_5
    :try_start_6
    const-string v13, "com.rhmsoft.fm"

    const-string v14, "Error when load image"

    invoke-static {v13, v14, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 306
    const/4 v4, 0x0

    .line 307
    instance-of v13, v12, Ljava/lang/OutOfMemoryError;

    if-eqz v13, :cond_7

    .line 308
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 310
    :cond_7
    if-eqz v8, :cond_5

    .line 312
    :try_start_7
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_4

    .line 313
    :catch_1
    move-exception v13

    goto :goto_4

    .line 309
    .end local v12    # "th":Ljava/lang/Throwable;
    :catchall_0
    move-exception v13

    .line 310
    :goto_6
    if-eqz v8, :cond_8

    .line 312
    :try_start_8
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 314
    :cond_8
    :goto_7
    throw v13

    .line 313
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v6    # "ext":Ljava/lang/String;
    .restart local v7    # "file":Lcom/rhmsoft/fm/model/IFileWrapper;
    .restart local v9    # "mime":Ljava/lang/String;
    :catch_2
    move-exception v13

    goto/16 :goto_0

    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v6    # "ext":Ljava/lang/String;
    .end local v7    # "file":Lcom/rhmsoft/fm/model/IFileWrapper;
    .end local v9    # "mime":Ljava/lang/String;
    :catch_3
    move-exception v14

    goto :goto_7

    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v7    # "file":Lcom/rhmsoft/fm/model/IFileWrapper;
    :catch_4
    move-exception v13

    goto :goto_4

    .line 309
    .end local v4    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v5    # "drawable":Landroid/graphics/drawable/Drawable;
    :catchall_1
    move-exception v13

    move-object v4, v5

    .end local v5    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v4    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_6

    .line 303
    .end local v4    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v5    # "drawable":Landroid/graphics/drawable/Drawable;
    :catch_5
    move-exception v12

    move-object v4, v5

    .end local v5    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v4    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_5

    .end local v4    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v5    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_9
    move-object v4, v5

    .end local v5    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v4    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_3
.end method

.method private md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 373
    :try_start_0
    invoke-static {}, Lcom/rhmsoft/fm/core/ImageLoader;->access$10()Ljava/security/MessageDigest;

    move-result-object v5

    if-nez v5, :cond_0

    .line 374
    const-string v5, "MD5"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    invoke-static {v5}, Lcom/rhmsoft/fm/core/ImageLoader;->access$11(Ljava/security/MessageDigest;)V

    .line 377
    :goto_0
    invoke-static {}, Lcom/rhmsoft/fm/core/ImageLoader;->access$10()Ljava/security/MessageDigest;

    move-result-object v5

    sget-object v6, Lcom/rhmsoft/fm/core/Constants;->ENCODING:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/security/MessageDigest;->update([B)V

    .line 378
    invoke-static {}, Lcom/rhmsoft/fm/core/ImageLoader;->access$10()Ljava/security/MessageDigest;

    move-result-object v5

    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 379
    .local v0, "a":[B
    array-length v3, v0

    .line 380
    .local v3, "len":I
    new-instance v4, Ljava/lang/StringBuilder;

    shl-int/lit8 v5, v3, 0x1

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 381
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-lt v2, v3, :cond_1

    .line 385
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 387
    .end local v0    # "a":[B
    .end local v2    # "i":I
    .end local v3    # "len":I
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    :goto_2
    return-object v5

    .line 376
    :cond_0
    invoke-static {}, Lcom/rhmsoft/fm/core/ImageLoader;->access$10()Ljava/security/MessageDigest;

    move-result-object v5

    invoke-virtual {v5}, Ljava/security/MessageDigest;->reset()V

    goto :goto_0

    .line 386
    :catch_0
    move-exception v1

    .line 387
    .local v1, "e":Ljava/lang/Exception;
    const/4 v5, 0x0

    goto :goto_2

    .line 382
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "a":[B
    .restart local v2    # "i":I
    .restart local v3    # "len":I
    .restart local v4    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    aget-byte v5, v0, v2

    and-int/lit16 v5, v5, 0xf0

    shr-int/lit8 v5, v5, 0x4

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 383
    aget-byte v5, v0, v2

    and-int/lit8 v5, v5, 0xf

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private queryThumbnailPath(Ljava/io/File;)Ljava/lang/String;
    .locals 10
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const/4 v7, 0x1

    .line 340
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "_data="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 341
    .local v4, "where":Ljava/lang/String;
    iget-object v5, p0, Lcom/rhmsoft/fm/core/ImageLoader$LoaderThread;->this$0:Lcom/rhmsoft/fm/core/ImageLoader;

    invoke-static {v5}, Lcom/rhmsoft/fm/core/ImageLoader;->access$2(Lcom/rhmsoft/fm/core/ImageLoader;)Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "_id"

    aput-object v9, v7, v8

    const-string v8, "_id"

    invoke-static {v5, v6, v7, v4, v8}, Landroid/provider/MediaStore$Images$Media;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 343
    .local v2, "mediaCursor":Landroid/database/Cursor;
    if-eqz v2, :cond_7

    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 344
    const-string v5, "_id"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 345
    .local v0, "image_id":J
    const/4 v3, 0x0

    .line 346
    .local v3, "thumbnailsCursor":Landroid/database/Cursor;
    iget-object v5, p0, Lcom/rhmsoft/fm/core/ImageLoader$LoaderThread;->this$0:Lcom/rhmsoft/fm/core/ImageLoader;

    invoke-static {v5}, Lcom/rhmsoft/fm/core/ImageLoader;->access$3(Lcom/rhmsoft/fm/core/ImageLoader;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 347
    iget-object v5, p0, Lcom/rhmsoft/fm/core/ImageLoader$LoaderThread;->this$0:Lcom/rhmsoft/fm/core/ImageLoader;

    invoke-static {v5}, Lcom/rhmsoft/fm/core/ImageLoader;->access$2(Lcom/rhmsoft/fm/core/ImageLoader;)Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x3

    invoke-static {}, Lcom/rhmsoft/fm/core/ImageLoader;->access$9()[Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v0, v1, v6, v7}, Landroid/provider/MediaStore$Images$Thumbnails;->queryMiniThumbnail(Landroid/content/ContentResolver;JI[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 348
    if-eqz v3, :cond_0

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_0

    .line 349
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 350
    const/4 v3, 0x0

    .line 353
    :cond_0
    if-nez v3, :cond_1

    .line 354
    iget-object v5, p0, Lcom/rhmsoft/fm/core/ImageLoader$LoaderThread;->this$0:Lcom/rhmsoft/fm/core/ImageLoader;

    invoke-static {v5}, Lcom/rhmsoft/fm/core/ImageLoader;->access$2(Lcom/rhmsoft/fm/core/ImageLoader;)Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {}, Lcom/rhmsoft/fm/core/ImageLoader;->access$9()[Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v0, v1, v6, v7}, Landroid/provider/MediaStore$Images$Thumbnails;->queryMiniThumbnail(Landroid/content/ContentResolver;JI[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v3

    .line 356
    :cond_1
    if-eqz v3, :cond_6

    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 357
    const-string v5, "_data"

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 359
    if-eqz v3, :cond_2

    .line 360
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 365
    :cond_2
    if-eqz v2, :cond_3

    .line 366
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 363
    .end local v0    # "image_id":J
    .end local v3    # "thumbnailsCursor":Landroid/database/Cursor;
    :cond_3
    :goto_0
    return-object v5

    .line 358
    .restart local v0    # "image_id":J
    .restart local v3    # "thumbnailsCursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v5

    .line 359
    if-eqz v3, :cond_4

    .line 360
    :try_start_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 361
    :cond_4
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 364
    .end local v0    # "image_id":J
    .end local v3    # "thumbnailsCursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v5

    .line 365
    if-eqz v2, :cond_5

    .line 366
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 367
    :cond_5
    throw v5

    .line 359
    .restart local v0    # "image_id":J
    .restart local v3    # "thumbnailsCursor":Landroid/database/Cursor;
    :cond_6
    if-eqz v3, :cond_7

    .line 360
    :try_start_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 365
    .end local v0    # "image_id":J
    .end local v3    # "thumbnailsCursor":Landroid/database/Cursor;
    :cond_7
    if-eqz v2, :cond_8

    .line 366
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 363
    :cond_8
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private saveThumbnail(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 7
    .param p1, "md5"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 319
    invoke-static {}, Lcom/rhmsoft/fm/core/FileHelper;->getThumbnailsFolder()Ljava/io/File;

    move-result-object v4

    .line 320
    .local v4, "thumbnailsFolder":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 321
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 322
    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 323
    .local v3, "thumbnailFile":Ljava/io/File;
    const/4 v1, 0x0

    .line 325
    .local v1, "stream":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 326
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    .end local v1    # "stream":Ljava/io/OutputStream;
    .local v2, "stream":Ljava/io/OutputStream;
    :try_start_1
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x50

    invoke-virtual {p2, v5, v6, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 333
    if-eqz v2, :cond_3

    .line 334
    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    move-object v1, v2

    .line 337
    .end local v2    # "stream":Ljava/io/OutputStream;
    .restart local v1    # "stream":Ljava/io/OutputStream;
    :cond_1
    :goto_0
    return-void

    .line 329
    :catch_0
    move-exception v0

    .line 330
    .local v0, "ioe":Ljava/io/IOException;
    :goto_1
    :try_start_3
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 333
    if-eqz v1, :cond_1

    .line 334
    :try_start_4
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 335
    :catch_1
    move-exception v5

    goto :goto_0

    .line 331
    .end local v0    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 333
    :goto_2
    if-eqz v1, :cond_2

    .line 334
    :try_start_5
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    .line 336
    :cond_2
    :goto_3
    throw v5

    .line 335
    .end local v1    # "stream":Ljava/io/OutputStream;
    .restart local v2    # "stream":Ljava/io/OutputStream;
    :catch_2
    move-exception v5

    move-object v1, v2

    .end local v2    # "stream":Ljava/io/OutputStream;
    .restart local v1    # "stream":Ljava/io/OutputStream;
    goto :goto_0

    :catch_3
    move-exception v6

    goto :goto_3

    .line 331
    .end local v1    # "stream":Ljava/io/OutputStream;
    .restart local v2    # "stream":Ljava/io/OutputStream;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2    # "stream":Ljava/io/OutputStream;
    .restart local v1    # "stream":Ljava/io/OutputStream;
    goto :goto_2

    .line 329
    .end local v1    # "stream":Ljava/io/OutputStream;
    .restart local v2    # "stream":Ljava/io/OutputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "stream":Ljava/io/OutputStream;
    .restart local v1    # "stream":Ljava/io/OutputStream;
    goto :goto_1

    .end local v1    # "stream":Ljava/io/OutputStream;
    .restart local v2    # "stream":Ljava/io/OutputStream;
    :cond_3
    move-object v1, v2

    .end local v2    # "stream":Ljava/io/OutputStream;
    .restart local v1    # "stream":Ljava/io/OutputStream;
    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 166
    :cond_0
    :goto_0
    :try_start_0
    iget-object v9, p0, Lcom/rhmsoft/fm/core/ImageLoader$LoaderThread;->this$0:Lcom/rhmsoft/fm/core/ImageLoader;

    invoke-static {v9}, Lcom/rhmsoft/fm/core/ImageLoader;->access$0(Lcom/rhmsoft/fm/core/ImageLoader;)Lcom/rhmsoft/fm/core/ImageLoader$ImageQueue;

    move-result-object v9

    invoke-static {v9}, Lcom/rhmsoft/fm/core/ImageLoader$ImageQueue;->access$0(Lcom/rhmsoft/fm/core/ImageLoader$ImageQueue;)Ljava/util/LinkedList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/LinkedList;->size()I

    move-result v9

    if-nez v9, :cond_1

    .line 167
    iget-object v9, p0, Lcom/rhmsoft/fm/core/ImageLoader$LoaderThread;->this$0:Lcom/rhmsoft/fm/core/ImageLoader;

    invoke-static {v9}, Lcom/rhmsoft/fm/core/ImageLoader;->access$0(Lcom/rhmsoft/fm/core/ImageLoader;)Lcom/rhmsoft/fm/core/ImageLoader$ImageQueue;

    move-result-object v9

    invoke-static {v9}, Lcom/rhmsoft/fm/core/ImageLoader$ImageQueue;->access$0(Lcom/rhmsoft/fm/core/ImageLoader$ImageQueue;)Ljava/util/LinkedList;

    move-result-object v10

    monitor-enter v10
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :try_start_1
    iget-object v9, p0, Lcom/rhmsoft/fm/core/ImageLoader$LoaderThread;->this$0:Lcom/rhmsoft/fm/core/ImageLoader;

    invoke-static {v9}, Lcom/rhmsoft/fm/core/ImageLoader;->access$0(Lcom/rhmsoft/fm/core/ImageLoader;)Lcom/rhmsoft/fm/core/ImageLoader$ImageQueue;

    move-result-object v9

    invoke-static {v9}, Lcom/rhmsoft/fm/core/ImageLoader$ImageQueue;->access$0(Lcom/rhmsoft/fm/core/ImageLoader$ImageQueue;)Ljava/util/LinkedList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->wait()V

    .line 167
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    :cond_1
    :try_start_2
    iget-object v9, p0, Lcom/rhmsoft/fm/core/ImageLoader$LoaderThread;->this$0:Lcom/rhmsoft/fm/core/ImageLoader;

    invoke-static {v9}, Lcom/rhmsoft/fm/core/ImageLoader;->access$1(Lcom/rhmsoft/fm/core/ImageLoader;)Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v9

    if-eqz v9, :cond_2

    .line 229
    :goto_1
    return-void

    .line 167
    :catchall_0
    move-exception v9

    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v9

    .line 226
    :catch_0
    move-exception v9

    goto :goto_1

    .line 175
    :cond_2
    iget-object v9, p0, Lcom/rhmsoft/fm/core/ImageLoader$LoaderThread;->this$0:Lcom/rhmsoft/fm/core/ImageLoader;

    invoke-static {v9}, Lcom/rhmsoft/fm/core/ImageLoader;->access$0(Lcom/rhmsoft/fm/core/ImageLoader;)Lcom/rhmsoft/fm/core/ImageLoader$ImageQueue;

    move-result-object v9

    invoke-static {v9}, Lcom/rhmsoft/fm/core/ImageLoader$ImageQueue;->access$0(Lcom/rhmsoft/fm/core/ImageLoader$ImageQueue;)Ljava/util/LinkedList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/LinkedList;->size()I

    move-result v9

    if-eqz v9, :cond_0

    .line 177
    iget-object v9, p0, Lcom/rhmsoft/fm/core/ImageLoader$LoaderThread;->this$0:Lcom/rhmsoft/fm/core/ImageLoader;

    invoke-static {v9}, Lcom/rhmsoft/fm/core/ImageLoader;->access$0(Lcom/rhmsoft/fm/core/ImageLoader;)Lcom/rhmsoft/fm/core/ImageLoader$ImageQueue;

    move-result-object v9

    invoke-static {v9}, Lcom/rhmsoft/fm/core/ImageLoader$ImageQueue;->access$0(Lcom/rhmsoft/fm/core/ImageLoader$ImageQueue;)Ljava/util/LinkedList;

    move-result-object v10

    monitor-enter v10
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 178
    :try_start_5
    iget-object v9, p0, Lcom/rhmsoft/fm/core/ImageLoader$LoaderThread;->this$0:Lcom/rhmsoft/fm/core/ImageLoader;

    invoke-static {v9}, Lcom/rhmsoft/fm/core/ImageLoader;->access$0(Lcom/rhmsoft/fm/core/ImageLoader;)Lcom/rhmsoft/fm/core/ImageLoader$ImageQueue;

    move-result-object v9

    invoke-static {v9}, Lcom/rhmsoft/fm/core/ImageLoader$ImageQueue;->access$0(Lcom/rhmsoft/fm/core/ImageLoader$ImageQueue;)Ljava/util/LinkedList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/rhmsoft/fm/core/ImageLoader$ImageToLoad;

    .line 177
    .local v5, "imageToLoad":Lcom/rhmsoft/fm/core/ImageLoader$ImageToLoad;
    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 181
    const/4 v2, 0x0

    .line 182
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_3

    :try_start_6
    iget-object v9, v5, Lcom/rhmsoft/fm/core/ImageLoader$ImageToLoad;->path:Ljava/lang/String;

    if-nez v9, :cond_5

    .line 184
    :cond_3
    const/4 v2, 0x0

    .line 216
    :goto_2
    if-eqz v2, :cond_0

    .line 217
    iget-object v10, v5, Lcom/rhmsoft/fm/core/ImageLoader$ImageToLoad;->path:Ljava/lang/String;

    iget-object v9, v5, Lcom/rhmsoft/fm/core/ImageLoader$ImageToLoad;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 218
    instance-of v9, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v9, :cond_4

    move-object v0, v2

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v9, v0

    invoke-virtual {v9}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 219
    iget-object v9, p0, Lcom/rhmsoft/fm/core/ImageLoader$LoaderThread;->this$0:Lcom/rhmsoft/fm/core/ImageLoader;

    invoke-static {v9}, Lcom/rhmsoft/fm/core/ImageLoader;->access$4(Lcom/rhmsoft/fm/core/ImageLoader;)Lcom/rhmsoft/fm/core/LruCache;

    move-result-object v10

    iget-object v11, v5, Lcom/rhmsoft/fm/core/ImageLoader$ImageToLoad;->path:Ljava/lang/String;

    move-object v0, v2

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v9, v0

    invoke-virtual {v9}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v10, v11, v9}, Lcom/rhmsoft/fm/core/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    :cond_4
    new-instance v1, Lcom/rhmsoft/fm/core/ImageLoader$BitmapDisplayer;

    iget-object v9, p0, Lcom/rhmsoft/fm/core/ImageLoader$LoaderThread;->this$0:Lcom/rhmsoft/fm/core/ImageLoader;

    iget-object v10, v5, Lcom/rhmsoft/fm/core/ImageLoader$ImageToLoad;->imageView:Landroid/widget/ImageView;

    iget-object v11, v5, Lcom/rhmsoft/fm/core/ImageLoader$ImageToLoad;->path:Ljava/lang/String;

    invoke-direct {v1, v9, v2, v10, v11}, Lcom/rhmsoft/fm/core/ImageLoader$BitmapDisplayer;-><init>(Lcom/rhmsoft/fm/core/ImageLoader;Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 221
    .local v1, "bd":Lcom/rhmsoft/fm/core/ImageLoader$BitmapDisplayer;
    iget-object v9, p0, Lcom/rhmsoft/fm/core/ImageLoader$LoaderThread;->this$0:Lcom/rhmsoft/fm/core/ImageLoader;

    invoke-static {v9}, Lcom/rhmsoft/fm/core/ImageLoader;->access$2(Lcom/rhmsoft/fm/core/ImageLoader;)Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    .line 177
    .end local v1    # "bd":Lcom/rhmsoft/fm/core/ImageLoader$BitmapDisplayer;
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v5    # "imageToLoad":Lcom/rhmsoft/fm/core/ImageLoader$ImageToLoad;
    :catchall_1
    move-exception v9

    :try_start_7
    monitor-exit v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v9

    .line 186
    .restart local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v5    # "imageToLoad":Lcom/rhmsoft/fm/core/ImageLoader$ImageToLoad;
    :cond_5
    iget-object v3, v5, Lcom/rhmsoft/fm/core/ImageLoader$ImageToLoad;->file:Lcom/rhmsoft/fm/model/IFileWrapper;

    .line 187
    .local v3, "file":Lcom/rhmsoft/fm/model/IFileWrapper;
    if-eqz v3, :cond_7

    invoke-interface {v3}, Lcom/rhmsoft/fm/model/IFileWrapper;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 188
    const/4 v2, 0x0

    .line 214
    :cond_6
    :goto_3
    const/4 v9, 0x0

    iput-object v9, v5, Lcom/rhmsoft/fm/core/ImageLoader$ImageToLoad;->file:Lcom/rhmsoft/fm/model/IFileWrapper;

    goto :goto_2

    .line 189
    :cond_7
    instance-of v9, v3, Lcom/rhmsoft/fm/model/RarEntryWrapper;

    if-eqz v9, :cond_8

    .line 190
    const/4 v2, 0x0

    goto :goto_3

    .line 191
    :cond_8
    iget-object v9, v5, Lcom/rhmsoft/fm/core/ImageLoader$ImageToLoad;->path:Ljava/lang/String;

    const-string v10, ".apk"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 192
    if-eqz v3, :cond_6

    invoke-interface {v3}, Lcom/rhmsoft/fm/model/IFileWrapper;->getContent()Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Ljava/io/File;
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_0

    if-eqz v9, :cond_6

    .line 194
    :try_start_9
    iget-object v9, p0, Lcom/rhmsoft/fm/core/ImageLoader$LoaderThread;->this$0:Lcom/rhmsoft/fm/core/ImageLoader;

    invoke-static {v9}, Lcom/rhmsoft/fm/core/ImageLoader;->access$2(Lcom/rhmsoft/fm/core/ImageLoader;)Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    iget-object v10, v5, Lcom/rhmsoft/fm/core/ImageLoader$ImageToLoad;->path:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 195
    .local v7, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz v7, :cond_6

    .line 196
    iget-object v9, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v5, Lcom/rhmsoft/fm/core/ImageLoader$ImageToLoad;->path:Ljava/lang/String;

    iput-object v10, v9, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 197
    iget-object v9, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v5, Lcom/rhmsoft/fm/core/ImageLoader$ImageToLoad;->path:Ljava/lang/String;

    iput-object v10, v9, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 198
    iget-object v9, p0, Lcom/rhmsoft/fm/core/ImageLoader$LoaderThread;->this$0:Lcom/rhmsoft/fm/core/ImageLoader;

    invoke-static {v9}, Lcom/rhmsoft/fm/core/ImageLoader;->access$2(Lcom/rhmsoft/fm/core/ImageLoader;)Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    iget-object v10, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_0

    move-result-object v2

    goto :goto_3

    .line 200
    .end local v7    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :catch_1
    move-exception v8

    .line 201
    .local v8, "th":Ljava/lang/Throwable;
    :try_start_a
    const-string v9, "com.rhmsoft.fm"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Error when read archive file: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v5, Lcom/rhmsoft/fm/core/ImageLoader$ImageToLoad;->path:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 205
    .end local v8    # "th":Ljava/lang/Throwable;
    :cond_9
    const/4 v6, 0x0

    .line 206
    .local v6, "md5":Ljava/lang/String;
    if-eqz v3, :cond_a

    .line 207
    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v10, v5, Lcom/rhmsoft/fm/core/ImageLoader$ImageToLoad;->path:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v3}, Lcom/rhmsoft/fm/model/IFileWrapper;->lastModified()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v9, p0, Lcom/rhmsoft/fm/core/ImageLoader$LoaderThread;->this$0:Lcom/rhmsoft/fm/core/ImageLoader;

    invoke-static {v9}, Lcom/rhmsoft/fm/core/ImageLoader;->access$3(Lcom/rhmsoft/fm/core/ImageLoader;)Z

    move-result v9

    if-eqz v9, :cond_b

    const-string v9, "_large"

    :goto_4
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 208
    .local v4, "fileHex":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/rhmsoft/fm/core/ImageLoader$LoaderThread;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 210
    .end local v4    # "fileHex":Ljava/lang/String;
    :cond_a
    invoke-direct {p0, v5, v6}, Lcom/rhmsoft/fm/core/ImageLoader$LoaderThread;->createThumbnailFromCache(Lcom/rhmsoft/fm/core/ImageLoader$ImageToLoad;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 211
    if-nez v2, :cond_6

    .line 212
    invoke-direct {p0, v5, v6}, Lcom/rhmsoft/fm/core/ImageLoader$LoaderThread;->createThumbnailFromScratch(Lcom/rhmsoft/fm/core/ImageLoader$ImageToLoad;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_3

    .line 207
    :cond_b
    const-string v9, ""
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_0

    goto :goto_4
.end method
