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
