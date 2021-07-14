function ProjectDrawer() abort
	let l:DirPaths = split(globpath(g:ProjectDrawerPath,"*"), "\n")

	" Confirm string from list of directory paths
	let l:Counter = 0
	let l:ConfirmString = ""
	for l:DirPath in l:DirPaths
		let l:Counter += 1
		let l:ConfirmString = l:ConfirmString.."&"..l:Counter..l:DirPath.."\n"
	endfor

	" Store user choice
	let l:UserChoice = confirm("Select Project Directory", l:ConfirmString, 0)
	
	" Change cwd based on user choice
	if l:UserChoice ==# 0
		echo 'Aborted!'
		return
	else
		execute "cd "..l:DirPaths[l:UserChoice - 1]
		echo 'Changed Working Directory to '..getcwd()
	endif
endfunction
