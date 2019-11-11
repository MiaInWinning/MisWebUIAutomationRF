*** Settings ***
Resource          ../../关键词/界面关键词/原子关键词.txt
Resource          ../../关键词/界面关键词/业务关键词.txt
Resource          ../../关键词/界面关键词/复合关键词.txt

*** Test Cases ***
考试合格率按科室统计
    登陆    903    888888
    进入模块    考试培训    考试统计分析
    等待    3
    点击按钮    考试合格率按科室统计
    选中单选框    正式试卷
    时间选择    2019-11-10    2019-11-12
    下拉选择    请选择试卷    jack测试试卷
    输入文本框    专业：    计算机
    下拉选择    请选择学历    本科
    下拉选择    职称    高级
    点击按钮    统计
    #检查

考试合格率按试卷统计
    登陆    903    888888
    进入模块    考试培训    考试统计分析
    等待    3
    点击按钮    考试合格率按试卷统计
    选中单选框    正式试卷
    时间选择    2019-11-10    2019-11-12
    下拉选择    请选择试卷    jack测试试卷
    输入文本框    专业：    计算机
    下拉选择    请选择学历    本科
    下拉选择    职称    高级
    点击按钮    统计
    #检查

demo
    登陆    903    888888
    进入模块    考试培训    考试统计分析
    等待    3
    点击按钮    开始日期
    多个日期选择无文本框    2017-11-07 14:00    2019-12-22 20:30
    关闭浏览器
