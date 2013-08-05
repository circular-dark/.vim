#.vim

####Copy

	git clone --recursive https://github.com/circular-dark/.vim.git

####Settings and Commands

#####.vimrc

	<F2>: paste toggle, maintaining original format of pasting content
	<F8>: toggle Tagbar
	<F9>: toggle NERDTree

	<Leader> key is ","
	<Leader>q: quit without saving
	<Leader>w: save changes
	<Leader>e: save and quit current window
	<Leader>E: save and quit all windows
	<Leader>is: alternate between header and source files

	<c-j>: move to the window below
	<c-k>: move to the window above
	<c-l>: move to the right window
	<c-h>: move to the left window
	<c-n>: cancel highlights on findings

#####clang_complete + supertab

	<Tab>: showing completion options
	<c-]>: find definition
	<c-t>: jump back from definition

#####vim-commentary

	gc: action command to toggle comment
	gcu: action command to cancel comment
