.First.lib <- function (lib, pkg) {
    library.dynam("rlecuyer", pkg, lib)
    .lec.init()
}

.Last.lib <- function (libpath) {
  .lec.exit()
  library.dynam.unload("rlecuyer", libpath)
}
