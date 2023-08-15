Before starting, Node, npm and yarn must be installed in the machine. For WSL2, remember to add the following configuration line to `/etc/wsl.conf`:

```bash
[interop]
appendWindowsPath=false
```

Html and Css autocompletion are already configured, but the following steps are required to install the language server:

- Install the language servers through npm: `sudo npm install --global vscode-html-languageserver-bin vscode-css-languageserver-bin typescript-language-server`
- Install Tailwind language server with `npm install -g @tailwindcss/language-server`
- The configuration should handle the commands as they are when installed, if not remap them using symbolic links

```bash
NODE_PATH=node-v18.16.1-linux-x64
sudo ln -s /usr/local/lib/$NODE_PATH/bin/css-languageserver /usr/local/bin/css-languageserver
sudo ln -s /usr/local/lib/$NODE_PATH/bin/html-languageserver /usr/local/bin/html-languageserver
sudo ln -s /usr/local/lib/$NODE_PATH/bin/typescript-languageserver /usr/local/bin/typescript-languageserver
sudo ln -s /usr/local/bin/css-languageserver /usr/local/bin/vscode-css-language-server
sudo ln -s /usr/local/bin/html-languageserver /usr/local/bin/vscode-html-language-server
sudo ln -s /usr/local/bin/typescript-languageserver /usr/local/bin/vscode-typescript-language-server
```
