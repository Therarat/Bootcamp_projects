## train random forests
set.seed(99)
myGrid <- expand.grid(mtry = 2:4)
ctrl <- trainControl(method = "....", number = ...., 
 verboseIter = TRUE)
rf_model <- train(diabetes ~ ., 
 data = ...., 
 method = "rf",
 tuneGrid = myGrid,
 trControl = ....)
## test model 
p <- predict(rf_model, newdata = ....)
accuracy <- mean(....)
