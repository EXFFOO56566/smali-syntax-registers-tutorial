.class public Lcom/rhmsoft/fm/core/ToolbarActionDescriptorStatus;
.super Ljava/lang/Object;
.source "ToolbarActionDescriptorStatus.java"


# instance fields
.field public descriptor:Lcom/rhmsoft/fm/core/ToolbarActionDescriptor;

.field public visible:Z


# direct methods
.method public constructor <init>(Lcom/rhmsoft/fm/core/ToolbarActionDescriptor;Z)V
    .locals 0
    .param p1, "descriptor"    # Lcom/rhmsoft/fm/core/ToolbarActionDescriptor;
    .param p2, "visible"    # Z

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/rhmsoft/fm/core/ToolbarActionDescriptorStatus;->descriptor:Lcom/rhmsoft/fm/core/ToolbarActionDescriptor;

    .line 10
    iput-boolean p2, p0, Lcom/rhmsoft/fm/core/ToolbarActionDescriptorStatus;->visible:Z

    .line 11
    return-void
.end method
