set.seed(1243)
n=10
m=10
M1 =replicate(n,rnorm(m))
my_df=data.frame(M1)
my_df
system.time(
  for (i in 1:n)
  {
    for (j in 1:m)
    { 
      my_df[i,j]=my_df[i,j]+(10*sin(0.75*pi))
    }
    
  }
)
#vectorized
set.seed(1243)
n=10
m=10
M1 =replicate(n,rnorm(m))
my_df= data.frame(M1)
system.time(my_df<-my_df + 10*sin(0.75*pi))
#Non vectorized takes longer than vectorized 

