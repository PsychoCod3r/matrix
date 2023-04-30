% Documentation of matrix algebra operations

\name{matrix}

\alias{matrix.smul}
\alias{matrix.add}
\alias{matrix.mmul}
\alias{matrix.tpos}

\title{Matrix Algebra Operations}

\description{
	\code{matrix.smul}: performs scalar multiplication of a matrix.

	\code{matrix.add}: performs addition of two matrices.

	\code{matrix.mmul}: performs multiplication of two compatible matrices.

	\code{matrix.tpos}: performs transposition of a matrix.
}

\usage{
matrix.smul( m, factor )
matrix.add( m1, m2 )
matrix.mmul( m1, m2 )
matrix.tpos( m )
}

\arguments{
	\item{m, m1, m2}{matrices to operate on}
	\item{factor}{scalar factor to mutliply the matrix by}
}

\value{Result of the matrix operation (original operands are left unchanged)}

\examples{
m1 <- matrix( c( 1, 2, 3, 4, 5, 6 ), nrow = 2, ncol = 3 )
m1
m2 <- matrix( c( 1, 2, 3, 4, 5, 6 ), nrow = 3, ncol = 2 )
m2
m3 <- matrix( c( 6, 5, 4, 3, 2, 1 ), nrow = 2, ncol = 3 )
m3
matrix.smul( m1, factor = 2 )
matrix.add( m1, m3 )
matrix.mmul( m1, m2 )
matrix.tpos( m1 )
}

\note{
	Functions will terminate abnormally if:

	\code{matrix.add}: Row or column counts don't match

	\code{matrix.mmul}: Column count of \code{m1} does not match row
		count of \code{m2}
}

\author{
	Michael Warren
	\href{https://github.com/psychocod3r}{GitHub}
	\href{https://psychocod3r.wordpress.com/author/psychocod3r}{WordPress}
	\email{acidkicks@protonmail.com}
}

\keyword{math}
\keyword{array}
\keyword{algebra}
\keyword{manip}
