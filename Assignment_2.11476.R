M1 =matrix(data=0:0,nrow = 5,ncol=5,byrow=TRUE)
M1

ctr=0;
for (i in 1:nrow(M1)){
  for (j in 1:ncol(M1)){ 
    if (i==j){break
    }
    else{
      M1[i,j]= i*j
      ctr =ctr+1
    }
  }
}
print(M1) 
print(ctr)
