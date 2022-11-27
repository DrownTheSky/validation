import pytest

class Test_1:
    def test_1(self) :
        print("Hello pytest 测试")

if __name__ == '__main__' :
    pytest.main(['-vs', './test/test1.py'])