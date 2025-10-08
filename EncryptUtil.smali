# classes.dex

.class public Lcom/android/fileexplorer/encryption/EncryptUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/encryption/EncryptUtil$EncryptCallback;,
        Lcom/android/fileexplorer/encryption/EncryptUtil$ResultHolder;
    }
.end annotation


# static fields
.field public static final ACTION_COPY:I = 0x1

.field public static final ACTION_MOVE:I = 0x0

.field public static final ACTION_NONE:I = 0x2

.field public static final ACTION_OPEN:I = 0x3

.field static final BUFFER_SIZE:I = 0x400

.field public static final BUSINESS_ID:Ljava/lang/String; = "file_explorer"

.field public static final ENCRYPTED_THUMB:Ljava/lang/String; = "encrypted_thumbnail"

.field public static final LOCK_TYPE_DISABLED:I = 0x0

.field public static final LOCK_TYPE_ENABLED:I = 0x1

.field public static final LOCK_TYPE_UNSUPPORT:I = -0x1

.field private static final MIUI_SHARER_PATH:Ljava/lang/String; = "/MIUI/Gallery/cloud/sharer"

.field private static final RESULT_CANCEL:I = 0x5

.field public static final RESULT_ERROR_ALL:I = 0x14

.field public static final RESULT_ERROR_NOT_ENOUGH_SPACE:I = 0x3

.field public static final RESULT_ERROR_NOT_FOUND:I = 0x6

.field public static final RESULT_ERROR_NOT_LOGGED_IN:I = 0x12

.field private static final RESULT_ERROR_PARTIAL:I = 0x13

.field private static final RESULT_ERROR_SHARER_FOLDER:I = 0x15

.field private static final RESULT_ERROR_UNKNOWN:I = 0x4

.field public static final RESULT_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "EncryptUtil"

.field public static final privateFileFilter:Ljava/io/FilenameFilter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/fileexplorer/encryption/EncryptUtil$1;

    invoke-direct {v0}, Lcom/android/fileexplorer/encryption/EncryptUtil$1;-><init>()V

    sput-object v0, Lcom/android/fileexplorer/encryption/EncryptUtil;->privateFileFilter:Ljava/io/FilenameFilter;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/fileexplorer/encryption/EncryptUtil;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static declared-synchronized addToPrivateFolder(ILandroid/app/Activity;Ljava/util/ArrayList;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-class v0, Lcom/android/fileexplorer/encryption/EncryptUtil;

    monitor-enter v0

    if-nez p1, :cond_7

    monitor-exit v0

    return-void

    :cond_7
    :try_start_7
    invoke-static {p1}, Lcom/android/fileexplorer/encryption/EncryptUtil;->isPasswordSet(Landroid/app/Activity;)Z

    move-result v1
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_28

    if-nez v1, :cond_f

    monitor-exit v0

    return-void

    :cond_f
    :try_start_f
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.miui.gallery.ACTION_PRE_SETTING_SECRET"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.miui.gallery"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_28

    :try_start_1b
    new-instance v2, Lcom/android/fileexplorer/encryption/EncryptUtil$7;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/android/fileexplorer/encryption/EncryptUtil$7;-><init>(ILandroid/app/Activity;Ljava/util/ArrayList;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_25} :catch_2a
    .catchall {:try_start_1b .. :try_end_25} :catchall_28

    if-nez v1, :cond_38

    goto :goto_34

    :catchall_28
    move-exception p0

    goto :goto_3a

    :catch_2a
    move-exception v1

    :try_start_2b
    sget-object v2, Lcom/android/fileexplorer/encryption/EncryptUtil;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_34
    const/4 v1, 0x0

    invoke-static {p0, p1, p2, p3, v1}, Lcom/android/fileexplorer/encryption/EncryptUtil;->doEncrypt(ILandroid/app/Activity;Ljava/util/ArrayList;Ljava/lang/String;Lcom/miui/gallery/data/IExternalSettingSecretInterface;)V
    :try_end_38
    .catchall {:try_start_2b .. :try_end_38} :catchall_28

    :cond_38
    monitor-exit v0

    return-void

    :goto_3a
    monitor-exit v0

    throw p0
.end method

.method public static bridge synthetic b(Ljava/util/ArrayList;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/fileexplorer/encryption/EncryptUtil;->containsMiuiSharer(Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method private static buildDeleteMessage(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/encryption/PrivateFile;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/fileexplorer/encryption/PrivateFile;

    invoke-virtual {v3}, Lcom/android/fileexplorer/encryption/PrivateFile;->isDir()Z

    move-result v3

    if-eqz v3, :cond_a

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_1f
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v2

    const/4 v1, 0x1

    if-lez v2, :cond_81

    const v3, 0x7f110386

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_54

    if-ne v2, v1, :cond_3d

    const p1, 0x7f110136

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_50

    :cond_3d
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const v1, 0x7f0f0011

    invoke-virtual {p0, v1, v2, p1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_50
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a1

    :cond_54
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const v4, 0x7f0f0010

    invoke-virtual {v1, v4, p1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const v1, 0x7f0f0012

    invoke-virtual {p0, v1, v2, p1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a1

    :cond_81
    if-ne p1, v1, :cond_8b

    const p1, 0x7f110134

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_9e

    :cond_8b
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f0f000f

    invoke-virtual {p0, v2, p1, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_9e
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_a1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic c(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/fileexplorer/encryption/EncryptUtil;->deleteFiles(Landroid/content/Context;Ljava/util/ArrayList;)V

    return-void
.end method

.method private static containsMiuiSharer(Ljava/util/List;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/MIUI/Gallery/cloud/sharer"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_22
    const/4 p0, 0x0

    return p0
.end method

.method public static bridge synthetic d(ILandroid/app/Activity;Ljava/util/ArrayList;Ljava/lang/String;Lcom/miui/gallery/data/IExternalSettingSecretInterface;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/encryption/EncryptUtil;->doEncrypt(ILandroid/app/Activity;Ljava/util/ArrayList;Ljava/lang/String;Lcom/miui/gallery/data/IExternalSettingSecretInterface;)V

    return-void
.end method

.method public static decrypt([BLjava/lang/String;)[B
    .registers 6

    :try_start_0
    const-string v0, "AES/CTS/NoPadding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    invoke-static {p1}, Lcom/android/fileexplorer/util/StringUtils;->MD5Encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const-string v3, "AES"

    invoke-direct {v2, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-direct {v1, p1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 p1, 0x2

    invoke-virtual {v0, p1, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_31} :catch_32

    return-object p0

    :catch_32
    move-exception p0

    sget-object p1, Lcom/android/fileexplorer/encryption/EncryptUtil;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static decryptFile(Landroid/app/Activity;ILcom/android/fileexplorer/encryption/PrivateFile;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "I",
            "Lcom/android/fileexplorer/encryption/PrivateFile;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/encryption/PrivateFile;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "decryptFile"

    sget-object v1, Lcom/android/fileexplorer/encryption/EncryptUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " decrypt start"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    instance-of v3, p0, Lcom/android/fileexplorer/activity/BaseActivity;

    if-eqz v3, :cond_36

    move-object v3, p0

    check-cast v3, Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-virtual {v3}, Lcom/android/fileexplorer/activity/BaseActivity;->isProgressCancelled()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-virtual {p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v2

    :cond_36
    new-instance v3, Ljava/io/File;

    invoke-virtual {p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_65

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getFilePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not exists"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v2

    :cond_65
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_77

    const-string v4, "/"

    invoke-virtual {p4, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_77

    invoke-virtual {p4, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    :cond_77
    const/4 v4, 0x0

    invoke-static {p4, v4}, Lcom/android/fileexplorer/encryption/DirOperationUtil;->createFolder(Ljava/lang/String;Z)Z

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_db

    sget-object v0, Lcom/android/fileexplorer/encryption/EncryptUtil;->privateFileFilter:Ljava/io/FilenameFilter;

    invoke-virtual {v3, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/encryption/PrivateDBHelper;->getPrivateFileList([Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p4, v1, v6, v4}, Lcom/android/fileexplorer/model/Util;->getDestFile(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/io/File;

    move-result-object p4

    if-nez p4, :cond_9e

    invoke-virtual {p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v2

    :cond_9e
    invoke-virtual {p4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v4}, Lcom/android/fileexplorer/encryption/DirOperationUtil;->createFolder(Ljava/lang/String;Z)Z

    if-eqz v0, :cond_ce

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_ce

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_b1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ce

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/fileexplorer/encryption/PrivateFile;

    invoke-virtual {p4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    move-object v4, p0

    move v5, p1

    move-object v7, p3

    move-object v9, p5

    invoke-static/range {v4 .. v9}, Lcom/android/fileexplorer/encryption/EncryptUtil;->decryptFile(Landroid/app/Activity;ILcom/android/fileexplorer/encryption/PrivateFile;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_b1

    :cond_ce
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_253

    if-nez p1, :cond_253

    invoke-static {v3}, Lcom/android/fileexplorer/filemanager/FileDeleteUtils;->deleteFile(Ljava/io/File;)Z

    goto/16 :goto_253

    :cond_db
    const/4 v5, 0x0

    :try_start_dc
    sget-boolean v7, Lcom/android/fileexplorer/model/Config;->IS_GLOBAL_PHONE:Z

    if-nez v7, :cond_138

    invoke-static {v3}, Lcom/android/fileexplorer/encryption/EncryptUtil;->readBufferFromFile(Ljava/io/File;)[B

    move-result-object v7

    if-nez v7, :cond_fd

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p0, "decryptFile error, buffer is null, return"

    invoke-static {v1, p0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f2
    .catch Ljava/lang/Exception; {:try_start_dc .. :try_end_f2} :catch_f9
    .catchall {:try_start_dc .. :try_end_f2} :catchall_f6

    invoke-static {v5}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return-object v2

    :catchall_f6
    move-exception p0

    goto/16 :goto_254

    :catch_f9
    move-exception p0

    move-object v8, v5

    goto/16 :goto_233

    :cond_fd
    :try_start_fd
    invoke-virtual {v7}, [B->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B
    :try_end_103
    .catch Ljava/lang/Exception; {:try_start_fd .. :try_end_103} :catch_f9
    .catchall {:try_start_fd .. :try_end_103} :catchall_f6

    :try_start_103
    invoke-static {v7, p3}, Lcom/android/fileexplorer/encryption/EncryptUtil;->decrypt([BLjava/lang/String;)[B

    move-result-object p3

    if-nez p3, :cond_11a

    invoke-virtual {p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v3, v8}, Lcom/android/fileexplorer/encryption/EncryptUtil;->handleDecryptionError(Ljava/io/File;[B)V
    :try_end_113
    .catch Ljava/lang/Exception; {:try_start_103 .. :try_end_113} :catch_117
    .catchall {:try_start_103 .. :try_end_113} :catchall_f6

    invoke-static {v5}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return-object v2

    :catch_117
    move-exception p0

    goto/16 :goto_233

    :cond_11a
    :try_start_11a
    array-length v7, p3

    const/16 v9, 0x10

    if-ne v7, v9, :cond_124

    invoke-static {v3, p3}, Lcom/android/fileexplorer/encryption/EncryptUtil;->handleSmallFile(Ljava/io/File;[B)Z

    move-result p3

    goto :goto_128

    :cond_124
    invoke-static {v3, p3}, Lcom/android/fileexplorer/encryption/EncryptUtil;->handleLargeFile(Ljava/io/File;[B)Z

    move-result p3

    :goto_128
    if-nez p3, :cond_139

    invoke-virtual {p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v3, v8}, Lcom/android/fileexplorer/encryption/EncryptUtil;->handleDecryptionError(Ljava/io/File;[B)V
    :try_end_134
    .catch Ljava/lang/Exception; {:try_start_11a .. :try_end_134} :catch_117
    .catchall {:try_start_11a .. :try_end_134} :catchall_f6

    invoke-static {v5}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return-object v2

    :cond_138
    move-object v8, v5

    :cond_139
    :try_start_139
    invoke-virtual {p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/android/fileexplorer/model/Util;->getNameFromFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p4, p3, v4, v4}, Lcom/android/fileexplorer/model/Util;->getDestFile(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/io/File;

    move-result-object p3

    if-nez p3, :cond_152

    invoke-virtual {p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_14e
    .catch Ljava/lang/Exception; {:try_start_139 .. :try_end_14e} :catch_117
    .catchall {:try_start_139 .. :try_end_14e} :catchall_f6

    invoke-static {v5}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return-object v2

    :cond_152
    const/4 p4, 0x5

    if-eqz p1, :cond_1cc

    if-eq p1, v6, :cond_19a

    const/4 p5, 0x2

    if-eq p1, p5, :cond_180

    const/4 p0, 0x3

    if-eq p1, p0, :cond_15f

    goto/16 :goto_1f8

    :cond_15f
    :try_start_15f
    const-string p0, "open file"

    invoke-static {v1, p0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0, v6}, Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;->rename(Ljava/io/File;Ljava/lang/String;Z)I

    move-result p0

    if-eqz p0, :cond_179

    invoke-virtual {p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_175
    .catch Ljava/lang/Exception; {:try_start_15f .. :try_end_175} :catch_117
    .catchall {:try_start_15f .. :try_end_175} :catchall_f6

    invoke-static {v5}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return-object v2

    :cond_179
    :try_start_179
    const-string p0, "open file temp success"

    invoke-static {v1, p0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1f8

    :cond_180
    invoke-static {p0, v3, p3, v6}, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->copyOrMoveFile(Landroid/app/Activity;Ljava/io/File;Ljava/io/File;Z)I

    move-result p0
    :try_end_184
    .catch Ljava/lang/Exception; {:try_start_179 .. :try_end_184} :catch_117
    .catchall {:try_start_179 .. :try_end_184} :catchall_f6

    if-ne p0, p4, :cond_18a

    invoke-static {v5}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return-object v2

    :cond_18a
    if-eqz p0, :cond_1f8

    :try_start_18c
    invoke-virtual {p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v3, v8}, Lcom/android/fileexplorer/encryption/EncryptUtil;->handleDecryptionError(Ljava/io/File;[B)V
    :try_end_196
    .catch Ljava/lang/Exception; {:try_start_18c .. :try_end_196} :catch_117
    .catchall {:try_start_18c .. :try_end_196} :catchall_f6

    invoke-static {v5}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return-object v2

    :cond_19a
    :try_start_19a
    invoke-static {p0, v3, p3, v4}, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->copyOrMoveFile(Landroid/app/Activity;Ljava/io/File;Ljava/io/File;Z)I

    move-result p0

    if-ne p0, p4, :cond_1a7

    invoke-static {v3, v8}, Lcom/android/fileexplorer/encryption/EncryptUtil;->handleDecryptionError(Ljava/io/File;[B)V
    :try_end_1a3
    .catch Ljava/lang/Exception; {:try_start_19a .. :try_end_1a3} :catch_117
    .catchall {:try_start_19a .. :try_end_1a3} :catchall_f6

    invoke-static {v5}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return-object v2

    :cond_1a7
    if-eqz p0, :cond_1bc

    :try_start_1a9
    const-string p0, "Error when generating copied destination file path"

    invoke-static {v1, p0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v3, v8}, Lcom/android/fileexplorer/encryption/EncryptUtil;->handleDecryptionError(Ljava/io/File;[B)V
    :try_end_1b8
    .catch Ljava/lang/Exception; {:try_start_1a9 .. :try_end_1b8} :catch_117
    .catchall {:try_start_1a9 .. :try_end_1b8} :catchall_f6

    invoke-static {v5}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return-object v2

    :cond_1bc
    :try_start_1bc
    invoke-static {p2}, Lcom/android/fileexplorer/encryption/EncryptUtil;->deletePrivateFiles(Lcom/android/fileexplorer/encryption/PrivateFile;)V

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/fileexplorer/encryption/EncryptUtil;->updateFile(Ljava/lang/String;)V

    if-eqz p5, :cond_1f8

    invoke-interface {p5, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1f8

    :cond_1cc
    invoke-static {p0, v3, p3, v6}, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->copyOrMoveFile(Landroid/app/Activity;Ljava/io/File;Ljava/io/File;Z)I

    move-result p0

    if-ne p0, p4, :cond_1d9

    invoke-static {v3, v8}, Lcom/android/fileexplorer/encryption/EncryptUtil;->handleDecryptionError(Ljava/io/File;[B)V
    :try_end_1d5
    .catch Ljava/lang/Exception; {:try_start_1bc .. :try_end_1d5} :catch_117
    .catchall {:try_start_1bc .. :try_end_1d5} :catchall_f6

    invoke-static {v5}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return-object v2

    :cond_1d9
    if-eqz p0, :cond_1e9

    :try_start_1db
    invoke-virtual {p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v3, v8}, Lcom/android/fileexplorer/encryption/EncryptUtil;->handleDecryptionError(Ljava/io/File;[B)V
    :try_end_1e5
    .catch Ljava/lang/Exception; {:try_start_1db .. :try_end_1e5} :catch_117
    .catchall {:try_start_1db .. :try_end_1e5} :catchall_f6

    invoke-static {v5}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return-object v2

    :cond_1e9
    :try_start_1e9
    invoke-static {p2}, Lcom/android/fileexplorer/encryption/EncryptUtil;->deletePrivateFiles(Lcom/android/fileexplorer/encryption/PrivateFile;)V

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/fileexplorer/encryption/EncryptUtil;->updateFile(Ljava/lang/String;)V

    if-eqz p5, :cond_1f8

    invoke-interface {p5, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1f8
    :goto_1f8
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_225

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/fileexplorer/encryption/PrivateFile;->setDecryptedFilePath(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " decrypted success"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_221
    .catch Ljava/lang/Exception; {:try_start_1e9 .. :try_end_221} :catch_117
    .catchall {:try_start_1e9 .. :try_end_221} :catchall_f6

    :goto_221
    invoke-static {v5}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_253

    :cond_225
    :try_start_225
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/fileexplorer/encryption/PrivateFile;->setDecryptedFilePath(Ljava/lang/String;)V

    invoke-static {v3, v8}, Lcom/android/fileexplorer/encryption/EncryptUtil;->handleDecryptionError(Ljava/io/File;[B)V
    :try_end_22f
    .catch Ljava/lang/Exception; {:try_start_225 .. :try_end_22f} :catch_117
    .catchall {:try_start_225 .. :try_end_22f} :catchall_f6

    invoke-static {v5}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return-object v2

    :goto_233
    :try_start_233
    invoke-virtual {p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v3, v8}, Lcom/android/fileexplorer/encryption/EncryptUtil;->handleDecryptionError(Ljava/io/File;[B)V

    sget-object p1, Lcom/android/fileexplorer/encryption/EncryptUtil;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_252
    .catchall {:try_start_233 .. :try_end_252} :catchall_f6

    goto :goto_221

    :cond_253
    :goto_253
    return-object v2

    :goto_254
    invoke-static {v5}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static decryptHeader([BLjava/lang/String;)[B
    .registers 4

    invoke-static {p0, p1}, Lcom/android/fileexplorer/encryption/EncryptUtil;->decrypt([BLjava/lang/String;)[B

    move-result-object p0

    if-eqz p0, :cond_28

    array-length p1, p0

    const/16 v0, 0x10

    if-ne p1, v0, :cond_20

    const/16 p1, 0xf

    :goto_d
    if-lez p1, :cond_17

    aget-byte v0, p0, p1

    if-eqz v0, :cond_14

    goto :goto_17

    :cond_14
    add-int/lit8 p1, p1, -0x1

    goto :goto_d

    :cond_17
    :goto_17
    add-int/lit8 p1, p1, 0x1

    new-array v0, p1, [B

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_29

    :cond_20
    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, [B

    goto :goto_29

    :cond_28
    const/4 v0, 0x0

    :goto_29
    return-object v0
.end method

.method private static deleteFiles(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/encryption/PrivateFile;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/android/fileexplorer/encryption/EncryptUtil$4;

    invoke-direct {v0, p0, p1}, Lcom/android/fileexplorer/encryption/EncryptUtil$4;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getIOExecutors()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static deletePrivateFiles(Lcom/android/fileexplorer/encryption/PrivateFile;)V
    .registers 1

    invoke-static {p0}, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->deleteHeader(Lcom/android/fileexplorer/encryption/PrivateFile;)Z

    invoke-static {p0}, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->deleteThumb(Lcom/android/fileexplorer/encryption/PrivateFile;)Z

    invoke-virtual {p0}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->deleteLock(Ljava/lang/String;)Z

    return-void
.end method

.method public static displayPatternDialog(Landroid/app/Activity;I)V
    .registers 9

    invoke-static {}, Lcom/android/fileexplorer/model/AccountHelper;->getInstance()Lcom/android/fileexplorer/model/AccountHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/model/AccountHelper;->getCurrentAccount()Landroid/accounts/Account;

    move-result-object v2

    if-nez v2, :cond_e

    invoke-static {p0, p1}, Lcom/android/fileexplorer/encryption/EncryptUtil;->setPattern(Landroid/app/Activity;I)V

    goto :goto_1d

    :cond_e
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    new-instance v5, Lcom/android/fileexplorer/encryption/EncryptUtil$9;

    invoke-direct {v5, p0, p1}, Lcom/android/fileexplorer/encryption/EncryptUtil$9;-><init>(Landroid/app/Activity;I)V

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v4, p0

    invoke-virtual/range {v1 .. v6}, Landroid/accounts/AccountManager;->confirmCredentials(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    :goto_1d
    return-void
.end method

.method private static doEncrypt(ILandroid/app/Activity;Ljava/util/ArrayList;Ljava/lang/String;Lcom/miui/gallery/data/IExternalSettingSecretInterface;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/miui/gallery/data/IExternalSettingSecretInterface;",
            ")V"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance p2, Lcom/android/fileexplorer/encryption/EncryptUtil$8;

    move-object v0, p2

    move-object v1, p1

    move-object v3, p4

    move-object v4, p3

    move v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/fileexplorer/encryption/EncryptUtil$8;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;Lcom/miui/gallery/data/IExternalSettingSecretInterface;Ljava/lang/String;I)V

    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getIOExecutors()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {p2, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static bridge synthetic e(Ljava/util/ArrayList;)Ljava/util/List;
    .registers 1

    invoke-static {p0}, Lcom/android/fileexplorer/encryption/EncryptUtil;->getAllImagesAndVideosInFileInfos(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .line 2
    new-instance v0, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/fileexplorer/encryption/EncryptUtil;->encrypt([BLjava/lang/String;)[B

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static encrypt([BLjava/lang/String;)[B
    .registers 6

    .line 3
    :try_start_0
    const-string v0, "AES/CTS/NoPadding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 4
    invoke-static {p1}, Lcom/android/fileexplorer/util/StringUtils;->MD5Encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    const/16 v2, 0x10

    .line 5
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 7
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const-string v3, "AES"

    invoke-direct {v2, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 8
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-direct {v1, p1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 p1, 0x1

    .line 9
    invoke-virtual {v0, p1, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 10
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_31} :catch_32

    return-object p0

    :catch_32
    move-exception p0

    .line 11
    sget-object p1, Lcom/android/fileexplorer/encryption/EncryptUtil;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "encrypt cipher error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static encryptFile(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .registers 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/encryption/PrivateFile;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v1, p2

    move-object/from16 v0, p3

    move-object/from16 v9, p5

    sget-object v2, Lcom/android/fileexplorer/encryption/EncryptUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " encrypt start"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    instance-of v2, v7, Lcom/android/fileexplorer/activity/BaseActivity;

    if-eqz v2, :cond_32

    move-object v2, v7

    check-cast v2, Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-virtual {v2}, Lcom/android/fileexplorer/activity/BaseActivity;->isProgressCancelled()Z

    move-result v2

    if-nez v2, :cond_3f

    :cond_32
    instance-of v2, v7, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;

    if-eqz v2, :cond_43

    move-object v2, v7

    check-cast v2, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;

    invoke-virtual {v2}, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->isProgressCancelled()Z

    move-result v2

    if-eqz v2, :cond_43

    :cond_3f
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v10

    :cond_43
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_32f

    invoke-virtual {v11}, Ljava/io/File;->canRead()Z

    move-result v2

    if-nez v2, :cond_56

    goto/16 :goto_32f

    :cond_56
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_69

    const-string v2, "/private"

    move-object/from16 v3, p4

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_67

    goto :goto_69

    :cond_67
    move-object v2, v3

    goto :goto_6d

    :cond_69
    :goto_69
    invoke-static/range {p2 .. p2}, Lcom/android/fileexplorer/encryption/DirOperationUtil;->getPrivateRootDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_6d
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7f

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7f

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_7f
    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/fileexplorer/encryption/DirOperationUtil;->createFolder(Ljava/lang/String;Z)Z

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "/MIUI/Gallery/cloud/sharer"

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_97

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v10

    :cond_97
    invoke-virtual {v11}, Ljava/io/File;->isDirectory()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_f4

    sget-object v4, Lcom/android/fileexplorer/encryption/EncryptUtil;->privateFileFilter:Ljava/io/FilenameFilter;

    invoke-virtual {v11, v4}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v12

    if-eqz v12, :cond_32a

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v3, v5}, Lcom/android/fileexplorer/model/Util;->getDestFile(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/io/File;

    move-result-object v13

    if-nez v13, :cond_b4

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v10

    :cond_b4
    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/android/fileexplorer/encryption/DirOperationUtil;->createFolder(Ljava/lang/String;Z)Z

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    array-length v15, v12

    move v6, v5

    :goto_c2
    if-ge v6, v15, :cond_e2

    aget-object v1, v12, v6

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v4, p3

    move/from16 v16, v6

    move-object/from16 v6, p5

    invoke-static/range {v1 .. v6}, Lcom/android/fileexplorer/encryption/EncryptUtil;->encryptFile(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v6, v16, 0x1

    goto :goto_c2

    :cond_e2
    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_ef

    if-nez v8, :cond_ef

    invoke-static {v11}, Lcom/android/fileexplorer/filemanager/FileDeleteUtils;->deleteFile(Ljava/io/File;)Z

    goto/16 :goto_32a

    :cond_ef
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_32a

    :cond_f4
    const-string v4, "/FileExplorer/.safebox"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_100

    const-string v4, ""

    move-object v13, v4

    goto :goto_101

    :cond_100
    move-object v13, v1

    :goto_101
    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v18

    const/4 v4, 0x2

    if-ne v8, v4, :cond_10a

    move-object v6, v1

    goto :goto_11c

    :cond_10a
    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6, v5, v3}, Lcom/android/fileexplorer/model/Util;->getDestFile(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/io/File;

    move-result-object v6

    if-nez v6, :cond_118

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v10

    :cond_118
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    :goto_11c
    invoke-static {v6}, Lcom/android/fileexplorer/model/Util;->getNameFromFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v17, v6

    move v6, v3

    :goto_123
    sget-boolean v14, Lcom/android/fileexplorer/model/Config;->IS_GLOBAL_PHONE:Z

    const-string v15, "."

    if-eqz v14, :cond_132

    invoke-static {v12}, Lcom/android/fileexplorer/encryption/GlobalEncryptUtil;->getEncryptedName2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/fileexplorer/model/Util;->makePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_154

    :cond_132
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v17 .. v17}, Lcom/android/fileexplorer/util/StringUtils;->MD5Encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/fileexplorer/encryption/EncryptUtil;->getEncryptedName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/fileexplorer/model/Util;->makePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_154
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v3, "path error"

    if-eqz v4, :cond_165

    sget-object v0, Lcom/android/fileexplorer/encryption/EncryptUtil;->TAG:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v10

    :cond_165
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_171

    goto :goto_1be

    :cond_171
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1be

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v12}, Lcom/android/fileexplorer/model/Util;->getNameFromFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_19f

    invoke-static {v4, v15, v6}, Lcom/android/fileexplorer/adapter/recycle/viewholder/c;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_19f
    if-nez v14, :cond_1a9

    invoke-static/range {v17 .. v17}, Lcom/android/fileexplorer/model/Util;->getPathFromFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Lcom/android/fileexplorer/model/Util;->makePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    :cond_1a9
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1b8

    sget-object v0, Lcom/android/fileexplorer/encryption/EncryptUtil;->TAG:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v10

    :cond_1b8
    move v6, v5

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    goto/16 :goto_123

    :cond_1be
    :goto_1be
    if-eqz v14, :cond_1c9

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/fileexplorer/encryption/GlobalEncryptUtil;->getPrivateThumbPath2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1d1

    :cond_1c9
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/fileexplorer/encryption/DirOperationUtil;->getPrivateThumbPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1d1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1e0

    invoke-static {v2}, Landroidx/activity/result/d;->A(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1de

    goto :goto_1e0

    :cond_1de
    :goto_1de
    move-object v15, v2

    goto :goto_1e9

    :cond_1e0
    :goto_1e0
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2, v0}, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->generateThumb(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1de

    :goto_1e9
    if-eqz v14, :cond_20b

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_20b

    new-instance v0, Lcom/android/fileexplorer/encryption/PrivateFile;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    const/16 v21, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    const/16 v16, 0x0

    const/16 v20, 0x0

    move-object v12, v0

    invoke-direct/range {v12 .. v23}, Lcom/android/fileexplorer/encryption/PrivateFile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZIJ)V

    if-eqz v9, :cond_20a

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_20a
    return-object v10

    :cond_20b
    const/4 v2, 0x5

    if-eqz v8, :cond_215

    const/4 v3, 0x1

    if-eq v8, v3, :cond_217

    const/4 v3, 0x2

    if-eq v8, v3, :cond_215

    goto :goto_239

    :cond_215
    const/4 v3, 0x1

    goto :goto_22c

    :cond_217
    const/4 v3, 0x0

    invoke-static {v7, v11, v4, v3}, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->copyOrMoveFile(Landroid/app/Activity;Ljava/io/File;Ljava/io/File;Z)I

    move-result v3

    if-ne v3, v2, :cond_21f

    return-object v10

    :cond_21f
    if-eqz v3, :cond_239

    sget-object v0, Lcom/android/fileexplorer/encryption/EncryptUtil;->TAG:Ljava/lang/String;

    const-string v2, "Error when generating copied destination file path"

    invoke-static {v0, v2}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v10

    :goto_22c
    invoke-static {v7, v11, v4, v3}, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->copyOrMoveFile(Landroid/app/Activity;Ljava/io/File;Ljava/io/File;Z)I

    move-result v3

    if-ne v3, v2, :cond_233

    return-object v10

    :cond_233
    if-eqz v3, :cond_239

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v10

    :cond_239
    :goto_239
    const/4 v2, 0x0

    if-nez v14, :cond_2cb

    :try_start_23c
    invoke-static {v4}, Lcom/android/fileexplorer/encryption/EncryptUtil;->readBufferFromFile(Ljava/io/File;)[B

    move-result-object v3

    if-nez v3, :cond_257

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/fileexplorer/encryption/EncryptUtil;->TAG:Ljava/lang/String;

    const-string v3, "encryptFile error buffer is null, return"

    invoke-static {v0, v3}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_24c
    .catch Ljava/lang/Exception; {:try_start_23c .. :try_end_24c} :catch_253
    .catchall {:try_start_23c .. :try_end_24c} :catchall_250

    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return-object v10

    :catchall_250
    move-exception v0

    goto/16 :goto_32b

    :catch_253
    move-exception v0

    move-object v3, v2

    goto/16 :goto_307

    :cond_257
    :try_start_257
    invoke-virtual {v3}, [B->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B
    :try_end_25d
    .catch Ljava/lang/Exception; {:try_start_257 .. :try_end_25d} :catch_253
    .catchall {:try_start_257 .. :try_end_25d} :catchall_250

    :try_start_25d
    invoke-static {v3, v0}, Lcom/android/fileexplorer/encryption/EncryptUtil;->encrypt([BLjava/lang/String;)[B

    move-result-object v0
    :try_end_261
    .catch Ljava/lang/Exception; {:try_start_25d .. :try_end_261} :catch_2c7
    .catchall {:try_start_25d .. :try_end_261} :catchall_250

    if-nez v0, :cond_26f

    :try_start_263
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_266
    .catch Ljava/lang/Exception; {:try_start_263 .. :try_end_266} :catch_26a
    .catchall {:try_start_263 .. :try_end_266} :catchall_250

    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return-object v10

    :catch_26a
    move-exception v0

    move-object v3, v2

    move-object v2, v5

    goto/16 :goto_307

    :cond_26f
    :try_start_26f
    invoke-static {v4}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->needUseDocumentFile(Ljava/io/File;)Z

    move-result v3
    :try_end_273
    .catch Ljava/lang/Exception; {:try_start_26f .. :try_end_273} :catch_2c7
    .catchall {:try_start_26f .. :try_end_273} :catchall_250

    if-eqz v3, :cond_282

    :try_start_275
    sget-object v3, Lcom/android/fileexplorer/encryption/EncryptUtil;->TAG:Ljava/lang/String;

    const-string v6, "write encrypt head with documentFile"

    invoke-static {v3, v6}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4, v0}, Lcom/android/fileexplorer/encryption/EncryptUtil;->writeHeaderWithDocumentFile(Ljava/io/File;[B)Z
    :try_end_27f
    .catch Ljava/lang/Exception; {:try_start_275 .. :try_end_27f} :catch_26a
    .catchall {:try_start_275 .. :try_end_27f} :catchall_250

    move-object/from16 p4, v5

    goto :goto_29b

    :cond_282
    :try_start_282
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v6, "rw"

    invoke-direct {v3, v4, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_289
    .catch Ljava/lang/Exception; {:try_start_282 .. :try_end_289} :catch_2c7
    .catchall {:try_start_282 .. :try_end_289} :catchall_250

    :try_start_289
    sget-object v2, Lcom/android/fileexplorer/encryption/EncryptUtil;->TAG:Ljava/lang/String;

    const-string v6, "write encrypt head with RandomAccessFile"

    invoke-static {v2, v6}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_290
    .catch Ljava/lang/Exception; {:try_start_289 .. :try_end_290} :catch_2c3
    .catchall {:try_start_289 .. :try_end_290} :catchall_2bd

    move-object/from16 p4, v5

    const-wide/16 v5, 0x0

    :try_start_294
    invoke-virtual {v3, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v3, v0}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_29a
    .catch Ljava/lang/Exception; {:try_start_294 .. :try_end_29a} :catch_2c1
    .catchall {:try_start_294 .. :try_end_29a} :catchall_2bd

    move-object v2, v3

    :goto_29b
    :try_start_29b
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->backupHeader([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v16

    new-instance v0, Lcom/android/fileexplorer/encryption/PrivateFile;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v12, v0

    invoke-direct/range {v12 .. v23}, Lcom/android/fileexplorer/encryption/PrivateFile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZIJ)V
    :try_end_2b5
    .catch Ljava/lang/Exception; {:try_start_29b .. :try_end_2b5} :catch_2b8
    .catchall {:try_start_29b .. :try_end_2b5} :catchall_250

    move-object/from16 v3, p4

    goto :goto_2e0

    :catch_2b8
    move-exception v0

    :goto_2b9
    move-object v3, v2

    :goto_2ba
    move-object/from16 v2, p4

    goto :goto_307

    :catchall_2bd
    move-exception v0

    move-object v2, v3

    goto/16 :goto_32b

    :catch_2c1
    move-exception v0

    goto :goto_2ba

    :catch_2c3
    move-exception v0

    move-object/from16 p4, v5

    goto :goto_2ba

    :catch_2c7
    move-exception v0

    move-object/from16 p4, v5

    goto :goto_2b9

    :cond_2cb
    :try_start_2cb
    new-instance v0, Lcom/android/fileexplorer/encryption/PrivateFile;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    const/16 v16, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v12, v0

    invoke-direct/range {v12 .. v23}, Lcom/android/fileexplorer/encryption/PrivateFile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZIJ)V
    :try_end_2df
    .catch Ljava/lang/Exception; {:try_start_2cb .. :try_end_2df} :catch_253
    .catchall {:try_start_2cb .. :try_end_2df} :catchall_250

    move-object v3, v2

    :goto_2e0
    if-eqz v9, :cond_2ed

    :try_start_2e2
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2ed

    :catch_2e6
    move-exception v0

    move-object/from16 v24, v3

    move-object v3, v2

    move-object/from16 v2, v24

    goto :goto_307

    :cond_2ed
    :goto_2ed
    sget-object v0, Lcom/android/fileexplorer/encryption/EncryptUtil;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " encrypted successful"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_303
    .catch Ljava/lang/Exception; {:try_start_2e2 .. :try_end_303} :catch_2e6
    .catchall {:try_start_2e2 .. :try_end_303} :catchall_250

    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_32a

    :goto_307
    :try_start_307
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v7, v8, v11, v4, v2}, Lcom/android/fileexplorer/encryption/EncryptUtil;->handleEncryptionError(Landroid/app/Activity;ILjava/io/File;Ljava/io/File;[B)V

    sget-object v1, Lcom/android/fileexplorer/encryption/EncryptUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "encryptFile error: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_327
    .catchall {:try_start_307 .. :try_end_327} :catchall_2bd

    invoke-static {v3}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    :cond_32a
    :goto_32a
    return-object v10

    :goto_32b
    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    :cond_32f
    :goto_32f
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v10
.end method

.method public static encryptHeader([BLjava/lang/String;)[B
    .registers 2

    invoke-static {p0, p1}, Lcom/android/fileexplorer/encryption/EncryptUtil;->encrypt([BLjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static encryptSingleFile(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/android/fileexplorer/encryption/EncryptUtil$EncryptCallback;)V
    .registers 5

    new-instance v0, Lcom/android/fileexplorer/encryption/EncryptUtil$13;

    invoke-direct {v0, p1, p0, p2, p3}, Lcom/android/fileexplorer/encryption/EncryptUtil$13;-><init>(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Lcom/android/fileexplorer/encryption/EncryptUtil$EncryptCallback;)V

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static bridge synthetic f(Ljava/util/ArrayList;)Ljava/util/List;
    .registers 1

    invoke-static {p0}, Lcom/android/fileexplorer/encryption/EncryptUtil;->getAllImagesAndVideosInList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic g(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/fileexplorer/encryption/EncryptUtil;->getAllSucceedImagesAndVideos(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getACLockType(Landroid/content/Context;)I
    .registers 5

    :try_start_0
    const-string v0, "android.security.ChooseLockSettingsHelper"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v1, "isPrivacyPasswordEnabled"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2e} :catch_2f

    return p0

    :catch_2f
    const/4 p0, -0x1

    return p0
.end method

.method private static getAllImagesAndVideosInDir(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_11

    return-object v0

    :cond_11
    sget-object p0, Lcom/android/fileexplorer/encryption/EncryptUtil;->privateFileFilter:Ljava/io/FilenameFilter;

    invoke-virtual {v1, p0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_1a

    return-object v0

    :cond_1a
    array-length v1, p0

    const/4 v2, 0x0

    :goto_1c
    if-ge v2, v1, :cond_59

    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/io/File;->isHidden()Z

    move-result v4

    if-eqz v4, :cond_27

    goto :goto_56

    :cond_27
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_3b

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/fileexplorer/encryption/EncryptUtil;->getAllImagesAndVideosInDir(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_56

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_56

    :cond_3b
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/fileexplorer/util/MimeUtils;->isImage(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4f

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/fileexplorer/util/MimeUtils;->isVideo(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_56

    :cond_4f
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_56
    :goto_56
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_59
    return-object v0
.end method

.method private static getAllImagesAndVideosInFileInfos(Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/model/FileInfo;

    iget-boolean v2, v1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    if-eqz v2, :cond_23

    iget-object v1, v1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/fileexplorer/encryption/EncryptUtil;->getAllImagesAndVideosInDir(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_9

    :cond_23
    iget-object v2, v1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/fileexplorer/util/MimeUtils;->isImage(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_33

    iget-object v2, v1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/fileexplorer/util/MimeUtils;->isVideo(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_33
    iget-object v1, v1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_39
    return-object v0
.end method

.method private static getAllImagesAndVideosInList(Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-static {v1}, Lcom/android/fileexplorer/encryption/EncryptUtil;->getAllImagesAndVideosInDir(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_9

    :cond_28
    invoke-static {v1}, Lcom/android/fileexplorer/util/MimeUtils;->isImage(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_34

    invoke-static {v1}, Lcom/android/fileexplorer/util/MimeUtils;->isVideo(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_34
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_38
    return-object v0
.end method

.method private static getAllSucceedImagesAndVideos(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_1f
    return-object v0
.end method

.method public static getEncryptedName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "{["

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "]}"

    if-eqz v1, :cond_10

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_29

    :cond_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v0, 0x7f110171

    invoke-static {v0}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_29
    const-string v0, "_encrypted"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_37

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_37
    const-string v0, "_encrypted_new"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_43

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_43
    return-object p0
.end method

.method public static getEncryptedNameWithoutPrefix(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "{["

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "]}"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_1a
    const-string v0, "_encrypted"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_28
    const-string v0, "_encrypted_new"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_34

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_34
    return-object p0
.end method

.method private static getNotZeroLength([B)I
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    array-length v1, p0

    const/16 v2, 0x10

    if-ne v1, v2, :cond_17

    const/16 v1, 0xf

    :goto_b
    if-lez v1, :cond_17

    aget-byte v2, p0, v1

    if-eqz v2, :cond_14

    add-int/lit8 v0, v1, 0x1

    goto :goto_17

    :cond_14
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    :cond_17
    :goto_17
    return v0
.end method

.method public static getRealName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "{["

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    const-string v0, "]}"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_26
    const-string v0, "_encrypted_new"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "_encrypted"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic h(Landroid/app/Activity;I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/fileexplorer/encryption/EncryptUtil;->setPattern(Landroid/app/Activity;I)V

    return-void
.end method

.method private static handleDecryptionError(Ljava/io/File;[B)V
    .registers 7

    sget-boolean v0, Lcom/android/fileexplorer/model/Config;->IS_GLOBAL_PHONE:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    sget-object v0, Lcom/android/fileexplorer/encryption/EncryptUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " decryption error, trying to restore the original file"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_86

    array-length v1, p1

    if-nez v1, :cond_25

    goto :goto_86

    :cond_25
    const/4 v1, 0x0

    :try_start_26
    invoke-static {p0}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->needUseDocumentFile(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-static {p0, p1}, Lcom/android/fileexplorer/encryption/EncryptUtil;->writeHeaderWithDocumentFile(Ljava/io/File;[B)Z
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2f} :catch_64
    .catchall {:try_start_26 .. :try_end_2f} :catchall_33

    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_33
    move-exception p0

    goto :goto_82

    :cond_35
    :try_start_35
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v2, p0, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_3c} :catch_64
    .catchall {:try_start_35 .. :try_end_3c} :catchall_33

    const-wide/16 v3, 0x0

    :try_start_3e
    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v2, p1}, Ljava/io/RandomAccessFile;->write([B)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "restore successful"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_5c} :catch_63
    .catchall {:try_start_3e .. :try_end_5c} :catchall_60

    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_81

    :catchall_60
    move-exception p0

    move-object v1, v2

    goto :goto_82

    :catch_63
    move-object v1, v2

    :catch_64
    :try_start_64
    sget-object p1, Lcom/android/fileexplorer/encryption/EncryptUtil;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "restore error"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7e
    .catchall {:try_start_64 .. :try_end_7e} :catchall_33

    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    :goto_81
    return-void

    :goto_82
    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    throw p0

    :cond_86
    :goto_86
    return-void
.end method

.method private static handleEncryptionError(Landroid/app/Activity;ILjava/io/File;Ljava/io/File;[B)V
    .registers 10

    sget-boolean v0, Lcom/android/fileexplorer/model/Config;->IS_GLOBAL_PHONE:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    sget-object v0, Lcom/android/fileexplorer/encryption/EncryptUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", encryption or decryption error, trying to restore the original file"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_20
    invoke-static {p2}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->needUseDocumentFile(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-static {p2, p4}, Lcom/android/fileexplorer/encryption/EncryptUtil;->writeHeaderWithDocumentFile(Ljava/io/File;[B)Z

    goto :goto_5c

    :catchall_2a
    move-exception p0

    goto :goto_82

    :cond_2c
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v2, p3, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_33} :catch_60
    .catchall {:try_start_20 .. :try_end_33} :catchall_2a

    if-eqz p4, :cond_5b

    const-wide/16 v3, 0x0

    :try_start_37
    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v2, p4}, Ljava/io/RandomAccessFile;->write([B)V

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "restore successful"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_55} :catch_59
    .catchall {:try_start_37 .. :try_end_55} :catchall_56

    goto :goto_5b

    :catchall_56
    move-exception p0

    move-object v1, v2

    goto :goto_82

    :catch_59
    move-object v1, v2

    goto :goto_60

    :cond_5b
    :goto_5b
    move-object v1, v2

    :goto_5c
    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_7b

    :catch_60
    :goto_60
    :try_start_60
    sget-object p4, Lcom/android/fileexplorer/encryption/EncryptUtil;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "restore error"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7a
    .catchall {:try_start_60 .. :try_end_7a} :catchall_2a

    goto :goto_5c

    :goto_7b
    if-nez p1, :cond_81

    const/4 p1, 0x1

    invoke-static {p0, p3, p2, p1}, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->copyOrMoveFile(Landroid/app/Activity;Ljava/io/File;Ljava/io/File;Z)I

    :cond_81
    return-void

    :goto_82
    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    throw p0
.end method

.method private static handleLargeFile(Ljava/io/File;[B)Z
    .registers 3

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-static {p0}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->needUseDocumentFile(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {p0, p1}, Lcom/android/fileexplorer/encryption/EncryptUtil;->writeHeaderWithDocumentFile(Ljava/io/File;[B)Z

    move-result p0

    return p0

    :cond_11
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Lcom/android/fileexplorer/encryption/EncryptUtil;->writeNormal(Ljava/io/File;[BI)Z

    move-result p0

    return p0
.end method

.method private static handleSmallFile(Ljava/io/File;[B)Z
    .registers 5

    invoke-static {p1}, Lcom/android/fileexplorer/encryption/EncryptUtil;->getNotZeroLength([B)I

    move-result v0

    sget-object v1, Lcom/android/fileexplorer/encryption/EncryptUtil;->TAG:Ljava/lang/String;

    const-string v2, "handleSmallFile realLength = "

    invoke-static {v2, v0, v1}, Landroidx/activity/result/d;->C(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v1, 0x0

    if-nez v0, :cond_1a

    invoke-static {p0}, Lcom/android/fileexplorer/filemanager/FileDeleteUtils;->deleteFile(Ljava/io/File;)Z

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;->createFileOrDir(Ljava/lang/String;Z)Z

    const/4 p0, 0x1

    return p0

    :cond_1a
    new-array v2, v0, [B

    invoke-static {p1, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p0}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->needUseDocumentFile(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_34

    invoke-static {p0}, Lcom/android/fileexplorer/filemanager/FileDeleteUtils;->deleteFile(Ljava/io/File;)Z

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;->createFileOrDir(Ljava/lang/String;Z)Z

    invoke-static {p0, v2}, Lcom/android/fileexplorer/encryption/EncryptUtil;->writeHeaderWithDocumentFile(Ljava/io/File;[B)Z

    move-result p0

    return p0

    :cond_34
    invoke-static {p0, v2, v0}, Lcom/android/fileexplorer/encryption/EncryptUtil;->writeNormal(Ljava/io/File;[BI)Z

    move-result p0

    return p0
.end method

.method public static hasCommonPassword(Landroid/content/Context;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    const-string v0, "android.provider.MiuiSettings$Secure"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/content/Context;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "hasCommonPassword"

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static isPasswordSet(Landroid/app/Activity;)Z
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/android/fileexplorer/encryption/EncryptUtil;->getACLockType(Landroid/content/Context;)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne v1, v2, :cond_25

    invoke-static {p0}, Lcom/android/fileexplorer/encryption/EncryptUtil;->hasCommonPassword(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_24

    const v1, 0x7f11031f

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const-string v1, "file_explorer"

    const/16 v2, 0x6a

    const/4 v3, 0x0

    invoke-static {p0, v3, v1, v2}, Lcom/android/fileexplorer/encryption/EncryptUtil;->showSetPasswordConfirmDialog(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;I)V

    return v0

    :catch_22
    move-exception p0

    goto :goto_31

    :cond_24
    return v3

    :cond_25
    if-nez v1, :cond_2d

    const/16 v1, 0x6b

    invoke-static {p0, v1}, Lcom/android/fileexplorer/encryption/EncryptUtil;->setLockPattern(Landroid/app/Activity;I)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2c} :catch_22

    return v0

    :cond_2d
    if-ne v1, v3, :cond_30

    move v0, v3

    :cond_30
    return v0

    :goto_31
    sget-object v1, Lcom/android/fileexplorer/encryption/EncryptUtil;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static isPrivate(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "/FileExplorer/.safebox"

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return p0
.end method

.method public static isSupportAuthUser()Z
    .registers 3

    :try_start_0
    const-string v0, "miui.security.SecurityManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "IS_SUPPORT_AUTH_USER"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/glide/util/ReflectUtil;->getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_14
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_14} :catch_19
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_14} :catch_17
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_14} :catch_15

    return v0

    :catch_15
    move-exception v0

    goto :goto_1a

    :catch_17
    move-exception v0

    goto :goto_1a

    :catch_19
    move-exception v0

    :goto_1a
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public static moveFile(Landroid/app/Activity;Ljava/lang/String;Lcom/android/fileexplorer/encryption/PrivateFile;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Lcom/android/fileexplorer/encryption/PrivateFile;",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/encryption/PrivateFile;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/encryption/PrivateFile;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/encryption/PrivateFile;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v0, p2

    move-object/from16 v7, p3

    new-instance v8, Ljava/io/File;

    invoke-virtual/range {p2 .. p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_22

    const-string v1, "/private"

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    goto :goto_22

    :cond_20
    move-object v1, v2

    goto :goto_2a

    :cond_22
    :goto_22
    invoke-virtual/range {p2 .. p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/fileexplorer/encryption/DirOperationUtil;->getPrivateRootDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_2a
    invoke-virtual {v8}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_38
    invoke-virtual/range {p2 .. p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->isDir()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_a2

    invoke-virtual/range {p2 .. p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/encryption/EncryptUtil;->getRealName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Util;->makePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_59

    sget-object v0, Lcom/android/fileexplorer/encryption/EncryptUtil;->TAG:Ljava/lang/String;

    const-string v1, "path error"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_59
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/android/fileexplorer/encryption/EncryptUtil;->privateFileFilter:Ljava/io/FilenameFilter;

    invoke-virtual {v8, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/encryption/PrivateDBHelper;->getPrivateFileList([Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/android/fileexplorer/encryption/DirOperationUtil;->createFolder(Ljava/lang/String;Z)Z

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_73
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_90

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/fileexplorer/encryption/PrivateFile;

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/fileexplorer/encryption/EncryptUtil;->moveFile(Landroid/app/Activity;Ljava/lang/String;Lcom/android/fileexplorer/encryption/PrivateFile;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto :goto_73

    :cond_90
    instance-of v0, v6, Lcom/android/fileexplorer/activity/BaseActivity;

    if-eqz v0, :cond_9d

    move-object v0, v6

    check-cast v0, Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/android/fileexplorer/activity/BaseActivity;->isProgressCancelled()Z

    move-result v0

    if-nez v0, :cond_180

    :cond_9d
    invoke-static {v8}, Lcom/android/fileexplorer/filemanager/FileDeleteUtils;->deleteFile(Ljava/io/File;)Z

    goto/16 :goto_180

    :cond_a2
    instance-of v2, v6, Lcom/android/fileexplorer/activity/BaseActivity;

    if-eqz v2, :cond_b0

    move-object v2, v6

    check-cast v2, Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-virtual/range {p2 .. p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getSize()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/android/fileexplorer/activity/BaseActivity;->increaseProgressBy(J)V

    :cond_b0
    invoke-virtual/range {p2 .. p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/fileexplorer/encryption/EncryptUtil;->getRealName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v3}, Lcom/android/fileexplorer/model/Util;->getDestFile(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_c0

    return-void

    :cond_c0
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    sget-boolean v2, Lcom/android/fileexplorer/model/Config;->IS_GLOBAL_PHONE:Z

    if-eqz v2, :cond_d9

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/fileexplorer/encryption/GlobalEncryptUtil;->getEncryptedName2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/android/fileexplorer/model/Util;->makePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_109

    :cond_d9
    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/fileexplorer/util/StringUtils;->MD5Encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "."

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/fileexplorer/encryption/EncryptUtil;->getEncryptedName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/android/fileexplorer/model/Util;->makePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_109
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_110

    return-void

    :cond_110
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v8, v4, v3}, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->copyOrMoveFile(Landroid/app/Activity;Ljava/io/File;Ljava/io/File;Z)I

    move-result v1

    if-nez v1, :cond_17b

    move-object/from16 v1, p5

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/fileexplorer/encryption/DirOperationUtil;->getNewPrivateThumbPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    new-instance v1, Ljava/io/File;

    invoke-virtual/range {p2 .. p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getThumbPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v1, v5, v3}, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->copyOrMoveFile(Landroid/app/Activity;Ljava/io/File;Ljava/io/File;Z)I

    if-nez v2, :cond_156

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/fileexplorer/encryption/DirOperationUtil;->getNewPrivateHeaderBakPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-virtual/range {p2 .. p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getHeaderPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v2, v5, v3}, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->copyOrMoveFile(Landroid/app/Activity;Ljava/io/File;Ljava/io/File;Z)I

    :goto_154
    move-object v13, v1

    goto :goto_159

    :cond_156
    const-string v1, ""

    goto :goto_154

    :goto_159
    new-instance v1, Lcom/android/fileexplorer/encryption/PrivateFile;

    invoke-virtual/range {p2 .. p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getSourcePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getSize()J

    move-result-wide v15

    invoke-virtual/range {p2 .. p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->isDir()Z

    move-result v17

    invoke-virtual/range {p2 .. p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getCount()I

    move-result v18

    invoke-virtual/range {p2 .. p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDate()J

    move-result-wide v19

    move-object v9, v1

    invoke-direct/range {v9 .. v20}, Lcom/android/fileexplorer/encryption/PrivateFile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZIJ)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_180

    :cond_17b
    move-object/from16 v1, p4

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_180
    :goto_180
    return-void
.end method

.method public static movePrivateFiles(Landroid/app/Activity;Ljava/util/ArrayList;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/encryption/PrivateFile;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/android/fileexplorer/encryption/EncryptUtil$12;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/fileexplorer/encryption/EncryptUtil$12;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getIOExecutors()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static declared-synchronized operationDecryptFiles(Landroid/app/Activity;Ljava/util/ArrayList;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/encryption/PrivateFile;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-class v0, Lcom/android/fileexplorer/encryption/EncryptUtil;

    monitor-enter v0

    :try_start_3
    new-instance v1, Lcom/android/fileexplorer/encryption/EncryptUtil$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/fileexplorer/encryption/EncryptUtil$6;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getIOExecutors()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v1, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_14

    monitor-exit v0

    return-void

    :catchall_14
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized operationDeleteFiles(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/encryption/PrivateFile;",
            ">;)V"
        }
    .end annotation

    const-class v0, Lcom/android/fileexplorer/encryption/EncryptUtil;

    monitor-enter v0

    :try_start_3
    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    const v2, 0x7f120010

    invoke-direct {v1, p0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f110385

    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setIconAttribute(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    invoke-static {p0, p1}, Lcom/android/fileexplorer/encryption/EncryptUtil;->buildDeleteMessage(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/fileexplorer/encryption/EncryptUtil$3;

    invoke-direct {v2, p0, p1}, Lcom/android/fileexplorer/encryption/EncryptUtil$3;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    const p0, 0x7f110131

    invoke-virtual {v1, p0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x7f11005f

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->show()V
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_3e

    monitor-exit v0

    return-void

    :catchall_3e
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized operationOpenFile(Landroid/view/View;Lcom/android/fileexplorer/activity/BaseActivity;Ljava/util/List;I)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/android/fileexplorer/activity/BaseActivity;",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/encryption/PrivateFile;",
            ">;I)V"
        }
    .end annotation

    const-class v0, Lcom/android/fileexplorer/encryption/EncryptUtil;

    monitor-enter v0

    if-nez p2, :cond_11

    :try_start_5
    sget-object p0, Lcom/android/fileexplorer/encryption/EncryptUtil;->TAG:Ljava/lang/String;

    const-string p1, "The file list cannot be null"

    invoke-static {p0, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    goto/16 :goto_88

    :cond_11
    :try_start_11
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/encryption/PrivateFile;

    invoke-virtual {v1}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/fileexplorer/util/MimeUtils;->isImage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_77

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move v7, p3

    :cond_2b
    :goto_2b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_68

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/fileexplorer/encryption/PrivateFile;

    invoke-virtual {p3}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/fileexplorer/util/MimeUtils;->isImage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-virtual {p3}, Lcom/android/fileexplorer/encryption/PrivateFile;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/fileexplorer/encryption/PrivateFile;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    :cond_53
    invoke-virtual {p3}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/fileexplorer/model/FileWithExt;

    invoke-virtual {p3}, Lcom/android/fileexplorer/encryption/PrivateFile;->getFilePath()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v3, p3, v2}, Lcom/android/fileexplorer/model/FileWithExt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    :cond_68
    const-string v4, "secret_file"

    const p2, 0x7f110410

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object v3, p0

    move-object v5, p1

    invoke-static/range {v3 .. v8}, Lcom/android/fileexplorer/controller/IntentBuilder;->viewImagesUsingViewLarge(Landroid/view/View;Ljava/lang/String;Landroid/app/Activity;Ljava/util/List;ILjava/lang/String;)V

    goto :goto_86

    :cond_77
    new-instance p0, Lcom/android/fileexplorer/encryption/EncryptUtil$2;

    invoke-direct {p0, p1, v1}, Lcom/android/fileexplorer/encryption/EncryptUtil$2;-><init>(Lcom/android/fileexplorer/activity/BaseActivity;Lcom/android/fileexplorer/encryption/PrivateFile;)V

    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getIOExecutors()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_86
    .catchall {:try_start_11 .. :try_end_86} :catchall_e

    :goto_86
    monitor-exit v0

    return-void

    :goto_88
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized operationReEncryptFile(Landroid/app/Activity;Ljava/io/File;)I
    .registers 16

    const-string v0, "Cannot restore file "

    const-class v1, Lcom/android/fileexplorer/encryption/EncryptUtil;

    monitor-enter v1

    :try_start_5
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/.lock_"

    const-string v4, "/"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "_encrypted_new"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "_encrypted"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/fileexplorer/encryption/PrivateDBHelper;->getFromDisplayPath(Ljava/lang/String;)Lcom/android/fileexplorer/encryption/PrivateFile;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    const/4 v11, 0x6

    if-nez v5, :cond_3e

    sget-object p0, Lcom/android/fileexplorer/encryption/EncryptUtil;->TAG:Ljava/lang/String;

    const-string v0, "operationReEncryptFile displayFile not exists"

    invoke-static {p0, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v12, v11

    goto/16 :goto_ad

    :catchall_3b
    move-exception p0

    goto/16 :goto_b6

    :cond_3e
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    move-result-object v5

    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Lcom/android/fileexplorer/model/StorageHelper;->destHasEnoughSpace(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    const/4 v12, 0x3

    if-nez v5, :cond_4e

    goto :goto_ad

    :cond_4e
    const/4 v13, 0x0

    if-eqz v3, :cond_73

    invoke-static {p0, v3}, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->restoreFile(Landroid/content/Context;Lcom/android/fileexplorer/encryption/PrivateFile;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_73

    sget-object p0, Lcom/android/fileexplorer/encryption/EncryptUtil;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " has been re-encrypted"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_71
    move v12, v13

    goto :goto_ad

    :cond_73
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/android/fileexplorer/analytics/DeviceIdGenerator;->getOldDeviceId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v9

    const/4 v6, 0x2

    move-object v5, p0

    move-object v7, v2

    move-object v10, v3

    invoke-static/range {v5 .. v10}, Lcom/android/fileexplorer/encryption/EncryptUtil;->encryptFile(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_95

    invoke-static {v3}, Lcom/android/fileexplorer/encryption/PrivateDBHelper;->insertList(Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_ad

    goto :goto_71

    :cond_95
    sget-object p0, Lcom/android/fileexplorer/encryption/EncryptUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " from lock file"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v12, 0x14

    :cond_ad
    :goto_ad
    if-eq v12, v11, :cond_b1

    if-nez v12, :cond_b4

    :cond_b1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_b4
    .catchall {:try_start_5 .. :try_end_b4} :catchall_3b

    :cond_b4
    monitor-exit v1

    return v12

    :goto_b6
    monitor-exit v1

    throw p0
.end method

.method public static declared-synchronized operationRestoreFiles(Landroid/app/Activity;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/encryption/PrivateFile;",
            ">;)V"
        }
    .end annotation

    const-class v0, Lcom/android/fileexplorer/encryption/EncryptUtil;

    monitor-enter v0

    :try_start_3
    new-instance v1, Lcom/android/fileexplorer/encryption/EncryptUtil$5;

    invoke-direct {v1, p0, p1}, Lcom/android/fileexplorer/encryption/EncryptUtil$5;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getIOExecutors()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v1, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_14

    monitor-exit v0

    return-void

    :catchall_14
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static readBufferFromFile(Ljava/io/File;)[B
    .registers 7

    const-string v0, "readBufferFromFile error: "

    const/4 v1, 0x0

    if-eqz p0, :cond_50

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_50

    :cond_c
    const-wide/16 v2, 0x400

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    const/16 v3, 0x10

    if-ge v2, v3, :cond_1c

    move v2, v3

    :cond_1c
    new-array v2, v2, [B

    :try_start_1e
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_23} :catch_31
    .catchall {:try_start_1e .. :try_end_23} :catchall_2f

    :try_start_23
    invoke-virtual {v3, v2}, Ljava/io/FileInputStream;->read([B)I
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_2d
    .catchall {:try_start_23 .. :try_end_26} :catchall_2a

    invoke-static {v3}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return-object v2

    :catchall_2a
    move-exception p0

    move-object v1, v3

    goto :goto_4c

    :catch_2d
    move-exception p0

    goto :goto_33

    :catchall_2f
    move-exception p0

    goto :goto_4c

    :catch_31
    move-exception p0

    move-object v3, v1

    :goto_33
    :try_start_33
    sget-object v2, Lcom/android/fileexplorer/encryption/EncryptUtil;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_48
    .catchall {:try_start_33 .. :try_end_48} :catchall_2a

    invoke-static {v3}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return-object v1

    :goto_4c
    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    throw p0

    :cond_50
    :goto_50
    sget-object p0, Lcom/android/fileexplorer/encryption/EncryptUtil;->TAG:Ljava/lang/String;

    const-string v0, "readBufferFromFile file not exist, return."

    invoke-static {p0, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static requestSetPwd(Landroid/app/Activity;I)V
    .registers 9

    invoke-static {}, Lcom/android/fileexplorer/model/AccountHelper;->getInstance()Lcom/android/fileexplorer/model/AccountHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/model/AccountHelper;->getCurrentAccount()Landroid/accounts/Account;

    move-result-object v2

    if-nez v2, :cond_e

    invoke-static {p0, p1}, Lcom/android/fileexplorer/encryption/EncryptUtil;->setLockPattern(Landroid/app/Activity;I)V

    goto :goto_1d

    :cond_e
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    new-instance v5, Lcom/android/fileexplorer/encryption/EncryptUtil$10;

    invoke-direct {v5, p0, p1}, Lcom/android/fileexplorer/encryption/EncryptUtil$10;-><init>(Landroid/app/Activity;I)V

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v4, p0

    invoke-virtual/range {v1 .. v6}, Landroid/accounts/AccountManager;->confirmCredentials(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    :goto_1d
    return-void
.end method

.method public static setLockPattern(Landroid/app/Activity;I)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings"

    const-string v2, "android.app.action.CONFIRM_DEVICE_CREDENTIAL_WITH_USER"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.app.action.PRIVACY_PASSWORD_SET_NEW_PASSWORD"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private static setPattern(Landroid/app/Activity;I)V
    .registers 4

    invoke-static {}, Lcom/android/fileexplorer/encryption/EncryptUtil;->isSupportAuthUser()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {p0, p1}, Lcom/android/fileexplorer/encryption/EncryptUtil;->setLockPattern(Landroid/app/Activity;I)V

    return-void

    :cond_a
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f110463

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f110465

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/fileexplorer/encryption/EncryptUtil$11;

    invoke-direct {v1, p0, p1}, Lcom/android/fileexplorer/encryption/EncryptUtil$11;-><init>(Landroid/app/Activity;I)V

    const p0, 0x7f110464

    invoke-virtual {v0, p0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x7f11005f

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method public static showSetPasswordConfirmDialog(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/fileexplorer/model/SettingManager;->setFirstEnterPrivateFolder(Z)V

    const-string v0, "android.provider.MiuiSettings$Secure"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v3, Landroid/app/Activity;

    const-class v4, Landroid/content/DialogInterface$OnClickListener;

    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "showSetPasswordConfirmDialog"

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p0, p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static unlockPattern(Landroid/app/Activity;)V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.PrivacyPasswordConfirmLockPattern"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.app.action.PRIVACY_PASSWORD_CONFIRM_PASSWORD"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/16 v1, 0x6c

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static updateFile(Ljava/lang/String;)V
    .registers 2

    invoke-static {p0}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileItem(Ljava/lang/String;)Lcom/android/fileexplorer/dao/file/FileItem;

    move-result-object p0

    if-nez p0, :cond_7

    return-void

    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getInstance()Lcom/android/fileexplorer/apptag/MiFileListManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/apptag/MiFileListManager;->insertNewFiles(Ljava/util/List;)V

    return-void
.end method

.method public static writeHeaderWithDocumentFile(Ljava/io/File;[B)Z
    .registers 9

    const-string v0, "writeHeaderWithDocumentFile error: "

    const/4 v1, 0x0

    if-eqz p1, :cond_a9

    array-length v2, p1

    if-nez v2, :cond_a

    goto/16 :goto_a9

    :cond_a
    invoke-static {p0}, Lcom/android/fileexplorer/filemanager/DocumentsUtils;->createDocumentFile(Ljava/io/File;)Lk0/a;

    move-result-object p0

    if-eqz p0, :cond_a2

    const/4 v2, 0x0

    :try_start_11
    check-cast p0, Lk0/b;

    iget-object p0, p0, Lk0/b;->c:Landroid/net/Uri;
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_15} :catch_77
    .catchall {:try_start_11 .. :try_end_15} :catchall_75

    :try_start_15
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "rw"

    invoke-virtual {v3, p0, v4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_23} :catch_6d
    .catchall {:try_start_15 .. :try_end_23} :catchall_69

    if-eqz p0, :cond_36

    :try_start_25
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_2e} :catch_33
    .catchall {:try_start_25 .. :try_end_2e} :catchall_2f

    goto :goto_37

    :catchall_2f
    move-exception p1

    move-object v3, v2

    goto/16 :goto_98

    :catch_33
    move-exception p1

    move-object v3, v2

    goto :goto_79

    :cond_36
    move-object v3, v2

    :goto_37
    if-eqz v3, :cond_5f

    :try_start_39
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    array-length v4, p1

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    const-wide/16 v5, 0x0

    invoke-virtual {v2, v5, v6}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {v2, v4}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_50} :catch_5d
    .catchall {:try_start_39 .. :try_end_50} :catchall_5b

    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v3}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {p0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    const/4 p0, 0x1

    return p0

    :catchall_5b
    move-exception p1

    goto :goto_98

    :catch_5d
    move-exception p1

    goto :goto_79

    :cond_5f
    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v3}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {p0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return v1

    :catchall_69
    move-exception p1

    :goto_6a
    move-object p0, v2

    move-object v3, p0

    goto :goto_98

    :catch_6d
    move-exception p1

    :goto_6e
    move-object p0, v2

    move-object v3, p0

    goto :goto_79

    :goto_71
    move-object p1, p0

    goto :goto_6a

    :goto_73
    move-object p1, p0

    goto :goto_6e

    :catchall_75
    move-exception p0

    goto :goto_71

    :catch_77
    move-exception p0

    goto :goto_73

    :goto_79
    :try_start_79
    sget-object v4, Lcom/android/fileexplorer/encryption/EncryptUtil;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8e
    .catchall {:try_start_79 .. :try_end_8e} :catchall_5b

    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v3}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {p0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_a9

    :goto_98
    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v3}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {p0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    throw p1

    :cond_a2
    sget-object p0, Lcom/android/fileexplorer/encryption/EncryptUtil;->TAG:Ljava/lang/String;

    const-string p1, "writeHeaderWithDocumentFile, no permission access SD card"

    invoke-static {p0, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a9
    :goto_a9
    return v1
.end method

.method private static writeNormal(Ljava/io/File;[BI)Z
    .registers 9

    const-string v0, "writeNormal error: "

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_37

    :try_start_6
    array-length v3, p1

    if-nez v3, :cond_a

    goto :goto_37

    :cond_a
    new-instance v3, Ljava/io/RandomAccessFile;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    const-string v4, "rw"

    invoke-direct {v3, p0, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_15} :catch_35
    .catchall {:try_start_6 .. :try_end_15} :catchall_33

    if-lez p2, :cond_26

    const/16 p0, 0x10

    if-ge p2, p0, :cond_26

    int-to-long v4, p2

    :try_start_1c
    invoke-virtual {v3, v4, v5}, Ljava/io/RandomAccessFile;->setLength(J)V

    goto :goto_26

    :catchall_20
    move-exception p0

    move-object v2, v3

    goto :goto_5b

    :catch_23
    move-exception p0

    move-object v2, v3

    goto :goto_42

    :cond_26
    :goto_26
    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v3, p1}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_2e} :catch_23
    .catchall {:try_start_1c .. :try_end_2e} :catchall_20

    invoke-static {v3}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    const/4 p0, 0x1

    return p0

    :catchall_33
    move-exception p0

    goto :goto_5b

    :catch_35
    move-exception p0

    goto :goto_42

    :cond_37
    :goto_37
    :try_start_37
    sget-object p0, Lcom/android/fileexplorer/encryption/EncryptUtil;->TAG:Ljava/lang/String;

    const-string p1, "writeNormal error, head is null or empty"

    invoke-static {p0, p1}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3e} :catch_35
    .catchall {:try_start_37 .. :try_end_3e} :catchall_33

    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return v1

    :goto_42
    :try_start_42
    sget-object p1, Lcom/android/fileexplorer/encryption/EncryptUtil;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_57
    .catchall {:try_start_42 .. :try_end_57} :catchall_33

    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return v1

    :goto_5b
    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    throw p0
.end method
