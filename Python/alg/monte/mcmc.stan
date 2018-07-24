data {
    int<lower=1> N;
    vector[N] x;
    int<lower=0> y[N];
}
parameters {
    real beta1;
    real beta2;
}
model {
    for (i in 1:N) {
        // poisson distribution and log link
        y[i] ~ poisson(exp(beta1 + beta2 * x[i]));
    }
    // non informal pre discribution
    beta1 ~ normal(0, 1000);
    beta2 ~ normal(0, 1000);
}
