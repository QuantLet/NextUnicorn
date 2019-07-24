[<img src="https://github.com/QuantLet/Styleguide-and-FAQ/blob/master/pictures/banner.png" width="888" alt="Visit QuantNet">](http://quantlet.de/)

## [<img src="https://github.com/QuantLet/Styleguide-and-FAQ/blob/master/pictures/qloqo.png" alt="Visit QuantNet">](http://quantlet.de/) **ExitDeal** [<img src="https://github.com/QuantLet/Styleguide-and-FAQ/blob/master/pictures/QN2.png" width="60" alt="Visit QuantNet 2.0">](http://quantlet.de/)

```yaml

Name of Quantlet: 'ExitDeal'

Published in: TBC

Description: This fodler contains 1 quantlet for the exit deal size plot for master thesis "Searching for a unicorn: A ML approach towards predicting startup success"

Keywords: startup success, ensemble models, success prediction

Author: Cemre Ünal

Submitted:  22. Jul 2019, Cemre Ünal

```

### R Code
```r

# Source: https://www.statista.com/statistics/885843/global-startup-exits-deals-value/

library(ggplot2)

Year = c(2011, 2012, 2013, 2014, 2015, 2016, 2017, 2018)

Value = c(51, 58, 65, 148, 179, 246, 244, 219)

exit.df = data.frame(Year, Value)

par(mar = c(5, 5, 10, 10), mfrow = c(1,1))

e.deal = ggplot(data = exit.df, aes(x = factor(Year), y= Value)) + geom_bar(stat = "identity") + xlab("Year") + ylab("Exit deal value (in $ bn)") +
        theme(panel.grid.major = element_blank(), 
              panel.grid.minor = element_blank(),
              panel.background = element_rect(fill = "transparent",colour = NA),
              plot.background = element_rect(fill = "transparent",colour = NA), 
              axis.text=element_text(size=20), axis.title=element_text(size=22,face="bold")) 

ggsave("exitdeal.png", e.deal, bg = "transparent", height = 5, width = 10)

```

automatically created on 2019-07-24