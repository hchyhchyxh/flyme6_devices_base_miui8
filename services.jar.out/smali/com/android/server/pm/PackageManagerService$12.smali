.class Lcom/android/server/pm/PackageManagerService$12;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver2;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$flags:I

.field final synthetic val$observer:Landroid/content/pm/IPackageDeleteObserver2;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver2;II)V
    .locals 0

    .prologue
    .line 13104
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$12;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$12;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$12;->val$observer:Landroid/content/pm/IPackageDeleteObserver2;

    iput p4, p0, Lcom/android/server/pm/PackageManagerService$12;->val$userId:I

    iput p5, p0, Lcom/android/server/pm/PackageManagerService$12;->val$flags:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 13106
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$12;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-virtual {v2, p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 13108
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$12;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$12;->val$packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$12;->val$observer:Landroid/content/pm/IPackageDeleteObserver2;

    invoke-static {v2, v3, v4}, Lcom/android/server/pm/PackageManagerServiceInjector;->protectAppFromDeleting(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 13123
    :goto_0
    return-void

    .line 13113
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$12;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$12;->val$packageName:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/pm/PackageManagerService$12;->val$userId:I

    iget v5, p0, Lcom/android/server/pm/PackageManagerService$12;->val$flags:I

    # invokes: Lcom/android/server/pm/PackageManagerService;->deletePackageX(Ljava/lang/String;II)I
    invoke-static {v2, v3, v4, v5}, Lcom/android/server/pm/PackageManagerService;->access$5100(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;II)I

    move-result v1

    .line 13114
    .local v1, "returnCode":I
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$12;->val$observer:Landroid/content/pm/IPackageDeleteObserver2;

    if-eqz v2, :cond_1

    .line 13116
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$12;->val$observer:Landroid/content/pm/IPackageDeleteObserver2;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$12;->val$packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v1, v4}, Landroid/content/pm/IPackageDeleteObserver2;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13122
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$12;->val$packageName:Ljava/lang/String;

    invoke-static {v2, v1, v6}, Lcom/android/server/pm/PackageManagerServiceInjector;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 13117
    :catch_0
    move-exception v0

    .line 13118
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "PackageManager"

    const-string v3, "Observer no longer exists."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method