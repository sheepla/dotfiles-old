set guifont=PlemolJP\ Console\ Text:h12

if exists('g:nvim-qt')
    GuiTabline 0
    GuiPopupmenu 0
    "Guifont! HackGenNerd\ Console:h11
    "Guifont! Iosevka\ Term\ Curly\ Extended:h11
    "GuiFont! Sarasa\ Term\ J:h11
    "GuiFont! Sarasa\ Fixed\ J:h11
    GuiFont! PlemolJP\ Console:h11
    GuiLinespace -1
endif
" Other configuration
if exists('g:nvui')
    NvuiCmdBg #444b71
    NvuiCmdBigFontScaleFactor 1.0
    NvuiCmdFg #abb0c9
    NvuiCmdFontFamily PlemolJP Console
    NvuiCmdFontSize 12
    NvuiCmdFontSize 25.0
    NvuiCmdPadding 10 
    NvuiCmdTopPos 0.8
    NvuiOpacity 0.9
    NvuiPopupMenuBorderColor #444b71
    NvuiPopupMenuBorderWidth 5
    NvuiScrollAnimationDuration 0.2
    NvuiTitlebarFontSize 11
    NvuiToggleFrameless
endif
