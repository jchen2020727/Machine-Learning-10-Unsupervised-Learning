data(USArrests)

# Transpose data set to center observations, not covariates
USArrests <- scale(t(USArrests))

# Euclidean distance between states
dist1 <- dist(t(us.scaled))

# Correlation distance between states
dist2 <- as.dist(1-cor(us.scaled))

# Plot shows strong non-linear relationship between the 2 sets of values
plot(dist1, dist2, main = 'Plotting Euclidian Distance vs. Correlation Distance', xlab="Euclidean distance", ylab="Correlation distance")
abline(lm(dist2~dist1), col='blue', lwd=2)
legend("bottomright", legend="linear model approximation", col="blue", lwd=2)
