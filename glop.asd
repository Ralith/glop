;;;; -*- Mode: Lisp; indent-tabs-mode: nil -*-

(defsystem glop
  :depends-on (cffi)
  :serial t
  :components
  ((:file "package")
   (:file "glop")
   #+unix(:module "x11"
                  :serial t
                  :components ((:file "constants")
                               (:file "x11")))
   #+win32(:module "win32"
                   :serial t
                   :components ((:file "constants")
                                (:file "win32")))))

