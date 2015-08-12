category: Tech
date: 2015-08-12
tag: Git
identifier: 创建Git独立分支
cc: true
title: 创建Git独立分支
---
在使用git进行版本控制的某些场景中我们可能需要在一个项目中建立完全独立的分支，此分支将作为一个独立的版本历史根节点，不与之前任何分支拥有相同的版本祖先。

比如当我们要在一个项目中使用一个分支进行项目文档的管理时，或者当我们想要发布一个软件的开源版本但又不希望将软件的版本历史暴露给外界时，都可以使用以下的方法建立一个独立分支。
<!-- more -->
## 通过带orphan参数的checkout命令建立独立分支

通过带有--orphan参数的checkout命令即可从start_point或者HEAD创建一个独立分支

```bash
$cd repo
$git checkout --orphan 新分支名 <start_point>
```
## 创建全新的独立分支

如果希望创建全新的独立分支，例如用于文档管理，则还需要进行如下删除操作  
注意如果有不在索引中的文件，则需要手工删除(包括.gitignore)

```bash
#删除此分支中的索引及索引中的所有文件
$git rm -rf .
```
## 开始工作
当前独立分支还需要创建git索引并initial commit后才能正常工作

```bash
$<do your work>
#创建git索引
$git add .
#initial commit
$git commit -a -m "initial commit"
#push到远端仓库
$git push origin 新分支名
```