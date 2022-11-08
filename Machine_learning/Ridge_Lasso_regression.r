set.seed(42)
ctrl <- trainControl(method = "cv",
                     number = 5,
                     verboseIter = T)

grid <- expand.grid(alpha = c(0, 1),                # 0 = Ridge, 1 = Lasso
                    lambda = seq(0, 1, by =0.03))

glmnet_model <- train(diabetes ~ .,
               data = train_data,
               method = "glmnet",
               metric = "Accuracy",
               trControl = ctrl)
