## Violet Colorscheme

Inspired by [Solarized](http://ethanschoonover.com/solarized). An attempt to a better-looking Vim. Neat and clean.

![palette](https://github.com/ashfinal/bindata/raw/master/screenshots/vim-colors-violet-palette.png)

## Features

1. ☯️ Dark & Light

    ![preview](https://github.com/ashfinal/bindata/raw/master/screenshots/vim-colors-violet-preview.png)

    Every colorscheme should have dark and light background modes.

2. 🚢 [Airline](https://github.com/vim-airline/vim-airline) Theme

    ![airline](https://github.com/ashfinal/bindata/raw/master/screenshots/vim-colors-violet-airline.png)

    While using `violet` colorscheme, the included airline theme should be loaded automatically.

3. 🚥 Straightaway Switch

    `:set background=dark/light` This should do the trick.

    **Tips:** *I recommended to throw those lines below into your `.vimrc` file, then use `leader` + <kbd>b</kbd> to quickly switch between dark & light colorschemes.*

    ``` vim
    nnoremap <silent> <Leader>b :call ToggleBackground()<CR>
    function! ToggleBackground()
        if &background == "light"
            set background=dark
        else
            set background=light
        endif
    endfunction
    ```

4. 📺 256 Color Palette Mode

    Violet colorscheme was primarily created for 24bit truecolor editor (gvim/macvim), and I try my best to make it work in terminal emulators too.

    If you confirm that your terminal emulator supports 24bit truecolor (https://gist.github.com/XVilka/8346728), use `set termguicolors` to activate it.

    **Attention:** There is noticeable difference between 24bit truecolor mode and 256 color palette mode, due to the absence of approximate colors.

## Installation

If you are using [vim-plug](https://github.com/junegunn/vim-plug):

    Plug 'ashfinal/vim-colors-violet'

Then add this into your `.vimrc` file: `colorscheme violet`.

## Welcome to

Share your thoughts. :) Any question, file an issue.
