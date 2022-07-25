alzheimer_data <- readr::read_csv("https://raw.githubusercontent.com/COSMOS-DataScience/slides/main/data/alzheimer_data.csv")
alz=alzheimer_data
dim(alz)
attach(alz)
library(ggplot2)

ggplot(alz,
       aes(x = delsev, group = diagnosis)) +
  geom_bar(aes( y = ..prop.., fill = factor(..x..)), stat = "count") +
  geom_text(aes( label = scales::percent(..prop..),
                 y= ..prop.. ), stat= "count", vjust = -.5, size = 3) +
  facet_grid(~diagnosis) + 
  scale_y_continuous(labels = scales::percent) +
  labs(y = "percentage", fill = "Delusion Severity", x = "diagnosis") +
  theme(axis.text.x = element_blank(),
        axis.ticks.x = element_blank())

ggplot(alz,
       aes(x = diagnosis, group = delsev)) +
  geom_bar(aes( y = ..prop.., fill = factor(..x..)), stat = "count") +
  geom_text(aes( label = scales::percent(..prop..),
                 y= ..prop.. ), stat= "count", vjust = -.5, size = 3) +
  facet_grid(~depdsev) + 
  scale_y_continuous(labels = scales::percent) +
  labs(y = "percentage", fill = "diagnosis", x = "Delusion Severity") +
  theme(axis.text.x = element_blank(),
        axis.ticks.x = element_blank())

ggplot(alz,
       aes(x = hallsev, group = diagnosis)) +
  geom_bar(aes( y = ..prop.., fill = factor(..x..)), stat = "count") +
  geom_text(aes( label = scales::percent(..prop..),
                 y= ..prop.. ), stat= "count", vjust = -.5, size = 3) +
  facet_grid(~diagnosis) + 
  scale_y_continuous(labels = scales::percent) +
  labs(y = "percentage", fill = "Hallucinations severity", x = "diagnosis") +
  theme(axis.text.x = element_blank(),
        axis.ticks.x = element_blank())

ggplot(alz,
       aes(x = diagnosis, group = hallsev)) +
  geom_bar(aes( y = ..prop.., fill = factor(..x..)), stat = "count") +
  geom_text(aes( label = scales::percent(..prop..),
                 y= ..prop.. ), stat= "count", vjust = -.5, size = 3) +
  facet_grid(~depdsev) + 
  scale_y_continuous(labels = scales::percent) +
  labs(y = "percentage", fill = "diagnosis", x = "Hallucinations severity") +
  theme(axis.text.x = element_blank(),
        axis.ticks.x = element_blank())

ggplot(alz,
       aes(x = agitsev, group = diagnosis)) +
  geom_bar(aes( y = ..prop.., fill = factor(..x..)), stat = "count") +
  geom_text(aes( label = scales::percent(..prop..),
                 y= ..prop.. ), stat= "count", vjust = -.5, size = 3) +
  facet_grid(~diagnosis) + 
  scale_y_continuous(labels = scales::percent) +
  labs(y = "percentage", fill = "Agitation or aggression severity", x = "diagnosis") +
  theme(axis.text.x = element_blank(),
        axis.ticks.x = element_blank())

ggplot(alz,
       aes(x = diagnosis, group = agitsev)) +
  geom_bar(aes( y = ..prop.., fill = factor(..x..)), stat = "count") +
  geom_text(aes( label = scales::percent(..prop..),
                 y= ..prop.. ), stat= "count", vjust = -.5, size = 3) +
  facet_grid(~depdsev) + 
  scale_y_continuous(labels = scales::percent) +
  labs(y = "percentage", fill = "diagnosis", x = "Agitation or aggression severity") +
  theme(axis.text.x = element_blank(),
        axis.ticks.x = element_blank())

ggplot(alz,
       aes(x = depdsev, group = diagnosis)) +
  geom_bar(aes( y = ..prop.., fill = factor(..x..)), stat = "count") +
  geom_text(aes( label = scales::percent(..prop..),
                 y= ..prop.. ), stat= "count", vjust = -.5, size = 3) +
  facet_grid(~diagnosis) + 
  scale_y_continuous(labels = scales::percent) +
  labs(y = "percentage", fill = "Depression severity", x = "diagnosis") +
  theme(axis.text.x = element_blank(),
        axis.ticks.x = element_blank())

ggplot(alz,
       aes(x = diagnosis, group = depdsev)) +
  geom_bar(aes( y = ..prop.., fill = factor(..x..)), stat = "count") +
  geom_text(aes( label = scales::percent(..prop..),
                 y= ..prop.. ), stat= "count", vjust = -.5, size = 3) +
  facet_grid(~depdsev) + 
  scale_y_continuous(labels = scales::percent) +
  labs(y = "percentage", fill = "diagnosis", x = "Depression severity") +
  theme(axis.text.x = element_blank(),
        axis.ticks.x = element_blank())

ggplot(alz,
       aes(x = anxsev, group = diagnosis)) +
  geom_bar(aes( y = ..prop.., fill = factor(..x..)), stat = "count") +
  geom_text(aes( label = scales::percent(..prop..),
                 y= ..prop.. ), stat= "count", vjust = -.5, size = 3) +
  facet_grid(~diagnosis) + 
  scale_y_continuous(labels = scales::percent) +
  labs(y = "percentage", fill = "Anxiety severity", x = "diagnosis") +
  theme(axis.text.x = element_blank(),
        axis.ticks.x = element_blank())

ggplot(alz,
       aes(x = diagnosis, group = anxsev)) +
  geom_bar(aes( y = ..prop.., fill = factor(..x..)), stat = "count") +
  geom_text(aes( label = scales::percent(..prop..),
                 y= ..prop.. ), stat= "count", vjust = -.5, size = 3) +
  facet_grid(~depdsev) + 
  scale_y_continuous(labels = scales::percent) +
  labs(y = "percentage", fill = "diagnosis", x = "Anxiety severity") +
  theme(axis.text.x = element_blank(),
        axis.ticks.x = element_blank())

ggplot(alz,
       aes(x = elatsev, group = diagnosis)) +
  geom_bar(aes( y = ..prop.., fill = factor(..x..)), stat = "count") +
  geom_text(aes( label = scales::percent(..prop..),
                 y= ..prop.. ), stat= "count", vjust = -.5, size = 3) +
  facet_grid(~diagnosis) + 
  scale_y_continuous(labels = scales::percent) +
  labs(y = "percentage", fill = "Elation or euphoria severity", x = "diagnosis") +
  theme(axis.text.x = element_blank(),
        axis.ticks.x = element_blank())

ggplot(alz,
       aes(x = diagnosis, group = elatsev)) +
  geom_bar(aes( y = ..prop.., fill = factor(..x..)), stat = "count") +
  geom_text(aes( label = scales::percent(..prop..),
                 y= ..prop.. ), stat= "count", vjust = -.5, size = 3) +
  facet_grid(~depdsev) + 
  scale_y_continuous(labels = scales::percent) +
  labs(y = "percentage", fill = "diagnosis", x = "Elation or euphoria severity") +
  theme(axis.text.x = element_blank(),
        axis.ticks.x = element_blank())

ggplot(alz,
       aes(x = apasev, group = diagnosis)) +
  geom_bar(aes( y = ..prop.., fill = factor(..x..)), stat = "count") +
  geom_text(aes( label = scales::percent(..prop..),
                 y= ..prop.. ), stat= "count", vjust = -.5, size = 3) +
  facet_grid(~diagnosis) + 
  scale_y_continuous(labels = scales::percent) +
  labs(y = "percentage", fill = "Apathy or indifference severity", x = "diagnosis") +
  theme(axis.text.x = element_blank(),
        axis.ticks.x = element_blank())

ggplot(alz,
       aes(x = diagnosis, group = apasev)) +
  geom_bar(aes( y = ..prop.., fill = factor(..x..)), stat = "count") +
  geom_text(aes( label = scales::percent(..prop..),
                 y= ..prop.. ), stat= "count", vjust = -.5, size = 3) +
  facet_grid(~depdsev) + 
  scale_y_continuous(labels = scales::percent) +
  labs(y = "percentage", fill = "diagnosis", x = "Apathy or indifference severity") +
  theme(axis.text.x = element_blank(),
        axis.ticks.x = element_blank())

ggplot(alz,
       aes(x = disnsev, group = diagnosis)) +
  geom_bar(aes( y = ..prop.., fill = factor(..x..)), stat = "count") +
  geom_text(aes( label = scales::percent(..prop..),
                 y= ..prop.. ), stat= "count", vjust = -.5, size = 3) +
  facet_grid(~diagnosis) + 
  scale_y_continuous(labels = scales::percent) +
  labs(y = "percentage", fill = "Disinhibition severity", x = "diagnosis") +
  theme(axis.text.x = element_blank(),
        axis.ticks.x = element_blank())

ggplot(alz,
       aes(x = diagnosis, group = disnsev)) +
  geom_bar(aes( y = ..prop.., fill = factor(..x..)), stat = "count") +
  geom_text(aes( label = scales::percent(..prop..),
                 y= ..prop.. ), stat= "count", vjust = -.5, size = 3) +
  facet_grid(~depdsev) + 
  scale_y_continuous(labels = scales::percent) +
  labs(y = "percentage", fill = "diagnosis", x = "Disinhibition severity") +
  theme(axis.text.x = element_blank(),
        axis.ticks.x = element_blank())

ggplot(alz,
       aes(x = irrsev, group = diagnosis)) +
  geom_bar(aes( y = ..prop.., fill = factor(..x..)), stat = "count") +
  geom_text(aes( label = scales::percent(..prop..),
                 y= ..prop.. ), stat= "count", vjust = -.5, size = 3) +
  facet_grid(~diagnosis) + 
  scale_y_continuous(labels = scales::percent) +
  labs(y = "percentage", fill = "Irritability or lability severity", x = "diagnosis") +
  theme(axis.text.x = element_blank(),
        axis.ticks.x = element_blank())

ggplot(alz,
       aes(x = diagnosis, group = irrsev)) +
  geom_bar(aes( y = ..prop.., fill = factor(..x..)), stat = "count") +
  geom_text(aes( label = scales::percent(..prop..),
                 y= ..prop.. ), stat= "count", vjust = -.5, size = 3) +
  facet_grid(~depdsev) + 
  scale_y_continuous(labels = scales::percent) +
  labs(y = "percentage", fill = "diagnosis", x = "Irritability or lability severity") +
  theme(axis.text.x = element_blank(),
        axis.ticks.x = element_blank())