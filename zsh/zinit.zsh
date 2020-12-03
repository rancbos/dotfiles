source ~/.zinit/bin/zinit.zsh

# Theme
zinit ice depth=1; zinit light romkatv/powerlevel10k

# 使用 fzf 取代 zsh 的内置补全选择菜单！
zinit light Aloxaf/fzf-tab

# 快速目录跳转
zinit ice lucid wait='1'
zinit light skywind3000/z.lua
#zinit light wting/autojump

# 语法高亮
zinit ice lucid wait='0' atinit='zpcompinit'
zinit light zdharma/fast-syntax-highlighting

# 自动建议
zinit ice lucid wait="0" atload='_zsh_autosuggest_start'
zinit light zsh-users/zsh-autosuggestions

# 补全
zinit ice lucid wait='0'
zinit light zsh-users/zsh-completions

# 加载 OMZ 框架及部分插件
zinit snippet OMZ::lib/completion.zsh
zinit snippet OMZ::lib/history.zsh
zinit snippet OMZ::lib/key-bindings.zsh
zinit snippet OMZ::lib/theme-and-appearance.zsh
zinit snippet OMZ::plugins/colored-man-pages/colored-man-pages.plugin.zsh
zinit snippet OMZ::plugins/sudo/sudo.plugin.zsh

zinit snippet OMZ::plugins/extract

zinit ice lucid wait='1'
zinit snippet OMZ::plugins/git/git.plugin.zsh



##########
## fzf-tab
##########

# （实验性功能，未来可能更改）
# 一些定义 extract 变量的样板代码
# 稍后需要使用这个变量，请记得复制这段代码
local extract="
# 提取输入（当前选择的内容）
local in=\${\${\"\$(<{f})\"%\$'\0'*}#*\$'\0'}
# 获取当前补全状态的上下文（待补全内容的前面或者后面的东西）
local -A ctxt=(\"\${(@ps:\2:)CTXT}\")
# 真实路径
local realpath=\${ctxt[IPREFIX]}\${ctxt[hpre]}\$in
realpath=\${(Qe)~realpath}
"

zstyle ':fzf-tab:*' single-group ''
# 当补全 _zlua 时，使用输入作为查询字符串
zstyle ':fzf-tab:complete:_zlua:*' query-string input
# 补全 `kill` 命令时提供命令行参数预览
zstyle ':fzf-tab:complete:kill:argument-rest' extra-opts --preview=$extract'ps --pid=$in[(w)1] -o cmd --no-headers -w -w' --preview-window=down:3:wrap
# 补全 cd 时使用 lsd 预览其中的内容
zstyle ':fzf-tab:complete:cd:*' extra-opts --preview=$extract'lsd -1 --color=always $realpath'
