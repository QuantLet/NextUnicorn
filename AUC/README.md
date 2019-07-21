[<img src="https://github.com/QuantLet/Styleguide-and-FAQ/blob/master/pictures/banner.png" width="888" alt="Visit QuantNet">](http://quantlet.de/)

## [<img src="https://github.com/QuantLet/Styleguide-and-FAQ/blob/master/pictures/qloqo.png" alt="Visit QuantNet">](http://quantlet.de/) **AUC** [<img src="https://github.com/QuantLet/Styleguide-and-FAQ/blob/master/pictures/QN2.png" width="60" alt="Visit QuantNet 2.0">](http://quantlet.de/)

```yaml

Name of Quantlet: 'AUC'

Published in: TBC

Description: This folder contains 1 quantlet for the Area Under the Curve for the master thesis "Searching for a unicorn: A ML approach towards predicting startup success"

Keywords: startup success, ensemble models, success prediction

Author: Cemre Ünal

Submitted:  22. Jul 2019, Cemre Ünal

```

### R Code
```r

pdf("AUC_Comparison.pdf", width = 5, height = 5)

par(mar = c(5, 5, 5, 5), mfrow = c(1,1))
plot(perf_obj_full,    col = "indianred1",  lwd = 2.5)
par(new = T)
plot(perf_obj_reduced, col = 'blue',        lwd = 2.5)
par(new = T)
plot(perf_obj_rpart,   col = "green4",      lwd = 2.5)
par(new = T)
plot(perf_obj_inf,     col = "blueviolet",  lwd = 2.5)
par(new = T)
plot(perf_obj_rf,      col = "aquamarine4", lwd = 2.5)
par(new = T)
plot(perf_obj_xgb,     col = "chocolate1",  lwd = 2.5)

abline(a = 0, b = 1,   col = "black")

legend("bottomright", legend = c("M0", "M1", "Rpart", "Cond. Inf. Tree", "Random Forest", "XGB"),
       col = c("indianred1", "blue", "green4","blueviolet" , "aquamarine4", "chocolate1" ), 
       lty = 1, cex = 0.8, plot = FALSE)

dev.off()

modelnames  = c("Full logistic regression", "Reduced logistic regression", "Rpart", "Ctree", "Random forest", "XGBoost")
AUC   = c(AUC.full, AUC.reduced, AUC.rpart, AUC.inf, AUC.rf, AUC.xgb)

auc_result = data.frame(modelnames, AUC)

```

automatically created on 2019-07-21