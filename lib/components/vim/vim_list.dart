List<List<String>> vimGlobal = [   ["h[elp] keyword", "open help for keyword"],
   [":sav[eas] file", "save file as"],
   [":clo[se]", "close current pane"],
   [":ter[minal]", "open a terminal window"],
   ["K", "open man page for word under the cursor"],
];
// Tip Run vimtutor in a terminal to learn the first Vim commands.

List<List<String>> vimCursorMovement = [   ["h", "move cursor left"],
   ["j", "move cursor down"],
   ["k", "move cursor up"],
   ["l", "move cursor right"],
   ["gj", "move cursor down (multi-line text)"],
   ["gk", "move cursor up (multi-line text)"],
   ["H", "move to top of screen"],
   ["M", "move to middle of screen"],
   ["L", "move to bottom of screen"],
   ["w", "jump forwards to the start of a word"],
   ["W", "jump forwards to the start of a word (words can contain punctuation)"],
   ["e", "jump forwards to the end of a word"],
   ["E", "jump forwards to the end of a word (words can contain punctuation)"],
   ["b", "jump backwards to the start of a word"],
   ["B", "jump backwards to the start of a word (words can contain punctuation)"],
   ["ge", "jump backwards to the end of a word"],
   ["gE", "jump backwards to the end of a word (words can contain punctuation)"],
   ["%", "move to matching character (default supported pairs: '()', '{}', '[]' - use :h matchpairs in vim for more info)"],
   ["0", "jump to the start of the line"],
   ["^", "jump to the first non-blank character of the line"],
   ["$", "jump to the end of the line"],
   ["g_", "jump to the last non-blank character of the line"],
   ["gg", "go to the first line of the document"],
   ["G", "go to the last line of the document"],
   ["5gg or 5G", "go to line 5"],
   ["gd", "move to local declaration"],
   ["gD", "move to global declaration"],
   ["fx", "jump to next occurrence of character x"],
   ["tx", "jump to before next occurrence of character x"],
   ["Fx", "jump to the previous occurrence of character x"],
   ["Tx", "jump to after previous occurrence of character x"],
   [";", "repeat previous f, t, F or T movement"],
   [",", "repeat previous f, t, F or T movement, backwards"],
   ["}", "jump to next paragraph (or function/block, when editing code)"],
   ["{", "jump to previous paragraph (or function/block, when editing code)"],
   ["zz", "center cursor on screen"],
   ["zt", "position cursor on top of the screen"],
   ["zb", "position cursor on bottom of the screen"],
   ["Ctrl + e", "move screen down one line (without moving cursor)"],
   ["Ctrl + y", "move screen up one line (without moving cursor)"],
   ["Ctrl + b", "move back one full screen"],
   ["Ctrl + f", "move forward one full screen"],
   ["Ctrl + d", "move forward 1/2 a screen"],
   ["Ctrl + u", "move back 1/2 a screen"],
];

// Tip Prefix a cursor movement command with a number to repeat it. For example, 4j moves down 4 lines. 

List<List<String>> vimInsertMode = [
  ["i", "insert before the cursor"],
  ["I", "insert at the beginning of the line"],
  ["a", "insert (append) after the cursor"],
  ["A", "insert (append) at the end of the line"],
  ["o", "append (open) a new line below the current line"],
  ["O", "append (open) a new line above the current line"],
  ["ea", "insert (append) at the end of the word"],
  ["Ctrl + h", "delete the character before the cursor during insert mode"],
  ["Ctrl + w", "delete word before the cursor during insert mode"],
  ["Ctrl + j", "begin new line during insert mode"],
  ["Ctrl + t", "indent (move right) line one shiftwidth during insert mode"],
  ["Ctrl + d", "de-indent (move left) line one shiftwidth during insert mode"],
  ["Ctrl + n", "insert (auto-complete) next match before the cursor during insert mode"],
  ["Ctrl + p", "insert (auto-complete) previous match before the cursor during insert mode"],
  ["Ctrl + rx", "insert the contents of register x"],
  ["Ctrl + ox", "Temporarily enter normal mode to issue one normal-mode command x."],
  ["Esc or Ctrl + c", "exit insert mode"],
];

List<List<String>> vimEditing = [
  ["r", "replace a single character."],
  ["R", "replace more than one character, until ESC is pressed."],
  ["J", "join line below to the current one with one space in between"],
  ["gJ", "join line below to the current one without space in between"],
  ["gwip", "reflow paragraph"],
  ["g~", "switch case up to motion"],
  ["gu", "change to lowercase up to motion"],
  ["gU", "change to uppercase up to motion"],
  ["cc", "change (replace) entire line"],
  ["c$ or C", "change (replace) to the end of the line"],
  ["ciw", "change (replace) entire word"],
  ["cw or ce", "change (replace) to the end of the word"],
  ["s", "delete character and substitute text"],
  ["S", "delete line and substitute text (same as cc)"],
  ["xp", "transpose two letters (delete and paste)"],
  ["u", "undo"],
  ["U", "restore (undo) last changed line"],
  ["Ctrl + r", "redo"],
  [".", "repeat last command"],
];

List<List<String>> vimMarkingText = [
  ["v", "start visual mode, mark lines, then do a command (like y-yank)"],
  ["V", "start linewise visual mode"],
  ["o", "move to other end of marked area"],
  ["Ctrl + v", "start visual block mode"],
  ["O", "move to other corner of block"],
  ["aw", "mark a word"],
  ["ab", "a block with ()"],
  ["aB", "a block with {}"],
  ["at", "a block with <> tags"],
  ["ib", "inner block with ()"],
  ["iB", "inner block with {}"],
  ["it", "inner block with <> tags"],
  ["Esc or Ctrl + c", "exit visual mode"],
];

List<List<String>> vimVisualCommands = [
  [">", "shift text right"],
  ["<", "shift text left"],
  ["y", "yank (copy) marked text"],
  ["d", "delete marked text"],
  ["~", "switch case"],
  ["u", "change marked text to lowercase"],
  ["U", "change marked text to uppercase"],
];

// Tip Instead of b or B one can also use ( or { respectively. 

List<List<String>> vimRegisters = [
    ["reg[isters]", "show registers content"],
    ['"xy', "yank into register x"],
    ['"xp', "paste contents of register x"],
    ['"+y', "yank into the system clipboard register"],
    ['"+p', "paste from the system clipboard register"],
];

// Registers are being stored in ~/.viminfo, and will be loaded again on the next restart of vim.

// Tip Special registers:
// 
//  0 - last yank
//  " - unnamed register, last delete or yank
//  % - current file name
//  # - alternate file name
//  * - clipboard contents (X11 primary)
//  + - clipboard contents (X11 clipboard)
//  / - last search pattern
//  : - last command-line
//  . - last inserted text
//  - - last small (less than a line) delete
//  = - expression register
//  _ - black hole register


