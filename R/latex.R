#' @title tex format and $$...$$
#' @importFrom  Ryacas tex 
#' @author Chai
#' @description output to Console and clipboard.
#' You can better check the correctness of the output.
#' @return lat_fmt() will output to Console. 
#' latext_fmt() will output to clipboard.
#' @param  x  Ryacas object,for more see \code{\link[Ryacas]{ysym}}.
#' @export
lat_fmt <-  function(x){
  x <- Ryacas::tex(x)
  x <- paste('$$',x,'$$')
  cat(x)
}


#' @rdname lat_fmt
#' @export
latex_fmt <-  function(x){
  x <- Ryacas::tex(x)
  x <- paste('$$',x,'$$')
  cat(x,file = 'clipboard')
}





