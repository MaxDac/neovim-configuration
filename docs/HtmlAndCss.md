Html and Css autocompletion are already configured, but the following steps are required to install the language server:

- Install the language servers through npm: `sudo npm install --global vscode-html-languageserver-bin vscode-css-languageserver-bin`
- The configuration should handle the commands as they are when installed, if not remap them using symbolic links
  - `sudo ln -s /usr/local/bin/css-languageserver /usr/local/bin/vscode-css-language-server`
  - `sudo ln -s /usr/local/bin/css-languageserver /usr/local/bin/vscode-css-language-server`
