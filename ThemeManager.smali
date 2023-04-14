.class public Lcom/rhmsoft/fm/core/ThemeManager;
.super Ljava/lang/Object;
.source "ThemeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rhmsoft/fm/core/ThemeManager$FontSize;
    }
.end annotation


# static fields
.field private static final EXTRA_LARGE_FONT:[I

.field private static final LARGE_FONT:[I

.field private static final NORMAL_FONT:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 21
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/rhmsoft/fm/core/ThemeManager;->NORMAL_FONT:[I

    .line 22
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/rhmsoft/fm/core/ThemeManager;->LARGE_FONT:[I

    .line 23
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/rhmsoft/fm/core/ThemeManager;->EXTRA_LARGE_FONT:[I

    .line 9
    return-void

    .line 21
    nop

    :array_0
    .array-data 4
        0xc
        0xe
        0xf
        0x10
    .end array-data

    .line 22
    :array_1
    .array-data 4
        0xe
        0x10
        0x11
        0x12
    .end array-data

    .line 23
    :array_2
    .array-data 4
        0xf
        0x12
        0x13
        0x14
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyActivityTheme(Landroid/app/Activity;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 26
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "theme"

    sget-object v3, Lcom/rhmsoft/fm/core/Constants;->THEME_DEFAULT:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, "theme":Ljava/lang/String;
    const-string v1, "THEME_LIGHT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 28
    const/high16 v1, 0x7f0a0000

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTheme(I)V

    .line 31
    :goto_0
    return-void

    .line 30
    :cond_0
    const v1, 0x7f0a0002

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTheme(I)V

    goto :goto_0
.end method

.method public static getDividerResource(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "theme"

    sget-object v3, Lcom/rhmsoft/fm/core/Constants;->THEME_DEFAULT:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "theme":Ljava/lang/String;
    const-string v1, "THEME_LIGHT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    const v1, 0x1080012

    .line 38
    :goto_0
    return v1

    :cond_0
    const v1, 0x1080014

    goto :goto_0
.end method

.method public static getFontPref(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "fontSize"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFontSize(Landroid/content/Context;Lcom/rhmsoft/fm/core/ThemeManager$FontSize;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "size"    # Lcom/rhmsoft/fm/core/ThemeManager$FontSize;

    .prologue
    .line 42
    const/4 v1, 0x0

    check-cast v1, [I

    .line 43
    .local v1, "fonts":[I
    invoke-static {p0}, Lcom/rhmsoft/fm/core/ThemeManager;->getFontPref(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, "font_pref":Ljava/lang/String;
    const-string v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 45
    sget-object v1, Lcom/rhmsoft/fm/core/ThemeManager;->LARGE_FONT:[I

    .line 50
    :goto_0
    iget v2, p1, Lcom/rhmsoft/fm/core/ThemeManager$FontSize;->type:I

    aget v2, v1, v2

    return v2

    .line 46
    :cond_0
    const-string v2, "2"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 47
    sget-object v1, Lcom/rhmsoft/fm/core/ThemeManager;->EXTRA_LARGE_FONT:[I

    goto :goto_0

    .line 49
    :cond_1
    sget-object v1, Lcom/rhmsoft/fm/core/ThemeManager;->NORMAL_FONT:[I

    goto :goto_0
.end method
