# 修復解析度太高 Error Code: -1309 The hosting computer's resolution is too high

如果你在使用Parsec得時候出現了**Error Code: -1309**

![](https://i.imgur.com/iPxXUKe.png)

主要是Parsec最高支援解析度為4k(3840×2160) 而虛擬機最高支援解析度為4k的另一種規格(4096×2160) 所以會導致[錯誤](https://support.parsecgaming.com/hc/en-us/articles/360000159992-Error-Codes-13009-Unsupported-Resolution-On-Host-Computer-)

![](https://i.imgur.com/rD8lBxa.png)

## 解決辦法

可以利用VNC連入虛擬機 調整解析度之後 在使用Parsec 即可解決


1. 複製虛擬機IP
![](https://i.imgur.com/KR9d5Bv.png)
2. 貼入[Chrome VNC](https://chrome.google.com/webstore/detail/vnc%C2%AE-viewer-for-google-ch/iabmpiboiopbgfabjmgeedhcmjenhbla) 並Connect
![](https://i.imgur.com/Z9hovNU.png)
3. 進入虛擬機會發現黑黑一片 我們只要按`Alt+Enter` 即可自動調整成合適的解析度
![](https://i.imgur.com/VGUDAnE.png)
4. 解析度調整完畢畫面就會出現了
![](https://i.imgur.com/m6aiAoq.png)
5. 之後在用Parsec連入即可
![](https://i.imgur.com/lJC8KL8.png)
6. 然後調整成自己想要的遊戲解析度 只要不超過4k(3840×2160)即可
![](https://i.imgur.com/xZ9VhqZ.jpg)