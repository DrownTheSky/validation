# 环境初始化
    pip install virtualenv
    virtualenv -p python3.8 venv
    source venv/bin/activate
    pip install -i https://pypi.tuna.tsinghua.edu.cn/simple -r requirements.txt

# pytest测试用例的运行方式
    主函数模式
        运行所有        pytest.main()
        指定模块        pytest.main(['-vs', 'test1.py'])
        指定目录        pytest.main(['-vs', './test'])
        指定nodeid      pytest.main(['-vs', './test/test1.py::Test_1::test_1'])
    命令行模式          
        运行所有        pytest
        指定模块        pytest -vs test1.py
        指定目录        pytest -vs ./test
        指定nodeid      pytest -vs ./test/test_1.py::Test_1::test_1
    读取pytest.ini全局配置文件运行
        编码    必须是ANSI
        作用    改变pytest默认的行为
        规则    无论主函数模式还是命令行模式都会读取这个文件

# 参数详解 
    -s      输出调试信息，包括print的信息
    -v      显示更加详细的信息
    -k      根据测试用例的部分字符串指定测试用例 (eg: -k "abc")
    -n      支持多线程或者分布式运行测试用例 (eg: -n 2)
    -x      只要有一个测试用例失败就停止 (eg: --maxfail=2)
    --html  生成html的测试报告 (--html ./report/report.html)



# 相关插件
    pytest-assume   
    pytest-html             生成html格式的自动化测试报告
    pytest-logger
    pytest-repeat
    pytest-sugar
    pytest-timeout
    pytest-xdist            测试用例分布式执行，多CPU分发
    pytest-ordering         用于改变测试用例的执行顺序
    pytest-rerunfailures    用例失败后重跑
    allure-pytest           用于生成美观的测试报告
