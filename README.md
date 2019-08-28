<div align="center">
    <a href="https://gridea.dev">
        <img src="https://i.imgur.com/hPEhsbM.png" width="80px">
    </a>
    <h1 align="center">
   cloud-gaming
  </h1>
    <h3 align="center">
    一起來雲端遊戲吧！
  </h3>

  <a href="https://github.com/getgridea/gridea/releases/latest">
    <img src="https://img.shields.io/github/release/getgridea/gridea.svg?style=flat-square" alt="">
  </a>

  <a href="https://github.com/getgridea/gridea/blob/master/LICENSE">
    <img src="https://img.shields.io/github/license/getgridea/gridea.svg?style=flat-square" alt="">
  </a>
</div>

## 介紹👇
🏷 雲端遊戲一直是一個有趣的遊戲方案 例如: PS Now, xCloud 以及即將推出的Google Stadia

🌉 不過這些方案有些需要買主機 有些有ping延遲的問題 有些需要月租 讓玩家無法獲得很好的體驗

📋 是否有個方案是可以用便宜的價格來玩到高規格的遊戲？

📝 我想你可以考慮一下 cloud-gaming!

## 怎麼做到的👇

使用**Google Cloud Platform** 配合**先佔狀態**並使用**300美金免費額度** 創建雲端虛擬主機

考慮到網速, 規格 目前有台灣, 日本, 新加坡 適合台灣玩家串流遊戲

* ⚠️ 每個位置的GPU 價格不同

* ⚠️ 串流速度快慢分別是 台灣 > 日本 > 新加坡 不過我的體驗下是三個位置的速度都不賴

請依照此兩點選擇最適合你的遊戲虛擬機

## 虛擬機規格👇

作業系統: Windows Server 2016 Datacenter

CPU: n1-standard-4 (4 個 vCPU,15 GB 記憶體)

GPU/花費:

* 台灣 - P100/每小時約為 $0.669, V100/每小時約為 $0.979

* 日本 - T4/每小時約為 $0.568

* 新加坡 - P4/每小時約為 $0.462, T4/每小時約為 $0.556

## 你需要準備👇

* 📝 [chrome VNC](https://chrome.google.com/webstore/detail/vnc%C2%AE-viewer-for-google-ch/iabmpiboiopbgfabjmgeedhcmjenhbla): 點進去安裝即可~

* 💬 [chrome RDP](https://chrome.google.com/webstore/detail/chrome-rdp-for-google-clo/mpbbnannobiobpnfblimoapbephgifkm): 點進去安裝即可~

* 🌎 [Parsec](https://parsecgaming.com/downloads): 點進去安裝即可~

* 🌁 [申請 GCP GPU 一顆](https://github.com/superj80820/cloud-gaming/blob/master/tutorial/applyGPU.md): 點進去看申請教學!

* 🖥 你想玩的遊戲! 我這邊用Steam來介紹

## 開始吧！

[![Open in Cloud Shell](https://i.imgur.com/xz43E92.png)](https://console.cloud.google.com/cloudshell/editor?cloudshell_git_repo=https%3A%2F%2Fgithub.com%2Fsuperj80820%2Fcloud-gaming.git&cloudshell_tutorial=tutorial/createInstance.md)

## 聯繫
<a href="https://discord.gg/dCGHvc4">
  <img hspace="3" alt="Discord channel" src="https://camo.githubusercontent.com/e4a739df27356a78e9cae2e2dda642d118567e7c/68747470733a2f2f737465616d63646e2d612e616b616d616968642e6e65742f737465616d636f6d6d756e6974792f7075626c69632f696d616765732f636c616e732f32373039303534312f386464356339303766326130656563623733646336613437373666633961323538373865626364642e706e67" width=150px/>
</a>