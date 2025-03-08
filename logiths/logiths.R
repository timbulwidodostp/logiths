# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Horseshoe shrinkage prior in Bayesian Logistic regression Use logiths (horseshoenlm) With (In) R Software
install.packages("horseshoenlm")
install.packages("pgdraw")
library("horseshoenlm")
logiths = read.csv("https://raw.githubusercontent.com/timbulwidodostp/logiths/main/logiths/logiths.csv",sep = ";")
# Estimation Horseshoe shrinkage prior in Bayesian Logistic regression Use logiths (horseshoenlm) With (In) R Software
z <- logiths$z
X <- cbind(logiths$X1, logiths$X2, logiths$X3)
burnin <- 100
nmc    <- 500
ntrain <- 100
ntrain <- 250
ntest  <- 100
n <- ntest + ntrain
ztrain <- z[1:ntrain]
Xtrain  <- X[1:ntrain, ]
ztest <- z[(ntrain + 1):n]
Xtest  <- X[(ntrain + 1):n, ]
logiths <- logiths(z = ztrain, X = Xtrain, method.tau = "halfCauchy", burn = burnin, nmc = nmc, thin = 1, Xtest = Xtest)
BetaHat <- logiths$BetaHat
BetaHat
DIC <- logiths$DIC
DIC
WAIC <- logiths$WAIC
WAIC
# Horseshoe shrinkage prior in Bayesian Logistic regression Use logiths (horseshoenlm) With (In) R Software
# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Finished