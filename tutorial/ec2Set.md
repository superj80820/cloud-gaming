# 使用亞馬遜AWS的EC2來雲端遊戲吧！

## 介紹

在亞馬遜AWS上使用虛擬機 有一些缺點如下:
1. 亞馬遜虛擬機是沒有免費額度的 所以使用就一定會花錢 使用花費依照[官網](https://aws.amazon.com/ec2/pricing/on-demand/)約為**每小時/0.75美元**
2. 因為**亞馬遜沒在台灣設廠** 所以我們只能連入**日本**, **新加坡**的虛擬機進行遊戲機設定 串流速度一定會比在**台灣的Google資料中心慢** 在此採用日本的虛擬機進行介紹

## 開始吧！

3. 點選[虛擬機管理頁面](https://ap-northeast-1.console.aws.amazon.com/ec2/v2/home)(此為日本的虛擬機)>點選`i`
![](https://i.imgur.com/VY08Um0.png)
2. 點選`Lunch Instance`來創建虛擬機
![](https://i.imgur.com/XnDA9SO.png)
3. 選擇映像檔: 點選`Community AMIs`>輸入`parsec`>點選`parsec-g3-sw2016-16`
![](https://i.imgur.com/EMZQrZW.png)
4. 點選`All instance types`>點選`GPU instances`>點選`g3s.xlarge`這台主機>點選`Next: Configure Instance Details`
![](https://i.imgur.com/14BZlII.png)
![](https://i.imgur.com/bMkgRp7.png)
6. 直接點選`Next: Add Storage`
![](https://i.imgur.com/sZZXqQB.png)
7. 選擇磁碟大小: 對`Size (GiB)`輸入框輸入`150`>取消勾選`Delete on Termination`>點選`Next: Add Tags`
![](https://i.imgur.com/9VQYpHg.png)
8. 直接點選`Next: Configure Security Group`
![](https://i.imgur.com/NrPEjxm.png)
9. 設定防火牆: 點選`Create a new security group`>對`Security group name`輸入框輸入`gaming-instance`>對`Type`選擇`All traffic`>對`Source`選擇`Anywhere`>點選`Review and Launch`
![](https://i.imgur.com/q8qdWJI.png)
10. 確認無誤後點選`Lunch`
![](https://i.imgur.com/ZEPiklm.png)
11. 下拉選單選擇`Proceed without a key pair`>下方打勾>點選`Lunch Instances`
![](https://i.imgur.com/JI7AHFk.png)
12. 點選`View Instance`
![](https://i.imgur.com/QOeuaAX.png)
13. 對**Chrome**開新分頁>並且點選`應用程式`>選擇`VNC`
![](https://i.imgur.com/r5pdLyo.png)
![](https://i.imgur.com/DvCiWjb.png)
14. 複製`IPv4 Public IP`>貼到`VNC`的`Adress`>點選`Connect`>繼續點選`Connect`>輸入`4ubg9sde`的密碼>點選`OK`
![](https://i.imgur.com/p4KLuDF.png)
![](https://i.imgur.com/yctXFRI.png)
![](https://i.imgur.com/2whiRAG.png)
15. 點選桌面`Parsec`>輸入帳號/密碼>選擇`Stay Loged in`>點選`Login`>之後會請你去信箱收驗證信
![](https://i.imgur.com/09aH7FL.png)
16. 點選`CONFIRM ACCESS`
![](https://i.imgur.com/CluV2pw.png)
17. 再點選`Login`一次
![](https://i.imgur.com/Oh43Ysw.png)
18. 點選`Run when computer starts`
![](https://i.imgur.com/gpn0l3Y.png)
19. 完成~接下來就跟[Google雲端虛擬機教學](https://github.com/superj80820/cloud-gaming/blob/master/tutorial/vmSet.md#%E4%BE%86%E7%8E%A9%E5%90%A7)一樣 使用Parsec連入即可遊戲

## 注意

1. 沒使用遊戲機記得在虛擬機頁面點選Instance State>Stop來關閉虛擬機
![](https://i.imgur.com/CTtbEFf.png)
