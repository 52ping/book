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
