; Stewart Park's emacs init.el

(setq package-archives '(
    ("gnu" . "https://elpa.gnu.org/packages/")
    ("marmalade" . "https://marmalade-repo.org/packages/")
    ("melpa" . "https://melpa.org/packages/")
    ("org" . "http://orgmode.org/elpa/")
))
(setq package-list '(
    python-mode ruby-mode markdown-mode yaml-mode haskell-mode
    org org-trello
    ack fiplr
    neotree
))
(package-initialize)


; Install and refresh the packages
(unless package-archive-contents (package-refresh-contents))
(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))

; Autorun
(add-hook 'after-init-hook (lambda ()
    ; Theme
    (load-theme 'tango-dark)

    ; Launch neotree
    (neotree)

    ; Set up keys
    (global-set-key (kbd "C-x f") 'fiplr-find-file)
))
