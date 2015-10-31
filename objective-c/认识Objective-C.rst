认识 Objective-C
========================

:Date: 10/31 2015


.. contents::


文件扩展名
--------------

Objective-C源代码文件扩展名::

    扩展名     源代码类型
    .h        头文件。头文件包含类(class)、类型(type)、函数(function)和常量 (constant)的声明。
    .m        源文件。这是源文件使用的典型扩展名,可以同时包含 Objective-C 和 C 代码。
    .mm       源文件。这种类型的源文件不但可以包含 Objective-C 和 C 代码,而且可以包含 C++ 代码。只有确实在 Objective-C 代码中引用了 C++ 类或特性才使用这个扩展名。

类方法的调用
-----------------

在 Objective-C 的世界里面，类方法的调用被称为 `消息发送(Message)` ::

    [Recvier Method]


其中 `Recvier` 用来存储 类方法执行后返回的数据， `Method` 表示类方法 。

