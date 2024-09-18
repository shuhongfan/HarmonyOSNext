import { AbilityConstant, UIAbility, Want } from '@kit.AbilityKit';
import { hilog } from '@kit.PerformanceAnalysisKit';
import { window } from '@kit.ArkUI';

export default class TwoAbility extends UIAbility {
  // 当 Ability 创建时
  onCreate(want: Want, launchParam: AbilityConstant.LaunchParam): void {
    hilog.info(0x0000, 'itheimaTag', '%{public}s', 'Ability onCreate');
  }
  // 当 Ability 销毁时
  onDestroy(): void {
    hilog.info(0x0000, 'itheimaTag', '%{public}s', 'Ability onDestroy');
  }

  // 当界面舞台搭建时
  onWindowStageCreate(windowStage: window.WindowStage): void {
    // Main window is created, set main page for this ability
    hilog.info(0x0000, 'itheimaTag', '%{public}s', 'Ability onWindowStageCreate');

    windowStage.loadContent('pages/TwoPage', (err) => {
      if (err.code) {
        hilog.error(0x0000, 'testTag', 'Failed to load the content. Cause: %{public}s', JSON.stringify(err) ?? '');
        return;
      }
      hilog.info(0x0000, 'testTag', 'Succeeded in loading the content.');
    });
  }

  onWindowStageDestroy(): void {
    // Main window is destroyed, release UI related resources
    hilog.info(0x0000, 'itheimaTag', '%{public}s', 'Ability onWindowStageDestroy');
  }

  // 当切换到前台(呈现出来了)
  onForeground(): void {
    // Ability has brought to foreground
    hilog.info(0x0000, 'itheimaTag', '%{public}s', 'Ability onForeground');
  }
  // 当切换到后台(比如: 回到桌面, 或者 切换其他任务)
  onBackground(): void {
    // Ability has back to background
    hilog.info(0x0000, 'itheimaTag', '%{public}s', 'Ability onBackground');
  }
}
