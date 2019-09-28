# swift-guess-number

## environment
- [macOS 10.14.6](https://www.apple.com/tw/macos/mojave/)
- [Xcode 10.2.1](https://developer.apple.com/cn/support/xcode/)
- [Swift 4.2](https://swift.org)
- emulator iPhone XR(iOS 12.2)

## 猜數字
- 題目
```
一個人出數字，一方猜。
出數字的人要先想好一個沒有重複數字的4位數，例:8123，不能讓猜的人知道。
猜的人就可以開始猜。每猜一個數，出數者就要根據這個數字給出幾A幾B
```
  
- 範例
    - 答案 : 2468

| | 猜題 | 幾A幾B |
| :------: | :------: | :------: |
| 1 | 1234 | 0A2B |
| 2 | 5678 | 1A1B |
| 3 | 2648 | 2A2B |
| 4 | 2468 | 4A0B |

- 需求
    - 要可以兩個玩家互相連線，一個出題一個猜

## [Socket](https://github.com/swiftsocket/SwiftSocket)

### cmd
```shell
$ pwd # 顯示目前路徑 print working directory
$ ls # 該資料夾下的所有內容 list directory contents
$ ls -a # 連隱藏資料夾都顯示
$ cd # 開啟資料夾 change directory
$ cd .. # 回到上層目錄
$ touch # 建立檔案
$ man # 說明指令功能
$ mkdir # 新增資料夾 make diretory
$ cp # 複製 copy
$ mv # 移動 move
$ rm # 刪除 remove
$ sudo # 管理者權限 super user do
```

### 安裝套件(Carthage)
```shell
$ carthage version
$ pwd
$ ls
$ cd Desktop
$ ls
$ cd Test
$ touch Cartfile
$ github "swiftsocket/SwiftSocket"
$ carthage update
```

### Linked Framework and Libraries:
```
SwiftSocket.framework
Run Script:
/usr/local/bin/carthage
$(SRCROOT)/Carthage/Build/Mac/SwiftSocket.framework
```