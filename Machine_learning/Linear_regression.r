set.seed(99)
ctrl <- trainControl(method = "repeatedcv",
                     number = 5,
                     repeats = 5,
                     verboseIter = T)

grid <- data.frame(k = c(3, 5, 7))

knn_model <- train(
              medv ~ crim + indus + rm,
              data = train_data,
              method = "knn",
              metric = "RMSE",   # Search for smallest RMSE
              trControl = ctrl,
              tuneGrid = grid
              )

plot(knn_model)

#Score + evaluate

p <- predict(knn_model,
             newdata = test_data)

RMSE(p, test_data$medv)
