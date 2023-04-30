#!/usr/bin/Rscript
# Operations from linear algebra


# Matrix operations:

# Scalar multiplication
matrix.smul <- function( m, factor ){
	n <- m
	for( i in 1:nrow( n ) ){
		for( j in 1:ncol( n ) ){
			n[i,j] <- factor * n[i,j]
		}
	}
	n
}

# Matrix addition
matrix.add <- function( m1, m2 ){
	if( nrow( m1 ) != nrow( m2 ) || ncol( m1 ) != ncol( m2 ) ){
		stop( "Unequal row or column counts" )
	}
	m3 <- m1
	for( i in 1:nrow( m3 ) ){
		for( j in 1:ncol( m3 ) ){
			m3[i,j] <- m1[i,j] + m2[i,j]
		}
	}
	m3
}

# Matrix multiplication
matrix.mmul <- function( m1, m2 ){
	if( ncol( m1 ) != nrow( m2 ) ){
		stop( "ncol( m1 ) and nrow( m2 ) must be equal" )
	}
	m1 %*% m2
}

# Matrix transposition
matrix.tpos <- function( m ){
	t = matrix( 1:length( m ), nrow = ncol( m ), ncol = nrow( m ) )
	for( i in 1:nrow( m ) ){
		for( j in 1:ncol( m ) ){
			m[i,j] -> t[j,i]
		}
	}
	t
}


# Row operations:

# Multiply row by a scalar
matrix.rsmul <- function( m, row, factor ){
	if( row %% 1 != 0 || row <= 0 ){
		stop( "Row number must be a positive integer" )
	}
	if( row > nrow( m ) ){
		stop( "Row number exceeds row count" )
	}
	n <- m
	for( col in 1:ncol( n ) ){
		n[row,col] <- n[row,col] * factor
	}
	n
}

# Add scalar multiple of one row to another
matrix.rsmadd <- function( m, dest, src, factor ){
	if( src %% 1 != 0 || dest %% 1 != 0 || src <= 0 || dest <= 0 ){
		stop( "Rows numbers must be positive integers" )
	}
	if( src > nrow( m ) || dest > nrow( m ) ){
		stop( "One or both row numbers exceed row count" )
	}
	n <- m
	for( col in 1:ncol( n ) ){
		n[dest,col] <- n[dest,col] + factor * n[src,col]
	}
	n
}

# Exchange two rows
matrix.rxchg <- function( m, row1, row2 ){
	if( row1 %% 1 != 0 || row2 %% 1 != 0 || row1 <= 0 || row2 <= 0 ){
		stop( "Rows numbers must be positive integers" )
	}
	if( row1 > nrow( m ) || row2 > nrow( m ) ){
		stop( "One or both row numbers exceed row count" )
	}
	n <- m
	for( col in 1:ncol( n ) ){
		r1 <- n[row1,col]
		n[row1,col] <- n[row2,col]
		n[row2,col] <- r1
	}
	n
}


# Generative operations:

# Identity matrix
matrix.i <- function( rank ){
	if( rank %% 1 != 0 || rank <= 0 ){
		stop( "Argument must be a positive integer" )
	}
	elements <- 1:(rank^2)
	for( i in 1:(rank^2) ){
		if( i %% (rank + 1) == 1 ){
			elements[i] <- 1
		} else{
			elements[i] <- 0
		}
	}
	matrix( elements, nrow = rank, ncol = rank )
}
