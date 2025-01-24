# This is a complex layout of a scatter plot

# The layout() function creates multiple charts in one panel

nf <- layout(matrix(c(2,0,1,3),2,2,byrow=TRUE), c(3,1), c(1,3), TRUE)
x <- pmin(3, pmax(-3, stats::rnorm(50)))
y <- pmin(3, pmax(-3, stats::rnorm(50)))
xhist <- hist(x, breaks=seq(-3,3,0.5), plot=FALSE)
yhist <- hist(y, breaks=seq(-3,3,0.5), plot=FALSE)
top <- max(c(xhist$counts, yhist$counts))
par(mai=c(1,1,0.2,0.2))
plot(x, y, xlim=c(-3,3), ylim=c(-3,3), xlab="", ylab="")
par(mai=c(0,1,0.2,0.2))
barplot(xhist$counts, axes=FALSE, ylim=c(0, top), space=0)
par(mai=c(1,0,0.2,0.2))
barplot(yhist$counts, axes=FALSE, xlim=c(0, top), space=0, horiz=TRUE)


