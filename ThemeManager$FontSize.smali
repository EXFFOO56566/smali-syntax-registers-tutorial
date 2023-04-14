.class public final enum Lcom/rhmsoft/fm/core/ThemeManager$FontSize;
.super Ljava/lang/Enum;
.source "ThemeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rhmsoft/fm/core/ThemeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FontSize"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/rhmsoft/fm/core/ThemeManager$FontSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/rhmsoft/fm/core/ThemeManager$FontSize;

.field public static final enum FONT_MULTI_LARGE:Lcom/rhmsoft/fm/core/ThemeManager$FontSize;

.field public static final enum FONT_MULTI_SMALL:Lcom/rhmsoft/fm/core/ThemeManager$FontSize;

.field public static final enum FONT_SINGLE:Lcom/rhmsoft/fm/core/ThemeManager$FontSize;

.field public static final enum FONT_TEXT:Lcom/rhmsoft/fm/core/ThemeManager$FontSize;


# instance fields
.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 12
    new-instance v0, Lcom/rhmsoft/fm/core/ThemeManager$FontSize;

    const-string v1, "FONT_MULTI_SMALL"

    invoke-direct {v0, v1, v2, v2}, Lcom/rhmsoft/fm/core/ThemeManager$FontSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/rhmsoft/fm/core/ThemeManager$FontSize;->FONT_MULTI_SMALL:Lcom/rhmsoft/fm/core/ThemeManager$FontSize;

    new-instance v0, Lcom/rhmsoft/fm/core/ThemeManager$FontSize;

    const-string v1, "FONT_MULTI_LARGE"

    invoke-direct {v0, v1, v3, v3}, Lcom/rhmsoft/fm/core/ThemeManager$FontSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/rhmsoft/fm/core/ThemeManager$FontSize;->FONT_MULTI_LARGE:Lcom/rhmsoft/fm/core/ThemeManager$FontSize;

    new-instance v0, Lcom/rhmsoft/fm/core/ThemeManager$FontSize;

    const-string v1, "FONT_TEXT"

    invoke-direct {v0, v1, v4, v4}, Lcom/rhmsoft/fm/core/ThemeManager$FontSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/rhmsoft/fm/core/ThemeManager$FontSize;->FONT_TEXT:Lcom/rhmsoft/fm/core/ThemeManager$FontSize;

    new-instance v0, Lcom/rhmsoft/fm/core/ThemeManager$FontSize;

    const-string v1, "FONT_SINGLE"

    invoke-direct {v0, v1, v5, v5}, Lcom/rhmsoft/fm/core/ThemeManager$FontSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/rhmsoft/fm/core/ThemeManager$FontSize;->FONT_SINGLE:Lcom/rhmsoft/fm/core/ThemeManager$FontSize;

    .line 11
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/rhmsoft/fm/core/ThemeManager$FontSize;

    sget-object v1, Lcom/rhmsoft/fm/core/ThemeManager$FontSize;->FONT_MULTI_SMALL:Lcom/rhmsoft/fm/core/ThemeManager$FontSize;

    aput-object v1, v0, v2

    sget-object v1, Lcom/rhmsoft/fm/core/ThemeManager$FontSize;->FONT_MULTI_LARGE:Lcom/rhmsoft/fm/core/ThemeManager$FontSize;

    aput-object v1, v0, v3

    sget-object v1, Lcom/rhmsoft/fm/core/ThemeManager$FontSize;->FONT_TEXT:Lcom/rhmsoft/fm/core/ThemeManager$FontSize;

    aput-object v1, v0, v4

    sget-object v1, Lcom/rhmsoft/fm/core/ThemeManager$FontSize;->FONT_SINGLE:Lcom/rhmsoft/fm/core/ThemeManager$FontSize;

    aput-object v1, v0, v5

    sput-object v0, Lcom/rhmsoft/fm/core/ThemeManager$FontSize;->ENUM$VALUES:[Lcom/rhmsoft/fm/core/ThemeManager$FontSize;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p3, "type"    # I

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/rhmsoft/fm/core/ThemeManager$FontSize;->type:I

    .line 17
    iput p3, p0, Lcom/rhmsoft/fm/core/ThemeManager$FontSize;->type:I

    .line 18
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/rhmsoft/fm/core/ThemeManager$FontSize;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/rhmsoft/fm/core/ThemeManager$FontSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/rhmsoft/fm/core/ThemeManager$FontSize;

    return-object v0
.end method

.method public static values()[Lcom/rhmsoft/fm/core/ThemeManager$FontSize;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/rhmsoft/fm/core/ThemeManager$FontSize;->ENUM$VALUES:[Lcom/rhmsoft/fm/core/ThemeManager$FontSize;

    array-length v1, v0

    new-array v2, v1, [Lcom/rhmsoft/fm/core/ThemeManager$FontSize;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
