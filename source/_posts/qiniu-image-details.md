title: 七牛云图片处理教程
categories: 七牛云
tags: 图片处理
date: 2014-11-05
toc: true

---
本篇文章主讲七牛云图片处理的相关原理。
处理方式，**在下载URL后附加处理指令**，规则如下：
```
    http://<Bucket>.qiniudn.com/<Key>?<Fop>
    或
     http://<Domain>/<Key>?<Fop>  
```  
<!--more-->  
###缩略图



><b> imageView2是简化的图片处理接口，提供有限的图片处理功能  </b>

 以下面这张图做示例.原图（320*400）：  

![](http://dn-acechao.qbox.me/可儿.jpg?imageView2/1/w/320/h/400)  

如想获得150x150的**居中裁剪缩略图**，可将下载URL写成如下形式：
```  
    http://dn-acechao.qbox.me/errno-404?imageView2/1/w/150/h/150  
 ```    

问号后的部分是具体处理规格：  
```  
    注释 :
    imageView2/1指定使用imageView2处理接口的1号模式；“1”可以换成2、3、具体区别自己试试
    w参数限定缩略图的宽度；
    h参数限定缩略图的长度。  
```    
处理结果:  
![](http://dn-acechao.qbox.me/可儿.jpg?imageView2/1/w/150/h/150)
###裁剪
><b>七牛云存储还提供名为imageMogr2的处理接口，支持更丰富的处理功能。</b>

比如想获得**正上方的裁剪缩略图**时，可将下载URL写成如下形式：
```  
    ?imageMogr2/thumbnail/300x300/gravity/North/crop/300x185
```  
其中，
```  
    imageMogr2指定使用imageMogr2处理接口；
    thumbnail参数指定第一步先进行全图缩略，尺寸为300x300；
    gravity参数将裁剪锚点定位到正上方（也即TopCenter）；
    crop参数指示第二步对缩略图进行裁剪，尺寸为300x185。
```  
实际效果如下图所示：  

![](http://dn-acechao.qbox.me/可儿.jpg?imageMogr2/thumbnail/300x300/gravity/North/crop/300x185)


注意：该接口的各个指令参数是以书写顺序来逐步处理数据的。

###文字水印

要给图片打上水印也很方便。以文字水印为例：   
```   
    http://dn-acechao.qbox.me/可儿.jpg?watermark/2/text/54mb5bCP5LiD/gravity/SouthEast/fontsize/600    
```  
其中，
```  
    watermark/2指定使用watermark处理接口的2号模式，即文字水印；
    text参数给出文字内容，经过UrlSafe-Base64编码；
    gravity参数指定水印锚点，此处设置在原图右下角；
    fontsize参数指定字号，此处为600。
```  
实际效果如下图所示：
![](http://dn-acechao.qbox.me/可儿.jpg?imageView2/1/w/480/h/320/q/95/format/JPEG|watermark/2/text/YWNlY2hhby5naXRodWIuaW8=/font/5b6u6L2v6ZuF6buR/fontsize/600/fill/I0ZGRkZGRg==/dissolve/100/gravity/SouthEast/dx/10/dy/10)  
特别说明
```  
    本文所使用的图片处理接口都属于同步调用，计算过程会产生些许延迟，通常可以忽略不计；
    为加速下载，处理结果将被七牛云自动缓存，不计入存储空间，过期将失效并在下一次访问时重新处理。
```  