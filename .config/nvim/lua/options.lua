-- This file is automatically loaded by plugins.config
vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.g.loaded_python3_provider = 0
vim.g.loaded_ruby_provider = 0
vim.g.loaded_node_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.markdown_recommended_style = 0 -- fix markdown indentation settings

vim.o.allowrevins = false -- allow CTRL-_ in Insert and Command-line mode
vim.o.ambiwidth = "single" -- what to do with Unicode chars of ambiguous width
vim.o.arabic = false
vim.o.arabicshape = true
vim.o.autochdir = false
vim.o.autoindent = true
vim.o.autoread = true
-- vim.o.autowrite = false
vim.o.autowrite = true --
vim.o.autowriteall = false
vim.o.background = "dark"
vim.o.backspace = "indent,eol,start"
vim.o.backup = false
vim.o.backupcopy = "auto"
vim.o.backupdir = ".,$XDG_STATE_HOME/nvim/backup//"
vim.o.backupext = "~"
vim.o.backupskip = "/tmp/*"
vim.o.belloff = "all"
vim.o.binary = false
vim.o.bomb = false
vim.o.breakat = " \t!@*-+;:,./?"
vim.o.breakindent = false
vim.o.breakindentopt = ""
-- vim.o.browsedir = ""
vim.o.bufhidden = ""
vim.o.buflisted = true
vim.o.buftype = ""
vim.o.casemap = "internal,keepascii"
vim.o.cdhome = false
vim.o.cdpath = ",,"
vim.o.cedit = "\6"
-- vim.o.channel = 0
vim.o.charconvert = ""
vim.o.cindent = false
vim.o.cinkeys = "0{,0},0),0],:,0#,!^F,o,O,e"
vim.o.cinoptions = ""
vim.o.cinscopedecls = "public,protected,private"
vim.o.cinwords = "if,else,while,do,for,switch"
-- vim.o.clipboard = ""
vim.o.clipboard = "unnamedplus" -- sync with system clipboard
vim.o.cmdheight = 1
vim.o.cmdwinheight = 7
vim.o.colorcolumn = ""
vim.o.columns = 80
vim.o.comments = "s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-,fb:•"
vim.o.commentstring = ""
vim.o.complete = ".,w,b,u,t"
vim.o.completefunc = ""
-- vim.o.completeopt = "menu,preview"
vim.o.completeopt = "menu,menuone,noselect" --
-- vim.o.completeslash = ""
vim.o.concealcursor = ""
vim.o.conceallevel = 0
-- vim.o.confirm = false
vim.o.confirm = true -- confirm to save changes before exiting modified buffer
vim.o.copyindent = false
vim.o.cpoptions = "aABceFs_"
vim.o.cursorbind = false
vim.o.cursorcolumn = false
-- vim.o.cursorline = false
vim.o.cursorline = true -- Enable highlighting of the current line
vim.o.cursorlineopt = "both"
vim.o.debug = ""
vim.o.define = ""
vim.o.delcombine = false
vim.o.dictionary = ""
vim.o.diff = false
vim.o.diffexpr = ""
vim.o.diffopt = "internal,filler,closeoff"
vim.o.digraph = false
vim.o.directory = "$XDG_STATE_HOME/nvim/swap//"
vim.o.display = "lastline"
vim.o.eadirection = "both"
vim.o.emoji = true
vim.o.encoding = "utf-8"
vim.o.endoffile = false
vim.o.endofline = true
vim.o.equalalways = true
vim.o.equalprg = ""
vim.o.errorbells = false
vim.o.errorfile = "errors.err"
vim.o.errorformat =
"%*[^\"]\"%f\"%*\\D%l: %m,\"%f\"%*\\D%l: %m,%-Gg%\\?make[%*\\d]: *** [%f:%l:%m,%-Gg%\\?make: *** [%f:%l:%m,%-G%f:%l: (Each undeclared identifier is reported only once,%-G%f:%l: for each function it appears in.),%-GIn file included from %f:%l:%c:,%-GIn file included from %f:%l:%c\\,,%-GIn file included from %f:%l:%c,%-GIn file included from %f:%l,%-G%*[ ]from %f:%l:%c,%-G%*[ ]from %f:%l:,%-G%*[ ]from %f:%l\\,,%-G%*[ ]from %f:%l,%f:%l:%c:%m,%f(%l):%m,%f:%l:%m,\"%f\"\\, line %l%*\\D%c%*[^ ] %m,%D%*\\a[%*\\d]: Entering directory %*[`']%f',%X%*\\a[%*\\d]: Leaving directory %*[`']%f',%D%*\\a: Entering directory %*[`']%f',%X%*\\a: Leaving directory %*[`']%f',%DMaking %*\\a in %f,%f|%l| %m"
vim.o.eventignore = ""
-- vim.o.expandtab = false
vim.o.expandtab = true -- Use spaces instead of tabs
vim.o.exrc = false
vim.o.fileencoding = ""
-- vim.o.fileencodings = "ucs-bom,utf-8,default,latin1"
vim.o.fileencodings = "ucs-bom,utf-8,euc-jp,iso-2022-jp,cp932,sjis,latin1" --
vim.o.fileformat = "unix"
-- vim.o.fileformats = "unix,dos"
vim.o.fileformats = "unix,dos,mac" --
vim.o.fileignorecase = false
vim.o.filetype = ""
vim.o.fillchars = ""
vim.o.fixendofline = true
vim.o.foldclose = ""
vim.o.foldcolumn = "0"
vim.o.foldenable = true
vim.o.foldexpr = "0"
vim.o.foldignore = "#"
vim.o.foldlevel = 0
vim.o.foldlevelstart = -1
vim.o.foldmarker = "{{{,}}}"
vim.o.foldmethod = "manual"
vim.o.foldminlines = 1
vim.o.foldnestmax = 20
vim.o.foldopen = "block,hor,mark,percent,quickfix,search,tag,undo"
vim.o.foldtext = "foldtext()"
vim.o.formatexpr = ""
vim.o.formatlistpat = "^\\s*\\d\\+[\\]:.)}\\t ]\\s*"
vim.o.formatoptions = "jcroqlnt" -- tcqj
-- vim.o.formatoptions = "tcqj"
vim.o.formatprg = ""
vim.o.fsync = true
vim.o.gdefault = false
vim.o.grepformat = "%f:%l:%c:%m" --
-- vim.o.grepformat = "%f:%l:%m,%f:%l%m,%f  %l%m"
-- vim.o.grepprg = "grep -n $* /dev/null"
vim.o.grepprg = "rg --vimgrep" --
vim.o.guicursor = "n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20"
-- vim.o.guifont = ""
vim.o.guifont = "FiraCode Nerd Font:h11" --
vim.o.guifontwide = ""
-- vim.o.guioptions = ""
-- vim.o.guitablabel = ""
-- vim.o.guitabtooltip = ""
vim.o.helpfile = "$VIMRUNTIME/doc/help.txt"
vim.o.helpheight = 20
vim.o.helplang = ""
vim.o.hidden = true
vim.o.history = 10000
vim.o.hlsearch = true
vim.o.icon = false
vim.o.iconstring = ""
-- vim.o.ignorecase = false
vim.o.ignorecase = true -- Ignore case
-- vim.o.imcmdline = false
-- vim.o.imdisable = false
vim.o.iminsert = 0
vim.o.imsearch = -1
vim.o.inccommand = "nosplit"
vim.o.include = ""
vim.o.includeexpr = ""
vim.o.incsearch = true
vim.o.indentexpr = ""
vim.o.indentkeys = "0{,0},0),0],:,0#,!^F,o,O,e"
vim.o.infercase = false
vim.o.isfname = "@,48-57,/,.,-,_,+,,,#,$,%,~,="
vim.o.isident = "@,48-57,_,192-255"
vim.o.iskeyword = "@,48-57,_,192-255"
vim.o.isprint = "@,161-255"
vim.o.joinspaces = false
vim.o.jumpoptions = ""
vim.o.keymap = ""
vim.o.keymodel = ""
vim.o.keywordprg = ":Man"
vim.o.langmap = ""
-- vim.o.langmenu = ""
vim.o.langmenu = vim.env.LANG --
vim.o.langremap = false
vim.o.laststatus = 0          --
-- vim.o.laststatus = 2
vim.o.lazyredraw = false
vim.o.linebreak = false
vim.o.lines = 24
vim.o.linespace = 0
vim.o.lisp = false
vim.o.lispoptions = ""
vim.o.lispwords =
"defun,define,defmacro,set!,lambda,if,case,let,flet,let*,letrec,do,do*,define-syntax,let-syntax,letrec-syntax,destructuring-bind,defpackage,defparameter,defstruct,deftype,defvar,do-all-symbols,do-external-symbols,do-symbols,dolist,dotimes,ecase,etypecase,eval-when,labels,macrolet,multiple-value-bind,multiple-value-call,multiple-value-prog1,multiple-value-setq,prog1,progv,typecase,unless,unwind-protect,when,with-input-from-string,with-open-file,with-open-stream,with-output-to-string,with-package-iterator,define-condition,handler-bind,handler-case,restart-bind,restart-case,with-simple-restart,store-value,use-value,muffle-warning,abort,continue,with-slots,with-slots*,with-accessors,with-accessors*,defclass,defmethod,print-unreadable-object"
-- vim.o.list = false
vim.o.list = true -- Show some invisible characters (tabs...
vim.o.listchars = "tab:> ,trail:-,nbsp:+"
vim.o.loadplugins = true
vim.o.magic = true
vim.o.makeef = ""
vim.o.makeencoding = ""
vim.o.makeprg = "make"
vim.o.matchpairs = "(:),{:},[:]"
vim.o.matchtime = 5
vim.o.maxfuncdepth = 100
vim.o.maxmapdepth = 1000
vim.o.maxmempattern = 1000
vim.o.menuitems = 25
vim.o.mkspellmem = "460000,2000,500"
vim.o.modeline = true
vim.o.modelineexpr = false
vim.o.modelines = 5
vim.o.modifiable = true
vim.o.modified = false
vim.o.more = true
vim.o.mouse = "a" -- enable mouse mode
-- vim.o.mouse = "nvi"
vim.o.mousefocus = false
vim.o.mousehide = true
vim.o.mousemodel = "popup_setpos"
vim.o.mousemoveevent = false
vim.o.mousescroll = "ver:3,hor:6"
-- vim.o.mouseshape = ""
vim.o.mousetime = 500
vim.o.nrformats = "bin,hex"
-- vim.o.number = false
vim.o.number = true -- Print line number
vim.o.numberwidth = 4
vim.o.omnifunc = ""
-- vim.o.opendevice = false
vim.o.operatorfunc = ""
vim.o.packpath = "..."
vim.o.paragraphs = "IPLPPPQPP TPHPLIPpLpItpplpipbp"
vim.o.patchexpr = ""
vim.o.patchmode = ""
vim.o.path = ".,,"
vim.o.preserveindent = false
vim.o.previewheight = 12
vim.o.previewwindow = false
-- vim.o.pumblend = 0
vim.o.pumblend = 10  -- Popup blend
-- vim.o.pumheight = 0
vim.o.pumheight = 10 -- Maximum number of entries in a popup
vim.o.pumwidth = 15
vim.o.pyxversion = 3
vim.o.quickfixtextfunc = ""
vim.o.quoteescape = "\\"
vim.o.readonly = false
vim.o.redrawdebug = ""
vim.o.redrawtime = 2000
vim.o.regexpengine = 0
vim.o.relativenumber = false
vim.o.report = 2
vim.o.revins = false
vim.o.rightleft = false
vim.o.rightleftcmd = "search"
vim.o.ruler = true
vim.o.rulerformat = ""
-- vim.o.runtimepath = "..."
vim.o.scroll = 0
vim.o.scrollback = -1
vim.o.scrollbind = false
vim.o.scrolljump = 1
-- vim.o.scrolloff = 0
vim.o.scrolloff = 4 -- Lines of context
vim.o.scrollopt = "ver,jump"
vim.o.sections = "SHNHH HUnhsh"
vim.o.selection = "inclusive"
vim.o.selectmode = ""
vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions" --
-- vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,terminal"
vim.o.shada = "!,'100,<50,s10,h"
vim.o.shadafile = ""
vim.o.shell = "sh"
vim.o.shellcmdflag = "-c"
vim.o.shellpipe = "| tee"
vim.o.shellquote = ""
vim.o.shellredir = ">"
-- vim.o.shellslash = false
vim.o.shelltemp = true
vim.o.shellxescape = ""
vim.o.shellxquote = ""
-- vim.o.shiftround = false
vim.o.shiftround = true            -- Round indent
vim.o.shiftwidth = 2               -- Size of an indent
-- vim.o.shiftwidth = 8
vim.o.shortmess = "filnxtToOFWIcC" --
-- vim.o.shortmess = "ltToOCF"
vim.o.showbreak = ""
vim.o.showcmd = true
vim.o.showcmdloc = "last"
vim.o.showfulltag = false
vim.o.showmatch = false
vim.o.showmode = false -- dont show mode since we have a statusline
-- vim.o.showmode = true
vim.o.showtabline = 1
vim.o.sidescroll = 1
-- vim.o.sidescrolloff = 0
vim.o.sidescrolloff = 8  -- Columns of context
-- vim.o.signcolumn = "auto"
vim.o.signcolumn = "yes" -- Always show the signcolumn, otherwise it would shift the text each time
-- vim.o.smartcase = false
vim.o.smartcase = true   -- Don't ignore case with capitals
-- vim.o.smartindent = false
vim.o.smartindent = true -- Insert indents automatically
vim.o.smarttab = true
vim.o.smoothscroll = false
vim.o.softtabstop = 0
vim.o.spell = false
vim.o.spellcapcheck = "[.?!]\\_[\\])'\"\\t ]\\+"
vim.o.spellfile = ""
vim.o.spelllang = "en"
vim.o.spelloptions = ""
vim.o.spellsuggest = "best"
-- vim.o.splitbelow = false
vim.o.splitbelow = true    -- Put new windows below current
-- vim.o.splitkeep = "cursor"
vim.o.splitkeep = "screen" --
-- vim.o.splitright = false
vim.o.splitright = true    -- Put new windows right of current
vim.o.startofline = false
vim.o.statuscolumn = ""
vim.o.statusline = ""
vim.o.suffixes = ".bak,~,.o,.h,.info,.swp,.obj"
vim.o.suffixesadd = ""
vim.o.swapfile = true
vim.o.switchbuf = "uselast"
vim.o.synmaxcol = 3000
vim.o.syntax = ""
vim.o.tabline = ""
vim.o.tabpagemax = 50
vim.o.tabstop = 4 -- Number of spaces tabs count for
-- vim.o.tabstop = 8
vim.o.tagbsearch = true
vim.o.tagcase = "followic"
vim.o.tagfunc = ""
vim.o.taglength = 0
vim.o.tagrelative = true
vim.o.tags = "./tags;,tags"
vim.o.tagstack = true
vim.o.termbidi = false     -- vim.o.termguicolors = false
vim.o.termguicolors = true -- True color support
vim.o.termpastefilter = "BS,HT,ESC,DEL"
vim.o.termsync = true
vim.o.textwidth = 0
vim.o.thesaurus = ""
vim.o.thesaurusfunc = ""
vim.o.tildeop = false
vim.o.timeout = true
-- vim.o.timeoutlen = 1000
vim.o.timeoutlen = 300 --
vim.o.title = false
vim.o.titlelen = 85
vim.o.titleold = ""
vim.o.titlestring = ""
vim.o.ttimeout = true
vim.o.ttimeoutlen = 50
vim.o.undodir = "$XDG_STATE_HOME/nvim/undo//"
-- vim.o.undofile = false
vim.o.undofile = true    --
-- vim.o.undolevels = 1000
vim.o.undolevels = 10000 --
vim.o.undoreload = 10000
vim.o.updatecount = 200
vim.o.updatetime = 200 -- save swap file and trigger CursorHold
-- vim.o.updatetime = 4000
vim.o.varsofttabstop = ""
vim.o.vartabstop = ""
vim.o.verbose = 0
vim.o.verbosefile = ""
vim.o.viewdir = "$XDG_STATE_HOME/nvim/view//"
vim.o.viewoptions = "folds,cursor,curdir"
vim.o.virtualedit = ""
vim.o.visualbell = false
vim.o.warn = true
-- vim.o.whichwrap = "b,s"
vim.o.whichwrap = "b,s,h,l,[,],<,>,~" --
vim.o.wildchar = 9
vim.o.wildcharm = 0
vim.o.wildignore = ""
vim.o.wildignorecase = false
vim.o.wildmenu = true
-- vim.o.wildmode = "full"
vim.o.wildmode = "longest:full,full" -- Command-line completion mode
vim.o.wildoptions = "pum,tagfile"
vim.o.winaltkeys = "menu"
vim.o.winbar = ""
vim.o.winblend = 0
vim.o.window = 0
vim.o.winfixheight = false
vim.o.winfixwidth = false
vim.o.winheight = 1
vim.o.winhighlight = ""
vim.o.winminheight = 1
-- vim.o.winminwidth = 1
vim.o.winwidth = 20
vim.o.wrap = false -- Disable line wrap
-- vim.o.wrap = true
vim.o.wrapmargin = 0
vim.o.wrapscan = true
vim.o.write = true
vim.o.writeany = false
vim.o.writebackup = true
vim.o.writedelay = 0

vim.go.winminwidth = 5 -- minimum window width
