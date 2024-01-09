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

要將資料夾上傳到主分支，將master改成main
