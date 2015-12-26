cacheSolve <- function(x, ...) {
        ## Devuelve la inversa de la matriz x
        inv <- x$getInverse()
        if (!is.null(inv)) {
                message("devuelve los datos de la memoria cache")
                return(inv)
        }
        mat <- x$get()
        inv <- solve(mat, ...)
        x$setInverse(inv)
        inv
}