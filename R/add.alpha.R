#' adds an alpha (transparency) to a color 
#' @param col  A vector of colors
#' @param alpha   The alpha level (0-1)
#' @export
add.alpha <- function(col, alpha=1) {
  if(missing(col)) stop("Please provide a vector of colours.")
  apply(sapply(col, col2rgb)/255, 2, 
                     function(x) 
                       rgb(x[1], x[2], x[3], alpha=alpha))  
}