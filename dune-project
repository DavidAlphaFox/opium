(lang dune 1.11)

(using fmt 1.2)

(name opium)

(generate_opam_files true)

(source
 (github rgrinberg/opium))

(authors "Rudi Grinberg")

(maintainers "Rudi Grinberg <rudi.grinberg@gmail>")

(documentation https://rgrinberg.github.io/opium/)

(license MIT)

(package
 (name opium_kernel)
 (synopsis "Sinatra like web toolkit based on Lwt + Cohttp")
 (description
   "Opium_kernel is the Unix indpendent core of Opium. Useful for extremely portable environments such as mirage.")
 (depends
  (ocaml
   (>= 4.04.1))
  (dune
   (>= 1.11))
  hmap
  cohttp
  cohttp-lwt
  lwt
  fieldslib
  sexplib
  ppx_fields_conv
  ppx_sexp_conv
  re
  (alcotest :with-test)))

(package
 (name opium)
 (synopsis "Sinatra like web toolkit based on Lwt + Cohttp")
 (description
   "Opium is a minimalistic library for quickly binding functions to http routes. Its features include (but not limited to):\n\n    Middleware system for app independent components\n    A simple router for matching urls and parsing parameters\n    Request/Response pretty printing for easier debugging\n  ")
 (depends
  (ocaml
   (>= 4.04.1))
  (dune
   (>= 1.11))
  opium_kernel
  cohttp-lwt-unix
  ezjsonm
  lwt
  logs
  cmdliner
  ppx_fields_conv
  ppx_sexp_conv
  re
  magic-mime
  (alcotest :with-test)))
