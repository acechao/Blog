title: HTML学习记录
date: 2015-03-20
---

##HTML标签
<!--more-->
####1、导航链接  
<nav>
<a href="/html/">HTML</a> 
<a href="/css/">CSS</a> 
<a href="/js/">JavaScript</a> 
<a href="/jquery/">jQuery</a>
</nav>     
####2、定义文档中的节  
<section>
  <h4>WWF</h4>
  <p>The World Wide Fund for Nature (WWF) is an international organization working on issues regarding the conservation, research and restoration of the environment, formerly named the World Wildlife Fund. WWF was founded in 1961.</p>
</section>
####3、

####4、
<article>
  <h1>Internet Explorer 9</h1>
  <p>Windows Internet Explorer 9 (abbreviated as IE9) was released to
  the  public on March 14, 2011 at 21:00 PDT.....</p>
</article> 
  
 
####5、列表
<ul class="fa-ul">
  <li><i class="fa-li fa fa-check-square"></i>List icons</li> 
<p>男，天蝎座，单身待解救    <br>
就读于湘潭大学电子专业，2011级本科</p>
  <li><i class="fa-li fa fa-check-square"></i>can be used</li>
  <li><i class="fa-li fa fa-spinner fa-spin"></i>as bullets</li>
  <li><i class="fa-li fa fa-square"></i>in lists</li>
</ul>

#CSS
##1.选择器的总结
标签选择器: 所有标签
     p{
  
     }

类选择器  ：标签中定义类
     .className{

       }

id选择器： 标签中定义id  <h3>有且只能有一个</h3>
     #idName{


   }
子选择器：<h3>直接后代</h3>
     p>span{ 

       }
后代选择器：<h3>所有后代</h3>
      p span{
  
                              
      }
通用选择器：所有标签元素都起作用

*{
  
}
  
分组选择器：为几个标签设置相同的样式

h1,span{}
==
h1{}
span{}   

#2.Css盒子模型
![盒子模型3D图]()
块级元素和行内元素都属于盒子模型。
盒子模型的属性：margin（外边距）、border（边框）、padding（内边距）、content（内容）
每个属性都有四个方向：top、left、right、bottom。
知识点：
（1）盒子模型一列布局 水平居中：
    margin:0 auto;    

 (2) 多列布局

 （2.1）浮动布局
  float属性   
  将元素设置float属性后，会影响紧邻其后的元素的布局；

  将受影响的元素清除浮动
  clear：both； 或者    width：100%; overflow: hidden;  

##使用float属性实现两列布局：一个设置left，一个设置right
  (2.2)绝对定位和相对定位
    position: absulote or relative;

##使用绝对定位实现两列布局：左侧宽度固定，右侧宽度自适应(固定宽度的列高度>自适应列的高度)
````
    右侧布局的父布局设置relative，其设置absulate，再设置偏移量，再设置外边距
````
相对定位两种情况：
1、无父布局： 设置偏移量后是相对于跟标签<html>
2、有父布局： 相对于其父布局偏移
