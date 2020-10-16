" Compile function

noremap r :call CompileRunGcc()<CR>
func! CompileRunGcc()
	exec "w"
	if &filetype == 'c'
		exec "!g++ % -o %<"
		exec "!time ./%<"
	elseif &filetype == 'cpp'
		set splitbelow
		exec "!g++ -std=c++11 % -Wall -o %<"
		:sp
		:res -15
		:term ./%<
	elseif &filetype == 'java'
		exec "!javac %"
		exec "!time java %<"
	elseif &filetype == 'sh'
		:!time bash %
	elseif &filetype == 'python'
		set splitbelow
		:sp
		:term python %
	elseif &filetype == 'html'
		silent! exec "!".g:mkdp_browser." % &"
	elseif &filetype == 'markdown'
		exec "MarkdownPreview"
	elseif &filetype == 'tex'
		silent! exec "VimtexStop"
		silent! exec "VimtexCompile"
	elseif &filetype == 'dart'
		exec "CocCommand flutter.run -d ".g:flutter_default_device
		silent! exec "CocCommand flutter.dev.openDevLog"
	elseif &filetype == 'javascript'
		set splitbelow
		:sp
		:term export DEBUG="INFO,ERROR,WARNING"; node --trace-warnings .
	elseif &filetype == 'go'
		set splitbelow
		:sp
		:term go run %
	endif
endfunc



" Initializing C/C++

autocmd BufNewFile *.cpp exec ":call CFamilyInit()"
autocmd BufNewFile *.c exec ":call CFamilyInit()"
func CFamilyInit()
	if expand("%:e") == "cpp"
		call setline(1,"/*")
		call setline(2,"*******************************************************************")
		call setline(3,"Author:                JW")
		call setline(4,"Date:                  ".strftime("%Y-%m-%d %T"))
		call setline(5,"FileName：             ".expand("%"))
		call setline(6,"Copyright (C):         ".strftime("%Y")." All rights reserved")
		call setline(7,"*******************************************************************")
		call setline(8,"*/")
		call setline(9,"#include<iostream>")
    	call setline(10,"")
    	call setline(11,"int main(int argc, const char *argv[]){")
    	call setline(12,"")
    	call setline(13,"  return 0;")
    	call setline(14,"}")
    elseif expand("%:e") == "c"
		call setline(1,"/*")
    	call setline(2,"*******************************************************************")
    	call setline(3,"Author:                JW")
    	call setline(4,"Date:                  ".strftime("%Y-%m-%d"))
    	call setline(5,"FileName：             ".expand("%"))
    	call setline(6,"Copyright (C):         ".strftime("%Y")." All rights reserved")
    	call setline(7,"*******************************************************************")
		call setline(8,"*/")
    endif
endfunc

autocmd BufNewFile * normal G'