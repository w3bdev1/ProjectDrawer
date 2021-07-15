function PDListOfSubDir() abort
	" Save all sub directory paths in a list
	let l:DirPaths = []
	for l:Path in g:PDPaths 
		let l:SubDir = split(globpath(l:Path,"*/"), "\n")
		let l:DirPaths = extend(l:DirPaths, l:SubDir)
	endfor
	return l:DirPaths
endfunction

function! PDCustomPathCompletion(A,L,P) abort
	return PDListOfSubDir()
endfunction

command! -nargs=1 -complete=customlist,PDCustomPathCompletion PD cd <args> <bar> echo 'CWD → '..getcwd()
command! PDFZF call fzf#run(fzf#wrap({'source': PDListOfSubDir(), 'sink': 'cd'}))
