.class Lcom/android/server/wm/MoveWindowService$2;
.super Lcom/android/server/wm/MoveWindowService$SimpleAnimatorListener;
.source "MoveWindowService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/MoveWindowService;->moveWinDown(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/MoveWindowService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/MoveWindowService;Lcom/android/server/wm/MoveWindowService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/MoveWindowService;
    .param p2, "this$0_1"    # Lcom/android/server/wm/MoveWindowService;

    .prologue
    iput-object p2, p0, Lcom/android/server/wm/MoveWindowService$2;->this$0:Lcom/android/server/wm/MoveWindowService;

    invoke-direct {p0, p1}, Lcom/android/server/wm/MoveWindowService$SimpleAnimatorListener;-><init>(Lcom/android/server/wm/MoveWindowService;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/MoveWindowService$2;->this$0:Lcom/android/server/wm/MoveWindowService;

    invoke-static {v0}, Lcom/android/server/wm/MoveWindowService;->-wrap1(Lcom/android/server/wm/MoveWindowService;)V

    iget-object v0, p0, Lcom/android/server/wm/MoveWindowService$2;->this$0:Lcom/android/server/wm/MoveWindowService;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/wm/MoveWindowService;->windowDownAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/MoveWindowService$2;->this$0:Lcom/android/server/wm/MoveWindowService;

    invoke-static {v0}, Lcom/android/server/wm/MoveWindowService;->-wrap1(Lcom/android/server/wm/MoveWindowService;)V

    iget-object v0, p0, Lcom/android/server/wm/MoveWindowService$2;->this$0:Lcom/android/server/wm/MoveWindowService;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/wm/MoveWindowService;->windowDownAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method
