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

(defvar home-dir (file-name-directory load-file-name)
  "The root dir of emacs configure")
(defvar modules-dir (concat home-dir "modules/")
  "This directory houses all of the modules written from scratch.")
(defvar vendor-dir (concat home-dir "vendor/")
  "This directory house Emacs Lisp packages that are not yet available in
ELPA (or MELPA).")
(defvar snippets-dir (concat home-dir "snippets/")
  "This folder houses addition yasnippet bundles distributed with Prelude.")

(add-to-list 'load-path modules-dir)
(add-to-list 'load-path vendor-dir)

(require 'my-packages)
(require 'my-customs)
(require 'my-funcs)
(require 'my-keybindings)

;; OSX specific settings
(when (eq system-type 'darwin)
  (require 'my-osx))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (solarized-dark)))
 '(custom-safe-themes (quote ("501caa208affa1145ccbb4b74b6cd66c3091e41c5bb66c677feda9def5eab19c" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
