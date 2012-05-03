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

(defun css-mode-defaults ()
  "My css mode hooks"
  (setq css-indent-offset 2)
  (rainbow-mode +1))
(add-hook 'css-mode-hook 'css-mode-defaults)

(defun scss-mode-defaults ()
  "My css mode hooks"
  (css-mode-defaults)
  (setq scss-compile-at-save nil))
(add-hook 'scss-mode-hook 'scss-mode-defaults)

(provide 'my-css-scss)
