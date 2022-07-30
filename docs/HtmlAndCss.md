Html and Css autocompletion are already configured, but the following steps are required to install the language server:

- Install the language servers through npm: `sudo npm install --global vscode-html-languageserver-bin vscode-css-languageserver-bin`
- I couldn't find a way to change the executable called by the language server plugin in lsconfig, adding a symbolic link to them using another name seemed to work:
  - `sudo ln -s /usr/local/bin/css-languageserver /usr/local/bin/vscode-css-language-server`
  - `sudo ln -s /usr/local/bin/css-languageserver /usr/local/bin/vscode-css-language-server`
