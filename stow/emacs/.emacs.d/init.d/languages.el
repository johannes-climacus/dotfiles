(mapc 'straight-use-package '(format-all fsharp-mode racket-mode))

(setq inferior-fsharp-program "/usr/bin/env dotnet fsi --readline")
(setq fsharp-compiler "/usr/bin/env fsharpc")

