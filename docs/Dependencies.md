- Install zsh, Oh My zsh and PowerLevel10k ([here](https://dev.to/abdfnx/oh-my-zsh-powerlevel10k-cool-terminal-1no0))
- Install Erlang and Elixir ([download the packages here](https://www.erlang-solutions.com/downloads/))
- An alternative way to install Erlang and Elixir is with `asdf`. It works well with zsh:
  - Follow [this guide](https://asdf-vm.com/guide/getting-started.html) to install asdf.
  - Follow [this guide](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/asdf) to integrate asdf with zsh.
  - Install [the Elixir and Erlang asdf plugin](https://github.com/asdf-vm/asdf-elixir).
  - `asdf` can install precompiled versions of Elixir and Erlang that can be found at [this website](https://bobs-list.kobrakai.de). Or alternatively, you can execute `asdf install elixir ref:<commit reference>`, taking the reference from the version list that can be found [here](https://github.com/elixir-lang/elixir/releases).
- If Elixir is not available directly for the latest version of Erlang, please refer to [this page](https://elixir-lang.org/install.html#precompiled-package) for precompiled packages.
- ~~Install elixir-ls ([here](https://github.com/elixir-lsp/elixir-ls#building-and-running))~~ It is recommend while using ASDF to install the [release](https://github.com/elixir-lsp/elixir-ls/releases) files instead. They are already compiled, so it would be only copy the inflated archive to the directory of choosing.

### Note

It can happen that `elixir-ls` produces sh that are of incorrect format. In this case, follow the information listed
at [this link](https://stackoverflow.com/a/27934455/8620481)
