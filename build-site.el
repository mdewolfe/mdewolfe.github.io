;; load publishing syntax
(require 'ox-publish)

(message "Build Complete")

;; Define the publishing project
(setq org-publish-project-alist
      (list
       (list "mdewolfe.github.io"
             :recursive t
             :base-directory "./content"
             :publishing-directory "./public"
             :publishing-function 'org-html-publish-to-html)))

;; Generate the site output
(org-publish-all t)
