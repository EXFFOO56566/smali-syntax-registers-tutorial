.class public Lcom/rhmsoft/fm/core/WebViewChecker;
.super Ljava/lang/Object;
.source "WebViewChecker.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearCookies(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    :try_start_0
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 51
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 52
    .local v0, "cookieManager":Landroid/webkit/CookieManager;
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .end local v0    # "cookieManager":Landroid/webkit/CookieManager;
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v1

    .line 54
    .local v1, "th":Ljava/lang/Throwable;
    const-string v2, "com.rhmsoft.fm"

    const-string v3, "Error when clear webview cookies: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static isWebViewReady(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 18
    :try_start_0
    sget v4, Lcom/rhmsoft/fm/core/Constants;->API_LEVEL:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_2

    sget v4, Lcom/rhmsoft/fm/core/Constants;->API_LEVEL:I

    const/16 v5, 0xf

    if-gt v4, v5, :cond_2

    .line 19
    const-string v4, "webview.db"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v5, v6}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 20
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v1, :cond_1

    .line 39
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    :goto_0
    return v3

    .line 23
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 28
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_2
    sget v4, Lcom/rhmsoft/fm/core/Constants;->API_LEVEL:I

    const/16 v5, 0x8

    if-gt v4, v5, :cond_3

    .line 29
    const-string v4, "webviewCache.db"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v5, v6}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 30
    .local v0, "cacheDb":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .end local v0    # "cacheDb":Landroid/database/sqlite/SQLiteDatabase;
    :cond_3
    const/4 v3, 0x1

    goto :goto_0

    .line 37
    :catch_0
    move-exception v2

    .line 38
    .local v2, "th":Ljava/lang/Throwable;
    const-string v4, "com.rhmsoft.fm"

    const-string v5, "Error with WebView during testing: "

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
