# WBLoading
![图片](http://upload-images.jianshu.io/upload_images/1728983-0e20897ed73cceff.jpg)

**1、原文[WBLoading](http://www.jianshu.com/p/761fc1c12ace)**

**2、动画效果图**
![redLoading.gif](http://upload-images.jianshu.io/upload_images/1728983-a3f7cab8ce06d9f8.gif?imageMogr2/auto-orient/strip)

**3、打开工程找到类库的文件，可以直接拖到自己工程使用**
￼
![类库文件.png](http://upload-images.jianshu.io/upload_images/1728983-189e82218c14c083.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

**4、在这里可以看代码实例**

![实例.png](http://upload-images.jianshu.io/upload_images/1728983-e32b4e4d5735679a.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

**5、代码**

```
- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self initLoadingView];
    
}
```
```
-(void)initLoadingView
{
    _loadView=[[WBLoadingView alloc]initWithFrame:CGRectMake(self.view.frame.size.width/2-40, self.view.frame.size.height/2-50, 80, 100)];
    _loadView.lineWidth=2;
    _loadView.lineColor=[UIColor redColor];
    _loadView.backgroundColor=[UIColor whiteColor];
    
    [self.view addSubview:_loadView];
    
}
```
我们可以通过.lineWidth来更改线的宽度（默认2），通过.lineColor更改线的颜色（默认红色），下面将线宽设置为2，线的颜色设置为绿色的效果图

![greenLoading.gif](http://upload-images.jianshu.io/upload_images/1728983-88752e3c1495c7d8.gif?imageMogr2/auto-orient/strip)
