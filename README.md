# Plant-Hare-Lynx-model

This is an assignment for Bioinformatics at Maastricht University

Maria el Kadi and Lea Dratwa

This is a three-species model describing the relationship between the consumption of a plant by a herbivore (the hare) which will be subsequently consumed by the predator carnivore (the lynx). This can be descibed by a set of variables where a1 represents the number of succesful instances of predation or consumption, a1 the consumption of the plants by the hare and a2 the consumption of the hare by the lynx. Since the population of the consumer decreases as b1 and b2 for the hare and lynx, respectively, increases, it is concluded that b signifies something that hinders the efficiency of the consumption. For example, b2 could be unsuccesful predation where energy is spent to hunt but no energy is gained. Finally, d1 signifies the death rate of the hares while d2 signifies the death rate of the lynx. The time period is defined by a variable t and denotes a time period of 200 months. 

The increase in the population of plants is correlated with a higher birth rate of hares and a greater hare population is correlated with an increase in the lynx population. 

Scenario 1 

aim: Stable periodicity of roughly 20 months. 


The values selected for the three populations were small and close (0.6, 0.3, and 0.5, for the plants, hare, and lynx, respectively). The higher plant population at the start enabled a rise in hare which then gave rise to an increase in lynx. Having a lower plant population at the start led to a slower increase in both of the other populations so the oscillations were not as regular and their amplitude increased over time. 
![image](https://github.com/LeaDratwa/Plant-Hare-Lynx-model/assets/133098307/8c22661f-acdf-4856-846c-43ff205664c6)
Figure 1: This graph demonstrates the variety in oscillations when the initial plant population is set to 0.3.

The death rate of the lynx was set to 0.545 which yielded an almost unchanging amplitude of the corresponding oscillation as can be seen below. 
![image](https://github.com/LeaDratwa/Plant-Hare-Lynx-model/assets/133098307/0195b907-d120-4619-aa00-d99e3ccf4b5f)
Figure 2: State space with lynx death rate set to 0.545.

Scenario 2

aim: 2 peaks in the lynx population within the 200 month period. Random oscillations. 

The initial conditions: 0.65, 0.1, 3 for plants, hare, and lynx, respectively, were chosen. The initial lynx population affects the number of peaks occuring within a 200 month period. The initial population selected is significantly higher than that of the plants and hare.

![image](https://github.com/LeaDratwa/Plant-Hare-Lynx-model/assets/133098307/c84abe50-bb97-45b7-9853-fc13252f5620)
Figure: Population changes over 200 momnths with an initial population of 1, 2, 3, 4, 5, and 6 for the lynx population

A lower initial lynx population provided more stable oscillations but only 1 peak was obtained within the 200 month time frame for the lynx population. Choosing a higher number provided increasingly random oscillations during the time when the hare population was equal to 0.* 3 as the innitial population is low enough to have more similar oscillations while also having 2 peaks in the lynx population over this time period. 

*To note: though it is not possible for a population of 0 to start increasing again in real life, the model can display a population of 0 that proceeds to increase. 
Scenario 3
We aimed to create a steady state where the population of hares and plants remained constant depsite the death of all the ;ynx population within 30 months. 


