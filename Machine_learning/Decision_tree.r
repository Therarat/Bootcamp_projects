library(rpart.plot)

tree_model <- train(diabetes ~ .,
                    data = train_data,
                    method = "rpart")

rpart.plot(tree_model$finalModel)
