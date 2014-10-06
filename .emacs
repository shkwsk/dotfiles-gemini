;; ver 0.0.0

;; elispフォルダ内のelファイルを読み込めるようにする
(setq load-path (cons "~/.emacs.d/elisp" load-path))

;;M-x install-elispコマンドを使えるようにする
(require 'install-elisp)
;;elファイルのインストール先
(setq install-elisp-repository-directory "~/.emacs.d/elisp/")

;; ツールバーを非表示
(tool-bar-mode nil)
;; メニューバーを非表示
(menu-bar-mode nil)

;;auto-completeの読み込みと起動
(require 'auto-complete)
(global-auto-complete-mode t)

;;選択範囲を塗りつぶす
(setq transient-mark-mode t)

;;行番号表示
(require 'linum)
(global-linum-mode t)

;;; 起動時の画面はいらない
(setq inhibit-startup-message t)

;;ウインドウサイズ最大化
(set-frame-parameter nil 'fullscreen 'maximized)

;;背景透明化
(set-frame-parameter nil 'alpha 70)

;;背景黒 文字緑 
(set-background-color "black")
(set-foreground-color "green")

;;undo-treeを追加
(require 'undo-tree)
(global-undo-tree-mode t)

;;; キーバインド
(define-key global-map (kbd "C-\\") nil)                  ; C-\の日本語入力の設定を無効にする
(define-key global-map (kbd "C-h") 'delete-backward-char) ; 削除
(define-key global-map (kbd "M-?") 'help-for-help)        ; ヘルプ
(define-key global-map (kbd "C-z") 'undo-tree-undo)       ; undo
(define-key global-map (kbd "C-/") 'undo-tree-undo)       ; undo
(define-key global-map (kbd "C-\\") 'undo-tree-redo)      ; redo
(define-key global-map (kbd "C-c i") 'indent-region)      ; インデント
(define-key global-map (kbd "C-c C-i") 'dabbrev-expand)   ; 補完
(define-key global-map (kbd "C-o") 'toggle-input-method)  ; 日本語入力切替
(define-key global-map (kbd "C-c") 'other-frame)          ; フレーム移動

;;; 対応する括弧を光らせる。
(show-paren-mode t)

;;; 行の先頭でC-kを一回押すだけで行全体を消去する
(setq kill-whole-line t)

;;; バッファの最後でnewlineで新規行を追加するのを禁止する
(setq next-line-add-newlines nil)

;;; 最終行に必ず一行挿入する
(setq require-final-newline t)

;;; タイトルバーにファイル名を表示する
(setq frame-title-format (format "emacs@%s : %%f" (system-name)))

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(safe-local-variable-values (quote ((encoding . utf-8)))))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )
