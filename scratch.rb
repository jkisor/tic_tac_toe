require "./lib/game/play/loop/claim"
require "./lib/game/play/loop/claim/rules"
require "./lib/game/play/loop/claim/next_shape"
require "./lib/game/play/loop/claim/commit"

require "./lib/format_board"
require "./lib/terminal"
require "./lib/board"

require "./lib/show_board"

require "./lib/game/play"

require "./lib/game/play/start"
require "./lib/game/play/start/setup_board"

require "./lib/game/play/loop"
require "./lib/game/play/end"

Game::Play.build.()
