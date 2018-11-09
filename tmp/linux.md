linux

分区之分区设备文件名与挂载

硬件设备文件名

| 硬件              | 设备文件名           |
| ----------------- | -------------------- |
| IDE硬盘           | /dev/hd[a-d]         |
| SCSI/SATA/USB硬盘 | /dev/sd[a-p]         |
| 光驱              | /dev/cdrom或/dev/hdc |
| 软盘              | /dev/fd[0-1]         |
| 打印机（25针）    | /dev/lp[0-2]         |
| 打印机（USB）     | /dev/usb/lp[0-15]    |
| 鼠标              | /dev/mouse           |



分区设备文件名 （a代表第一块硬盘1代表第一个分区）：给每个分区定义设备文件名

- /dev/hda1(IDE硬盘接口)
- /dev/sda1(SCSI硬盘接口、SATA硬盘接口)



挂载：给每个分区分配挂载点

1. 必须分区

   - /	根分区

   - swap分区    （交换分区、内存2倍、不超过2GB）

     实际4个g以内为内存2倍，超过4g则为内存大小即可

2. 推荐分区

   - /boot	启动分区，200MB



linux系统的安装

设置密码原则：

1. 复杂性
   - 八位字符以上、大小写字母、数字、符号
   - 不能是英文单词
   - 不能是和用户相关的内容
2. 易记忆性
3. 时效性



软件包选择

1. desktop桌面
2. minimal desktop 最小化桌面
3. minimal 最小化
4. basic server 基本服务器（方便讲课，安装该项，实际应该安装minimal）
5. database server 数据库服务器
6. web server 网页服务器
7. virtual host 虚拟主机
8. software development workstation 软件开发工作站



安装日志：

1. /root/install.log:存储了安装在系统中的软件包及其版本信息
2. /root/install.log.syslog:存储了安装过程中留下的事件记录
3. /root/anaconda-ks.cfg:以Kickstart配置文件的格式记录安装过程中设置的选项信息





xshell安装待补充



linux 常用命令（大概有超过3000个，咱们常用的有200个左右，咱们要学的有60/70个）

一、命令基本格式

1. 命令提示符

   [root@localhost ~]#

   其中：root  当前登录用户

   	localhost  主机名
		
   	~  当前所在目录（家目录） 超级用户的家目录是/root   普通用户的家目录/home/user1/
		
   	超级用户的提示符    普通用户的提示符是$

2. 命令格式

   命令   [选项][参数]

   注意：个别命令使用不遵循此格式  当有多个选项时，可以写在一起，简化选项与完整选项    	-a 等于 --all  (简化选项用一个-，完整选项用两个--)

   - 查询目录中内容：ls

     ls  【选项】 【文件或目录】	

     选项：

     	-a	显示所有文件，包括隐藏文件
		
     	-l	显示详细信息 ls -l可简写ll
		
     	-d	查看目录属性
		
     	-h	人性化显示文件大小
		
     	-i	显示inode

     ls -l命令中权限解释：

     -rw-r--r-- . 1 root root 24772 1月  14  18:17 install.log

     第一位：-文件类型（-文件 d目录 l软链接文件）

     rw- 			r--			r--  			.				1			root			root					

     u所有者		g所属组		o其它人		代表ACL权限	引用计数	用户所有者	所有者所在组

     24772								1月  14  18:17			install.log

     字节，想看到k单位，可用ls -lh命令		最后一次修改时间	文件名

     r读	 w写    x执行

     .bashrc  linux中.开头的文件为隐藏文件  ls -a可以看到隐藏文件

二、文件处理命令

1. 目录处理命令

   - 建立目录：mkdir

   mkdir -p [目录名]

   -p	递归创建   mkdir -p jiaoweijia/learn/php

   命令英文原意：make directories

   - 切换所在目录：cd

     cd [目录]

     命令英文原意：change directory

     简化操作：

     	cd ~	进入当前用户的家目录
     	
     	cd 也是进入当前用户的家目录
     	
     	cd - 进入上次目录
     	
     	cd .. 进入上一级目录
     	
     	cd . 进入当前目录

     - 相对路径：参照当前所在目录，进行查找

       如： 【root@imooc ~】#cd ../usr/local/src/

     - 绝对路径：从根目录开始指定，一级一级递归查找。在任何目录下，都能进入指定位置

       如：【root@imooc ~】#cd /etic/

       tab键补全操作 单击补全，如果不存在双击两次列出所有目录和命令

     - 查看所在目录位置：pwd

       命令英文原意：print working directory

     - 删除空目录：rmdir(用的较少)

       rmdir [目录名]

       命令英文原意：remove empty directories

     - 删除文件或目录：rm(常用)

       rm -rf [文件或目录]

       命令英文原意：remove

       选项：-r	删除目录

       	    -f  强制

     - 复制命令：cp

       cp 【选项】【原文件或目录】【目标目录】

       命令英文愿意：copy

       选项：

       -r	复制目录

       -p	连带文件属性复制

       -d	若源文件是链接文件，则复制链接属性

       -a	相当于  -pdr

     - 剪切或改名命令：mv（无选项或参数）（原文件和目标文件在同一个目录下就是改名命令）

     mv【原文件或目录】【目标目录】

     命令英文原意：move

   - 常用目录认知

     /	根目录

     /bin	命令保存目录（普通用户就可以读取的命令）

     /boot	启动目录，启动相关文件

     /dev		设备文件保存目录

     /etc		配置文件保存目录

     /home	普通用户的家目录

     /lib		系统库保存目录

     /mnt		系统挂载目录（初始为空目录）

     /media	挂载目录（初始为空目录）

     /root	超级用户的家目录

     /tmp 	临时目录

     /sbin	命令保存目录（超级用户才能使用的目录）

     /sys		系统内存目录（不可以在里面写数据）

     /proc	系统内存目录（不可以在里面写数据）

     /usr		系统软件资源目录

     	/usr/bin/系统命令（普通用户）
	
     	/usr/sbin/系统命令（超级用户）

     /var		系统相关文档内容

     注：

     根目录下的bin和sbin，usr目录下的bin和sbin，这四个目录都是用来保存系统命令的。区别在于bin目录普通用户也可以执行，sbin只有超级用户可以执行。

     可以在家目录root或home,以及tmp目录下随便放内容

2. 文件处理命令


 3.链接命令：ln

- ln -s	【原文件】【目标文件】

- 命令英文原意：link

- 功能描述：生成链接文件

  	选项：-s	创建软链接

  硬链接特征：

1. 拥有相同的i节点和存储block块，可以看做是同一个文件
2. 可通过i节点识别
3. 不能跨分区
4. 不能针对目录使用

软链接特征：

1. 类似windows快捷方式

2. 软链接拥有自己的I节点和block块，但是数据块中只保存原文件的文件名和I节点号，并没有实际的文件数据

3. lrwxrwxrwx       l软链接

   软链接文件权限都为rwxrwxrwx

4. 修改任意文件，另一个都改变

5. 删除原文件，软链接不能使用

三、文件搜索命令

1. 文件搜索命令locate     

   locate比find快

   locate命令格式

   - locate  文件名

     在后台数据库中按文件名搜索，搜索速度更快

   - /var/lib/mlocate（根据linux版本的不同，名字可能有所不同）

     #locate命令所搜索的后台数据库

   - updatedb

     更新数据库

   注：

   下面例子中搜索不到新建的文件

   touch jiao.txt

   locate jiao.txt是搜索不到的，locate命令搜索的不是系统里的文件，而是/var/lib/mlocate里的数据库数据，其更新频率是一天一次，所以立刻搜索新搜索的文件搜索不到，但是可以通过updatedb命令进行数据库的立刻更新。

   locate缺点：只能搜索文件名，功能单一

   另外：locate搜索规则由/etc/updatedb.conf配置文件决定

   配置文件中：

   1. PRUNE_BIND_MOUNTS = "yes"  开启搜索限制

   2. PRUNEFS =  搜索时，不搜索的文件系统

   3. PRUNENAMES = 搜索时，不搜索的文件类型

   4. PRUNEPATHS = 搜索时，不搜索的路径

2. 命令搜索命令whereis 与 which

   - whereis 命令名

     搜索命令所在路径及帮助文档所在位置

     选项：

     -b	只查找可执行文件

     -m	只查找帮助文件

     例如： whereis ls

   - 

3. 文件搜索命令find

4. 字符串搜索命令grep

5. find命令与grep命令的区别



四、帮助命令

五、压缩与解压缩命令

六、关机和重启命令

七、其它常用命令