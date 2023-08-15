local fmt = string.format
local pack_path = vim.fn.stdpath("data") .. "/site/pack"

-- ensure a given plugin from github.com/<user>/<repo> is cloned in the pack/packer/start directory
local function ensure (user, repo)
  local install_path = fmt("%s/packer/start/%s", pack_path, repo)
  if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
    vim.api.nvim_command(fmt("!git clone https://github.com/%s/%s %s", user, repo, install_path))
    vim.api.nvim_command(fmt("packadd %s", repo))
  end
end

-- ensure the plugin manager is installed
ensure("wbthomason", "packer.nvim")
