# 進入遊戲遊戲機設置

cloud-gaming已經幫把需要的驅動以及軟體自動化安裝

所以你需要做的只是一些**密碼**, **配置**, **確認**的動作 非常簡單 不用擔心

## 使用RDP連入遊戲機

1. 進入遊戲機執行[頁面](https://console.cloud.google.com/compute/instances)
2. 點選`設定Windows密碼`
![](https://i.imgur.com/zVIO29N.png)
3. 記下`使用者名稱` 點選`設定`
![](https://i.imgur.com/FqIQVZY.png)
4. 記下`Windows登入密碼`
![](https://i.imgur.com/8ZsXPhI.png)
5. 點選`遠端桌面通訊協定`
![](https://i.imgur.com/MFONfZy.png)
6. 輸入密碼>點選`OK`登入
![](https://i.imgur.com/eCY7s6C.png)

## 自動化安裝驅動與軟體

1. 進入`C:\cloud-gaming`資料夾
![](https://i.imgur.com/bnNzE7d.png)
2. 點選`starup.lnk`進行安裝
![](https://i.imgur.com/FuOxCXb.png)
3. 點選`Yes`進行安裝
![](https://i.imgur.com/WooTLiY.png)
4. 安裝`Parsec` 點選`Yes`>`Install`
![](https://i.imgur.com/QDchj5y.png)
![](https://i.imgur.com/6EiSzSJ.png)
5. 安裝`音效驅動`: 點選`Install Driver`>`Install`>`OK` 安裝完畢後會跳出`IE說明書網頁` 不理會它即可
![](https://i.imgur.com/568Ctz0.png)
![](https://i.imgur.com/Ev6ywlf.png)
![](https://i.imgur.com/Yw7DcPO.png)
6. 輸入`帳號/密碼`來進行免登入作業 讓`Parsec`連入的時候不用再輸入`帳號/密碼` `帳號`為`RDP登入的帳號` `密碼`為`RDP登入的密碼`
![](https://i.imgur.com/QLjaQmp.png)
7. 設定`VNC密碼`: 點選`Primary password:`底下的`Set...`>設置密碼>點選視窗的`OK`>點選主視窗的`OK`>
![](https://i.imgur.com/QPEhm93.png)
![](https://i.imgur.com/Pc1QzZ3.png)
8. 點選`OK`就完成惹~VNC會跟你說需要重啟才能套用設定
![](https://i.imgur.com/ecAseZS.png)
9. 我們直接點選遊戲機執行[頁面](https://console.cloud.google.com/compute/instances)的`停止`來關閉遊戲機
![](https://i.imgur.com/GrUnWyI.png)
![](https://i.imgur.com/NLNmar8.png)

## 使用VNC連入遊戲機進行最後一次設定

1. 點選遊戲機執行[頁面](https://console.cloud.google.com/compute/instances)的`啟動`來開啟遊戲機
![](https://i.imgur.com/5VH7Nzl.png)
![](https://i.imgur.com/wPhPuT8.png)
2. 啟動`Chrome VNC`
![](https://i.imgur.com/ztQTYHF.png)
![](https://i.imgur.com/TuMnwox.png)
3. 連入遊戲機: 複製遊戲機`外部IP`>輸入`外部IP`至`Chrome VNC`的`Adress輸入框`>點選`Connect`>再次點選`Connect`確認>輸入你設定好的`VNC密碼`
![](https://i.imgur.com/r0g3Cu9.png)
![](https://i.imgur.com/IOqRu9C.png)
![](https://i.imgur.com/2ZLH1l9.png)
4. 連入後先把**音效啟用**
![](https://i.imgur.com/FbV604d.png)
![](https://i.imgur.com/nLAlGIq.png)
5. 設置`Parsec`: 打開`Parsec`>輸入`帳號/密碼`>到`Email`裡點選確認信>再次`Login`>點選`Share`啟用遊戲串流>點選`Run when my computer starts`
![](https://i.imgur.com/QN0SqmT.png)
![](https://i.imgur.com/tGzWEqk.png)
![](https://i.imgur.com/9F0jAKk.png)
![](https://i.imgur.com/ywT7WVh.png)
![](https://i.imgur.com/LaH0N8Y.png)
![](https://i.imgur.com/nTiNcQh.png)

## 來玩吧~!

1. 在自己的電腦上也安裝`Parsec`並且打開他
![](https://i.imgur.com/f5kHNsX.jpg)
2. 點選`Connect`連入遊戲機
![](https://i.imgur.com/tC6dboB.jpg)

## 來看看成品吧!

我們採用GTA5來做一個示範 預設效能 在雲端虛擬機上有50~60fps的效果

![](https://i.imgur.com/615ET5m.jpg)

在正常網速網路下 串流的流暢度如下

<div align="center">
  <img src="https://i.imgur.com/2kaZ3Iz.gif" width="700"/>
</div>

## 你想用手機來玩?

好的 cloud-gaming聽到你的願望惹 請看這篇[教學](https://github.com/superj80820/cloud-gaming/blob/master/tutorial/phoneLink.md) 非常簡單