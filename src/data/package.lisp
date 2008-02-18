(in-package :cl-user)

(defpackage :bknr.datastore
  (:use :cl :bknr.utils :cl-interpol :cl-ppcre
	:bknr.indices :bknr.statistics
	:closer-mop )
  #+cmu
  (:shadowing-import-from :common-lisp #:subtypep #:typep)
  (:shadowing-import-from :cl-interpol quote-meta-chars)
  (:export #:*store-debug*
	   #:*store*

	   ;; session
	   #:session
	   #:session-status

	   ;; store
	   #:store
	   #:mp-store
	   #:store-guard
	   #:store-state
	   #:open-store
	   #:close-store

	   ;; transaction
	   #:transaction
	   #:transaction-function-symbol
	   #:transaction-args
	   #:transaction-timestamp
	   #:in-transaction-p
	   #:deftransaction

	   ;; store-object
	   #:persistent-class
	   #:persistent-xml-class
	   #:persistent-xml-class-importer
	   #:define-persistent-class
	   #:define-persistent-xml-class
	   #:defpersistent-class
   
	   #:store-object
	   #:store-object-store
	   #:store-object-id
	   #:store-object-subsystem

	   #:delete-object
	   #:delete-objects
	   #:cascade-delete-p
	   #:cascading-delete-object
   
	   #:initialize-persistent-instance
	   #:initialize-transient-instance

	   #:store-object-with-id
	   #:store-objects-with-class
	   #:class-instances			; convenience alias
	   #:store-objects-of-class
	   #:all-store-objects
	   #:map-store-objects
           #:prepare-for-snapshot
	   #:find-store-object
	   #:create-object-transaction
	   #:tx-make-object
	   #:make-object
	   #:tx-change-slot-values
	   #:change-slot-values
	   #:store-object-add-keywords
	   #:store-object-remove-keywords
	   #:store-object-set-keywords

	   #:persistent-change-class

	   #:map-class-instances

	   #:store-object-add-keywords
	   #:store-object-remove-keywords
	   #:store-object-set-keywords

	   ;; operations
	   #:execute
	   #:restore
	   #:snapshot
	   #:with-store-guard
	   #:with-transaction
	   #:store-objects
	   #:store-stats

	   #:blob
	   #:blob-type
	   #:blob-mime-type
	   #:blob-timestamp
	   #:blob-pathname
	   #:with-open-blob
	   #:blob-size
	   #:blob-to-stream
	   #:blob-to-file
	   #:blob-from-stream
	   #:blob-from-string
	   #:blob-from-file
	   #:blob-from-array
	   #:make-blob-from-file
	   #:rename-file-to-blob
	   #:store-blob-root-tempdir

	   #:store-object-subsystem
	   #:blob-subsystem

	   #:find-refs))

