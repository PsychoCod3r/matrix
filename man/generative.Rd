% Documentation of generative operations

\name{generative}

\alias{matrix.i}

\title{Generative Operations}

\description{
	Functions for generating special matrices
	\code{matrix.i}: identity matrix of a given rank
}

\usage{
matrix.i( rank )
}

\arguments{
	\item{rank}{The rank or number of rows/columns for the identity matrix}
}

\value{Identity matrix or rank \code{rank}}

\examples{
matrix.i( rank = 7 )
}

\note{\code{matrix.i} will terminate abnormally if the argument is not a
	positive integer.}

\author{
	Michael Warren
	\href{https://github.com/psychocod3r}{GitHub}
	\href{https://psychocod3r.wordpress.com/author/psychocod3r}{WordPress}
	\email{acidkicks@protonmail.com}
}

\keyword{math}
\keyword{array}
\keyword{algebra}
