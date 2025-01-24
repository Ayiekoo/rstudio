layout(matrix(data=c(1,2,3,4,5), nrow=1, ncol = 5),
       widths = c(2,1,1,1,1), heights=c(1,1))
# We define the layout of the graph in 5 columns
# The first column has twice the width of other columns

par(mai=c(0.5,1,0.5,0),omi=c(0.25,0.25,0.25,0.25))
x<-rnorm(50)
y<-rnorm(50)
plot(x,y,axes=F,col=1,xlim=c(-3,3),ylim=c(-3,3),
     xlab="",ylab="y-axis-\nlabel")
axis(1)
axis(2)
box(lty='solid',col='darkgrey')
par(mai=c(0.5,0,0.5,0))
for (i in 2:5)
{
x<-rnorm(50)
y<-rnorm(50)
plot(x,y,axes=F,col=i,xlim=c(-3,3),ylim=c(-3,3),xlab="")
if (i %% 2 == 0) {axis(3)} else {axis(1)}
box(lty='solid',col='darkgrey')
}

