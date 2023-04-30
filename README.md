# matrix
R package that implements matrix operations

----

## Included functions:

**Matrix operations:**

`matrix.smul`: Multiply a matrix by a scalar

`matrix.add`: Add who matrices

`matrix.mmul`: Multiply two matrices (really just a front-end for the `%*%` operation, included for completeness)

`matrix.tpos`: Produce the transpose of a matrix

*For more information, see the man page titled `matrix`.*

**Row operations:**

`matrix.rsmul`: Multiply a given row of a matrix by a scalar

`matrix.rsmadd`: Add a scalar multiple of one row to another row

`matrix.rxchg`: Exchange two rows of a matrix

*For more information, see the man page titled `row`.*

**Generative operations:**

`matrix.i`: Generate an identity matrix of a given size

*For more information, see the man page titled `generative`.*

----

## Installation:

1. Download and open the Zip file.
2. Change the name of the directory from `matrix-main` to `matrix`.
3. Copy `matrix` to the directory containing your R packages (this may vary depending on your system).
