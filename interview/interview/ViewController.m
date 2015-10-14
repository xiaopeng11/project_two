//
//  ViewController.m
//  interview
//
//  Created by mac on 15/10/12.
//  Copyright (c) 2015年 wxhl. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    /*
     
     
     
     电影项目:财新周刊
     项目的介绍:项目描述,应用技术,项目职责,开发环境,心得体会
     将专业技能和工作经历写在前面,不重要的写在后面.
     一般两三个人做,一两个月可以完成
     任务:找好自己做过的项目,注册网站
     
     简历中心的标题:2年经验,电话
    //面试题
    1.coredata如何储存数据。 2.如何追踪上线产品出现问题（闪退等。）3.cell的高度计算。4.和微博项目中那个发图片一样的，问的是如何压缩图片。5.GCD请求网络的时候如何中断多线程。
    
    1.oc的基本特点
     oc 是c 的一个超集，只不过在c的基础上加了面向对象的特性
     oc 和 java一样哦都市单继承，不像c++多继承
     oc 不支持命名空间机制，用类名前加前缀替代
     
    2.#include #import @class 区别
     #import相比#include只会调用一次，不会出现交叉编译
     @class相比#import只告诉编译器这个类的存在，

    3.类目的优缺点
     优点：不需要增加子类来增加现有类的方法，而且类目中的方法与原始类方法没有什么区别
     缺点：无法创建实例对象，覆盖原始类的方法时，原始类的方法无法调用
     
    4.内存管理的基本原则（黄金法则）
     当alloc retain copy 一个对象时，必须释放（自动或者手动）
     
    5.什么是ARC？与GC相比区别？与MRC的区别
     ARC：内存的自动管理，5.0以后推出的内存管理新特性，不再需要我们手动的释放。
     GC：垃圾回收机制，ARC比GC的性能要好。
     MRC：内存的手动管理，需要自己手动的释放
     ARC,MRC混编：在需要MRC的类添加fno-objc-arc
     
    6.ARC会发生内存泄露吗？
     会，01.当两个对象相互持有的时候，发生循环调用，出现内存泄露
     处理方法：解除一个对象对另一个对象没有拥有权 strong -》weak
        02.oc对象和foundation类之间桥接，处理不当也会出现
     
    7.strong weak， retain copy assign，unsafe_unretained weak
     strong和weak区别：一个弱引用一个强引用，strong拥有对像所有权，属相和声明都可以改变，weak只能拿，不能引用,一般用于ui控件(delegate....---为了防止循环引用)
     
     assign：修饰基本数据类型，不需要释放,一般用于委托设计模型（就是代理）
     copy：一般用来修饰block 或者系统的类
     retain：一般情况下使用
     nomatomic:非原子性访问，不加同步，多线程使用时提高性能
     
     unsafe_unretained和weak功能一致，后者销毁时制空，防止野指针调用
     
    8.局部对象和属性对象什么时候被释放
     局部对象在当前作用域的结束位置释放
     属性对象在对象被销毁时释放
     
    9.释放对象时为什么要【super dealloc】？
     因为子类是继承父类的，因此调用父类时，要先将父类的实例进行释放
     
     
    10.dealloc释放时用release好还是self.？？=nil好？
     后者好用，先调用了relea方法，又将值设置为nil，有效的防止了野指针调用。
     
    10.自动释放吃是什么？如何工作？
     自动释放吃时NSAutorelease类的实例。池子中的对象在销毁池时自动添加release
     
    11.深浅复制的概念区别
     浅复制：只复制对象的本身，不对里面的属性进行复制
     深复制：不只复制对象的本身，也复制对象的属性和方法
     
    12.堆区和栈区的区别
     堆区一般由程序员分配和释放，不释放会出现内存溢出
     栈区有编译器自动分配内存和管理
     
    13.用户定义了一个变量，如何实现可变和不可变的copy
     必须调用copying和mutablecopying协议，否则会出现异常
     - (id)copyWithZone:(NSZone *)zone
     {
     
     }
     
     - (id)mutableCopyWithZone:(NSZone *)zone
     {
     
     }

    14.iOS中的数据持久性有哪几种？
     plist文件写入，对象归档，sqlite3数据库，coredata
     
    15.KCV和KVO的区别
     KVC：键值编码，是一种间接访问对象实例变量的方法，可以不通过存取方法获取对象的实例对象
     KVO：键值观察，是一种那个让对象可以获取其他对象属性变化的方法
     KVO的实现，被观察的对象必须使用KVC来修改它的属性变化，KVC时KVO的基础
     
    16.常见的设计模式
     单例模式，代理委托，观察者模式
     
    18.线程和进程的区别
     一个程序一般只有一个进程，也可以有多个进程（谷歌浏览器），进程是一个静态容器，里面容乃了很多线程，线程是一系列方法的线性执行顺序
    
    19.oc语言的优缺点
     优点：类目，动态识别，支持c，oc与c++的混编
     缺点：不支持命名空间，不支持重载，不支持多重继承
     
     拓展：01什么是类目与拓展？
            类目：为已知的类增加新的方法
            延展：通知在本类的定义里使用类目来声明私有方法
     
     
          02因为oc没有多重继承，该怎么实现？
            因为cocoa中所有的类都是NSObject的子类，多继承在这里用委托代理实现
            面向对象的语言（javascript，c）大部分都是单继承
            c++支持多继承
     
     
    20.delegate block nsnotifacation的区别
     delegate和block一般用于一对一的通信，代理复杂一点，需要定义代理协议，代理对象需要实现代理方法，两者直接需要产生通信，block不需要，更简单，但是如果通信事件较多的话用delegate
     nsnotifacation一般用来一对多之间的通信，但使用通知代码可读性差
     
       delegate：委托或代理，它是一种设计模式，用于两个对像之间的通信，并且解除两个通信对象的耦合性，一般用来视图和适用对象的通信交互
       block：优点：可以作为参数回调，block 的实现可以定义在方法里，函数不可以
                   语法简单，可以在方法中定义实现，这样访问方法的局部变量，是代码更加紧凑，结构化
     
     
    21.控制器的viewcontroller的loadview viewdidload viewdidunload viewdidappear什么时候使用
     loadview：当控制器的跟视图为空，而且view被访问的时候调用
     viewdidload：loadview调用完成后调用
     viewdidunload：当内存警告，先卸载视图，在调用
     viewdidappear：当控制器被添加到父视图上的时候
     
     
    22.@synthesize和@dymnamic的区别
     前者是系统自动那个生成的getter和setter方法
     后者告诉编译器，属性的获取与赋值方法由用户自己实现，不能自动生成
     
     @interface:声明一个类，冒号表示继承关系，后面为父类
     @implementaion 实现声明的类
     
    23.时间响应者链的概念
     表示一系列的相应对象，事件依次交给视图控制器---视图的父类---父类的控制器一直到顶端，直到事件被处理
     
    24.C语言中static变量和static函数有什么作用？
     01.表示变量为静态存储变量，存放在静态存储区
     02.加载函数前表示该函数的内部链接，只在本文件有效
    
     static全局变量与普通的有什么区别，局部变量呢？函数呢？
     01 static的全局变量值初始化一次，防止在其他的单元格中使用
     02 static局部变量和普通相比，只被初始化一次，下一次依据上一次结果值
     03 static函数在内存中只有一份，普通函数在每个被调用中维持一份拷贝
    
    25.c和obj-c如何混用，C++和obj-c呢？
     实现文件的拓展名.m改为.mm即可，但是cpp文件必须用c/c++代码，而且cpp文件中的#include的头文件，不能吹按obj-c的代码。因为icpp只能写C++的代码
     
    26.oc如何管理内存
     oc中使用引用计数来管理对象的生命周期，对象向被其他人使用时引用计数加1，不使用时-1，当引用计数为0 的时候被系统回收
     
    27.什么是动态绑定（多态）
     声明一个变量。在运行的时候把固定不同的对象，比如声明一个view可以根据不同的场景传入不同的对象，可以传入uibutton，也可以穿入imageview
     
    28.头文件的结构原因？
     防止盖头文件的重复使用
     
    29.cocoa touc框架
    UIKit Foundation CoreGraphic CoreAnimation
     (1)音频和视频：Core Audio
                  OpenAL
                  Media Library
                  AV Foundation
     (2)数据管理：Core Data
                SQlite  
     
     (3)图形和动画：Core Animation
                  OpenGL ES
                  Quartz 2D
                  Core Graphic
     (4)用户应用：Address Book
                Core Location
                Map Kit
                Store Kit
    30.栈结构和队列的区别
     栈是限定只能在表的一端进行插入和删除操作的线性表。先进后出
     队列是限定只能在表的一端进行插入和在另一端进行删除操作的线性表。先进先出。队列便利数据的速度要快点多
     
    40.C语言中auto，register，static，const volatile，extem的区别
     01.auto：用于声明变量的周期为自动，不怎么写，因为所有的变量默认为auto
     02.register：这个关键字命令编译器尽可能的将变量存在CPU内部，而不是同步内存地址访问来提高效率
     03.static：（1）统计函数被调用的次数
                （2）减少建立和初始化变量的开销
     04const：被其修饰的东西都受到强制保护，可以预防意外的变动，提高程序的可靠性，可以修饰函数的参数，返回值，甚至函数的定义体
     05volatile：表明这个变量的值可能在外部被改变，优化器在用到这个变量时必须小心的重新获取这个变量的值，而不是使用保存在寄存器的备份，适用于：int char long
     06extem：外来的。。它的作用告诉编译器，有这个变量。可能不存在当前的文件中，但他肯定在当前工程的某一个源文件中火者DLL的输出中
     
    41oc中的协议和java中的借口区别
     协议中定义的方法，可以设置为可选实现，必须实现。java中的接口必须实现
     
    42.在一个对象中使用self.name = "object"和name = “object”有什么不同
     前者调用的是设置器方法，后者时普通赋值
     
    43.单例模式写法？意义？
     01为了只创建一个对象，此对象的属性可以存储曲剧共享的数据，所有的类都可以访问，设置此单咧对象中的属性数据
     02如果一个类创建的额时候非常耗费性能，那么此类可以设置成单例节约性能，如果能满足需求的话
     
    44.打印数组中的中文
     中文默认打印的是encode编码，只有具体的元素才能打印
     方法一：打印指定为的数据
     方法二：遍历打印
     方法三：.m中添加-（NSString *）description
     
     数组和表的区别
     数组有序而表式无序的，数组可以容纳重复对象，而表不行
     转化：NSArray *array = [set all objects];
     
     数组中存放的时地址，每个对象八个字节，一般用iskindof区别不同的对象
     
     
     rand（）产生随机数。需要包含stdlid.h文件
     
     
     command+shirt+i   哈看内存泄露

笔试：
     1.CALayer和UIView的区别
      最大的区别：图层不会直接渲染到屏幕上，uiview时iOS界面的基础，所有的界面元素都是继承它，它是由CoreAnimation实现的，他真正的绘图部分，是由一个CALayer来管理。uiview本身横向一个CALayer的管理器。一个uiview可以有N和CALayer，每个layer显示一中东西，增强UIView的展现能力。
     
     2.什么是GCD？
      GCD时apple开发的一个多核编程的解决方法，在10。6中首次推出，用于替代NSThread等技术，GCD完全可以处理数据锁定和资源泄露等复杂的异步编程问题
     
     3.TCP/UDP的区别
      01.TCP：传输控制协议，这种协议可以提供面向连接的，可靠的，点到点的通信。
      02.UDP：用户数据报协议，可以提供非连接的不可靠的颠倒多点的通信，但是快速
     
     4.http连接和socket连接的区别
      http连接：http连接就是所谓的短连接,即客户端向服务器发送一次请求，服务器端相应后练级断掉
      socket连接：长连接，理论上客户端和客户端一旦简历连接将不会主动断掉---通过三次握手与服务器简历可靠的链接，进行数据传输
     
     5.TCP连接的三次握手
      01：第一次握手，客户端发送syn包到服务器，并进入SYN_SEND状态，等待服务器确认
      02：第二次握手，服务器收到syn包，必须确认客户的SYN（ack=j+1），同时自己也发送一个SYN(syn=k)，即SYN+ACK包，此时服务器进入SYN_RECV状态
      03: 第三次握手，客户端收到SYN+ACK包，向服务器发送确认包ACK（ack=k+1），发送完毕，客户端和服务器进入ESTABLISHED状态，完成三次握手
     
     6.frame和bounds的区别
      前者在父视图中的位置和大小，后者时在本身坐标的位置和大小
     
     7.MVC设计模式
      model：负责存储，定义，操作数据
      view：用来展示数据给用户，和用户进行操作交互 
      controller：M和V的协调者，控制器获取数据，将数据交给视图展示
     
     8.xib怎么加载上去的
      当loadview被调用的时候，此方法中，通过NSBundle加载xib，通过xib的文件名架子啊xib文件，找到，就加载view对象作为控制器的根视图，没有xib文件，通过alloc创建一个view对象作为根视图
     
     9。内存不足，系统发出警告，此时控制器应该如何处理
      内存不足，系统调用didRecevieMemoryWarning方法通知控制器内存不足
      iOS6.0之前，调用内存不足方法后，将self.view设置成nil，在调用viewdidunload方法，在此方法中我们释放子视图
      iOS6.0以后，不会在调用viewdidunload方法，应该在内存不足警告中将self.view=nil，释放子视图。
     
     10.监听view的触摸事件，事件是如何传递的，视图的响应者链是什么
       01.复写touchBegin touchMove touchEnd来监听
       02.事件的传递：触摸视图时--捕捉此事件，创建UIEvent对象，将此对象加入当前应用程序的市价队列中----有applicaton冲队列中一个个取出来分发，首先给UIWindow对象，然后由UIWindow对象分发给触摸的视图对象，也就是第一响应者对象
       03.响应者链：本身--试图控制器---父类---父类的控制器---。。。window--uiapplication
     
     11.iOS对象中的额通信方式
       KVO delegate block 通知
     
     13block在内存管理上的特点，需要注意循环引用，如何解决
      特点：使用了局部变量，将此对象retain
      处理：将当前对象赋给一个局部变量，并且使用_BLOCK关键字修饰该局部变量，使用该变量访问当前对象的属性和方法
     
     14.oc中有线程池码？NSOperationQueue时如何管理线程的
      01NSOperationQueue时oc 的线程池，线程池可以存放多个线程
      02NSOperationQueue可以管理线程的并发数，还可以管理线程之间的优先级
     
     15NSTimer的间隔周期准吗，为什么？解决方法？
      一般情况下时准确的，但是难免主线程会被堵塞，导致不准确，可以开一个多线成，在其中运行计时器，不会出现误差
     
     16http协议的特点，GET请求和POST请求的区别，什么是https协议
      01.http协议是短连接，都是客户主动发送请求，服务器做出响应，形影后连接断开
      02.GET请求没有请求体，POST请求含有请求体，所有可以提交大量的数据给服务器
      03.HTTPS：安全超文本传输协议，使用安全套接字层进行信息交换，可以说成http的安全版
     
     17XML数据的解析方式，各有什么不同，json解析有哪些框架
      01.xml数据解析有两种解析方式：DOM解析和SAX解析
      02.DOM解析必须先完成DOM树的构造，处理大的文档时很耗费内存
      03.SAX相对于DOM来说更适合处理大的XML文档，他用事件驱动模型，没遇到一个属性或者指令时，程序产生一个事件进行响应的处理
      04json解析最好的时JSONKIT和系统自带的json解析，自带的解析性能最好。
     
     18.用过哪些开源框架，特点
      ASIHTTPRequest：优点：出来的早，文档丰富，功能强大
                      缺点：停止更新，新特性少，iOS5以上支持不完善
      AFNetWorking：优点：支持比较新的额特性，简单易用
                    缺点：文档数目一般，功能少，忽略了一些拓展功能（没有同步请求）
      MKNetworkKit：支持ARC，有ASIHTTPRequest，AFNetWorking，但是没有文档
     
     19。iOS数据持久化的方式？特点？ios平台怎做数据的持久化？CoreData和sqlite有无必然联系？
     CoreData是一个关系型数据库玛？
      01：属性归档，plist，sqlite，coredata
      02：coredata不是数据库，不过可以使用sqlite数据库来保持数据，也可以是使用其他方式存储数据：xml
      03：属性列表和对像归档适合使用小数据存储和查询操作
      04：sqlite coredat适合大数据存储和查询操作
     
     20.iPhone5如何适配？
      01.添加图片时分辨率为640 * 1136
      02。编码时，用kscreen的大小
      03.设置autosizing来适应父视图的frame
     
     21.iOS如何捕捉异常
      @try{}
      @catch{}
     
     23，用过单元测试吗？
      系统自带的OCUnit，但是目前最好用的测试框架时GHUnit
     
     24.app上架流程，什么情况下会被打回
      01：访问私有的API
      02：严重的bug
      03：给苹果审核的测试账号无法登陆，或者境外无法访问国内服务器
      04：app描述中带有Beta（测试）字样
      05：app加载时间超过15秒
      06：给出外部购买链接
      07：app中提到ios之外的支付平台
     。。。。
     
    25。tableview如何服用
     创建视图能显示的单元格数+1，获取单元格时，先从单元池中查找闲置的单元格，有调用，没有创建
     
    26.优化tableview的滑动速度
     01，复用单元格
     02.使用不透明的单元格，尽量少使用动画
     03.图片的加载使用异步加载，设置图片加载的并发数
     04.滑动时不加载图片，停止滑动开始加载
     05.文字，图片可以直接drawInRect绘制
     06.减少reloadData全部的cell，只reloadRowsAtIndexPaths
     07.如果cell是动态行高，计算高度后缓存
     08.cell高度固定的话直接用cellforRowheight设置高度
     
    27.ASI网络框架有哪些功能？
     01.ASI是一款极其强劲的HTTP访问开元框架
     02.异步请求，队列请求，GZIP压缩，缓存，断电续传，进度跟踪，上传文件，HTTP认证
    
    28.多语言发布？
     01.新建String File文件，命名为Localizable.strings，往里面添加星耀的语言支持
     02.在不同语言的localizable.strings文件中添加对应的文本
     03.xib文件国际化
     04.程序名称国际化
     
    29.runloop的理解
     是线程相关的基础框架的一部分，一个runloop就是一个事件处理的循环，用来不停的调度工作以及处理先关输入事件
     目的：为了让你的线程有工作的时候忙于工作，没有工作时处于休眠状态
     
    30.如何调用drawRect方法和layoutSubViews方法，作用
     01.通过setNeedLayout方法异步调用layoutSubView方法
     02.通过setNeedDisplay方法异步调用drawRect方法
     03.前者用来绘图，后者用来布局子视图
     
    31二维码扫描用那些类库，类库的特点
     二维码生成；QRGener
     二维码扫描：zxing，ZBarSDK,推荐使用zxing可以自定义扫描区域，开源的，但是继承复杂
     
    32ios5的新特性？
     iCloud，定制UI,Storyboard，ARC，CoreImage滤镜，json解析类
     
    33.ios6的新特性？
     UIRefreshControl水滴效果下拉刷新
     UICollectionView控件的使用
     SLComposeViewController新浪微博控件
     PassKit中的passbook
     自动布局
     
    34iOS7的新特性
     新的UI设计与交互
     Control Center控制中心
     全新的多任务
     AirDrop共享文件
     SDK：
        动态UIKit，新增了UIDynamicItem委托，用来定制uiview指定动态行为
        新增了游戏引擎Sprite Kit Framework框架类似于cocos2d
     
     iOS7适配问题：
      01.状态栏。iOcS7默认时全屏的状态，包含状态栏
      02.如果设置了self.navigationController.navigationBar 设置了UIBarMetricsLandscapePhone的背景;而没有设置UIBarMetricsDefault的背景，navigationBar会变透明
      03.如果没有设置self.automaticallyAdjustsScrollViewInsets = NO，那么iOS7下会自动让scrollView滑动多次，以满足UITableView第一行的显示需要，这又带来了另外一个问题，下拉刷新的View的frame也随之发生了改变，导致整个下拉刷新不可用了
      04.self.automaticallyAdjustsScrollViewInsets 这个属性是IOS7才有的新方法，目的就是为了让scrollView自动适应屏幕，如果self.automaticallyAdjustsScrollViewInsets = NO，那么效果会变成下图所示：
      05.如果设置了self.navigationController.navigationBar 设置UIBarMetricsDefault的背景为空，则默认的是IOS7上边栏平铺效果，如果设置了图片，并且这个图片高度保持在44（88）,那么IOS5,6,7的效果是一致的。
      06.iOS7中的StatusBar的没有了背景，他的UIStatusBarStyleLightContent和UIStatusBarStyleDefault只会改变StatusBar的文字，都不会有背景
      07.ViewController-Based Status Bar Appearance控制了StatusBar的外观，如果设置为YES，则会调用preferredStatusBarStyle。如果为NO,则通过传统方式来控制

    36.ios9的新特性
     01.分屏功能。
     02.程序包的减小
     
    35.用过storyboard吗，特点？
     优点：甩在每个控制器创建xib文件了，使用静态cell，当cell固定不多时，使用起来方便
     缺点：不利于团队开发
     
    36.ARC，特点？
     不用手动的管理内存，避免了内存泄露或者崩溃
     
    37如何打包静态类库
     创建一个framework&library的项目。编译的时候，会将项目中的代码问价打包成一个.a的静态类库
     
    38.app上架流程
     01.在开发者中心，新建app。填写app的描述信息
     02.下载安装证书
     03.选择发布证书，使用Archive编译发布包
     04使用xcode提交发布包
     
    39.svn，git写作开发，防止代码文件冲突
     01防止代码冲突：不要多人同时修该同一个文件
     02服务器上的项目文件scodeproj，只让一个人管理提交，其他人更新，防止冲突
     
    40.怎么实现断点续传？
     将下载的文件分为几个部分，通过http协议的请求头，设置每一个部分下载的偏移量，然后通过多线程下载每一部分，下载完成后，组合成最终的完整文件
     
    41.ASIHttprequest/asysocekt用什么来实现
     底层对CFNetwork框架进行了封装，CFNetwork框架时C怨言的API借口
     
    42.什么时候用通知/代理
     当两个对象需要通信交互的时候，可以使用实现两个对象中间的通信交互，并且解耦合
     01.如果可以使用代理，优先使用代理，没法简历代理用通知。
     02。代理一对一，通知一对多 （通知的方式不需要简历联系，在代码层次，看不出来对象和那个队向在交互通信，不易于代码阅读）
     
    43.objc中对象如何交互
     
    44.nsstring 为什么set方法可以copy
     为了防止可变字符串被修改
     
    45.oc中initizlize和init方法的区别
     前者 当类初始化的时候调用，只调用一次
     后者 当对象初始化的时候调用，调用多次
     
    46.财新周刊项目介绍：
     财新周刊客户端是将财新周刊移植到移动客户端的一款APP
     
     架构介绍：
     用了MVC实现项目的架构，model中抽出basemodel基类，将数据填充到model对象封装的基类中，控制器层，抽出baseviewcontroller，将共性（放回按钮，刷新）放在控制器基类里，视图层中为了方便扩展和维护，也抽出了大量基类
     
     技术点：
     网络请求用了开源框架AFNetworking
     表视图列表的详情页面时核心，用了CoreText图文混排的方式做的
     类与类之间的通信用了代理协议
     集成了支付，微博分享，微信分享等功能
     常规设置清除缓存，接收推送新闻的功能jpush
     
     技术点内部实现机制：
            下拉刷新的内部实现：在tableview上加一个试图，利用集成滑动视图的contentoffset属性获取滑动位置，判断下拉，在家的是试图上添加控件
            推送，支付，分享--下载官方的SDK，根据官方的demo集成就好了
            清除缓存的实现：获取当前数据的缓存路径，遍历计算所有的子路径内容大小
            图文混排：正则表达式处理，系统自带的coretext
     
    */
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
