op.pkg1r <- list(
  pkg1r.test = "testy mctest face",
  pkg1r.bar = "last orders"
)

.onLoad <- function(libname, pkgname) {
  op <- options()
  toset <- !(names(op.pkg1r) %in% names(op))
  if (any(toset)) options(op.pkg1r[toset])

  invisible()
}

.onAttach <- function(libname, pkgname) {
  packageStartupMessage("Welcome to my pkg1r")
}
