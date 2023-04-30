% Documentation of matrix row operations

\name{row}

\alias{matrix.rsmul}
\alias{matrix.rsmadd}
\alias{matrix.rxchg}

\title{Matrix Row Operations}

\description{
	\code{matrix.rsmul}: performs scalar multiplicatoin of a row.

	\code{matrix.rsmadd}: adds a scalar multiple of source row to
		destination row

	\code{matrix.rxchg}: exchanges two rows
}

\usage{
matrix.rsmul( m, row, factor )
matrix.rsmadd( m, dest, src, factor )
matrix.rxchg( m, row1, row2 )
}

\arguments{
	\item{m}{matrix to operate on}
	\item{row, row1, row2}{row(s) to operate on}
	\item{src}{source row}
	\item{dest}{destination row}
	\item{factor}{scalar factor to multiply a row by}
}

\value{Matrix after performing the row operation (original matrix is left
	unchanged)}

\examples{
m <- matrix( c( 1, 2, 3, 4, 5, 6, 7, 8, 9 ), nrow = 3, ncol = 3 )
m
matrix.rsmul( m, row = 1, factor = 2 )
matrix.rsmadd( m, dest = 1, src = 2, factor = 2 )
matrix.rxchg( m, row1 = 1, row2 = 3 )
}

\note{Functions will terminate abnormally if any of the given row numbers
	are out-of-range, that is, the number given either is not a positive
	integer or exceeds the number of rows in the matrix.}

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
