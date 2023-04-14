.class Lcom/rhmsoft/fm/core/ToolbarActionRegistry$2;
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
    .line 69
    invoke-direct {p0, p1, p2, p3}, Lcom/rhmsoft/fm/core/ToolbarActionDescriptor;-><init>(III)V

    .line 1
    return-void
.end method


# virtual methods
.method public createToolbarAction(Lcom/rhmsoft/fm/pro/FileManager;)Lcom/rhmsoft/fm/action/Action;
    .locals 6
    .param p1, "fileManager"    # Lcom/rhmsoft/fm/pro/FileManager;

    .prologue
    .line 73
    new-instance v0, Lcom/rhmsoft/fm/core/ToolbarActionRegistry$2$1;

    const v2, 0x7f02009f

    const v3, 0x7f060021

    const v4, 0x7f020010

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/rhmsoft/fm/core/ToolbarActionRegistry$2$1;-><init>(Lcom/rhmsoft/fm/core/ToolbarActionRegistry$2;IIILcom/rhmsoft/fm/pro/FileManager;)V

    return-object v0
.end method
