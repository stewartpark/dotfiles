; Stewart Park's emacs init.el

(if (not (getenv "TERM_PROGRAM"))
  (let ((path (shell-command-to-string
          "$SHELL -cl \"printf %s \\\"\\\$PATH\\\"\"")))
    (setenv "PATH" path)))

(setq package-archives '(
    ("gnu" . "https://elpa.gnu.org/packages/")
    ("marmalade" . "https://marmalade-repo.org/packages/")
    ("melpa" . "https://melpa.org/packages/")
    ("org" . "http://orgmode.org/elpa/")
))
(setq package-list '(
    python-mode ruby-mode markdown-mode yaml-mode haskell-mode antlr-mode
    dockerfile-mode
    git-gutter magit
    org org-present org-trello
    ack fiplr
    neotree
    monokai-theme
))
(package-initialize)


; Install and refresh the packages
(unless package-archive-contents (package-refresh-contents))
(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))

; Autorun
(add-hook 'after-init-hook (lambda ()
    (tool-bar-mode 0)
    (menu-bar-mode 0)
    (global-git-gutter-mode 1)
    (global-linum-mode 1)

    ; Theme
    (load-theme 'monokai)

    ; Launch neotree
    (neotree)

    ; Set up keys
    (global-set-key (kbd "C-x f") 'fiplr-find-file)
    (global-set-key (kbd "C-x C-f") 'ack)
))

; Hooks
(add-hook 'before-save-hook (lambda ()
    (delete-trailing-whitespace)
))

; Safe themes
(custom-set-variables
 '(custom-safe-themes
   (quote
    ("c567c85efdb584afa78a1e45a6ca475f5b55f642dfcd6277050043a568d1ac6f" default))))
