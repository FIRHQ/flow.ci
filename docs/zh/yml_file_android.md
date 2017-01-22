## YML 配置文件构建 Andorid 项目（beta）

### 支持的 JDK 版本

* JDK 7:

```yaml
language: android
version: jdk8
```

* JDK 8: 

```yaml
language: android
version: jdk8
```


### 预装的工具

* Maven 3.3.9
* Ant 1.9.3
* Gradle 2.10

### 可支持的插件

#### Android 构建:

* `android_init` 安卓环境初始化
* `android_build`使用 Gradle 构建安卓项目

#### 安卓模拟器:

`android_emulator` 

Android SDK:

可以使用 `FLOW_ANDROID_SDK_VERSION` 作为输入

- `android-10`
- `android-14`
- `android-15`
- `android-16`
- `android-17`
- `android-18`
- `android-19`
- `android-21`
- `android-22`
- `android-23`

Android CPU:

可以使用 `FLOW_ANDROID_CPU_VERSION` 作为输入

- `armeabi-v7a`
- `x86`
- `mips`

Example:

```yaml
name: android emulator
plugin:
  name: android_emulator
  inputs:
    - FLOW_ANDROID_SDK_VERSION=android-23
    - FLOW_ANDROID_CPU_VERSION=armeabi-v7a

```

#### 插件:

* `android_infer_plugin` Infer 代码质量检查工具
* `gradlew_plugin`

#### Git:

* `git` 从 Git 仓库中克隆代码

### CI Example

构建一个安卓项目，项目目录为 Git 根目录下的 MPAndoridChart 文件夹

```yaml
flows:
  - name: default
    language: android
    version: jdk8
    env:
      - FLOW_PROJECT_PATH=./MPAndroidChart
    
    trigger:
      push:
        - develop
        - master
      pull_request: true
      
    steps:
      - name: Init
        plugin:
          name: android_init
          
      - name: Git Clone
        plugin:
          name: git
          
      - name: Build
        plugin:
          name: android_build
          
      - name: 模拟器
        plugin:
          name: android_emulator
          inputs:
            - FLOW_ANDROID_SDK_VERSION=android-23
            - FLOW_ANDROID_CPU_VERSION=armeabi-v7a
          
      - name: Infer
        plugin:
          name: android_infer_plugin
```