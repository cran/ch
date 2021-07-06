#' @title  Remove '>' and '+' from the console and 
#' add '#' to the run result.
#' @author  Chai
#' @importFrom readr clipboard
#' @importFrom  magrittr %>%
#' @description First you need to copy the console area to the clipboard, 
#' then run the console_cl() function to add a comment to the line 
#' where the output is, and to cancel the > on the original line. 
#' Finally, the result of the run is saved to the clipboard.
#' @param  preffix  The preffix for code.The default is '#>'.
#' You can change it according to your own preference, but I 
#' suggest '#' as the first character.
#' @return  the result of the run is saved to the clipboard.
#' @export
console_cl <- function( preffix ='#>'){
  str_a <- function(x, preffix = preffix) {
    x <- trimws(x)
    x1 <- substr(x,1,1);x1
    if (x1 == '>' | x1 == '+') x <-  substring(x,2)
    else if ( x1 == preffix) x <- paste('',x)
    else x <- paste('', preffix, x)
    return(x)
  }
  a <-  readr::clipboard()
  if (is.character(a) == T) {
    sapply(a, str_a, preffix = preffix) %>%  cat(file = 'clipboard')
    }
  else return('Clipboard is wrong!')
}
