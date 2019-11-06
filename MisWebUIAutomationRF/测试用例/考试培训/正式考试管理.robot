*** Settings ***
Resource          ../../关键词/界面关键词/复合关键词.txt
Resource          ../../关键词/界面关键词/业务关键词.txt
Resource          ../../关键词/界面关键词/原子关键词.txt

*** Test Cases ***
正式考试管理查询
    [Setup]    # 前置条件：必须存在jack测试试卷这套试卷，所以可以用执行sql的方式
    登陆    903    888888
    进入模块    考试培训    正式考试管理
    等待元素出现    //*[contains(@placeholder,"试卷标题")]    10
    输入文本框    试卷标题    jack测试试卷
    点击按钮    查询
    页面检查    jack测试试卷
    [Teardown]    # 数据清理：测试完后将该用例数据进行清理

正式考试管理翻页
    [Setup]    # 前置条件：必须存在jack测试试卷这套试卷，可以用执行sql的方式
    登陆    903    888888
    进入模块    考试培训    正式考试管理
    等待元素出现    //*[contains(@placeholder,"试卷标题")]    10
    下拉选择    请选择    20条/页
    #验证页面是否有20条数据
    [Teardown]    # 数据清理：测试完后将该用例数据进行清理

新增正式考试试卷
    登陆    903    888888
    进入模块    考试培训    正式考试管理
    等待元素出现    //*[contains(@placeholder,"试卷标题")]    10
    点击按钮    新增
    等待元素出现    //*[contains(@placeholder,"请选择业务属性")]    20
    输入文本框    试卷标题    1106测试试卷
    输入文本框    试卷说明    测试
    输入文本框    答题时间    100
    下拉选择    请选择业务属性    临床授权考试
    输入文本框    总 分    100
    输入文本框    及格分    60
    单个日期选择    起始时间    2019-11-07 14:00
    等待    2
    单个日期选择    截止时间    2019-11-10 20:00
    点击按钮    西医临床高级
    点击按钮    单选题
    点击按钮    设置
    等待    2
    Input Text    //table/tbody/tr/td[3]/div/div    100    #InvalidElementStateException: Message: invalid element state: Element must be user-editable in order to clear it.
    点击按钮    生成试卷
    页面检查    1106测试试卷
    [Teardown]    #测完，记得要数据清理

删除正式考试试卷
    登陆    903    888888
    进入模块    考试培训    正式考试管理
    等待元素出现    xpath=//*[contains(@placeholder,"试卷标题")]    10
    等待    2
    表格按钮    删除
    等待元素出现    xpath=//*[contains(@class,"el-message-box__btns")]/parent::div/div/button/span[contains(text(),"取消")]    10
    点击弹出框    取消
    #验证点

发布正式考试试卷
    登陆    903    888888
    进入模块    考试培训    正式考试管理
    等待元素出现    xpath=//*[contains(@placeholder,"试卷标题")]    10
    等待    2
    表格按钮    发布
    #验证点

正式考试跳转考试人员
    登陆    903    888888
    进入模块    考试培训    正式考试管理
    等待元素出现    xpath=//*[contains(@placeholder,"试卷标题")]    10
    等待    2
    表格按钮    考试人员
    #验证点

正式考试跳转考试成绩
    登陆    903    888888
    进入模块    考试培训    正式考试管理
    等待元素出现    xpath=//*[contains(@placeholder,"试卷标题")]    10
    等待    2
    表格按钮    考试成绩
    #验证点
