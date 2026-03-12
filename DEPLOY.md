# Vercel 重新部署步骤

## 一、部署前检查

1. 确保项目根目录有：`index.html`、`css/`、`js/`、`assets/`、`articles/`
2. 确保 `vercel.json` 和 `.vercelignore` 存在

## 二、部署步骤（傻瓜式）

### 方法 A：命令行部署（推荐）

1. 打开终端（Terminal）
2. 进入项目目录：
   ```bash
   cd "/Users/fanjianyi/Desktop/第一周作业/个人网站2"
   ```
3. 执行部署：
   ```bash
   npx vercel --prod
   ```
4. 等待 1–2 分钟，看到 `Production: https://xxx.vercel.app` 即部署成功

### 方法 B：Vercel 网页部署

1. 打开 https://vercel.com 并登录
2. 点击「Add New」→「Project」
3. 若已连接 Git：选择仓库，点击 Deploy
4. 若未连接：将项目文件夹拖入页面，或使用 Vercel CLI（见方法 A）

## 三、验证方法

### 方法 1：本机多浏览器测试

- Chrome：打开网站，检查样式、图片、链接
- Safari / Edge：同样检查
- 手机模式：Chrome 开发者工具 → 切换设备模拟 → 刷新

### 方法 2：手机真机测试

- 用手机浏览器访问：https://personal-website-six-self.vercel.app
- 检查：首页、文章、关于我、摄影、人物效果

### 方法 3：请他人访问

- 把链接发给朋友或家人
- 让对方用手机或电脑打开，确认能否正常加载
