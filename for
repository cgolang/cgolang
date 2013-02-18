for expression1; expression2; expression3 {
    //...
}
expression1、expression2和expression3都是表达式，
其中expression1和expression3是变量声明或者函数调用返回值之类的，
expression2是用来条件判断，

expression1在循环开始之前调用，expression3在每轮循环结束之时调用。


有些时候如果我们忽略expression1和expression3：

sum := 1
for sum < 1000 {
    sum += sum
}

for配合range可以用于读取slice和map的数据：

for k,v:=range map {
    fmt.Println("map's key:",k)
    fmt.Println("map's val:",v)
}

由于 Go 支持 “多值返回”, 而对于“声明而未被调用”的变量, 编译器会报错, 在这种情况下, 可以使用_来丢弃不需要的返回值 例如

for _, v := range map{
    fmt.Println("map's val:", v)
}
