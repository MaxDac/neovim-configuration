Html and Css autocompletion are already configured, but the following steps are required to install the language server:

- Install the language servers through npm: `sudo npm install --global vscode-html-languageserver-bin vscode-css-languageserver-bin typescript-language-server`
- The configuration should handle the commands as they are when installed, if not remap them using symbolic links
```bash
`sudo ln -s /usr/local/lib/<node_folder>/bin/css-languageserver /usr/local/bin/css-languageserver`
`sudo ln -s /usr/local/lib/<node_folder>/bin/html-languageserver /usr/local/bin/html-languageserver`
`sudo ln -s /usr/local/lib/<node_folder>/bin/typescript-languageserver /usr/local/bin/typescript-languageserver`
`sudo ln -s /usr/local/bin/css-languageserver /usr/local/bin/vscode-css-language-server`
`sudo ln -s /usr/local/bin/html-languageserver /usr/local/bin/vscode-html-language-server`
`sudo ln -s /usr/local/bin/typescript-language-server /usr/local/bin/typescript-language-server`
```
