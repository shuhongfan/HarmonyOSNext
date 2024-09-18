import { AbilityConstant, UIAbility, Want } from '@kit.AbilityKit';
import { hilog } from '@kit.PerformanceAnalysisKit';
import { window } from '@kit.ArkUI';

export default class EntryAbility extends UIAbility {
  onCreate(want: Want, launchParam: AbilityConstant.LaunchParam): void {
    hilog.info(0x0000, 'itheimaTag', '%{public}s', 'EntryAbility onCreate');
  }
  onDestroy(): void {
    hilog.info(0x0000, 'itheimaTag', '%{public}s', 'EntryAbility onDestroy');
  }

  // 当窗口舞台创建的时候
  onWindowStageCreate(windowStage: window.WindowStage): void {
    // Main window is created, set main page for this ability
    hilog.info(0x0000, 'itheimaTag', '%{public}s', 'EntryAbility onWindowStageCreate');

    // 一个 ability 可以有多个页面, 互相跳转 → 配置加载哪个页面
    windowStage.loadContent('pages/Index', (err) => {
      if (err.code) {
        hilog.error(0x0000, 'itheimaTag', 'Failed to load the content. Cause: %{public}s', JSON.stringify(err) ?? '');
        return;
      }
      hilog.info(0x0000, 'itheimaTag', 'Succeeded in loading the content.');
    });
  }
  onWindowStageDestroy(): void {
    // Main window is destroyed, release UI related resources
    hilog.info(0x0000, 'itheimaTag', '%{public}s', 'EntryAbility onWindowStageDestroy');
  }


  onForeground(): void {
    // Ability has brought to foreground
    hilog.info(0x0000, 'itheimaTag', '%{public}s', 'EntryAbility onForeground');
  }
  onBackground(): void {
    // Ability has back to background
    hilog.info(0x0000, 'itheimaTag', '%{public}s', 'EntryAbility onBackground');
  }
}
