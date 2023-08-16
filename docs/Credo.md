Install efm-langserver (https://github.com/mattn/efm-langserver)

To add credo, install efm-langserver (with brew for instance), and add a file named:

.config/efm-langserver/config.yaml

With this content

```
version: 2
tools:
  mix_credo: &mix_credo
    lint-command: "MIX_ENV=test mix credo suggest --format=flycheck --read-from-stdin ${INPUT}"
    lint-stdin: true
    lint-formats:
      - '%f:%l:%c: %t: %m'
      - '%f:%l: %t: %m'
    lint-category-map:
      R: N
      D: I
      F: E
      W: W
    root-markers:
      - mix.lock
      - mix.exs
languages:
  elixir:
    - <<: *mix_credo
```
