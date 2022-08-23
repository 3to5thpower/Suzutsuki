; 環境から化合物を取得できるかどうかを抽選
(defun can-get-p (fitness) (> (random 100) fitness))