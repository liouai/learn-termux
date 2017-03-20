# learn-termux
RE:从零开始的termux学习生活

## 前言 ##
>Termux是一款强大的安卓终端模拟APP，无需root直接启动，自动安装最小化linux系统，使用APT作为包管理工具并提供各种各样的软件包。
高级终端Termux组合了强大的终端模拟和拓展Linux包收集支持。
• 享受bash 和 zsh。
• 使用nano 和 vim编辑文件。
• 通过ssh访问服务器。
• 使用gcc和clang编译代码。
• 使用python控制台来作为口袋计算器。
• 使用git 和 subversion检查项目。
• 使用frotz运行基于文本的游戏。
[官方网站][https://termux.com/]

这个应用真的很有意思，不过新手折腾起来真心费劲，我在之前并没有相关知识，完全的从零开始。一大堆之前从未接触过的概念直接甩在脸上，让我相当蒙逼。在这里把我折腾这个应用的经历写一写，也是展示一下我要了解一个完全陌生的领域时的思路和方法。同时也给后来的人一些参考吧。当然我现在对这个应用的理解依然不够深，之后还会进行补充。顺带一提我这篇文章完全是在termux里完成+上传的。

## 第一章 一切歧途，自此而始 ##

#### 1.1 termux的安装 ####

软件的下载推荐去下面的三个地方。酷安基本上是国内最良心的应用市场了吧，如果出现问题在评论区里留言也有热心的酷友帮忙解决，真的很不错。当然如果你有条件翻墙的话也是很推荐去play下。搜索termux除了能找到本体，还有各种插件。可以根据介绍按需下载。f-droid是开源应用的应用市场，同样可以下载插件，而且无需翻墙。

1. [酷安][http://www.coolapk.com/apk/com.termux]
2. [Google play][https://play.google.com/store/apps/details?id=com.termux]
3. [f-droid][https://f-droid.org/repository/browse/?fdid=com.termux]

下载后你会发现termux的安装包仅仅只有172.71K。你可能会惊讶:这么小的体积是如何实现这么多功能的？其实更多的功能还需要通过自带的一个包管理器来下载和安装。所以配置时是必须要联网的。当然现在的我是有网络的，所以直接安装就行了。完成后打开看见的没有配置过的termux是这样的……
![假装这里有图片](./pic/1)
可以看到上面出现了几行termux的介绍，而且界面看起来很简陋。不过之后经过设置可以更改，这里就先不做介绍。现在先试试一些基本的操作。

比如说用ls查看一下目录，可以看到现在只有一个文件夹。这里推荐一个tree命令，他可以以树形结构显示文件目录结构。不过因为这时候我们并没有安装，所以会有这样的一个提示。![假装这里有图片](./pic/2)提示也写的很清楚，我们需要安装。而且还很贴心地给出了安装的命令。对照着打就是了。

    apt install tree

这时候试试tree命令。可以看到有一个storage文件夹以及它的子文件夹所链接的文件夹。![假装这里又有一张图片](.pic/3)

再比如说更新一下软件源

    apt update
    apt upgrade

这两步操作可以经常做，可以保证你的软件都是最新的。
然后可以用下面这个指令查看你可以直接用包管理器安装的软件

    apt list

仔细想想是不是觉得少了几个关键的按键？比如说补全命令的TAB键，当然termux也考虑到了这种情况，他是提供有这些这些按键的。只不过默认是关闭需要我们自己动手打开，我们按音量上键+键盘的Q就可以看到打开了一行按键。
当然，也是有其他的方法可以使用这几个按键的，比如说黑客键盘就自带了这些，但是我是需要在termux里输入中文的，频繁切换输入法显然不是什么高效的方法。所以还是上面的方法更加适合我。

#### 1.2 颜值是第一生产力 ####

一个赏心悦目(~~逼格满满~~)的外表是愉快地使用一个应用的必要前提，显然现在的termux颜值并不高。怎么样才能让我们的termux跟电影里的黑客那样呢……不要着急，我们现在就开始让termux的颜值上升(๑•̀ㅂ•́)و✧
