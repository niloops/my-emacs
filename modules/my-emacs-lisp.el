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

(defun remove-elc-on-save ()
  "If you're saving an elisp file, likely the .elc is no longer valid."
  (make-local-variable 'after-save-hook)
  (add-hook 'after-save-hook
            (lambda ()
              (if (file-exists-p (concat buffer-file-name "c"))
                  (delete-file (concat buffer-file-name "c"))))))

(defun emacs-lisp-mode-defaults ()
  (require 'paredit)
  (paredit-mode +1)
  (remove-elc-on-save)
  (turn-on-eldoc-mode)
  (rainbow-mode +1))

(add-hook 'emacs-lisp-mode-hook 'emacs-lisp-mode-defaults)

(defun ielm-mode-defaults ()
  (require 'paredit)
  (paredit-mode +1)
  (rainbow-mode +1)
  (checkdoc-minor-mode +1)
  (turn-on-eldoc-mode))
(add-hook 'ielm-mode-hook 'ielm-mode-defaults)

(defun lisp-interaction-mode-defaults ()
  (require 'paredit)
  (paredit-mode +1)
  (rainbow-mode +1)
  (checkdoc-minor-mode +1)
  (turn-on-eldoc-mode))

(define-key emacs-lisp-mode-map (kbd "M-.") 'find-function-at-point)

(provide 'my-emacs-lisp)
