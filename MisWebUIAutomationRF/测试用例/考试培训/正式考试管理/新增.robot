*** Settings ***
Library           Selenium2Library
Resource          ../../../关键词/界面关键词/原子关键词.txt
Resource          ../../../关键词/界面关键词/复合关键词.txt

*** Test Cases ***
正常新增
    登陆    903    888888
    进入模块    考试培训    正式考试管理
    页面检查    jack测试试卷
    下拉选择    请选择    50条/页
    输入    试卷标题    jack
    点击    新增
    等待    2
    输入    请输入患者住院号    jack
    输入文本框    试卷标题    jack
    等待    5
    关闭浏览器
    #    Click Element    xpath=//*[contains(text(),"撤销")]
    #    输入文本    xpath=//input[@placeholder="试卷标题"]    jack

错误新增
