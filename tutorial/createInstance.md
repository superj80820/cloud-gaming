# cloud-gaming 遊戲虛擬機建立步驟

## 開始吧!

設置總共會分為兩個大部分:
1. 在Cloud-Shell 建立虛擬機
2. 使用桌面軟體進入虛擬機進行設置

我們現在就從第一部份開始吧!

**約花時間**: 2分鐘

##  初始化專案

請複製此指令到Cloud-Shell執行 並等待執行完畢
```
sudo pip3 install pipenv &&\
pipenv --three &&\
pipenv install
```

## 選擇專案Id 並建立遊戲虛擬機

請複製此指令到Cloud-Shell執行 並開始選擇創建選項
```
pipenv run python init.py
```

接下來會出現幾個選項
1. `Please select your project` > 請選擇你的專案
2. `Please select your country` > 請選擇離你最近的國家 這樣串流會最穩定
3. `Please select your CPU` > 請選擇適合你的CPU數量 如果要玩一般的遊戲可選擇`4-cpu` 如果要玩高規格遊戲可選擇`8-cpu` CPU數量越多花費越高
4. `Please select your GPU` > 請選擇想要使用的GPU
5. `Are you want preemptible` > 詢問你是否想使用**先佔狀態** Cloud-gaming建議你使用 因為價格更為便宜 關於什麼是先站狀態可以點選此[連結](https://github.com/superj80820/cloud-gaming/blob/master/tutorial/Q&A.md#%E5%8D%87%E7%B4%9A%E4%BB%98%E8%B2%BB%E5%B8%B3%E6%88%B6%E6%9C%83%E9%9C%80%E8%A6%81%E9%8C%A2%E5%97%8E)
6. 等待虛擬機建立完畢~!

## 創建遊戲虛擬機完成了!

<walkthrough-conclusion-trophy></walkthrough-conclusion-trophy>

接下來 請進入遊戲虛擬機進行設定 cloud-gaming已經幫您簡化了許多步驟 [點我進入教學](https://github.com/superj80820/cloud-gaming/blob/master/tutorial/vmSet.md)