#' @importFrom AnnotationFilter supportedFilters
.onLoad <-
    function(...)
{
    .filter_init()
#    .tbl_Functions()
}

.onUnload <-
    function(...)
{
    .removeTables()
}
.onAttach <- function(libname, pkgname) {
    msg <- sprintf(
        "Package '%s' is deprecated and will be removed from Bioconductor
         version %s", pkgname, "3.24")
    .Deprecated(msg=paste(strwrap(msg, exdent=2), collapse="\n"))
}

