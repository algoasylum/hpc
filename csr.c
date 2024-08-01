#include <stdio.h>
#include <stdlib.h>

int main(){
    int dim,entry;
    printf("enter the dimensions");
    scanf("%d",&dim);
    int array[dim][dim];
    for(int i=0;i<dim;i++){
        for(int j=0;j<dim;j++){
            printf("column %d",j);
            scanf("%d",&array[i][j]);
        
        }
        printf("row %d completed",i);

    }
    //printing matrix
    for(int i=0;i<dim;i++){
        for(int j=0;j<dim;j++){
            printf("%d",array[i][j]);
        }
        printf("\n");
    }

    int count=0;
    int column[(dim*dim)/2];
    int row[dim];
    int val[(dim*dim)/2];
    row[0]=0;
    int r, cv =0;

    for(int i=0;i<dim;i++){
        for(int j=0;j<dim;j++){

            if(array[i][j]!=0){
                column[cv]=j;
                val[cv]=array[i][j];
                printf("%d",array[i][j]);
                cv++;
                count++;
            }
        }
        r++;
        row[r]=count;
    }
    printf("done");

    for(int k=0;k<cv;k++){
        printf("%d",column[k]);
        
    }
    printf("\n");
    for(int k=0;k<r;k++){
        printf("%d",row[k]);
        
    }
    printf("\n");
    for(int k=0;k<cv;k++){
        printf("%d",val[k]);
        
    }
    printf("\n");



}