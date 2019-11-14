hello git
update
以readme.txt为例
添加文件(添加到暂存区)
	git add readme.txt 
提交(提交到当前分支)
	git commit -m"提交的信息说明"
查看当前状态
	git status 
查看提交日志
	git log
回退到上一版本
	git reset --hard HEAD^
回退（前进）到某一版本
	git reset 版本号（输入前几位即可）
查看文档
	cat readme.txt
记录你的每一次命令
	git reflog
可以丢弃工作区的修改
	git checkout -- file
把暂存区的修改撤销掉（unstage），重新放回工作区
	git reset HEAD readme.txt
删除提交的文档
	git rm test.txt
	git commit -m"remove test.txt"
 注意：从来没有被添加到版本库就被删除的文件，是无法恢复的！
 将本地仓库域GitHub关联
 $ git remote add origin git@github.com:52ping/GitHub仓库名
 第一次推送master分支的所有内容
 git push -u origin master
 此后
 git push origin master
 克隆远程库(库名为gitClone)
  git clone git@github.com:52ping/gitClone.git
切换gitClone库并查看文件
$ cd gitskills
$ ls
————————————————————————————————————————————————————————————————————————————
分支
创建dev分支，然后切换到dev分支：
$ git checkout -b dev

git checkout命令加上-b参数表示创建并切换，相当于以下两条命令：
$ git branch dev
$ git checkout dev

查看当前分支
git branch

合并分区dev
git merge dev

删除dev分支
$ git branch -d dev

最新版本的Git提供了新的git switch命令来切换分支：
创建并切换到新的dev分支，可以使用：
$ git switch -c dev

直接切换到已有的master分支，可以使用：
$ git switch master
____________________________________
小结
查看分支：git branch

创建分支：git branch <name>

切换分支：git checkout <name>或者git switch <name>

创建+切换分支：git checkout -b <name>或者git switch -c <name>

合并某分支到当前分支：git merge <name>

删除分支：git branch -d <name>
____________________________________
同时对一个地方更改发生冲突
查看分支历史
git log --graph --pretty=oneline --abbrev-commit

合并分支时，加上--no-ff参数就可以用普通模式合并，
合并后的历史有分支，能看出来曾经做过合并，
而fast forward合并就看不出来曾经做过合并
————————————————————————————————————————————————
bug分区
先将正在工作的dev 分区储存
git stash
创建bug分支issue-101
git switch -c issue-101

用git stash list命令查看刚才的工作现场
git stash list

用git stash apply恢复，但是恢复后，stash内容并不删除，你需要用git stash drop来删除；

另一种方式是用git stash pop，恢复的同时把stash内容也删了

如果要丢弃一个没有被合并过的分支，可以通过git branch -D <name>强行删除。
——————————————————————————————————————————————————————————
多人协作
多人协作的工作模式通常是这样：

首先，可以试图用git push origin <branch-name>推送自己的修改；

如果推送失败，则因为远程分支比你的本地更新，需要先用git pull试图合并；

如果合并有冲突，则解决冲突，并在本地提交；

没有冲突或者解决掉冲突后，再用git push origin <branch-name>推送就能成功！

如果git pull提示no tracking information，则说明本地分支和远程分支的链接关系没有创建，用命令git branch --set-upstream-to <branch-name> origin/<branch-name>。

这就是多人协作的工作模式，一旦熟悉了，就非常简单。

小结
查看远程库信息，使用git remote -v；

本地新建的分支如果不推送到远程，对其他人就是不可见的；

从本地推送分支，使用git push origin branch-name，如果推送失败，先用git pull抓取远程的新提交；

在本地创建和远程分支对应的分支，使用git checkout -b branch-name origin/branch-name，本地和远程分支的名称最好一致；

建立本地分支和远程分支的关联，使用git branch --set-upstream branch-name origin/branch-name；

从远程抓取分支，使用git pull，如果有冲突，要先处理冲突。

rebase操作的特点：把分叉的提交历史“整理”成一条直线，看上去更直观。缺点是本地的分叉提交已经被修改过了。
git rebase
_________________________________________________
标签管理
命令git tag <name>就可以打一个新标签：
$ git tag v1.0

可以用命令git tag查看所有标签：
$ git tag
对历史commit添加tag
$ git tag v0.9 f52c633

可以用git show <tagname>查看标签信息：
$ git show v0.9

还可以创建带有说明的标签，用-a指定标签名，-m指定说明文字：
$ git tag -a v0.1 -m "version 0.1 released" 1094adb

用命令git show <tagname>可以看到说明文字：
$ git show v0.1

 注意：标签总是和某个commit挂钩。如果这个commit既出现在master分支，
 又出现在dev分支，那么在这两个分支上都可以看到这个标签。
 
 删除标签
 $ git tag -d v0.1
 
 推送某个标签到远程，使用命令git push origin <tagname>：
$ git push origin v1.0

或者，一次性推送全部尚未推送到远程的本地标签：
$ git push origin --tags