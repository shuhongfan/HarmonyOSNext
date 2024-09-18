/*
 * Copyright (c) 2023 Huawei Device Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import hilog from '@ohos.hilog';
import { BusinessError } from '@ohos.base';
import UIAbility from '@ohos.app.ability.UIAbility';
import TestRunner from '@ohos.application.testRunner';
import AbilityDelegatorRegistry from '@ohos.app.ability.abilityDelegatorRegistry';
import Want from '@ohos.app.ability.Want';
import resourceManager from '@ohos.resourceManager';
import util from '@ohos.util';

let abilityDelegator: AbilityDelegatorRegistry.AbilityDelegator;
let abilityDelegatorArguments: AbilityDelegatorRegistry.AbilityDelegatorArgs;
let jsonPath: string = 'mock/mock-config.json';
let tag: string = 'testTag'; //日志标识字符串,作为tag标识当前runner类下的测试行为
let domain: number = 0x0000; //日志标识,0x0000作为测试框架的业务标识

async function onAbilityCreateCallback(data: UIAbility) {
  hilog.info(domain, tag, 'onAbilityCreateCallback, data: ${}', JSON.stringify(data));
}

async function addAbilityMonitorCallback(err: BusinessError) {
  hilog.info(domain, tag, 'addAbilityMonitorCallback : %{public}s', JSON.stringify(err) ?? '');
}

export default class OpenHarmonyTestRunner implements TestRunner {
  constructor() {
  }

  onPrepare() {
    hilog.info(domain, tag, '%{public}s', 'OpenHarmonyTestRunner OnPrepare');
  }

  async onRun() {
    hilog.info(domain, tag, '%{public}s', 'OpenHarmonyTestRunner onRun run');
    abilityDelegatorArguments = AbilityDelegatorRegistry.getArguments()
    abilityDelegator = AbilityDelegatorRegistry.getAbilityDelegator()
    let moduleName = abilityDelegatorArguments.parameters['-m'];
    let context = abilityDelegator.getAppContext().getApplicationContext().createModuleContext(moduleName);
    let mResourceManager = context.resourceManager;
    checkMock(abilityDelegator, mResourceManager);
    const bundleName = abilityDelegatorArguments.bundleName;
    const testAbilityName: string = 'TestAbility';
    let lMonitor: AbilityDelegatorRegistry.AbilityMonitor = {
      abilityName: testAbilityName,
      onAbilityCreate: onAbilityCreateCallback,
    };
    abilityDelegator.addAbilityMonitor(lMonitor, addAbilityMonitorCallback)
    const want: Want = {
      bundleName: bundleName,
      abilityName: testAbilityName
    };
    abilityDelegator.startAbility(want, (err: BusinessError, data: void) => {
      hilog.info(domain, tag, 'startAbility : err : %{public}s', JSON.stringify(err) ?? '');
      hilog.info(domain, tag, 'startAbility : data : %{public}s', JSON.stringify(data) ?? '');
    })
    hilog.info(domain, tag, '%{public}s', 'OpenHarmonyTestRunner onRun end');
  }
}

function checkMock(abilityDelegator: AbilityDelegatorRegistry.AbilityDelegator, resourceManager: resourceManager.ResourceManager) {
  let rawFile: Uint8Array;
  try {
    rawFile = resourceManager.getRawFileContentSync(jsonPath);
    hilog.info(domain, tag, 'MockList file exists');
    let mockStr: string = util.TextDecoder.create("utf-8", { ignoreBOM: true }).decodeWithStream(rawFile);
    let mockMap: Record<string, string> = getMockList(mockStr);
    try {
      abilityDelegator.setMockList(mockMap)
    } catch (error) {
      let code = (error as BusinessError).code;
      let message = (error as BusinessError).message;
      hilog.error(domain, tag, `abilityDelegator.setMockList failed, error code: ${code}, message: ${message}.`);
    }
  } catch (error) {
    let code = (error as BusinessError).code;
    let message = (error as BusinessError).message;
    hilog.error(domain, tag, `ResourceManager:callback getRawFileContent failed, error code: ${code}, message: ${message}.`);
  }
}

function getMockList(jsonStr: string) {
  let jsonObj: Record<string, Object> = JSON.parse(jsonStr);
  let map: Map<string, object> = new Map<string, object>(Object.entries(jsonObj));
  let mockList: Record<string, string> = {};
  map.forEach((value: object, key: string) => {
    let realValue: string = value['source'].toString();
    mockList[key] = realValue;
  });
  hilog.info(domain, tag, '%{public}s', 'mock-json value:' + JSON.stringify(mockList) ?? '');
  return mockList;
}