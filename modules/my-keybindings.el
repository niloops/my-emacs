;;
;; Copyright (c) 2012 Lu Li
;;
;; Author: Lu Li <lilu.life@gmail.com>
;; URL: https://github.com/Lilu/my-emacs

;; This file is not part of GNU Emacs.

;;; License:

;; This program is free software; you can redistribute it and/or
;; modify it under the terms of the GNU General Public License
;; as published by the Free Software Foundation; either version 3
;; of the License, or (at your option) any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to the
;; Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
;; Boston, MA 02110-1301, USA.

;; texts
(define-key global-map (kbd "C-+") 'text-scale-increase)
(define-key global-map (kbd "C--") 'text-scale-decrease)

;; menus
(global-set-key (kbd "<f12>") 'menu-bar-mode)

;;fullscreen
(global-set-key (kbd "C-M-<return>") 'ns-toggle-fullscreen)

;; edit
(global-set-key (kbd "C-w") 'backward-kill-word)
(global-set-key (kbd "C-x C-k") 'kill-region)
(global-set-key (kbd "C-c C-k") 'kill-region)
(global-set-key (kbd "C-x ^") 'join-line)
(global-set-key [(shift return)] 'insert-empty-line-after)
(global-set-key [(meta shift return)] 'insert-empty-line-before)
(global-set-key (kbd "C-S-n") 'move-line-up)
(global-set-key (kbd "C-S-p") 'move-line-down)
(global-set-key (kbd "C-c d") 'duplicate-current-line-or-region)

(global-set-key (kbd "C-=") 'er/expand-region)

;;search
(global-set-key (kbd "M-s") 'isearch-forward-regexp)
(global-set-key (kbd "M-r") 'isearch-backward-regexp)

;; isearch
(define-key isearch-mode-map (kbd "C-o")
  (lambda () (interactive)
    (let ((case-fold-search isearch-case-fold-search))
      (occur (if isearch-regexp
                 isearch-string
               (regexp-quote isearch-string))))))

;; aligns
(global-set-key (kbd "C-x \\") 'align-regexp)
(global-set-key (kbd "C-c n") 'cleanup-buffer)

;; use hippie-expand instead of dabbrev
(global-set-key (kbd "M-/") 'hippie-expand)

;; commands
(global-set-key (kbd "C-x C-m") 'execute-extended-command)
(global-set-key (kbd "C-c C-m") 'execute-extended-command)

;; shells
(global-set-key (kbd "C-x m") 'shell)

;; buffers
(global-set-key (kbd "C-x C-b") 'ibuffer)

;; windows
(global-set-key (kbd "C-x O") (lambda ()
                                (interactive)
                                (other-window -1)))
(global-set-key (kbd "C-c s") 'swap-windows)

;; files
(global-set-key (kbd "C-c f") 'recentf-ido-find-file)
(global-set-key (kbd "C-c r") 'rename-file-and-buffer)

;;helm
(global-set-key (kbd "C-c h") 'helm-mini)

;; magit
(global-set-key (kbd "C-x g") 'magit-status)

;; external
(global-set-key (kbd "C-c u") 'browse-url)
(global-set-key (kbd "C-c l") 'reload-url)
(global-set-key (kbd "C-c g") 'google)

;; programming
(global-set-key (kbd "C-c i") 'ido-goto-symbol)

(provide 'my-keybindings)
