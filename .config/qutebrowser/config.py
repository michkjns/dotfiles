# Autogenerated config.py
# Documentation:
#   qute://help/configuring.html
#   qute://help/settings.html

# Uncomment this to still load settings configured via autoconfig.yml
# config.load_autoconfig()
#c.qt.force_software_rendering = True
# Enable JavaScript.
# Type: Bool
config.set('content.javascript.enabled', True, 'file://*')

# Enable JavaScript.
# Type: Bool
config.set('content.javascript.enabled', True, 'chrome://*/*')

# Enable JavaScript.
# Type: Bool
config.set('content.javascript.enabled', True, 'qute://*/*')

# When to find text on a page case-insensitively.
# Type: String
# Valid values:
#   - always: Search case-insensitively.
#   - never: Search case-sensitively.
#   - smart: Search case-sensitively if there are capital characters.
c.search.ignore_case = 'smart'

# Search engines which can be used via the address bar. Maps a search
# engine name (such as `DEFAULT`, or `ddg`) to a URL with a `{}`
# placeholder. The placeholder will be replaced by the search term, use
# `{{` and `}}` for literal `{`/`}` signs. The search engine named
# `DEFAULT` is used when `url.auto_search` is turned on and something
# else than a URL was entered to be opened. Other search engines can be
# used by prepending the search engine name to the search term, e.g.
# `:open google qutebrowser`.
# Type: Dict
c.url.searchengines = {'DEFAULT': 'https://startpage.com/do/search?q={}',
						'yt': 'https://youtube.com/results?search_query={}',
						'8ch': 'https://8ch.net/{}',
                                                'osm': 'https://www.openstreetmap.org/search?query={}',
                                                'bing': 'https://www.bing.com/search?q={}'}

# Editor (and arguments) to use for the `open-editor` command. The
# following placeholders are defined: * `{file}`: Filename of the file
# to be edited. * `{line}`: Line in which the caret is found in the
# text. * `{column}`: Column in which the caret is found in the text. *
# `{line0}`: Same as `{line}`, but starting from index 0. * `{column0}`:
# Same as `{column}`, but starting from index 0.
# Type: ShellCommand
c.editor.command = ['st', '-e', 'vim {file}']

# CSS border value for hints.
# Type: String
c.hints.border = '1px solid #E3BE23'

# How to open links in an existing instance if a new one is launched.
# This happens when e.g. opening a link from a terminal. See
# `new_instance_open_target_window` to customize in which window the
# link is opened in.
# Type: String
# Valid values:
#   - tab: Open a new tab in the existing window and activate the window.
#   - tab-bg: Open a new background tab in the existing window and activate the window.
#   - tab-silent: Open a new tab in the existing window without activating the window.
#   - tab-bg-silent: Open a new background tab in the existing window without activating the window.
#   - window: Open in a new window.
c.new_instance_open_target = 'tab'

# Default monospace fonts. Whenever "monospace" is used in a font
# setting, it's replaced with the fonts listed here.
# Type: Font
c.fonts.monospace = 'Inconsolata, "xos4 Terminus", Terminus, Monospace, "DejaVu Sans Mono", Monaco, "Bitstream Vera Sans Mono", "Andale Mono", "Courier New", Courier, "Liberation Mono", monospace, Fixed, Consolas, Terminal'

# Prompt the user for the download location. If set to false,
# `downloads.location.directory` will be used.
# Type: Bool
c.downloads.location.prompt = True

# Value to send in the `DNT` header. When this is set to true,
# qutebrowser asks websites to not track your identity. If set to null,
# the DNT header is not sent at all.
# Type: Bool
c.content.headers.do_not_track = True

# Page to open if :open -t/-b/-w is used without URL. Use `about:blank`
# for a blank page.
# Type: FuzzyUrl
c.url.default_page = 'about:blank'

# Page(s) to open at the start.
# Type: List of FuzzyUrl, or FuzzyUrl


# Keybinds
config.bind('k', 'scroll up')
config.bind('j', 'scroll down')
config.bind('<Shift-k>', 'scroll-page 0 -0.5')
config.bind('<Shift-j>', 'scroll-page 0 0.5')
config.bind('<ctrl-h>', 'back')
config.bind('<ctrl-l>', 'forward')
config.bind('<Shift-l>', 'tab-next')
config.bind('<Shift-h>', 'tab-prev')
c.url.start_pages = 'about:blank'

# Aliases
c.aliases['mpv'] = 'spawn mpv {url}'
c.aliases['yt'] = 'open https://youtube.com'

c.content.host_blocking.lists.append( str(config.configdir) + "/blocked_hosts")

# Colors
c.colors.tabs.selected.even.bg = '#4c7899'
c.colors.tabs.selected.odd.bg = '#4c7899'
c.colors.tabs.even.bg = '#444444'
c.colors.tabs.odd.bg = '#242424'


