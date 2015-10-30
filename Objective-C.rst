Objective-C 学习笔记
=======================


:Date: 10/30 2015
:Author: Luozijun


.. contents::




认识 Objective-C
---------------------

Objective-C源代码文件扩展名::

    头文件     实现文件
    .h          .m


可选编译器
---------------

-   Clang
-   GCC

编译示例:

*main.m:*

.. code:: objective-c
    
    #import <stdio.h>
    int main( int argc, const char *argv[] ) {
        printf("%s，%s 世界！\n", "hello", "hi");
        return 0;
    }

*编译:*

.. code:: bash

    # GCC
    gcc -o main main.m -Wall -lobjc
    # Clang
    clang main.m

.. Note::
    
    在 GNU/Linux 环境里面如果要使用 GCC 编译器，则需要下载 libojc 库；

    如果要编译携带 Cocoa 框架的 Objective-C 代码，则比较麻烦，
    可以参考: https://stackoverflow.com/questions/20383201/can-i-write-ios-apps-in-linux



语法篇
---------

注释
~~~~~~~~~~

.. code:: objective-c

    // 单行注释

    /*
        多行
        注释
    */


变量与数据类型
~~~~~~~~~~~~~~~~~~~~

字符串（String）
^^^^^^^^^^^^^^^^^^^^^

@"String ...."


整数（Int）
^^^^^^^^^^^^^^^^^^^^^


条件控制语句
~~~~~~~~~~~~~~~~~~~~

*   判断语句 `if`
*   跳转语句 `goto`
*   匹配语句 `switch`


循环控制语句
~~~~~~~~~~~~~~~~~~~~

*   while 循环
*   for 循环 与 do-while 循环
*   break 与 continue 语句




类（Class）
~~~~~~~~~~~~~~~~~~~~~~~

定义类
^^^^^^^^^^^

类的申明（定义）代码放在 扩展名为 `.h` 的文件里面。

.. code:: objective-c

    // 定义类
    @interface Person: NSObject
        -(void)sayHello;
    @end


以上代码定义了 一个类名为 `Person` 的类，继承自 `NSObject` 对象。



定义类属性
^^^^^^^^^^^^^^^^

.. code:: objective-c

    @interface Person: NSObject

        @property NSString *firstName;
        @property NSString *lastName;
        @property NSNumber *year;
        @property int year;
        @property (readonly) NSString *firstName;

    @end


NSString、NSNumber 类型为 对象。

定义类方法
^^^^^^^^^^^^^^
    
::
    
    @interface Person: NSObject

        -(void) someMethod;
        +(void) someMethod2;

    @end


ClassMethod（对象方法）::
    
    在 Objective-C 语言里面，类的 对象方法 前缀是减号 `-`。

.. code:: objective-c
    
    @interface Person: NSObject
        -(void) someMethod;
        -(void) someMethodWithValue: (SomeType)Value;
        -(void) someMethodWithfIRSTvALUE: (SomeType)
    @end

StaticMethod（静态方法）::

    在 Objective-C 语言里面，类的 对象方法 前缀是加号 `+`。

.. code:: objective-c
    
    @interface Person: NSObject
        +(void) someMethod;
        +(void) someMethodWithValue: (SomeType)Value;
        +(void) someMethodWithfIRSTvALUE: (SomeType)
    @end



类的实现
^^^^^^^^^^^^^^
类的实现 代码需要放在 `.m` 的扩展文件里面。


person.m

:: 
    
    @implementation Person

        - (void) sayHello {
            NSLog(@"hello, 世界！");
        }
    @end


.. Note::
    
    `@"hello, 世界！"` 里面的 `@` 符号表示 该字符串为 OC 类型，而不是原生的 C 类型。


函数（Function）
~~~~~~~~~~~~~~~~~~~~~~~

pass

闭包函数（Block）
~~~~~~~~~~~~~~~~~~~~~~~~

pass





