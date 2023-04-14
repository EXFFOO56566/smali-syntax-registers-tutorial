.class public abstract Lcom/rhmsoft/fm/core/ToolbarActionDescriptor;
.super Ljava/lang/Object;
.source "ToolbarActionDescriptor.java"


# instance fields
.field public actionId:I

.field public iconRes:I

.field public labelRes:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .param p1, "actionId"    # I
    .param p2, "iconRes"    # I
    .param p3, "labelRes"    # I

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p2, p0, Lcom/rhmsoft/fm/core/ToolbarActionDescriptor;->iconRes:I

    .line 15
    iput p3, p0, Lcom/rhmsoft/fm/core/ToolbarActionDescriptor;->labelRes:I

    .line 16
    iput p1, p0, Lcom/rhmsoft/fm/core/ToolbarActionDescriptor;->actionId:I

    .line 17
    return-void
.end method


# virtual methods
.method public abstract createToolbarAction(Lcom/rhmsoft/fm/pro/FileManager;)Lcom/rhmsoft/fm/action/Action;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 23
    instance-of v1, p1, Lcom/rhmsoft/fm/core/ToolbarActionDescriptor;

    if-eqz v1, :cond_0

    .line 24
    iget v1, p0, Lcom/rhmsoft/fm/core/ToolbarActionDescriptor;->actionId:I

    check-cast p1, Lcom/rhmsoft/fm/core/ToolbarActionDescriptor;

    .end local p1    # "o":Ljava/lang/Object;
    iget v2, p1, Lcom/rhmsoft/fm/core/ToolbarActionDescriptor;->actionId:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 25
    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/rhmsoft/fm/core/ToolbarActionDescriptor;->actionId:I

    return v0
.end method
