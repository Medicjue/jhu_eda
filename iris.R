library(e1071)

attach(iris)

x <- subset(iris, select=-Species)
y <- Species

svm_model <- svm(Species ~ ., data=iris)
summary(svm_model)

pred <- predict(svm_model,x)
system.time(pred <- predict(svm_model,x))

table(pred,y)


library(ggplot2)
ggplot(iris, aes(Petal.Length, Petal.Width, color = Species)) + geom_point()

set.seed(20)
irisCluster <- kmeans(iris[, 3:4], 3, nstart = 20)

table(irisCluster$cluster, iris$Species)
