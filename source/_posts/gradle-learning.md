title: Android开发之Gradle构建你的App
categories:
  - Android
tags:
  - Gradle  
feature: image/gradle-logo.png
toc: true
date: 2015-04-22
---
本文记录了Android开发中使用Gradle的一系列教程，适用于新手上路，大神请勿喷！
<!--more-->

### gradle基础
[StormZhang的博文: gradle 基础](http://stormzhang.com/devtools/2014/12/18/android-studio-tutorial4/)
### gradle快速编译github上的开源项目####

当你在github上浏览到感兴趣的项目时，想在自己手机上体验一下，有的项目可能已经提
供Demo下载，可有的却没有怎么办？不用担心，相信你看完本节后，再也不用担心这个问
题了。

首先，你得git clone 到本地任意目录，然后注意一下三点：

**1.local.properties文件**

在项目根目录下新建 local.properties文件(可以从AndroidStudio构建过的项目中直接拷贝)，文件内容为你的SDK的本地目录，例如：  

    sdk.dir=D\:\\Workshop\\android-sdk-windows
**2.项目根目录的build.gradle**

检查其AS版本与你本地的AS版本是否相同，不同则改为你AS的版本号。例如：
```json
dependencies {
        classpath 'com.android.tools.build:gradle:1.1.0'
```
**3.app目录下的build.gradle**

检查compileSdkVersion 、minSdkVersion 、 targetSdkVersion 、 buildToolsVersion 的版本号自己的SDK中有没有，没有的话用SDKManager去下载需要的版本。例如：
```
android {
    compileSdkVersion 22
    buildToolsVersion "20.0.0"
}
```
以上三步没有问题之后，就开始Build了。(以Windows平台为例)  
<1>定位到你要构建的项目的根目录

    D:\MyApplication>
<2>执行gradlew build 命令  

    D:\MyApplication>gradlew build
稍等片刻，你就会看到Build Success的信息，去build目录找到apk文件就可以安装到手机上体验了。
>如果build failed 不要担心，从命令行里查看是什么原因，再具体解决即可


###gradle优化技巧###
[码农明明桑的博文:  加速Android Studio/Gradle构建 ](http://blog.isming.me/2015/03/18/android-build-speed-up/)

更多gradle 使用教程不断更新中，欢迎关注！