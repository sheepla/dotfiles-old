from powerline_shell.themes.default import DefaultColor

palette = {
    'black'   : 0,
    'red'     : 1,
    'green'   : 2,
    'yellow'  : 3,
    'blue'    : 4,
    'purple'  : 5,
    'cyan'    : 6,
    'gray'    : 7,
    'b_black' : 8,
    'white'   : 15
}

class Color(DefaultColor):
    """Basic theme which only uses colors in 0-15 range"""

    # user and host
    USERNAME_FG = palette['white']
    USERNAME_BG = palette['black']
    USERNAME_ROOT_FG = palette['black']
    USERNAME_ROOT_BG = palette['red']
    HOSTNAME_FG = palette['white']
    HOSTNAME_BG = palette['black']

    # path
    HOME_SPECIAL_DISPLAY = True
    HOME_FG = palette['black']
    HOME_BG = palette['blue']
    PATH_FG = palette['white']
    PATH_BG = palette['b_black']
    CWD_FG  = palette['white']
    CWD_BG  = palette['b_black']
    SEPARATOR_FG = palette['white']

    # read only
    READONLY_FG = palette['white']
    READONLY_BG = palette['red']

    # git --------------------------------
    # _________
    # >_master_>
    # branch name
    REPO_CLEAN_FG = palette['black']
    REPO_CLEAN_BG = palette['green']
    REPO_DIRTY_FG = palette['black']
    REPO_DIRTY_BG = palette['blue']
    # ? untracked
    GIT_UNTRACKED_FG  = palette['white']
    GIT_UNTRACKED_BG  = palette['b_black']
    # * conflicted
    GIT_CONFLICTED_FG = palette['red']
    GIT_CONFLICTED_BG = palette['black']
    GIT_AHEAD_FG      = palette['cyan']
    GIT_AHEAD_BG      = palette['black']
    GIT_BEHIND_FG     = palette['purple']
    GIT_BEHIND_BG     = palette['black']
    # (check-mark) staged
    GIT_STAGED_FG     = palette['green']
    GIT_STAGED_BG     = palette['black']
    # (pen) modified
    GIT_NOTSTAGED_FG  = palette['blue']
    GIT_NOTSTAGED_BG  = palette['black']

    JOBS_FG = palette['white']
    JOBS_BG = palette['black']

    SSH_FG = palette['black']
    SSH_BG = palette['purple']

    # ____
    # >_$_> segment
    CMD_PASSED_FG = palette['white']
    CMD_PASSED_BG = palette['black']
    CMD_FAILED_FG = palette['red'] 
    CMD_FAILED_BG = palette['black']

    SVN_CHANGES_BG = REPO_DIRTY_BG
    SVN_CHANGES_FG = REPO_DIRTY_FG

    VIRTUAL_ENV_BG = palette['yellow']
    VIRTUAL_ENV_FG = palette['black']

    AWS_PROFILE_FG = palette['white']
    AWS_PROFILE_BG = palette['b_black']

    TIME_FG = palette['white']
    TIME_BG = palette['black']

