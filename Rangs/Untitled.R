require(reshape)
require(ggplot2)
require(dplyr)
require(ggthemes)
require(MASS)
a=data.frame(basketteurs=rnorm(30,200,30),pygmees=rnorm(30,130,30))
a<-melt(a)
a <- a %>% arrange(value) %>% mutate(rang=order(value))

ggplot(data=a) + geom_point(aes(x=rang, y=value,col=variable)) + 
  geom_segment(aes(x=rang,xend=rang,y=0, yend=value,col=variable ),lwd=2) + 
  scale_colour_pander(name='Type') + theme_igray(20) + ylab('Taille (cm)') +
  xlab('Rang') + scale_x_discrete(breaks=seq(0,60,by=5)) + ggtitle('Rangés par taille')

wilcox.test(a$value~a$variable)


a=data.frame(adolescents12=rnorm(30,140,20),pygmees=rnorm(30,130,30))

a<-melt(a)
a <- a %>% arrange(value) %>% mutate(rang=order(value))

ggplot(data=a) + geom_point(aes(x=rang, y=value,col=variable)) + 
  geom_segment(aes(x=rang,xend=rang,y=0, yend=value,col=variable ),lwd=2) + 
  scale_colour_pander(name='Type') + theme_igray(20) + ylab('Taille (cm)') +
  xlab('Rang') + scale_x_discrete(breaks=seq(0,60,by=5)) + ggtitle('Rangés par taille')

wilcox.test(a$value~a$variable)

