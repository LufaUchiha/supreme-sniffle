# classes.dex

.class public Lcom/android/fileexplorer/activity/PrivateFolderActivity;
.super Lcom/android/fileexplorer/activity/BaseActivity;
.source "SourceFile"

# interfaces
.implements Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR$IFileInteractionListener;
.implements Lcom/android/fileexplorer/encryption/EncryptUtil$EncryptCallback;
.implements Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeActionInterface;
.implements Lcom/android/fileexplorer/adapter/recycle/listener/IHomeActivityCallback;
.implements Lcom/android/fileexplorer/fragment/actionbar/ICommonAction;
.implements Lcom/android/fileexplorer/fragment/callback/IActionListener;


# static fields
.field private static final CATEGROY_KEY:Ljava/lang/String;

.field private static final KEY_ENABLE_PRIVATE_FOLDER:Ljava/lang/String; = "enable_fileexplorer_private_folder"


# instance fields
.field private ImmersionMenuEnabled:Z

.field private final TAG:Ljava/lang/String;

.field public gridDecoration:Landroidx/recyclerview/widget/g1;

.field private isActionMode:Z

.field private isClickAPK:Z

.field private mActionBar:Lmiuix/appcompat/app/ActionBar;

.field private mActionBarTransitionListener:Lmiuix/appcompat/app/ActionBarTransitionListener;

.field private mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

.field private mAddPrivate:Landroid/widget/Button;

.field private mAddPrivateFileView:Landroid/view/View;

.field private mDsMenu:Lcom/android/fileexplorer/controller/DisplaySettingMenu;

.field private mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

.field protected mEventFromFolderClick:Z

.field private mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

.field protected mFileNameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/encryption/PrivateFile;",
            ">;"
        }
    .end annotation
.end field

.field private mFileOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

.field private mInteractionHub:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;

.field private mIsFirstEnter:Z

.field private mIsProgressing:Z

.field private mLogo:Landroid/widget/ImageView;

.field private mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/PrivateMultiChoiceCallback;

.field private mPadPopupMenuWindow:Lcom/android/fileexplorer/view/PadPopupMenuWindow;

.field private mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

.field private mRefreshSdcardFileTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/encryption/PrivateFile;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mRequestingSetPwd:Z

.field private mResultAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FilePrivateRecyclerAdapter;

.field private mScrollView:Landroidx/core/widget/NestedScrollView;

.field private mSortTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

.field private mUnlocked:Z

.field private mUpdateTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private navigationBar:Landroid/widget/LinearLayout;

.field private rootView:Lcom/android/fileexplorer/view/EmptyTriggerRelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Private:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->CATEGROY_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/fileexplorer/activity/BaseActivity;-><init>()V

    const-string v0, "PrivateFolderActivity"

    iput-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mFileNameList:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mUnlocked:Z

    iput-boolean v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mIsFirstEnter:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->ImmersionMenuEnabled:Z

    iput-boolean v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mEventFromFolderClick:Z

    new-instance v0, Lcom/android/fileexplorer/activity/PrivateFolderActivity$1;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity$1;-><init>(Lcom/android/fileexplorer/activity/PrivateFolderActivity;)V

    iput-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mActionBarTransitionListener:Lmiuix/appcompat/app/ActionBarTransitionListener;

    return-void
.end method

.method private checkIfRequestSD()Landroid/util/Pair;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/encryption/PrivateFile;",
            ">;>;"
        }
    .end annotation

    invoke-static {}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->isAndroidPAndLater()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/model/StorageHelper;->getSDStorageVolume()Lcom/android/fileexplorer/model/StorageInfo;

    move-result-object v0

    if-nez v0, :cond_13

    return-object v1

    :cond_13
    invoke-virtual {v0}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->noSDWritePermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    return-object v1

    :cond_1e
    new-instance v0, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;

    const v2, 0x7f0a0074

    invoke-direct {v0, v2}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;-><init>(I)V

    invoke-static {}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager;->getInstance()Lcom/android/fileexplorer/filemanager/StorageVolumeManager;

    move-result-object v2

    invoke-virtual {v2, v0, p0}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager;->setActionCache(Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeActionInterface;)V

    new-instance v0, Landroid/util/Pair;

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private dealSpanCount(I)I
    .registers 3

    invoke-static {p0}, Lcom/android/fileexplorer/util/FontUtils;->isLargeThanGodzillaFont(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    div-int/lit8 v0, p1, 0x2

    rem-int/lit8 p1, p1, 0x2

    add-int/2addr p1, v0

    :cond_b
    return p1
.end method

.method private exitEditMode()Z
    .registers 2

    invoke-direct {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/PrivateMultiChoiceCallback;

    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->exitActionMode()V

    const/4 v0, 0x1

    return v0

    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method private exitEditModeNotTimeInterval()Z
    .registers 2

    invoke-direct {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/PrivateMultiChoiceCallback;

    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->exitActionModeNotTimeInterval()V

    const/4 v0, 0x1

    return v0

    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method private exitPastePrivateFiles()Z
    .registers 3

    invoke-direct {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->hasPastePrivateFiles()Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->setImmersionMenuEnabled(Z)V

    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/fileexplorer/model/PasteFileInstance;->clearPasteFiles()V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    return v0

    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method private getColumnType()I
    .registers 3

    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Private:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->generateCustomFabPreference()Lcom/android/fileexplorer/controller/FabPreference;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getFabPreference(Ljava/lang/String;Lcom/android/fileexplorer/controller/FabPreference;)Lcom/android/fileexplorer/controller/FabPreference;

    move-result-object v0

    iget v0, v0, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    return v0
.end method

.method private getCurrentPath()Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->isRootPath()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, ""

    goto :goto_f

    :cond_9
    iget-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mInteractionHub:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;

    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->getCurrentPath()Ljava/lang/String;

    move-result-object v0

    :goto_f
    return-object v0
.end method

.method public static synthetic h(Lcom/android/fileexplorer/activity/PrivateFolderActivity;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->lambda$onShowSortMenu$0(I)V

    return-void
.end method

.method private handleSetPwd(I)V
    .registers 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_a

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mUnlocked:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mRequestingSetPwd:Z

    goto :goto_d

    :cond_a
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :goto_d
    return-void
.end method

.method private handlerClick(Landroid/view/View;I)V
    .registers 6

    const-string v0, "PrivateFolderActivity"

    if-ltz p2, :cond_95

    iget-object v1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p2, v1, :cond_e

    goto/16 :goto_95

    :cond_e
    iget-object v1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/encryption/PrivateFile;

    if-eqz v1, :cond_83

    invoke-virtual {v1}, Lcom/android/fileexplorer/encryption/PrivateFile;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_23

    goto :goto_83

    :cond_23
    invoke-virtual {v1}, Lcom/android/fileexplorer/encryption/PrivateFile;->isDir()Z

    move-result v0

    if-eqz v0, :cond_5c

    invoke-direct {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->getCurrentPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/fileexplorer/model/Util;->getNameFromFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->getAbsoluteName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/android/fileexplorer/model/PathSegment;

    invoke-virtual {v1}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->getNameFromFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->isRootPath()Z

    move-result v2

    if-eqz v2, :cond_4d

    invoke-virtual {v1}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    move-result-object p1

    :cond_4d
    invoke-direct {p2, v0, p1}, Lcom/android/fileexplorer/model/PathSegment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/fileexplorer/encryption/PrivateFile;->getCount()I

    move-result p1

    iput p1, p2, Lcom/android/fileexplorer/model/PathSegment;->fileAmount:I

    iget-object p1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mInteractionHub:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;

    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->onPathChanged(Lcom/android/fileexplorer/model/PathSegment;)V

    goto :goto_82

    :cond_5c
    new-instance v0, Ljava/io/File;

    invoke-virtual {v1}, Lcom/android/fileexplorer/encryption/PrivateFile;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_82

    invoke-virtual {v1}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "apk"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->isClickAPK:Z

    iget-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    iget-object v1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mFileNameList:Ljava/util/ArrayList;

    invoke-static {p1, v0, v1, p2}, Lcom/android/fileexplorer/encryption/EncryptUtil;->operationOpenFile(Landroid/view/View;Lcom/android/fileexplorer/activity/BaseActivity;Ljava/util/List;I)V

    :cond_82
    :goto_82
    return-void

    :cond_83
    :goto_83
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "file does not exist on position:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_95
    :goto_95
    const-string p1, "position invalid, return"

    invoke-static {v0, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private hasAppLock()Z
    .registers 8

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "security"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "miui.security.SecurityManager"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "isAccessControlActived"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v0

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_53

    const-string v3, "getApplicationAccessControlEnabled"

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v0

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_48} :catch_49

    return v0

    :catch_49
    move-exception v1

    const-string v2, "PrivateFolderActivity"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_53
    return v0
.end method

.method private hasPasteFileInfos()Z
    .registers 5

    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/model/PasteFileInstance;->hasPasteFileInfos()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_36

    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/model/PasteFileInstance;->getPasteFileInfos()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_36

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/model/FileInfo;

    if-eqz v2, :cond_19

    iget-object v2, v2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    if-eqz v2, :cond_19

    const-string v3, "smb://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    return v1

    :cond_34
    const/4 v0, 0x1

    return v0

    :cond_36
    return v1
.end method

.method private hasPastePrivateFiles()Z
    .registers 2

    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/model/PasteFileInstance;->hasPastePrivateFiles()Z

    move-result v0

    return v0
.end method

.method public static bridge synthetic i(Lcom/android/fileexplorer/activity/PrivateFolderActivity;)Lcom/android/fileexplorer/view/EmptyView;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    return-object p0
.end method

.method private initFabMenuLayout()V
    .registers 3

    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Private:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->generateCustomFabPreference()Lcom/android/fileexplorer/controller/FabPreference;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getFabPreference(Ljava/lang/String;Lcom/android/fileexplorer/controller/FabPreference;)Lcom/android/fileexplorer/controller/FabPreference;

    move-result-object v0

    iget v0, v0, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->onViewModeChanged(I)V

    return-void
.end method

.method private initRecyclerView()V
    .registers 4

    const v0, 0x102000a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    iput-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/j1;)V

    iget-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/f1;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0d0070

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "zh"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_47

    const v1, 0x7f0a02b9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f080774

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_47
    invoke-static {}, Lcom/android/fileexplorer/util/PrivacyUtil;->isSafeBoxSupport()Z

    move-result v1

    if-eqz v1, :cond_57

    iget-object v1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    new-instance v2, Lcom/android/fileexplorer/recyclerview/decoration/FooterItemDecoration;

    invoke-direct {v2, v0}, Lcom/android/fileexplorer/recyclerview/decoration/FooterItemDecoration;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/g1;)V

    :cond_57
    new-instance v0, Lcom/android/fileexplorer/adapter/recycle/adapter/FilePrivateRecyclerAdapter;

    iget-object v1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mFileNameList:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/adapter/FilePrivateRecyclerAdapter;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mResultAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FilePrivateRecyclerAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/x0;->setHasStableIds(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mResultAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FilePrivateRecyclerAdapter;

    new-instance v1, Lcom/android/fileexplorer/activity/PrivateFolderActivity$7;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity$7;-><init>(Lcom/android/fileexplorer/activity/PrivateFolderActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->setOnItemClickListener(Lcom/android/fileexplorer/adapter/recycle/listener/OnListItemActionListener;)V

    new-instance v0, Lcom/android/fileexplorer/adapter/recycle/modecallback/PrivateMultiChoiceCallback;

    iget-object v1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    const/16 v2, 0xa

    invoke-direct {v0, p0, v1, v2}, Lcom/android/fileexplorer/adapter/recycle/modecallback/PrivateMultiChoiceCallback;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;I)V

    iput-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/PrivateMultiChoiceCallback;

    iget-object v1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mResultAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FilePrivateRecyclerAdapter;

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setAdapter(Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;)V

    return-void
.end method

.method private initView()V
    .registers 3

    const v0, 0x7f0a0489

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/springback/view/SpringBackLayout;

    iput-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    const v0, 0x7f0a0417

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    iput-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mScrollView:Landroidx/core/widget/NestedScrollView;

    const v0, 0x7f0a01a9

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/view/EmptyView;

    iput-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    const v0, 0x7f0a02a9

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mAddPrivateFileView:Landroid/view/View;

    const v0, 0x7f0a0094

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mAddPrivate:Landroid/widget/Button;

    const v0, 0x7f0a02b9

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mLogo:Landroid/widget/ImageView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5c

    iget-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mLogo:Landroid/widget/ImageView;

    const v1, 0x7f080774

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_5c
    const v0, 0x7f0a0354

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->navigationBar:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0403

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/view/EmptyTriggerRelativeLayout;

    iput-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->rootView:Lcom/android/fileexplorer/view/EmptyTriggerRelativeLayout;

    invoke-virtual {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->changeRootViewPadding()V

    iget-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->rootView:Lcom/android/fileexplorer/view/EmptyTriggerRelativeLayout;

    new-instance v1, Lcom/android/fileexplorer/activity/PrivateFolderActivity$5;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity$5;-><init>(Lcom/android/fileexplorer/activity/PrivateFolderActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/EmptyTriggerRelativeLayout;->setEmptyTrigger(Lcom/android/fileexplorer/adapter/recycle/listener/OnEmptyTrigger;)V

    iget-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mAddPrivate:Landroid/widget/Button;

    new-instance v1, Lcom/android/fileexplorer/activity/PrivateFolderActivity$6;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity$6;-><init>(Lcom/android/fileexplorer/activity/PrivateFolderActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->initRecyclerView()V

    invoke-direct {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->initFabMenuLayout()V

    return-void
.end method

.method private isEditMode()Z
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/PrivateMultiChoiceCallback;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->isInActionMode()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private isRootPath()Z
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mInteractionHub:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    :cond_6
    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->getCurrentPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1a

    const-string v2, "/private"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :cond_1a
    :goto_1a
    return v1
.end method

.method private isUnlocked()Z
    .registers 2

    invoke-static {}, Lcom/android/fileexplorer/encryption/EncryptUtil;->isSupportAuthUser()Z

    move-result v0

    if-nez v0, :cond_19

    iget-boolean v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mUnlocked:Z

    if-nez v0, :cond_17

    invoke-direct {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->hasAppLock()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mIsFirstEnter:Z

    if-nez v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    :goto_18
    return v0

    :cond_19
    iget-boolean v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mUnlocked:Z

    return v0
.end method

.method public static bridge synthetic j(Lcom/android/fileexplorer/activity/PrivateFolderActivity;)Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mInteractionHub:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;

    return-object p0
.end method

.method public static bridge synthetic k(Lcom/android/fileexplorer/activity/PrivateFolderActivity;)Lcom/android/fileexplorer/adapter/recycle/modecallback/PrivateMultiChoiceCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/PrivateMultiChoiceCallback;

    return-object p0
.end method

.method public static bridge synthetic l(Lcom/android/fileexplorer/activity/PrivateFolderActivity;)Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    return-object p0
.end method

.method private synthetic lambda$onShowSortMenu$0(I)V
    .registers 3

    new-instance v0, Lcom/android/fileexplorer/controller/FabMenuItem;

    invoke-direct {v0, p1}, Lcom/android/fileexplorer/controller/FabMenuItem;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    return-void
.end method

.method public static launchThisActivity(Landroid/app/Activity;)V
    .registers 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/fileexplorer/activity/PrivateFolderActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static bridge synthetic m(Lcom/android/fileexplorer/activity/PrivateFolderActivity;)Lcom/android/fileexplorer/adapter/recycle/adapter/FilePrivateRecyclerAdapter;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mResultAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FilePrivateRecyclerAdapter;

    return-object p0
.end method

.method public static bridge synthetic n(Lcom/android/fileexplorer/activity/PrivateFolderActivity;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mIsProgressing:Z

    return-void
.end method

.method public static bridge synthetic o(Lcom/android/fileexplorer/activity/PrivateFolderActivity;)Landroid/util/Pair;
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->checkIfRequestSD()Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private onSortChanged(IZ)V
    .registers 5

    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Private:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->generateCustomFabPreference()Lcom/android/fileexplorer/controller/FabPreference;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getFabPreference(Ljava/lang/String;Lcom/android/fileexplorer/controller/FabPreference;)Lcom/android/fileexplorer/controller/FabPreference;

    move-result-object v1

    iput p1, v1, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    iput-boolean p2, v1, Lcom/android/fileexplorer/controller/FabPreference;->isReverse:Z

    invoke-static {v0, v1}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->putFabPreference(Ljava/lang/String;Lcom/android/fileexplorer/controller/FabPreference;)V

    invoke-virtual {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->sortCurrentList()V

    return-void
.end method

.method public static bridge synthetic p(Lcom/android/fileexplorer/activity/PrivateFolderActivity;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->getCurrentPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic q(Lcom/android/fileexplorer/activity/PrivateFolderActivity;Landroid/view/View;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->handlerClick(Landroid/view/View;I)V

    return-void
.end method

.method public static bridge synthetic r(Lcom/android/fileexplorer/activity/PrivateFolderActivity;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->hasPasteFileInfos()Z

    move-result p0

    return p0
.end method

.method private runPrivateFolderLoaderTask()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mRefreshSdcardFileTask:Landroid/os/AsyncTask;

    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    invoke-direct {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->getCurrentPath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/fileexplorer/activity/PrivateFolderActivity$8;

    invoke-direct {v1, p0, v0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity$8;-><init>(Lcom/android/fileexplorer/activity/PrivateFolderActivity;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mRefreshSdcardFileTask:Landroid/os/AsyncTask;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static bridge synthetic s(Lcom/android/fileexplorer/activity/PrivateFolderActivity;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->hasPastePrivateFiles()Z

    move-result p0

    return p0
.end method

.method private setActionModeAccessibility()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mActionBarTransitionListener:Lmiuix/appcompat/app/ActionBarTransitionListener;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ActionBar;->addActionBarTransitionListener(Lmiuix/appcompat/app/ActionBarTransitionListener;)V

    :cond_9
    return-void
.end method

.method private setFabMenuLayoutVisibility(Z)V
    .registers 2

    return-void
.end method

.method private showEmptyView()V
    .registers 6

    iget-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    iget-object v1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/fileexplorer/view/EmptyView;->showEmpty(ZI)V

    iget-object v1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    invoke-direct {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->isRootPath()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/fileexplorer/view/EmptyView;->showHintText(Z)V

    invoke-direct {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->isRootPath()Z

    move-result v1

    if-eqz v1, :cond_29

    iget-object v1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    const v3, 0x7f110355

    invoke-static {v3}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_29
    iget-object v1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    const/16 v3, 0x8

    if-eqz v0, :cond_31

    move v4, v2

    goto :goto_32

    :cond_31
    move v4, v3

    :goto_32
    invoke-virtual {v1, v4}, Lcom/android/fileexplorer/view/EmptyView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    if-eqz v0, :cond_3b

    move v4, v3

    goto :goto_3c

    :cond_3b
    move v4, v2

    :goto_3c
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mScrollView:Landroidx/core/widget/NestedScrollView;

    if-eqz v0, :cond_45

    move v4, v2

    goto :goto_46

    :cond_45
    move v4, v3

    :goto_46
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mAddPrivate:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->isRootPath()Z

    move-result v4

    if-eqz v4, :cond_55

    if-eqz v0, :cond_55

    move v4, v2

    goto :goto_56

    :cond_55
    move v4, v3

    :goto_56
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mAddPrivateFileView:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->isRootPath()Z

    move-result v4

    if-eqz v4, :cond_65

    if-eqz v0, :cond_65

    move v4, v2

    goto :goto_66

    :cond_65
    move v4, v3

    :goto_66
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mLogo:Landroid/widget/ImageView;

    invoke-static {}, Lcom/android/fileexplorer/util/PrivacyUtil;->isSafeBoxSupport()Z

    move-result v4

    if-eqz v4, :cond_74

    if-eqz v0, :cond_74

    goto :goto_75

    :cond_74
    move v2, v3

    :goto_75
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    if-eqz v0, :cond_7f

    iget-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mScrollView:Landroidx/core/widget/NestedScrollView;

    goto :goto_81

    :cond_7f
    iget-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    :goto_81
    invoke-virtual {v1, v0}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    return-void
.end method

.method private showLoading(I)V
    .registers 7

    iget-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mScrollView:Landroidx/core/widget/NestedScrollView;

    if-eqz v0, :cond_41

    iget-object v1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    if-eqz v1, :cond_41

    iget-object v1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    if-nez v1, :cond_d

    goto :goto_41

    :cond_d
    const/16 v2, 0x1f4

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-le p1, v2, :cond_2d

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    iget-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mScrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {p1, v0}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    const/4 v0, 0x1

    const v1, 0x7f1101b6

    invoke-virtual {p1, v0, v1}, Lcom/android/fileexplorer/view/EmptyView;->showLoading(ZI)V

    goto :goto_41

    :cond_2d
    invoke-virtual {v1, v4}, Lcom/android/fileexplorer/view/EmptyView;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mScrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    iget-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    invoke-virtual {p1, v0}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_41
    :goto_41
    return-void
.end method

.method public static bridge synthetic t(Lcom/android/fileexplorer/activity/PrivateFolderActivity;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->isEditMode()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic u(Lcom/android/fileexplorer/activity/PrivateFolderActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->runPrivateFolderLoaderTask()V

    return-void
.end method

.method private unlockPattern()V
    .registers 1

    invoke-static {p0}, Lcom/android/fileexplorer/encryption/EncryptUtil;->unlockPattern(Landroid/app/Activity;)V

    return-void
.end method

.method private updateAdapter()V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mResultAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FilePrivateRecyclerAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/x0;->notifyDataSetChanged()V

    invoke-direct {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->showEmptyView()V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_48

    invoke-virtual {v0}, Lmiuix/appcompat/app/ActionBar;->getStartView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a00cc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->isRootPath()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f11005f

    :goto_28
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_35

    :cond_2d
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110231

    goto :goto_28

    :goto_35
    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->isRootPath()Z

    move-result v1

    if-eqz v1, :cond_42

    const v1, 0x7f0802b9

    goto :goto_45

    :cond_42
    const v1, 0x7f0802b6

    :goto_45
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_48
    return-void
.end method

.method private updateTranslucent()V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onActionModeChange isActionMode = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->isActionMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PrivateFolderActivity"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->isActionMode:Z

    const/high16 v2, 0x8000000

    if-nez v0, :cond_4f

    invoke-direct {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->hasPastePrivateFiles()Z

    move-result v0

    if-nez v0, :cond_4f

    invoke-direct {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->hasPasteFileInfos()Z

    move-result v0

    if-eqz v0, :cond_28

    goto :goto_4f

    :cond_28
    invoke-static {p0}, Lmiuix/core/util/MiuixUIUtils;->isFullScreenGestureMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_42

    invoke-static {p0}, Lcom/android/fileexplorer/util/DeviceUtils;->isFreeFormScreen(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_35

    goto :goto_42

    :cond_35
    const-string v0, "clearFlags 2"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_4e

    :cond_42
    :goto_42
    const-string v0, "addFlags 2"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    :goto_4e
    return-void

    :cond_4f
    :goto_4f
    sget-boolean v0, Lcom/android/fileexplorer/model/Config;->IS_PAD:Z

    if-eqz v0, :cond_66

    invoke-static {p0}, Lcom/android/fileexplorer/util/DeviceUtils;->isLargeScreenDeviceV2(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_66

    const-string v0, "clearFlags 1"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_72

    :cond_66
    const-string v0, "addFlags 1"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    :goto_72
    return-void
.end method

.method public static bridge synthetic v(Lcom/android/fileexplorer/activity/PrivateFolderActivity;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->showLoading(I)V

    return-void
.end method

.method public static bridge synthetic w(Lcom/android/fileexplorer/activity/PrivateFolderActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->updateAdapter()V

    return-void
.end method

.method private writeSettingsIfNeed(Z)V
    .registers 11

    invoke-static {}, Lcom/android/fileexplorer/encryption/DirOperationUtil;->getPrivateRootDirs()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->getCurrentPath()Ljava/lang/String;

    move-result-object v1

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_b
    if-ge v4, v2, :cond_3a

    aget-object v5, v0, v4

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1b

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_37

    :cond_1b
    const-string v6, "enable_fileexplorer_private_folder"

    if-eqz p1, :cond_27

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_37

    :cond_27
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v8, -0x1

    invoke-static {v7, v6, v8}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v3}, Lcom/android/fileexplorer/filemanager/FileDeleteUtils;->deleteFile(Ljava/io/File;Z)Z

    :cond_37
    :goto_37
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_3a
    return-void
.end method

.method public static bridge synthetic x(Lcom/android/fileexplorer/activity/PrivateFolderActivity;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->writeSettingsIfNeed(Z)V

    return-void
.end method


# virtual methods
.method public changeRootViewPadding()V
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->rootView:Lcom/android/fileexplorer/view/EmptyTriggerRelativeLayout;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->getWindowWidth()I

    move-result v0

    const/16 v1, 0x320

    if-le v0, v1, :cond_38

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070247

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->rootView:Lcom/android/fileexplorer/view/EmptyTriggerRelativeLayout;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    if-ne v1, v0, :cond_28

    iget-object v1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->rootView:Lcom/android/fileexplorer/view/EmptyTriggerRelativeLayout;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    if-eq v1, v0, :cond_58

    :cond_28
    iget-object v1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->rootView:Lcom/android/fileexplorer/view/EmptyTriggerRelativeLayout;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->rootView:Lcom/android/fileexplorer/view/EmptyTriggerRelativeLayout;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v1, v0, v2, v0, v3}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_58

    :cond_38
    iget-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->rootView:Lcom/android/fileexplorer/view/EmptyTriggerRelativeLayout;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    if-nez v0, :cond_48

    iget-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->rootView:Lcom/android/fileexplorer/view/EmptyTriggerRelativeLayout;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    if-eqz v0, :cond_58

    :cond_48
    iget-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->rootView:Lcom/android/fileexplorer/view/EmptyTriggerRelativeLayout;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->rootView:Lcom/android/fileexplorer/view/EmptyTriggerRelativeLayout;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v3, v2}, Landroid/view/View;->setPadding(IIII)V

    :cond_58
    :goto_58
    return-void
.end method

.method public execute(Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;)V
    .registers 3

    if-nez p1, :cond_6

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void

    :cond_6
    const v0, 0x7f0a0074

    invoke-virtual {p1}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;->getActionId()I

    move-result p1

    if-ne v0, p1, :cond_12

    invoke-direct {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->runPrivateFolderLoaderTask()V

    :cond_12
    return-void
.end method

.method public getAbsoluteName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {p1, p2}, Lcom/android/fileexplorer/adapter/recycle/viewholder/c;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_17

    :cond_d
    invoke-static {p1}, Landroidx/activity/result/d;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-static {p1, v0, p2}, Lr1/f;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_17
    return-object p1
.end method

.method public getItem(I)Lcom/android/fileexplorer/model/FileInfo;
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/encryption/PrivateFile;

    invoke-virtual {p1}, Lcom/android/fileexplorer/encryption/PrivateFile;->getFilePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->getFileInfo(Ljava/lang/String;)Lcom/android/fileexplorer/model/FileInfo;

    move-result-object p1

    return-object p1
.end method

.method public getList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNavigationBar()Landroid/view/View;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getScrollView()Landroid/view/View;
    .registers 2

    const v0, 0x7f0a0362

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getSpanCount()I
    .registers 5

    invoke-virtual {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->getWindowWidth()I

    move-result v0

    const/16 v1, 0x140

    if-gt v0, v1, :cond_e

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->dealSpanCount(I)I

    move-result v0

    return v0

    :cond_e
    const/16 v1, 0x29e

    if-gt v0, v1, :cond_18

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->dealSpanCount(I)I

    move-result v0

    return v0

    :cond_18
    const/16 v1, 0x3c0

    if-ge v0, v1, :cond_22

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->dealSpanCount(I)I

    move-result v0

    return v0

    :cond_22
    const/16 v1, 0x4b0

    if-ge v0, v1, :cond_2c

    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->dealSpanCount(I)I

    move-result v0

    return v0

    :cond_2c
    const/16 v1, 0x9

    const/16 v2, 0x578

    if-ge v0, v2, :cond_37

    invoke-direct {p0, v1}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->dealSpanCount(I)I

    move-result v0

    return v0

    :cond_37
    const/16 v3, 0xc8

    invoke-static {v0, v2, v3, v1}, Landroidx/activity/result/d;->a(IIII)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->dealSpanCount(I)I

    move-result v0

    return v0
.end method

.method public getViewById(I)Landroid/view/View;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getWindowWidth()I
    .registers 2

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getWindowInfo()Lmiuix/core/util/WindowBaseInfo;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    :cond_8
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getWindowInfo()Lmiuix/core/util/WindowBaseInfo;

    move-result-object v0

    iget-object v0, v0, Lmiuix/core/util/WindowBaseInfo;->windowSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    invoke-static {v0, p0}, Lcom/android/fileexplorer/util/DisplayUtil;->px2dp(FLandroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public initDecoration()V
    .registers 9

    iget-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    iget-object v1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->gridDecoration:Landroidx/recyclerview/widget/g1;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/g1;)V

    invoke-direct {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->getColumnType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_76

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070713

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070246

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f070247

    invoke-static {v2}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0701df

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-static {v4}, Lcom/android/fileexplorer/util/FontUtils;->isLargestFont(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_49

    int-to-double v4, v1

    const-wide v6, 0x3ffe666666666666L  # 1.9

    :goto_46
    mul-double/2addr v4, v6

    double-to-int v1, v4

    goto :goto_58

    :cond_49
    iget-object v4, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-static {v4}, Lcom/android/fileexplorer/util/FontUtils;->isLargeThanGodzillaFont(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_58

    int-to-double v4, v1

    const-wide v6, 0x3ffb333333333333L  # 1.7

    goto :goto_46

    :cond_58
    :goto_58
    new-instance v4, Lcom/android/fileexplorer/recyclerview/decoration/GroupSpaceAroundDecoration;

    invoke-virtual {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->getSpanCount()I

    move-result v5

    invoke-direct {v4, v0, v1, v5}, Lcom/android/fileexplorer/recyclerview/decoration/GroupSpaceAroundDecoration;-><init>(III)V

    iput-object v4, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->gridDecoration:Landroidx/recyclerview/widget/g1;

    const/4 v0, 0x0

    invoke-virtual {v4, v3, v2, v0, v0}, Lcom/android/fileexplorer/recyclerview/decoration/GroupItemDecoration;->setMargin(IIII)V

    iget-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    iget-object v1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->gridDecoration:Landroidx/recyclerview/widget/g1;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/g1;)V

    iget-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mResultAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FilePrivateRecyclerAdapter;

    const/16 v1, 0x1f

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->setViewType(I)V

    goto :goto_7d

    :cond_76
    iget-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mResultAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FilePrivateRecyclerAdapter;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->setViewType(I)V

    :goto_7d
    iget-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->navigationBar:Landroid/widget/LinearLayout;

    const v1, 0x7f070275

    invoke-static {v1}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->navigationBar:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-static {v1}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v4, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->navigationBar:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public isBottomSheeShow()Z
    .registers 2

    const v0, 0x7f0a013f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public isShowFab()Z
    .registers 2

    sget-boolean v0, Lcom/android/fileexplorer/model/Config;->IS_PAD:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    invoke-super {p0}, Lcom/android/fileexplorer/activity/BaseActivity;->isShowFab()Z

    move-result v0

    return v0
.end method

.method public onActionModeChange(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->isActionMode:Z

    invoke-direct {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->updateTranslucent()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 9

    invoke-super {p0, p1, p2, p3}, Lcom/android/fileexplorer/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x68

    if-eq p1, v0, :cond_dc

    const/16 v0, 0x69

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq p1, v0, :cond_ba

    const/16 v0, 0x6b

    const/4 v3, 0x0

    if-eq p1, v0, :cond_b1

    const/16 v0, 0x6c

    if-eq p1, v0, :cond_ba

    const/16 v0, 0x70

    const-string v4, "android.intent.extra.STREAM"

    if-eq p1, v0, :cond_74

    const/16 v0, 0x71

    if-eq p1, v0, :cond_4b

    const/16 v0, 0x75

    if-eq p1, v0, :cond_38

    const/16 p3, 0x78

    if-eq p1, p3, :cond_2a

    goto/16 :goto_df

    :cond_2a
    if-ne p2, v1, :cond_df

    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.app.action.SET_NEW_PASSWORD"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_df

    :cond_38
    iput-boolean v2, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mUnlocked:Z

    if-ne p2, v1, :cond_df

    if-eqz p3, :cond_df

    const-string p1, "screenChanged"

    invoke-virtual {p3, p1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iget-object p2, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-static {p1, p2}, Lcom/android/fileexplorer/util/DeviceUtils;->imageBackEvent(ZLandroid/app/Activity;)V

    goto/16 :goto_df

    :cond_4b
    iput-boolean v2, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mUnlocked:Z

    if-eqz p3, :cond_df

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_df

    const-string p2, "/FileExplorer/.safebox"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_df

    iget-object p2, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/PrivateMultiChoiceCallback;

    invoke-virtual {p2}, Lcom/android/fileexplorer/adapter/recycle/modecallback/PrivateMultiChoiceCallback;->getCheckedFiles()Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_df

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_df

    invoke-static {p0, p2, p1}, Lcom/android/fileexplorer/encryption/EncryptUtil;->operationDecryptFiles(Landroid/app/Activity;Ljava/util/ArrayList;Ljava/lang/String;)V

    goto/16 :goto_df

    :cond_74
    iput-boolean v2, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mUnlocked:Z

    if-eqz p3, :cond_df

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_df

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_df

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8d
    :goto_8d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_a7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/net/Uri;

    invoke-virtual {p3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/android/fileexplorer/model/Util;->getFileInfo(Ljava/lang/String;)Lcom/android/fileexplorer/model/FileInfo;

    move-result-object p3

    if-eqz p3, :cond_8d

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8d

    :cond_a7
    iget-object p1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mFileOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    invoke-direct {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->getCurrentPath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, v3, p2, p3}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->addToPrivateFolder(ILjava/util/List;Ljava/lang/String;)V

    goto :goto_df

    :cond_b1
    if-ne p2, v1, :cond_b6

    invoke-static {v3}, Lcom/android/fileexplorer/model/SettingManager;->setNeedShowPatternDialog(Z)V

    :cond_b6
    invoke-direct {p0, p2}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->handleSetPwd(I)V

    goto :goto_df

    :cond_ba
    if-eq p2, v1, :cond_d9

    invoke-virtual {p0}, Lcom/android/fileexplorer/activity/BaseActivity;->isProgressShowing()Z

    move-result p1

    if-eqz p1, :cond_d5

    iput-boolean v2, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mUnlocked:Z

    iget-object p1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mFileNameList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->updateAdapter()V

    new-instance p1, Lcom/android/fileexplorer/activity/PrivateFolderActivity$11;

    invoke-direct {p1, p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity$11;-><init>(Lcom/android/fileexplorer/activity/PrivateFolderActivity;)V

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/activity/BaseActivity;->setOnProgressDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_df

    :cond_d5
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    goto :goto_df

    :cond_d9
    iput-boolean v2, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mUnlocked:Z

    goto :goto_df

    :cond_dc
    invoke-direct {p0, p2}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->handleSetPwd(I)V

    :cond_df
    :goto_df
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    invoke-direct {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->exitEditModeNotTimeInterval()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->isBottomSheeShow()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mInteractionHub:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_1d

    :cond_17
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->exitPastePrivateFiles()Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_1d
    return-void

    :cond_1e
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/fileexplorer/activity/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/j1;

    move-result-object p1

    instance-of p1, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz p1, :cond_27

    iget-object p1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/j1;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->getSpanCount()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    invoke-static {p0}, Lcom/android/fileexplorer/util/FontUtils;->isLargeFont(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_27

    iget-object p1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mResultAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FilePrivateRecyclerAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/x0;->notifyDataSetChanged()V

    :cond_27
    invoke-virtual {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->initDecoration()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-static {p0}, Lcom/android/fileexplorer/util/DeviceUtils;->isLargeScreenDevice(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_a
    invoke-super {p0, p1}, Lcom/android/fileexplorer/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x2000

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    const p1, 0x7f0d01f2

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    iput-object p0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    new-instance p1, Lcom/android/fileexplorer/filemanager/FileOperationManager;

    invoke-direct {p1, p0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)V

    iput-object p1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mFileOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    new-instance p1, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;

    const/16 v0, 0xa

    invoke-direct {p1, p0, p0, v0}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR$IFileInteractionListener;I)V

    iput-object p1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mInteractionHub:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;

    new-instance v0, Lcom/android/fileexplorer/model/PathSegment;

    const v1, 0x7f11040f

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/private"

    invoke-direct {v0, v1, v2}, Lcom/android/fileexplorer/model/PathSegment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0, v2}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->initPath(Lcom/android/fileexplorer/model/PathSegment;Ljava/lang/String;)V

    sget-object p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Private:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->generateCustomFabPreference()Lcom/android/fileexplorer/controller/FabPreference;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getFabPreference(Ljava/lang/String;Lcom/android/fileexplorer/controller/FabPreference;)Lcom/android/fileexplorer/controller/FabPreference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    iget-object p1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v0}, Lcom/android/fileexplorer/fragment/actionbar/CommonActionbarUtil;->initCategoryActionBar(Lmiuix/appcompat/app/AppCompatActivity;Lcom/android/fileexplorer/fragment/BaseFragment;Lcom/android/fileexplorer/controller/FabPreference;I)V

    iget-object p1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    if-eqz p1, :cond_d9

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/f;->setDisplayHomeAsUpEnabled(Z)V

    iget-object p1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    invoke-virtual {p1}, Lmiuix/appcompat/app/ActionBar;->getEndView()Landroid/view/View;

    move-result-object p1

    const v1, 0x7f0a003a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    invoke-virtual {v1}, Lmiuix/appcompat/app/ActionBar;->getEndView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a005b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f110523

    invoke-static {v0}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/android/fileexplorer/activity/PrivateFolderActivity$2;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity$2;-><init>(Lcom/android/fileexplorer/activity/PrivateFolderActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lcom/android/fileexplorer/activity/PrivateFolderActivity$3;

    invoke-direct {p1, p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity$3;-><init>(Lcom/android/fileexplorer/activity/PrivateFolderActivity;)V

    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    invoke-virtual {p1}, Lmiuix/appcompat/app/ActionBar;->getStartView()Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a00cc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_d9

    invoke-direct {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->isRootPath()Z

    move-result v0

    if-eqz v0, :cond_c6

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f11005f

    :goto_c1
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_ce

    :cond_c6
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110231

    goto :goto_c1

    :goto_ce
    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/android/fileexplorer/activity/PrivateFolderActivity$4;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity$4;-><init>(Lcom/android/fileexplorer/activity/PrivateFolderActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_d9
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->setActionModeAccessibility()V

    invoke-direct {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->initView()V

    invoke-static {p0}, Lcom/android/fileexplorer/util/PermissionUtils;->checkReadExternalStoragePermission(Landroid/content/Context;)Z

    move-result p1

    invoke-static {p1}, Lcom/android/fileexplorer/util/PermissionUtils;->setPermission(Z)V

    const p1, 0x7f0a0362

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AppCompatActivity;->registerCoordinateScrollView(Landroid/view/View;)V

    new-instance v0, Lcom/android/fileexplorer/util/NestedHeaderHelper;

    invoke-direct {v0}, Lcom/android/fileexplorer/util/NestedHeaderHelper;-><init>()V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/nestedheader/widget/NestedHeaderLayout;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/fileexplorer/util/NestedHeaderHelper;->registerNestedHeaderChangedListener(Lmiuix/nestedheader/widget/NestedHeaderLayout;Lmiuix/appcompat/app/ActionBar;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0014

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onDestroy()V
    .registers 3

    invoke-super {p0}, Lcom/android/fileexplorer/activity/BaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mRefreshSdcardFileTask:Landroid/os/AsyncTask;

    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    iget-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mUpdateTask:Landroid/os/AsyncTask;

    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    iget-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/EmptyView;->onDestroy()V

    :cond_14
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/model/PasteFileInstance;->clearPasteFiles()V

    iget-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mFileOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->onDestroy()V

    :cond_29
    iget-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mDsMenu:Lcom/android/fileexplorer/controller/DisplaySettingMenu;

    if-eqz v0, :cond_30

    invoke-virtual {v0}, Lcom/android/fileexplorer/controller/DisplaySettingMenu;->menuDismiss()V

    :cond_30
    iget-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mPadPopupMenuWindow:Lcom/android/fileexplorer/view/PadPopupMenuWindow;

    if-eqz v0, :cond_42

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mPadPopupMenuWindow:Lcom/android/fileexplorer/view/PadPopupMenuWindow;

    invoke-virtual {v0}, Lmiuix/popupwidget/widget/PopupWindow;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mPadPopupMenuWindow:Lcom/android/fileexplorer/view/PadPopupMenuWindow;

    :cond_42
    iget-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    if-eqz v0, :cond_4b

    iget-object v1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mActionBarTransitionListener:Lmiuix/appcompat/app/ActionBarTransitionListener;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ActionBar;->removeActionBarTransitionListener(Lmiuix/appcompat/app/ActionBarTransitionListener;)V

    :cond_4b
    return-void
.end method

.method public onDirectoryDisplayChanged(Z)V
    .registers 2

    return-void
.end method

.method public onEncrypted()V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->runPrivateFolderLoaderTask()V

    return-void
.end method

.method public onNewFolder()V
    .registers 1

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 6

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_100

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :sswitch_e
    invoke-virtual {p0, v1}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->onViewModeChanged(I)V

    goto :goto_65

    :sswitch_12
    invoke-virtual {p0, v2}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->onViewModeChanged(I)V

    goto :goto_65

    :sswitch_16
    sget-object p1, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->TYPE:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-direct {p0, p1, v2}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->onSortChanged(IZ)V

    goto :goto_65

    :sswitch_20
    sget-object p1, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->TYPE:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-direct {p0, p1, v1}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->onSortChanged(IZ)V

    goto :goto_65

    :sswitch_2a
    sget-object p1, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->SIZE:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-direct {p0, p1, v2}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->onSortChanged(IZ)V

    goto :goto_65

    :sswitch_34
    sget-object p1, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->SIZE:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-direct {p0, p1, v1}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->onSortChanged(IZ)V

    goto :goto_65

    :sswitch_3e
    sget-object p1, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->NAME:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-direct {p0, p1, v2}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->onSortChanged(IZ)V

    goto :goto_65

    :sswitch_48
    sget-object p1, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->NAME:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-direct {p0, p1, v1}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->onSortChanged(IZ)V

    goto :goto_65

    :sswitch_52
    sget-object p1, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->DATE:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-direct {p0, p1, v2}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->onSortChanged(IZ)V

    goto :goto_65

    :sswitch_5c
    sget-object p1, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->DATE:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-direct {p0, p1, v1}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->onSortChanged(IZ)V

    :goto_65
    return v2

    :sswitch_66
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->isFirstEnterPrivateFolder()Z

    move-result p1

    if-eqz p1, :cond_79

    invoke-static {v1}, Lcom/android/fileexplorer/model/SettingManager;->setFirstEnterPrivateFolder(Z)V

    const p1, 0x7f110416

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_79
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.settings"

    const-string v3, "com.android.settings.MiuiConfirmCommonPassword"

    invoke-direct {v0, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v0, "businessId"

    const-string v1, "file_explorer"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x78

    invoke-virtual {p0, p1, v0}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return v2

    :sswitch_97
    invoke-virtual {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->refresh()V

    return v2

    :sswitch_9b
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->hasPasteFileInfos()Z

    move-result p1

    if-eqz p1, :cond_c1

    new-instance p1, Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/model/PasteFileInstance;->getPasteFileInfos()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/model/PasteFileInstance;->isMoving()Z

    move-result v0

    xor-int/2addr v0, v2

    iget-object v1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mFileOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    invoke-direct {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->getCurrentPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, p1, v3}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->addToPrivateFolder(ILjava/util/List;Ljava/lang/String;)V

    goto :goto_d4

    :cond_c1
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->hasPastePrivateFiles()Z

    move-result p1

    if-eqz p1, :cond_d4

    iget-object p1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/PrivateMultiChoiceCallback;

    invoke-virtual {p1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/PrivateMultiChoiceCallback;->getCheckedFiles()Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->getCurrentPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/fileexplorer/encryption/EncryptUtil;->movePrivateFiles(Landroid/app/Activity;Ljava/util/ArrayList;Ljava/lang/String;)V

    :cond_d4
    :goto_d4
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/fileexplorer/model/PasteFileInstance;->clearPasteFiles()V

    invoke-virtual {p0, v2}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->setImmersionMenuEnabled(Z)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    return v2

    :sswitch_e2
    invoke-virtual {p0, v2}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->setImmersionMenuEnabled(Z)V

    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/fileexplorer/model/PasteFileInstance;->clearPasteFiles()V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    return v2

    :sswitch_f0
    iget-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mInteractionHub:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    return v1

    :sswitch_f6
    const/16 p1, 0x70

    invoke-static {p0, p1}, Lcom/android/fileexplorer/model/Util;->startPickPrivateActivityForResult(Landroid/app/Activity;I)V

    return v1

    :sswitch_fc
    invoke-virtual {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->onBackPressed()V

    return v2

    :sswitch_data_100
    .sparse-switch
        0x102002c -> :sswitch_fc
        0x7f0a0093 -> :sswitch_f6
        0x7f0a0366 -> :sswitch_f0
        0x7f0a039f -> :sswitch_e2
        0x7f0a03a0 -> :sswitch_9b
        0x7f0a03e7 -> :sswitch_97
        0x7f0a03ef -> :sswitch_66
        0x7f0a0464 -> :sswitch_5c
        0x7f0a0465 -> :sswitch_52
        0x7f0a0469 -> :sswitch_48
        0x7f0a046a -> :sswitch_3e
        0x7f0a046b -> :sswitch_34
        0x7f0a046c -> :sswitch_2a
        0x7f0a046f -> :sswitch_20
        0x7f0a0470 -> :sswitch_16
        0x7f0a0551 -> :sswitch_12
        0x7f0a0554 -> :sswitch_e
    .end sparse-switch
.end method

.method public onPause()V
    .registers 2

    invoke-super {p0}, Lcom/android/fileexplorer/activity/BaseActivity;->onPause()V

    iget-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/EmptyView;->onPause()V

    :cond_a
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mUnlocked:Z

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 6

    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    invoke-direct {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->hasPasteFileInfos()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_14

    invoke-direct {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->hasPastePrivateFiles()Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_14

    :cond_12
    move v0, v2

    goto :goto_15

    :cond_14
    :goto_14
    move v0, v1

    :goto_15
    const v3, 0x7f0a0093

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v3, 0x7f0a03e7

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v3, 0x7f0a0366

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v3, 0x7f0a039f

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v3, 0x7f0a03a0

    if-eqz v0, :cond_4a

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_51

    :cond_4a
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_51
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_7d

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz v0, :cond_61

    const v3, 0x7f11031e

    goto :goto_64

    :cond_61
    const v3, 0x7f110410

    :goto_64
    invoke-virtual {p1, v3}, Landroidx/appcompat/app/f;->setTitle(I)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/ActionBar;->getEndView()Landroid/view/View;

    move-result-object p1

    const v3, 0x7f0a003a

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz v0, :cond_7a

    const/16 v2, 0x8

    :cond_7a
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_7d
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->updateTranslucent()V

    return v1
.end method

.method public onPrivateFileChange(Lcom/android/fileexplorer/event/FileChangeEvent;)V
    .registers 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    iget-boolean v0, p1, Lcom/android/fileexplorer/event/FileChangeEvent;->refreshFile:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/android/fileexplorer/activity/BaseActivity;->isResume()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-boolean p1, p1, Lcom/android/fileexplorer/event/FileChangeEvent;->fromFolderClick:Z

    iput-boolean p1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mEventFromFolderClick:Z

    invoke-direct {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->runPrivateFolderLoaderTask()V

    :cond_12
    return-void
.end method

.method public onResponsiveLayout(Landroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;Z)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lmiuix/appcompat/app/AppCompatActivity;->onResponsiveLayout(Landroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;Z)V

    invoke-virtual {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->changeRootViewPadding()V

    invoke-direct {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->updateTranslucent()V

    return-void
.end method

.method public onResume()V
    .registers 6

    invoke-super {p0}, Lcom/android/fileexplorer/activity/BaseActivity;->onResume()V

    iget-boolean v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->isClickAPK:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    iput-boolean v1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->isClickAPK:Z

    return-void

    :cond_b
    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->isGrantPermission()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-static {p0}, Lcom/android/fileexplorer/FileExplorerTabActivity;->startToMainActivity(Landroid/app/Activity;)V

    goto/16 :goto_e8

    :cond_16
    iget-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/EmptyView;->onResume()V

    :cond_1d
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->isUnlocked()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_8e

    iget-boolean v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mIsFirstEnter:Z

    if-eqz v0, :cond_2a

    iput-boolean v1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mIsFirstEnter:Z

    :cond_2a
    invoke-static {}, Lcom/android/fileexplorer/encryption/EncryptUtil;->isSupportAuthUser()Z

    move-result v0

    if-nez v0, :cond_4b

    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isFoldDevice()Z

    move-result v0

    if-nez v0, :cond_3c

    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isPhone()Z

    move-result v0

    if-eqz v0, :cond_4b

    :cond_3c
    invoke-static {p0}, Lcom/android/fileexplorer/util/DeviceUtils;->isFreeFormScreen(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-static {p0}, Lcom/android/fileexplorer/encryption/EncryptUtil;->getACLockType(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v2, :cond_4b

    invoke-direct {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->unlockPattern()V

    :cond_4b
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->hasPasteFileInfos()Z

    move-result v0

    if-nez v0, :cond_5a

    invoke-direct {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->hasPastePrivateFiles()Z

    move-result v0

    if-eqz v0, :cond_58

    goto :goto_5a

    :cond_58
    move v0, v1

    goto :goto_5b

    :cond_5a
    :goto_5a
    move v0, v2

    :goto_5b
    xor-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->setImmersionMenuEnabled(Z)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    iget-boolean v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mIsProgressing:Z

    if-nez v0, :cond_8a

    invoke-static {}, Lcom/android/fileexplorer/encryption/DirOperationUtil;->getExternalPrivateRootDir()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/fileexplorer/encryption/DirOperationUtil;->getSDPrivateRootDir()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->isUsingAndroidID()Z

    move-result v3

    if-eqz v3, :cond_8a

    iget-object v3, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mUpdateTask:Landroid/os/AsyncTask;

    invoke-static {v3}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    new-instance v3, Lcom/android/fileexplorer/activity/PrivateFolderActivity$9;

    invoke-direct {v3, p0, v0, v2}, Lcom/android/fileexplorer/activity/PrivateFolderActivity$9;-><init>(Lcom/android/fileexplorer/activity/PrivateFolderActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getIOExecutors()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v3, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mUpdateTask:Landroid/os/AsyncTask;

    :cond_8a
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->runPrivateFolderLoaderTask()V

    goto :goto_e8

    :cond_8e
    invoke-static {p0}, Lcom/android/fileexplorer/encryption/EncryptUtil;->getACLockType(Landroid/content/Context;)I

    move-result v0

    const-string v3, "onresume: "

    const-string v4, "PrivateFolderActivity"

    invoke-static {v3, v0, v4}, Landroidx/activity/result/d;->x(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v3, -0x1

    if-ne v0, v3, :cond_d5

    :try_start_9c
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->isFirstEnterPrivateFolder()Z

    move-result v0

    if-eqz v0, :cond_af

    invoke-static {v1}, Lcom/android/fileexplorer/model/SettingManager;->setFirstEnterPrivateFolder(Z)V

    const v0, 0x7f110416

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_af
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.MiuiConfirmCommonPassword"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "businessId"

    const-string v2, "file_explorer"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x69

    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_cc} :catch_cd

    goto :goto_e8

    :catch_cd
    const-string v0, "Encryption"

    const-string v1, "Cannot use gesture function, mi sdk version is not correct!"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e8

    :cond_d5
    if-nez v0, :cond_e3

    iget-boolean v1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mRequestingSetPwd:Z

    if-nez v1, :cond_e3

    iput-boolean v2, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mRequestingSetPwd:Z

    const/16 v0, 0x6b

    invoke-static {p0, v0}, Lcom/android/fileexplorer/encryption/EncryptUtil;->requestSetPwd(Landroid/app/Activity;I)V

    goto :goto_e8

    :cond_e3
    if-ne v0, v2, :cond_e8

    invoke-direct {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->unlockPattern()V

    :cond_e8
    :goto_e8
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSearch(I)V
    .registers 2

    return-void
.end method

.method public onShowSortMenu(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mPadPopupMenuWindow:Lcom/android/fileexplorer/view/PadPopupMenuWindow;

    if-nez v0, :cond_12

    new-instance v0, Lcom/android/fileexplorer/view/PadPopupMenuWindow;

    iget-object v1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    invoke-direct {v0, p0, v1}, Lcom/android/fileexplorer/view/PadPopupMenuWindow;-><init>(Landroid/content/Context;Lcom/android/fileexplorer/controller/FabPreference;)V

    iput-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mPadPopupMenuWindow:Lcom/android/fileexplorer/view/PadPopupMenuWindow;

    :cond_12
    iget-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mPadPopupMenuWindow:Lcom/android/fileexplorer/view/PadPopupMenuWindow;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/view/PadPopupMenuWindow;->showPopupwindow(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mPadPopupMenuWindow:Lcom/android/fileexplorer/view/PadPopupMenuWindow;

    new-instance v0, Lcom/android/cloud/fragment/presenter/f;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Lcom/android/cloud/fragment/presenter/f;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/view/PadPopupMenuWindow;->setOnItemClickListener(Lcom/android/fileexplorer/view/PadPopupMenuWindow$OnItemClickListener;)V

    return-void
.end method

.method public onSortMethodChanged(Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;)V
    .registers 3

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    sget-object v0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->CATEGROY_KEY:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getFabPreference(Ljava/lang/String;)Lcom/android/fileexplorer/controller/FabPreference;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/fileexplorer/controller/FabPreference;->isReverse:Z

    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->onSortChanged(IZ)V

    return-void
.end method

.method public onSortOrderChanged(Z)V
    .registers 3

    sget-object v0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->CATEGROY_KEY:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getFabPreference(Ljava/lang/String;)Lcom/android/fileexplorer/controller/FabPreference;

    move-result-object v0

    iget v0, v0, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    invoke-direct {p0, v0, p1}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->onSortChanged(IZ)V

    return-void
.end method

.method public onViewModeChanged(I)V
    .registers 6

    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Private:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/fileexplorer/controller/FabPreference;

    invoke-direct {v1}, Lcom/android/fileexplorer/controller/FabPreference;-><init>()V

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    sget-object v3, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->NAME:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    iput v3, v1, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    iput-boolean v2, v1, Lcom/android/fileexplorer/controller/FabPreference;->isReverse:Z

    invoke-static {v0, v1}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getFabPreference(Ljava/lang/String;Lcom/android/fileexplorer/controller/FabPreference;)Lcom/android/fileexplorer/controller/FabPreference;

    move-result-object v1

    iput p1, v1, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    invoke-static {v0, v1}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->putFabPreference(Ljava/lang/String;Lcom/android/fileexplorer/controller/FabPreference;)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/ActionBar;->getEndView()Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a0066

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const v0, 0x7f080383

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget p1, v1, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_47

    new-instance p1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->getSpanCount()I

    move-result v1

    invoke-direct {p1, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(I)V

    goto :goto_4c

    :cond_47
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>()V

    :goto_4c
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/j1;)V

    invoke-virtual {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->initDecoration()V

    iget-object p1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mResultAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FilePrivateRecyclerAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/x0;->notifyDataSetChanged()V

    return-void
.end method

.method public onViewTypeChange(Landroid/widget/ImageView;)V
    .registers 2

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->showDisplaySettingMenu(Landroid/widget/ImageView;)V

    return-void
.end method

.method public onViewTypeChange(Landroid/widget/ImageView;II)V
    .registers 4

    .line 1
    return-void
.end method

.method public refresh()V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->runPrivateFolderLoaderTask()V

    return-void
.end method

.method public setImmersionMenuEnabled(Z)V
    .registers 4

    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setImmersionMenuEnabled(Z)V

    iput-boolean p1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->ImmersionMenuEnabled:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setImmersionMenuEnabled enable = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PrivateFolderActivity"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->setFabMenuLayoutVisibility(Z)V

    return-void
.end method

.method public showDisplaySettingMenu(Landroid/widget/ImageView;)V
    .registers 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "page_type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "page_category"

    sget-object v2, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->CATEGROY_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/android/fileexplorer/controller/DisplaySettingMenu;

    invoke-direct {v1, p0, p1}, Lcom/android/fileexplorer/controller/DisplaySettingMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mDsMenu:Lcom/android/fileexplorer/controller/DisplaySettingMenu;

    invoke-virtual {v1, p0}, Lcom/android/fileexplorer/controller/DisplaySettingMenu;->setDisplayChangeListener(Lcom/android/fileexplorer/fragment/callback/IActionListener;)V

    iget-object p1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mDsMenu:Lcom/android/fileexplorer/controller/DisplaySettingMenu;

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/controller/DisplaySettingMenu;->initBundleData(Landroid/os/Bundle;)V

    return-void
.end method

.method public sortCurrentList()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mSortTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mFileNameList:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Lcom/android/fileexplorer/activity/PrivateFolderActivity$10;

    invoke-direct {v1, p0, v0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity$10;-><init>(Lcom/android/fileexplorer/activity/PrivateFolderActivity;Ljava/util/ArrayList;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->mSortTask:Landroid/os/AsyncTask;

    return-void
.end method
