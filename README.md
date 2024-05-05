## 吉林大学软件学院2024本科毕业论文模板

基于教务 **2024** 发布《学院本科毕业论文（设计）撰写参考模板》撰写而成，但并不具备完全一致的视觉效果,

如若使用本模板，格式相关风险将由使用者自己承担。

如果觉得本模板还算不错，希望能点个 star，让更多人能发现这个项目。

## 如何使用

本模板核心部分为 `jluCSWThesis.cls` 文档类，同时使用多文件的结构，使用该文档类可能需要遵循一定的文件结构。

以下为该示例的文件结构

```sh
jluCSWThesis.cls       # 文档类
main.tex               # 主入口
before_toc.tex         # 目录之前的文件

chap/
  chap.01.intro.tex    # 第一章
  ...

thanks.tex             # 致谢
appendix.tex           # 附录
references.tex         # 参考文献

references.bib         # 文献引用库
latexmkrc              # latexmkrc配置文件

```

使用`latexmk`来构建pdf

```sh
latexmk
```

## 实现的特性

- [x] 承诺书
- [x] 双语标题与摘要页
- [x] 页面边距\[部分\, 视觉效果不同于教务模板]
- [x] 默认字体与字号
- [x] 页眉与页脚
- [x] 目录
- [x] 图片公式等的标题样式
  - [ ] 浮动体标题位置
  - [ ] 表格内字号与续表
- [x] 章、节、小节标题\[部分，上下空行的视觉效果不同于教务模板\]
- [x] 参考文献
- [ ] 注释
- [ ] 坐标与坐标单位

## 可能的问题

你可能需要安装`gb7715-2015`的`Bibtex Style`，具体细节请自行判断与处理

## 二次开发

本文档类基于 `ctexbook` 文档类编写，相关的代码在`jluCSWThesis.cls`中以用途划分，部分样式的修改只需要修改若干参数，如果有疑问欢迎提交 Issue。

## 致谢

灵感来源 [cheunglei/JLU-CSW-Thesis](https://github.com/cheunglei/JLU-CSW-Thesis)
