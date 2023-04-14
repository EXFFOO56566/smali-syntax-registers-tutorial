.class Lcom/rhmsoft/fm/core/ToolbarActionRegistry$13;
.super Lcom/rhmsoft/fm/core/ToolbarActionDescriptor;
.source "ToolbarActionRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rhmsoft/fm/core/ToolbarActionRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(III)V
    .locals 0
    .param p1, "$anonymous0"    # I
    .param p2, "$anonymous1"    # I
    .param p3, "$anonymous2"    # I

    .prologue
    .line 265
    invoke-direct {p0, p1, p2, p3}, Lcom/rhmsoft/fm/core/ToolbarActionDescriptor;-><init>(III)V

    .line 1
    return-void
.end method


# virtual methods
.method public createToolbarAction(Lcom/rhmsoft/fm/pro/FileManager;)Lcom/rhmsoft/fm/action/Action;
    .locals 3
    .param p1, "fileManager"    # Lcom/rhmsoft/fm/pro/FileManager;

    .prologue
    .line 269
    new-instance v0, Lcom/rhmsoft/fm/core/ToolbarActionRegistry$13$1;

    const v1, 0x7f020093

    const v2, 0x7f0600a2

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/rhmsoft/fm/core/ToolbarActionRegistry$13$1;-><init>(Lcom/rhmsoft/fm/core/ToolbarActionRegistry$13;IILcom/rhmsoft/fm/pro/FileManager;)V

    return-object v0
.end method
