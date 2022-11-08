ctrl <- trainControl(method = "LOOCV") ## Leave one out CV

lm_model <- train(mpg ~ hp,
                  data = train_data,
                  method = "lm",       ## Linear regression
                  trControl = ctrl
                  )
