# 微算機系統
## git 教學 - 將本地端資料夾上傳至github
1. **在 GitHub 上建立一個新的儲存庫**

如果你已經在 GitHub 上建立了一個儲存庫，就可以直接使用它。
如果尚未建立，請在 GitHub 網站上建立一個新的儲存庫（Repository）

2. **在本地端初始化 Git**
  
打開終端（Terminal）或命令提示字元（Command Prompt），然後進入你的本地資料夾。
使用以下命令初始化 Git：
```
git init
```
這個動作會在本地資料夾建立.git檔案

3. **將本地資料夾與遠端 GitHub 儲存庫關聯**

使用以下命令加入遠端儲存庫 URL。請將 YOUR_GITHUB_REPO_URL 替換為你 GitHub 儲存庫的 URL
```
git remote add origin YOUR_GITHUB_REPO_URL
```

4. **加入要上傳的檔案到 Git 版本控制**

使用以下命令將所有檔案加入 Git 版本控制
```
git add .
```

5. **確認變更**

使用以下命令確認加入到版本控制的檔案
```
git status
```

6. **提交變更**

使用以下命令提交你的變更
```
git commit -m "Initial commit"
```

7. **上傳到 GitHub**

最後，使用以下命令將本地的變更推送（push）到遠端 GitHub 儲存庫：
```
git push origin master
```
如果你的預設分支不是 master，請將它替換為你的預設分支名稱

- 要將資料夾上傳到主分支，將 master 改成 main，但可能會遇到當初 git init 時預設的分支是 master，所以在執行完步驟2後，需要先執行
  - 創建新分支 ```git checkout -b main```

  - 設置 main 分支為預設分支 ```git branch -M main```

  - 執行步驟 3

  - 拉取遠端儲存庫的變更 ```git pull origin main --allow-unrelated-histories```

  - 再進行add、commit、push

- 直接上傳到master分支的問題
  - 因為 github 預設主分支是 main，想要把 master 移到 main 可能會發生 ```fatal: refusing to merge unrelated histories``` 的問題
  
  - 切換到 main 主分支 ```git checkout main``` (如果用 ```git branch``` 查看所有分支沒有顯示 main 的話，可能得先新增一個，然後按照上面說的方法跟遠端 pull)
  
  - 將 master 分支合併到 main ```git merge master --allow-unrelated-histories```
  
  - 刪除 master 分支 ```git push origin --delete master```
