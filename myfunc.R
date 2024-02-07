myfu <-  function( x, y){
  sum <- x+y
  mul <- x*y
  div <- x/y
  mod <- x%%y
  return( list( rsum=sum, rmul=mul, rdiv=div, rmod=mod ))
}