.class public Lcom/rhmsoft/fm/core/ToolbarActionRegistry;
.super Ljava/lang/Object;
.source "ToolbarActionRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rhmsoft/fm/core/ToolbarActionRegistry$ViewAction;
    }
.end annotation


# static fields
.field private static final BACK_ID:I = 0x3

.field private static final BOOKMARK_ID:I = 0x8

.field private static final COLON:Ljava/lang/String; = ":"

.field private static final CREATE_ID:I = 0x9

.field private static DEFAULT_SETTINGS:Ljava/lang/String; = null

.field private static final HOME_ID:I = 0x0

.field private static final INVISIBLE:Ljava/lang/String; = "n"

.field private static final MULTI_ID:I = 0x2

.field private static final NETWORK_ID:I = 0xb

.field private static final NEXT_ID:I = 0x4

.field private static final REFRESH_ID:I = 0xa

.field private static final SDCARD_ID:I = 0xc

.field private static final SEARCH_ID:I = 0x5

.field private static final SETTINGS_ID:I = 0xd

.field private static final SORT_ID:I = 0x7

.field private static final SPLIT:Ljava/lang/String; = ";"

.field private static final UP_ID:I = 0x1

.field private static final VIEW_ID:I = 0x6

.field private static final VISIBLE:Ljava/lang/String; = "y"

.field private static toolbarActionRegistry:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/rhmsoft/fm/core/ToolbarActionDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 45
    const/4 v0, 0x0

    sput-object v0, Lcom/rhmsoft/fm/core/ToolbarActionRegistry;->DEFAULT_SETTINGS:Ljava/lang/String;

    .line 49
    invoke-static {}, Lcom/rhmsoft/fm/core/FileHelper;->getExternalPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    const-string v0, "0:y;1:y;2:y;3:y;4:y;5:y;6:y;7:y;8:y;9:y;10:y;11:y;12:y;13:y"

    sput-object v0, Lcom/rhmsoft/fm/core/ToolbarActionRegistry;->DEFAULT_SETTINGS:Ljava/lang/String;

    .line 53
    :goto_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/rhmsoft/fm/core/ToolbarActionRegistry;->toolbarActionRegistry:Landroid/util/SparseArray;

    .line 54
    sget-object v0, Lcom/rhmsoft/fm/core/ToolbarActionRegistry;->toolbarActionRegistry:Landroid/util/SparseArray;

    new-instance v1, Lcom/rhmsoft/fm/core/ToolbarActionRegistry$1;

    const v2, 0x7f020085

    const v3, 0x7f060020

    invoke-direct {v1, v4, v2, v3}, Lcom/rhmsoft/fm/core/ToolbarActionRegistry$1;-><init>(III)V

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 69
    sget-object v0, Lcom/rhmsoft/fm/core/ToolbarActionRegistry;->toolbarActionRegistry:Landroid/util/SparseArray;

    new-instance v1, Lcom/rhmsoft/fm/core/ToolbarActionRegistry$2;

    const v2, 0x7f02009f

    const v3, 0x7f060021

    invoke-direct {v1, v5, v2, v3}, Lcom/rhmsoft/fm/core/ToolbarActionRegistry$2;-><init>(III)V

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 95
    sget-object v0, Lcom/rhmsoft/fm/core/ToolbarActionRegistry;->toolbarActionRegistry:Landroid/util/SparseArray;

    new-instance v1, Lcom/rhmsoft/fm/core/ToolbarActionRegistry$3;

    const v2, 0x7f020089

    const v3, 0x7f060024

    invoke-direct {v1, v6, v2, v3}, Lcom/rhmsoft/fm/core/ToolbarActionRegistry$3;-><init>(III)V

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 110
    sget-object v0, Lcom/rhmsoft/fm/core/ToolbarActionRegistry;->toolbarActionRegistry:Landroid/util/SparseArray;

    new-instance v1, Lcom/rhmsoft/fm/core/ToolbarActionRegistry$4;

    const v2, 0x7f020072

    const v3, 0x7f060023

    invoke-direct {v1, v7, v2, v3}, Lcom/rhmsoft/fm/core/ToolbarActionRegistry$4;-><init>(III)V

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 130
    sget-object v0, Lcom/rhmsoft/fm/core/ToolbarActionRegistry;->toolbarActionRegistry:Landroid/util/SparseArray;

    new-instance v1, Lcom/rhmsoft/fm/core/ToolbarActionRegistry$5;

    const v2, 0x7f02008b

    const v3, 0x7f060022

    invoke-direct {v1, v8, v2, v3}, Lcom/rhmsoft/fm/core/ToolbarActionRegistry$5;-><init>(III)V

    invoke-virtual {v0, v8, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 150
    sget-object v0, Lcom/rhmsoft/fm/core/ToolbarActionRegistry;->toolbarActionRegistry:Landroid/util/SparseArray;

    const/4 v1, 0x5

    new-instance v2, Lcom/rhmsoft/fm/core/ToolbarActionRegistry$6;

    const/4 v3, 0x5

    const v4, 0x7f020094

    const v5, 0x7f060045

    invoke-direct {v2, v3, v4, v5}, Lcom/rhmsoft/fm/core/ToolbarActionRegistry$6;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 165
    sget-object v0, Lcom/rhmsoft/fm/core/ToolbarActionRegistry;->toolbarActionRegistry:Landroid/util/SparseArray;

    const/4 v1, 0x6

    new-instance v2, Lcom/rhmsoft/fm/core/ToolbarActionRegistry$7;

    const/4 v3, 0x6

    const v4, 0x7f0200a1

    const v5, 0x7f060042

    invoke-direct {v2, v3, v4, v5}, Lcom/rhmsoft/fm/core/ToolbarActionRegistry$7;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 173
    sget-object v0, Lcom/rhmsoft/fm/core/ToolbarActionRegistry;->toolbarActionRegistry:Landroid/util/SparseArray;

    const/4 v1, 0x7

    new-instance v2, Lcom/rhmsoft/fm/core/ToolbarActionRegistry$8;

    const/4 v3, 0x7

    const v4, 0x7f02009a

    const v5, 0x7f060040

    invoke-direct {v2, v3, v4, v5}, Lcom/rhmsoft/fm/core/ToolbarActionRegistry$8;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 188
    sget-object v0, Lcom/rhmsoft/fm/core/ToolbarActionRegistry;->toolbarActionRegistry:Landroid/util/SparseArray;

    const/16 v1, 0x8

    new-instance v2, Lcom/rhmsoft/fm/core/ToolbarActionRegistry$9;

    const/16 v3, 0x8

    const v4, 0x7f020073

    const v5, 0x7f060039

    invoke-direct {v2, v3, v4, v5}, Lcom/rhmsoft/fm/core/ToolbarActionRegistry$9;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 205
    sget-object v0, Lcom/rhmsoft/fm/core/ToolbarActionRegistry;->toolbarActionRegistry:Landroid/util/SparseArray;

    const/16 v1, 0x9

    new-instance v2, Lcom/rhmsoft/fm/core/ToolbarActionRegistry$10;

    const/16 v3, 0x9

    const v4, 0x7f020078

    const v5, 0x7f06003e

    invoke-direct {v2, v3, v4, v5}, Lcom/rhmsoft/fm/core/ToolbarActionRegistry$10;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 233
    sget-object v0, Lcom/rhmsoft/fm/core/ToolbarActionRegistry;->toolbarActionRegistry:Landroid/util/SparseArray;

    const/16 v1, 0xa

    new-instance v2, Lcom/rhmsoft/fm/core/ToolbarActionRegistry$11;

    const/16 v3, 0xa

    const v4, 0x7f02008f

    const v5, 0x7f06003f

    invoke-direct {v2, v3, v4, v5}, Lcom/rhmsoft/fm/core/ToolbarActionRegistry$11;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 248
    sget-object v0, Lcom/rhmsoft/fm/core/ToolbarActionRegistry;->toolbarActionRegistry:Landroid/util/SparseArray;

    const/16 v1, 0xb

    new-instance v2, Lcom/rhmsoft/fm/core/ToolbarActionRegistry$12;

    const/16 v3, 0xb

    const v4, 0x7f02008a

    const v5, 0x7f06009f

    invoke-direct {v2, v3, v4, v5}, Lcom/rhmsoft/fm/core/ToolbarActionRegistry$12;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 265
    sget-object v0, Lcom/rhmsoft/fm/core/ToolbarActionRegistry;->toolbarActionRegistry:Landroid/util/SparseArray;

    const/16 v1, 0xc

    new-instance v2, Lcom/rhmsoft/fm/core/ToolbarActionRegistry$13;

    const/16 v3, 0xc

    const v4, 0x7f020093

    const v5, 0x7f0600a2

    invoke-direct {v2, v3, v4, v5}, Lcom/rhmsoft/fm/core/ToolbarActionRegistry$13;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 283
    sget-object v0, Lcom/rhmsoft/fm/core/ToolbarActionRegistry;->toolbarActionRegistry:Landroid/util/SparseArray;

    const/16 v1, 0xd

    new-instance v2, Lcom/rhmsoft/fm/core/ToolbarActionRegistry$14;

    const/16 v3, 0xd

    const v4, 0x7f020096

    const v5, 0x7f06005b

    invoke-direct {v2, v3, v4, v5}, Lcom/rhmsoft/fm/core/ToolbarActionRegistry$14;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 27
    return-void

    .line 52
    :cond_0
    const-string v0, "0:y;1:y;2:y;3:y;4:y;5:y;6:y;7:y;8:y;9:y;10:y;11:y;13:y"

    sput-object v0, Lcom/rhmsoft/fm/core/ToolbarActionRegistry;->DEFAULT_SETTINGS:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initializeToolbarActions(Lcom/rhmsoft/fm/pro/FileManager;)Ljava/util/List;
    .locals 5
    .param p0, "fileManager"    # Lcom/rhmsoft/fm/pro/FileManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/rhmsoft/fm/pro/FileManager;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/rhmsoft/fm/action/Action;",
            ">;"
        }
    .end annotation

    .prologue
    .line 305
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 307
    .local v0, "actions":Ljava/util/List;, "Ljava/util/List<Lcom/rhmsoft/fm/action/Action;>;"
    new-instance v3, Lcom/rhmsoft/fm/action/PasteAction;

    invoke-direct {v3, p0}, Lcom/rhmsoft/fm/action/PasteAction;-><init>(Lcom/rhmsoft/fm/pro/FileManager;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    invoke-static {p0}, Lcom/rhmsoft/fm/core/ToolbarActionRegistry;->loadToolbarActionDescriptors(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 309
    .local v1, "descriptors":Ljava/util/List;, "Ljava/util/List<Lcom/rhmsoft/fm/core/ToolbarActionDescriptorStatus;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 313
    return-object v0

    .line 309
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/rhmsoft/fm/core/ToolbarActionDescriptorStatus;

    .line 310
    .local v2, "status":Lcom/rhmsoft/fm/core/ToolbarActionDescriptorStatus;
    iget-boolean v4, v2, Lcom/rhmsoft/fm/core/ToolbarActionDescriptorStatus;->visible:Z

    if-eqz v4, :cond_0

    .line 311
    iget-object v4, v2, Lcom/rhmsoft/fm/core/ToolbarActionDescriptorStatus;->descriptor:Lcom/rhmsoft/fm/core/ToolbarActionDescriptor;

    invoke-virtual {v4, p0}, Lcom/rhmsoft/fm/core/ToolbarActionDescriptor;->createToolbarAction(Lcom/rhmsoft/fm/pro/FileManager;)Lcom/rhmsoft/fm/action/Action;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static loadDefaultToolbarActionDescriptors(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/rhmsoft/fm/core/ToolbarActionDescriptorStatus;",
            ">;"
        }
    .end annotation

    .prologue
    .line 351
    sget-object v0, Lcom/rhmsoft/fm/core/ToolbarActionRegistry;->DEFAULT_SETTINGS:Ljava/lang/String;

    .line 352
    .local v0, "toolbarDef":Ljava/lang/String;
    invoke-static {v0}, Lcom/rhmsoft/fm/core/ToolbarActionRegistry;->parseActionDescriptors(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static loadToolbarActionDescriptors(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/rhmsoft/fm/core/ToolbarActionDescriptorStatus;",
            ">;"
        }
    .end annotation

    .prologue
    .line 338
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 339
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v2, "toolbar"

    sget-object v3, Lcom/rhmsoft/fm/core/ToolbarActionRegistry;->DEFAULT_SETTINGS:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 340
    .local v1, "toolbarDef":Ljava/lang/String;
    invoke-static {}, Lcom/rhmsoft/fm/core/FileHelper;->getExternalPath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, "12"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 341
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ";12:y"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 342
    :cond_0
    const-string v2, "13"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 343
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ";13:y"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 344
    :cond_1
    invoke-static {v1}, Lcom/rhmsoft/fm/core/ToolbarActionRegistry;->parseActionDescriptors(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method private static parseActionDescriptors(Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .param p0, "toolbarDef"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/rhmsoft/fm/core/ToolbarActionDescriptorStatus;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 356
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 357
    .local v4, "descriptors":Ljava/util/List;, "Ljava/util/List<Lcom/rhmsoft/fm/core/ToolbarActionDescriptorStatus;>;"
    const-string v8, ";"

    invoke-virtual {p0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 358
    .local v1, "actionDefs":[Ljava/lang/String;
    array-length v8, v1

    :goto_0
    if-lt v7, v8, :cond_0

    .line 373
    return-object v4

    .line 358
    :cond_0
    aget-object v0, v1, v7

    .line 359
    .local v0, "actionDef":Ljava/lang/String;
    const-string v9, ":"

    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 360
    .local v3, "actionSettings":[Ljava/lang/String;
    array-length v9, v3

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1

    .line 362
    const/4 v9, 0x0

    :try_start_0
    aget-object v9, v3, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 363
    .local v2, "actionId":I
    sget-object v9, Lcom/rhmsoft/fm/core/ToolbarActionRegistry;->toolbarActionRegistry:Landroid/util/SparseArray;

    invoke-virtual {v9, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/rhmsoft/fm/core/ToolbarActionDescriptor;

    .line 364
    .local v5, "key":Lcom/rhmsoft/fm/core/ToolbarActionDescriptor;
    if-eqz v5, :cond_2

    .line 365
    new-instance v9, Lcom/rhmsoft/fm/core/ToolbarActionDescriptorStatus;

    const-string v10, "y"

    const/4 v11, 0x1

    aget-object v11, v3, v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    invoke-direct {v9, v5, v10}, Lcom/rhmsoft/fm/core/ToolbarActionDescriptorStatus;-><init>(Lcom/rhmsoft/fm/core/ToolbarActionDescriptor;Z)V

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    .end local v2    # "actionId":I
    .end local v5    # "key":Lcom/rhmsoft/fm/core/ToolbarActionDescriptor;
    :cond_1
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 367
    .restart local v2    # "actionId":I
    .restart local v5    # "key":Lcom/rhmsoft/fm/core/ToolbarActionDescriptor;
    :cond_2
    const-string v9, "com.rhmsoft.fm"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Unsupported action id: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 368
    .end local v2    # "actionId":I
    .end local v5    # "key":Lcom/rhmsoft/fm/core/ToolbarActionDescriptor;
    :catch_0
    move-exception v6

    .line 369
    .local v6, "th":Ljava/lang/Throwable;
    const-string v9, "com.rhmsoft.fm"

    const-string v10, "Error when parsing action definitions: "

    invoke-static {v9, v10, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static persistentToolbarActionDescriptors(Ljava/util/List;Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/rhmsoft/fm/core/ToolbarActionDescriptorStatus;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 320
    .local p0, "descriptors":Ljava/util/List;, "Ljava/util/List<Lcom/rhmsoft/fm/core/ToolbarActionDescriptorStatus;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 321
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 322
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 330
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 331
    .local v3, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "toolbar"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 332
    return-void

    .line 323
    .end local v3    # "sp":Landroid/content/SharedPreferences;
    :cond_0
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/rhmsoft/fm/core/ToolbarActionDescriptorStatus;

    .line 324
    .local v4, "status":Lcom/rhmsoft/fm/core/ToolbarActionDescriptorStatus;
    iget-object v5, v4, Lcom/rhmsoft/fm/core/ToolbarActionDescriptorStatus;->descriptor:Lcom/rhmsoft/fm/core/ToolbarActionDescriptor;

    iget v5, v5, Lcom/rhmsoft/fm/core/ToolbarActionDescriptor;->actionId:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 325
    const-string v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    iget-boolean v5, v4, Lcom/rhmsoft/fm/core/ToolbarActionDescriptorStatus;->visible:Z

    if-eqz v5, :cond_2

    const-string v5, "y"

    :goto_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    add-int/lit8 v5, v2, -0x1

    if-eq v1, v5, :cond_1

    .line 328
    const-string v5, ";"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 326
    :cond_2
    const-string v5, "n"

    goto :goto_1
.end method
