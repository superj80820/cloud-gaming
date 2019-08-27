# cloud-gaming 遊戲虛擬機建立步驟

## 開始吧!

設置總共會分為兩個大部分:
1. 在Cloud-Shell 建立虛擬機
2. 使用桌面軟體進入虛擬機進行設置

我們現在就從第一部份開始吧!

**約花時間**: 2分鐘

##  初始化專案

```
sudo pip3 install pipenv &&\
pipenv --three &&\
pipenv install
```

## 選擇專案Id 並建立遊戲虛擬機

創建虛擬機
```
pipenv run python init.py
```

接下來會出現幾個選項
1. `Please select your project` > 請選擇你的專案
2. `Please select your country` > 請選擇離你最近的國家 這樣串流會最穩定
3. `Are you want preemptible` > 詢問你是否想使用**先佔狀態** Cloud-gaming建議你使用 因為價格更為便宜
4. 等待虛擬機建立完畢~!

## 創建遊戲虛擬機完成了!

<walkthrough-conclusion-trophy></walkthrough-conclusion-trophy>

接下來 請進入遊戲虛擬機進行設定 cloud-gaming已經幫您簡化了許多步驟 [點我進入教學](https://github.com/superj80820/cloud-gaming/blob/master/tutorial/vmSet.md)