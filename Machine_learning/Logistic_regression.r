set.seed(99)
ctrl <- trainControl(method = “cv”, number = 5, 
 verboseIter = TRUE)
logistic_model <- train(diabetes ~ ., 
 data = train_data, 
 method = "glm",
 trControl = ctrl)
## test model (predict test data)
p <- predict(logistic_model, newdata = test_data)
accuracy <- mean(p == test_data$diabetes)
