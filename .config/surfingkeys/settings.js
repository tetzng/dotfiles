/**
 * @callback MapkeyFunction
 * @param {string} keys - the key sequence for the shortcut.
 * @param {string} annotation - a help message to describe the action.
 * @param {function} jscode - a Javascript function to be bound.
 * @param {Object} [options] - object with additional options like domain, repeatIgnore etc. (optional)
 * @returns {void}
 * Create a shortcut in a specific mode to execute your own action.
 */

/**
 * @callback MapFunction
 * @param {string} new_keystroke - a key sequence to replace.
 * @param {string} old_keystroke - a key sequence to be replaced.
 * @param {RegExp} [domain] - a Javascript regex pattern to identify the domains that this mapping works. (optional)
 * @param {string} [new_annotation] - use it instead of the annotation from old_keystroke if provided. (optional)
 * @returns {void}
 * Map a key sequence to another in a specific mode.
 */

/**
 * @callback UnmapFunction
 * @param {string} keystroke - a key sequence to be removed.
 * @param {RegExp} [domain] - a Javascript regex pattern to identify the domains that this mapping will be removed. (optional)
 * @returns {void}
 * Unmap a key sequence in a specific mode.
 */

/**
 * @callback UnmapAllExceptFunction
 * @param {string[]} keystrokes - the keybindings you want to keep.
 * @param {RegExp} [domain] - a Javascript regex pattern to identify the domains that this mapping will be removed. (optional)
 * @returns {void}
 * Unmap all keybindings except those specified.
 */

/**
 * @typedef {Object} API
 *
 * @property {MapkeyFunction} mapkey
 * Create a shortcut in normal mode to execute your own action.
 *
 * @property {MapkeyFunction} vmapkey
 * Create a shortcut in visual mode to execute your own action.
 *
 * @property {MapkeyFunction} imapkey
 * Create a shortcut in insert mode to execute your own action.
 *
 * @property {MapFunction} map
 * Map a key sequence to another in normal mode.
 *
 * @property {UnmapFunction} unmap
 * Unmap a key sequence in normal mode.
 *
 * @property {UnmapAllExceptFunction} unmapAllExcept
 * Unmap all keybindings except those specified.
 *
 * @property {MapFunction} imap
 * Map a key sequence to another in insert mode.
 *
 * @property {UnmapFunction} iunmap
 * Unmap a key sequence in insert mode.
 *
 * @property {MapFunction} cmap
 * Map a key sequence to another in omnibar.
 *
 * @property {MapFunction} vmap
 * Map a key sequence to another in visual mode.
 *
 * @property {UnmapFunction} vunmap
 * Unmap a key sequence in visual mode.
 *
 * @property {MapFunction} lmap
 * Map a key sequence to another in lurk mode.
 */

/**
 * @type {API}
 */
const _api = api;
const { map, imap, vmap, unmap, iunmap, vunmap, unmapAllExcept } = _api;

/**
 * @param {string[]} keys
 */
const unmapKeys = (keys) => keys.forEach((k) => unmap(k));

/**
 * @param {string[]} keys
 */
const iunmapKeys = (keys) => keys.forEach((k) => iunmap(k));

/**
 * @param {string[]} keys
 */
const vunmapKeys = (keys) => keys.forEach((k) => vunmap(k));

/**
 * @param {string} newKey
 * @param {string} oldKey
 */
const reMap = (newKey, oldKey) => {
  map(newKey, oldKey); // Go to first activated tab
  unmap(oldKey);
};

/**
 * @param {string} newKey
 * @param {string} oldKey
 */
const ireMap = (newKey, oldKey) => {
  imap(newKey, oldKey); // Go to first activated tab
  iunmap(oldKey);
};

/**
 * @param {string} newKey
 * @param {string} oldKey
 */
const vreMap = (newKey, oldKey) => {
  vmap(newKey, oldKey); // Go to first activated tab
  vunmap(oldKey);
};

// NOTE: unmapできなそうなキーストローク
// cannotDisabledKeys = [
//   // Help
//   "<Alt-s>", // Toggle SurfingKeys on current site
//
//   // Omnibar
//   "<Ctrl-d>", // Delete focused item from bookmark or history
//   "<Ctrl-i>", // Edit selected URL with vim editor, then open
//   "<Ctrl-j>", // Toggle Omnibar's position
//   "<Ctrl-.>", // Show results of next page
//   "<Ctrl-,>", // Show results of previous page
//   "<Ctrl-c>", // Copy selected item url or all listed item urls
//   "<Ctrl-D>", // Delete all listed items from bookmark or history
//   "<Ctrl-r>", // Re-sort history by visitCount or lastVisitTime
//   "<Esc>", // Close Omnibar
//   "<Ctrl-m>", // Create vim-like mark for selected item
//   "<Tab>", // Forward cycle through the candidates.
//   "<Shift-Tab>", // Backward cycle through the candidates.
//   "<Ctrl-'>", // Toggle quotes in an input element
//   "<ArrowDown>", // Forward cycle through the candidates.
//   "<ArrowUp>", // Backward cycle through the candidates.
//   "<Ctrl-n>", // Forward cycle through the candidates.
//   "<Ctrl-p>", // Backward cycle through the candidates.
// ];

/**
 * unmapするキーストロークの配列
 * @type {string[]}
 */
const keys = [
  // Help
  "<Alt-i>", // Enter PassThrough mode to temporarily suppress SurfingKeys
  // 'p', // Enter ephemeral PassThrough mode to temporarily suppress SurfingKeys
  // '?', // Show usage
  ";ql", // Show last action
  ".", // Repeat last action

  // Mouse Click
  "cf", // Open multiple links in a new tab
  "gi", // Go to the first edit box
  "gf", // Open a link in non-active new tab
  "[[", // Click on the previous link on current page
  "]]", // Click on the next link on current page
  ";m", // mouse out last element
  ";fs", // Display hints to focus scrollable elements
  ";di", // Download image
  // "i", // Go to edit box
  // "I", // Go to edit box with vim editor
  "O", // Open detected links from text
  // "f", // Open a link, press SHIFT to flip overlapped hints, hold SPACE to hide hints
  "af", // Open a link in active new tab
  "C", // Open a link in non-active new tab
  "<Ctrl-h>", // Mouse over elements.
  "<Ctrl-j>", // Mouse out elements.
  "<Ctrl-i>", // Go to edit box with vim editor
  "q", // Click on an Image or a button
  // "<Ctrl-Alt-i>", // Go to edit box with neovim editor

  // Scroll Page / Element
  "0", // Scroll all the way to the left
  "cS", // Reset scroll target
  "cs", // Change scroll target
  "e", // Scroll half page up
  "U", // Scroll full page up
  // "d", // Scroll half page down
  "P", // Scroll full page down
  // "gg", // Scroll to the top of the page
  // "G", // Scroll to the bottom of the page
  // "j", // Scroll down
  // "k", // Scroll up
  // "h", // Scroll left
  // "l", // Scroll right
  "$", // Scroll all the way to the right
  "%", // Scroll to percentage of current page
  ";w", // Focus top window
  "w", // Switch frames
  // "u", // Scroll half page up

  // Tabs
  "yt", // Duplicate current tab
  "yT", // Duplicate current tab in background
  "g0", // Go to the first tab
  "g$", // Go to the last tab
  "gx0", // Close all tabs on left
  "gxt", // Close tab on left
  "gxT", // Close tab on right
  "gx$", // Close all tabs on right
  "gxx", // Close all tabs except current one
  "gxp", // Close playing tab
  "E", // Go one tab left
  "R", // Go one tab right
  "T", // Choose a tab
  ";gt", // Gather filtered tabs into current window
  ";gw", // Gather all tabs into current window
  "zr", // zoom reset
  "zi", // zoom in
  "zo", // zoom out
  "<Alt-p>", // pin/unpin current tab
  "<Alt-m>", // mute/unmute current tab
  "on", // Open newtab
  "x", // Close current tab
  "X", // Restore closed tab
  "W", // Move current tab to another window
  "<<", // Move current tab to left
  ">>", // Move current tab to right

  // Page Navigation
  "gu", // Go up one path in the URL
  // "gT", // Go to first activated tab
  // "gt", // Go to last activated tab
  "gp", // Go to the playing tab
  "g?", // Reload current page without query string(all parts after question mark)
  "g#", // Reload current page without hash fragment
  "gU", // Go to root of current URL hierarchy
  ";u", // Edit current URL with vim editor, and open in new tab
  ";U", // Edit current URL with vim editor, and reload
  "B", // Go one tab history back
  "F", // Go one tab history forward
  "<Ctrl-6>", // Go to last used tab
  // "S", // Go back in history
  // "D", // Go forward in history
  "r", // Reload the page

  // Sessions
  "ZZ", // Save session and quit
  "ZR", // Restore last session

  // Search selected with
  "sg", // Search selected with google
  "sd", // Search selected with duckduckgo
  "sb", // Search selected with baidu
  "se", // Search selected with wikipedia
  "sw", // Search selected with bing
  "ss", // Search selected with stackoverflow
  "sh", // Search selected with github
  "sy", // Search selected with youtube

  // Clipboard
  "yG", // Capture current full page
  "yS", // Capture scrolling element
  "yv", // Yank text of an element
  "ymv", // Yank text of multiple elements
  "yma", // Copy multiple link URLs to the clipboard
  "ymc", // Copy multiple columns of a table
  "yg", // Capture current page
  "ya", // Copy a link URL to the clipboard
  "yc", // Copy a column of a table
  "yq", // Copy pre text
  "yi", // Yank text of an input
  "ys", // Copy current page's source
  "yj", // Copy current settings
  "yy", // Copy current page's URL
  "yY", // Copy all tabs's url
  "yh", // Copy current page's host
  "yl", // Copy current page's title
  "yQ", // Copy all query history of OmniQuery.
  "yf", // Copy form data in JSON on current page
  "yp", // Copy form data for POST on current page
  "yd", // Copy current downloading URL
  "cq", // Query word with Hints
  "cc", // Open selected link or link from clipboard
  ";pp", // Paste html on current page
  ";pj", // Restore settings data from clipboard
  ";pf", // Fill form with data from yf

  // Omnibar
  "go", // Open a URL in current tab
  "Q", // Open omnibar for word translation
  "ab", // Bookmark current page to selected folder
  "oi", // Open incognito window
  "om", // Open URL from vim-like marks
  "og", // Open Search with alias g
  "od", // Open Search with alias d
  "ob", // Open Search with alias b
  "oe", // Open Search with alias e
  "ow", // Open Search with alias w
  "os", // Open Search with alias s
  "oy", // Open Search with alias y
  "ox", // Open recently closed URL
  "oh", // Open URL from history
  "H", // Open opened URL in current tab
  // ":", // Open commands
  "t", // Open a URL
  "b", // Open a bookmark

  // vim-like marks
  "m", // Add current URL to vim-like marks
  "'", // Jump to vim-like mark
  "<Ctrl-'>", // Jump to vim-like mark in new tab.

  // Settings
  ";pm", // Preview markdown
  ";e", // Edit Settings
  ";v", // Open neovim

  // Chrome URLs
  "ga", // Open Chrome About
  "gb", // Open Chrome Bookmarks
  "gc", // Open Chrome Cache
  "gd", // Open Chrome Downloads
  "gh", // Open Chrome History
  "gk", // Open Chrome Cookies
  "ge", // Open Chrome Extensions
  "gn", // Open Chrome net-internals
  "gs", // View page source
  ";i", // Open Chrome Inspect
  ";j", // Close Downloads Shelf

  // Proxy
  "cp", // Toggle proxy for current site
  ";pa", // set proxy mode `always`
  ";pb", // set proxy mode `byhost`
  ";pd", // set proxy mode `direct`
  ";ps", // set proxy mode `system`
  ";pc", // set proxy mode `clear`
  ";cp", // Copy proxy info
  ";ap", // Apply proxy info from clipboard

  // Misc
  "gr", // Read selected text or text from clipboard
  ";s", // Toggle PDF viewer from SurfingKeys
  ";ph", // Put histories from clipboard
  ";t", // Translate selected text with google
  ";dh", // Delete history older than 30 days
  ";db", // Remove bookmark for current page
  ";yh", // Yank histories

  // Visual Mode
  "/", // Find in current page
  "zv", // Enter visual mode, and select whole element
  "V", // Restore visual mode
  "*", // Find selected text in current page
  "v", // Toggle visual mode
  "n", // Next found text
  "N", // Previous found text
];

/**
 * vunmapするキーストロークの配列
 * @type {string[]}
 */
const vkeys = [
  // Visual Mode
  "0", // backward lineboundary
  "l", // forward character
  "h", // backward character
  // "j", // forward line
  // "k", // backward line
  "w", // forward word
  "e", // forward word
  "b", // backward word
  ")", // forward sentence
  "(", // backward sentence
  "}", // forward paragraphboundary
  "{", // backward paragraphboundary
  "$", // forward lineboundary
  // "G", // forward documentboundary
  // "gg", // backward documentboundary
  "gr", // Read selected text
  "o", // Go to Other end of highlighted text
  "*", // Search word under the cursor
  "<Enter>", // Click on node under cursor.
  "<Shift-Enter>", // Click on node under cursor.
  "zt", // make cursor at top of window.
  "zz", // make cursor at center of window.
  "zb", // make cursor at bottom of window.
  "f", // Forward to next char.
  "F", // Backward to next char.
  ";", // Repeat latest f, F
  ",", // Repeat latest f, F in opposite direction
  "p", // Expand selection to parent element
  "V", // Select a word(w) or line(l) or sentence(s) or paragraph(p)
  "<Ctrl-u>", // Backward 20 lines
  "<Ctrl-d>", // Forward 20 lines
  "t", // Translate selected text with google
  "q", // Translate word under cursor
];

/**
 * iunmapするキーストロークの配列
 * @type {string[]}
 */
const ikeys = [
  // Insert Mode
  "<Ctrl-e>", // Move the cursor to the end of the line
  "<Ctrl-f>", // Move the cursor to the beginning of the line
  // "<Ctrl-u>", // Delete all entered characters before the cursor
  "<Alt-b>", // Move the cursor Backward 1 word
  "<Alt-f>", // Move the cursor Forward 1 word
  // "<Alt-w>", // Delete a word backwards
  "<Alt-d>", // Delete a word forwards
  // "<Esc>", // Exit insert mode
  "<Ctrl-'>", // Toggle quotes in an input element
  "<Ctrl-i>", // Open vim editor for current input
  // "<Ctrl-Alt-i>", // Open neovim for current input
];

unmapKeys(keys);
vunmapKeys(vkeys);
iunmapKeys(ikeys);

// key mappings
reMap("gr", "gT"); // Go to first activated tab
reMap("<Ctrl-i>", "<Ctrl-Alt-i>"); // Go to edit box with neovim editor
reMap("<Ctrl-u>", "u"); // Scroll half page up
reMap("<Ctrl-d>", "d"); // Scroll half page down
reMap("<Ctrl-h", "S"); // Go back in history
reMap("<Ctrl-l>", "D"); // Go forward in history
ireMap("<Ctrl-w>", "<Alt-w>"); // Delete a word backwards
ireMap("<Ctrl-i>", "<Ctrl-Alt-i>"); // Open neovim for current input

// Notionではsurfingkeysを無効化
unmapAllExcept([], /notion.so/);

settings.showModeStatus = false; // Whether always to show mode status.
settings.showProxyInStatusBar = false; // Whether to show proxy info in status bar.
settings.richHintsForKeystroke = 500; // Timeout(ms) to show rich hints for keystroke, 0 will disable rich hints.
settings.useLocalMarkdownAPI = true; // Whether to use chjj/marked to parse markdown, otherwise use github markdown API.
settings.focusOnSaved = true; // Whether to focus text input after quitting from vim editor.
settings.omnibarMaxResults = 10; // How many results will be listed out each page for Omnibar.
settings.omnibarHistoryCacheSize = 100; // The maximum of items fetched from browser history.
settings.omnibarPosition = "middle"; // Where to position Omnibar. ["middle", "bottom"]
settings.omnibarSuggestion = false; // Show suggestion URLs
settings.omnibarSuggestionTimeout = 200; // Timeout duration before Omnibar suggestion URLs are queried, in milliseconds. Helps prevent unnecessary HTTP requests and API rate-limiting.
settings.focusFirstCandidate = false; // Whether to focus first candidate of matched result in Omnibar.
settings.tabsThreshold = 100; // When total of opened tabs exceeds the number, Omnibar will be used for choosing tabs.
settings.clickableSelector = ""; // Extra CSS selector to pick elements for hints mode, such as "*.jfk-button, *.goog-flat-menu-button".
settings.clickablePat = /(https?:\/\/|thunder:\/\/|magnet:)\S+/gi; // A regex to detect clickable links from text, you could use O to open them.
settings.editableSelector = "div.CodeMirror-scroll,div.ace_content"; // CSS selector for additional editable elements.
settings.smoothScroll = true; // Whether to use smooth scrolling when pressing keys like j/k/e/d to scroll page or elements.
settings.modeAfterYank = ""; // Which mode to fall back after yanking text in visual mode. Value could be one of ["", "Caret", "Normal"], default is "", which means no action after yank.
settings.scrollStepSize = 70; // A step size for each move by j/k
settings.scrollFriction = 0; // A force that is needed to start continuous scrolling after initial scroll step. A bigger number will cause a flicker after initial step, but help to keep the first step precise.
settings.nextLinkRegex = /(\b(next)\b)|次|後|>>|»/i; // A regex to match links that indicate next page.
settings.prevLinkRegex = /(\b(prev|previous)\b)|前|<<|«/i; // A regex to match links that indicate previous page.
settings.hintAlign = "center"; // Alignment of hints on their target elements. ["left", "center", "right"]
settings.hintExplicit = false; // Whether to wait for explicit input when there is only a single hint available
settings.hintShiftNonActive = false; // Whether new tab is active after entering hint while holding shift
settings.defaultSearchEngine = "g"; // The default search engine used in Omnibar.
settings.blocklistPattern = undefined; // A regex to match the sites that will have Surfingkeys disabled.
settings.focusAfterClosed = "right"; // Which tab will be focused after the current tab is closed. ["left", "right", "last"]
settings.repeatThreshold = 99; // The maximum of actions to be repeated.
settings.tabsMRUOrder = true; // Whether to list opened tabs in order of most recently used beneath Omnibar.
settings.historyMUOrder = true; // Whether to list history in order of most used beneath Omnibar.
settings.newTabPosition = "default"; // Where to new tab. ["left", "right", "first", "last", "default"]
settings.interceptedErrors = []; // Indicates for which errors Surfingkeys will show error page, so that you could use Surfingkeys on those error pages. For example, ["*"] to show error page for all errors, or ["net::ERR_NAME_NOT_RESOLVED"] to show error page only for ERR_NAME_NOT_RESOLVED, please refer to net_error_list.h for complete error list.
settings.enableEmojiInsertion = false; // Whether to turn on Emoji completion in Insert mode.
settings.startToShowEmoji = 2; // How many characters are needed after colon to show emoji suggestion.
settings.language = undefined; // The language of the usage popover, only "zh-CN" is added for now, PR for any other language is welcomed, please see l10n.json.
settings.stealFocusOnLoad = true; // Whether to prevent focus on input on page loaded, set to true by default so that we could use Surfingkeys directly after page loaded, otherwise we need press Esc to quit input.
settings.enableAutoFocus = true; // Whether to enable auto focus after mouse click on some widget. This is different with stealFocusOnLoad, which is only for the time of page loaded. For example, there is a hidden input box on a page, it is turned to visible after user clicks on some other link. If you don't like the input to be focused when it's turned to visible, you could set this to false.
settings.theme = undefined; // To change css of the Surfingkeys UI elements.
settings.caseSensitive = false; // Whether finding in page/Omnibar is case sensitive.
settings.smartCase = true; // Whether to make caseSensitive true if the search pattern contains upper case characters.
settings.cursorAtEndOfInput = true; // Whether to put cursor at end of input when entering an input box, by false to put the cursor where it was when focus was removed from the input.
settings.digitForRepeat = true; // Whether digits are reserved for repeats, by false to enable mapping of numeric keys.
settings.editableBodyCare = true; // Insert mode is activated automatically when an editable element is focused, so if document.body is editable for some window/iframe (such as docs.google.com), Insert mode is always activated on the window/iframe, which means all shortcuts from Normal mode will not be available. With editableBodyCare as true, Insert mode will not be activated automatically in this case.
settings.ignoredFrameHosts = ["https://tpc.googlesyndication.com"]; // When using w to loop through frames, you could use this settings to exclude some of them, such as those for advertisements.
settings.aceKeybindings = "vim"; // Set it "emacs" to use emacs keybindings in the ACE editor.
settings.caretViewport = null; // Set it in format [top, left, bottom, right] to limit hints generation on v for entering visual mode, such as [window.innerHeight / 2 - 10, 0, window.innerHeight / 2 + 10, window.innerWidth] will make Surfingkeys generate Hints only for text that display on vertically middle of window.
settings.mouseSelectToQuery = []; // All hosts that have enable feature -- mouse selection to query.
settings.autoSpeakOnInlineQuery = false; // Whether to automatically speak the query string with TTS on inline query.

settings.theme = `
.sk_theme {
    font-family: Input Sans Condensed, Charcoal, sans-serif;
    font-size: 10pt;
    background: #24272e;
    color: #abb2bf;
}
.sk_theme tbody {
    color: #fff;
}
.sk_theme input {
    color: #d0d0d0;
}
.sk_theme .url {
    color: #61afef;
}
.sk_theme .annotation {
    color: #56b6c2;
}
.sk_theme .omnibar_highlight {
    color: #528bff;
}
.sk_theme .omnibar_timestamp {
    color: #e5c07b;
}
.sk_theme .omnibar_visitcount {
    color: #98c379;
}
.sk_theme #sk_omnibarSearchResult ul li:nth-child(odd) {
    background: #303030;
}
.sk_theme #sk_omnibarSearchResult ul li.focused {
    background: #3e4452;
}
#sk_status, #sk_find {
    font-size: 20pt;
}`;
