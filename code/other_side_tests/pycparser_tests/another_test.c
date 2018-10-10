
#define COLUMN_MAJOR(i, j, m, n) ((j)*(m)+(i))

extern void matrix_multiply(double* A, double* B, int m, int n, int p, double* C);

void init_matrix_f(double** A, int m, int n, double (*f)(int,int)) {
    *A = malloc(m * n * sizeof(double));
    int i, j;
    for(j=0; j<n; j++) {
        for(i=0; i<m; i++) {
            (*A)[COLUMN_MAJOR(i, j, m, n)] = (*f)(i, j);
        }
    }
}

double random_initializer(int i, int j) { return (double)(rand()) / RAND_MAX; }
double index_initializer(int i, int j) { return 10*(i+1) + (j+1); }

void print_matrix(double* A, int m, int n) {
    int i, j;
    printf("[");
    for(i=0; i<m; i++) {
        printf("\t[");
        for(j=0; j<n; j++) {
            printf("%12.8f%s", A[COLUMN_MAJOR(i, j, m, n)], ((j != n-1) ? ", " : ""));
        }
        printf("]%s\n", ((i != n-1) ? "," : ""));
    }
    printf("]\n");
}

int main() {
    srand(1);
    int m = 5, n = 5, p = 5;
    double *A, *B;
    init_matrix_f(&A, m, n, &random_initializer);
    init_matrix_f(&B, n, p, &index_initializer);
    printf("A: "); print_matrix(A, m, n);
    printf("B: "); print_matrix(B, n, p);

    double* C = malloc(m * p * sizeof(double));
    matrix_multiply(A, B, m, n, p, C);
    printf("C: "); print_matrix(C, m, p);

    free(A); free(B); free(C);
}
