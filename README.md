1.对于UIKit本身的组件，可以这样使用
![image](https://github.com/user-attachments/assets/6ef7c0c0-b6ed-4cd7-ab77-4619747b92f7)
对于继承自MMView的组件，或者直接用MMView的组件，不仅能获得属性的链式写法，还能使用方法的链式写法：
![image](https://github.com/user-attachments/assets/a093a951-c085-4e37-b2b9-14f1a0a01336)
使用.mm命名空间时，键入.view结尾能返回设置的控件.
对于非继承自MMView组件的其他组件，没有.mm命名空间

2.框架里还封装了listKit，主要是对UITableView和UICollectionview的封装，具体使用方式如下：

2.1初始化MMTableView或者MMCollectionView：
![image](https://github.com/user-attachments/assets/41ba23d5-d806-40cb-82d9-e951fbd0a53e)

2.2
![image](https://github.com/user-attachments/assets/af2ab9c3-d2c9-45e2-879b-a22fe1c51581)


以上代码为：声明一个继承自MMCVCellVM的对象，其中MMCVCellVM全名为MMCollectionViewCellViewModel，就是cell的viewModel。

然后声明一个继承自MMCVCell的对象，MMCVCell的全名为MMCollectionViewCell。

在MMCVCellVM子类中重写cellType方法，返回cell view model 对应的cell的类型，这里HomeTitleCVCellVM里面的cellType返回HomeTitleCVCell.self，说明HomeTitleCVCell和HomeTitleCVCellVM是一一对应的。

在MMCVCell的子类中重写父类的方法去进行自定义设置，比如cellSize是自定义collection view cell 的尺寸的。

另外在每一个cell里面都应该要有一个viewModel的计算属性，类型则是自身对应的那个cell viewModel。

一切设置完了之后在外面使用则是这样的
![image](https://github.com/user-attachments/assets/2d49beb9-abf8-4eaf-a2b4-477225b7f4ef)
拿到self.datas直接给collection view reload
![image](https://github.com/user-attachments/assets/7c0e2640-5636-4892-97d9-d27692f64cc7)
至此就完成了，不需要再写那几个数据源方法

什么numberOfSectionsInCollectionView，

什么collectionview：numberOfItemsInSection，

和collectionview：cellForItemAtIndexPath

这些数据源再也不用写了！

MMTableView也是同理!

另外不会写cell的可以参考MMClearTVCell和MMClearCVCell，这两个的全称是MMClearTableViewCell、MMClearCollectionViewCell，他们两个被我用来当间隔的cell来使用的。

另外有些额外的方法比如UITableViewDelegate或者UICollectionViewDelegate的一些方法需要额外实现的，可以直接写在ViewController里，

这里指的viewController是之前初始化MMCollectionView时传入的那个extensionTarget
![image](https://github.com/user-attachments/assets/d45bcafb-6fe2-4304-a272-966084cb7445)
这样可以做到dataSource调用的是proxy(框架里面封装)的方法，而delegate则调用的是vc里实现的方法，
不仅仅是delegate，datasource也可以，但是在swift这种强类型编程语言中，写了遵守某个datasource，则必须实现那几个数据源方法，所以我们这样写：
![image](https://github.com/user-attachments/assets/b45b155a-e83c-4f70-b050-aaa14d97fd58)
这样写会报错，因为没实现那几个数据源方法，但是那几个数据源方法已经被封装起来了，不需要我们写，所以我们这样写：
![image](https://github.com/user-attachments/assets/c63e0372-a3c7-4076-9d13-26cc5338f69c)
首先干掉遵守协议那部分代码，直接写需要的数据源方法，但是在方法前加入@objc，这样写，就算没有写遵守了数据源协议，UIKit也知道你实现了哪个数据源方法。



需要：

最低IDE：XCode 16.0

最低ios版本：iOS 15+

最低Swift版本： Swift5.5
