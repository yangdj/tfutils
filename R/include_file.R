#' include contents of a file
#'
#' include contents of a file in a target file, e.g., a Rmd file.
#' @param file file path, length 1
#' @param ... other file component
#' @param encoding which encoding does the file use? defaults to UTF-8
#' @export
include_file <- function(file, ..., encoding = "UTF-8"){
        if (length(file) > 1) stop("file length must be 1")
        paste(readLines(file.path(file, ...), encoding = encoding), collapse = "\n")
}

