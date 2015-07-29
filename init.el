;; User pack init file
;;
;; Use this file to initiate the pack configuration.
;; See README for more information.

;; Load bindings config
(live-load-config-file "bindings.el")
;;(live-add-packs '(~/.live-packs/solarized-pack))
(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
  (add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/") t))

(setq org-default-notes-file (concat org-directory "/notes.org"))
(define-key global-map "\C-cc" 'org-capture)
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)

(setq org-capture-templates
      '(("t" "Todo" entry (file+headline "~/Google Drive/GTD/newgtd.org" "Tasks")
             "* TODO %?\n  %i\n  %a")
        ("j" "Journal" entry (file+datetree "~/Google Drive/GTD/journal.org")
             "* %?\nEntered on %U\n  %i\n  %a")))

(setq org-agenda-include-diary t)
(setq org-agenda-files (list "~/Google Drive/GTD/newgtd.org"
                            ; "~/org/school.org"
                            ; "~/org/home.org"
                             ))
