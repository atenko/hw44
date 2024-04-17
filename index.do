<<dd_version: 2>>     
<<dd_include: header.txt>>



# HW4
## Displaying histogram in Github and getting used to markdown
### Atenko

**Methods:** 
First, students initialized their dataset with 30 observations. Second, they created an `age` variable with a mean of 57 years and a standard deviation of 15. They alternatively simulated a t-distribution. Finally, they plotted a histogram of the `age` variables from both normal distribution and t-distribution.

```
<<dd_do>>
cls
clear
set obs 30
gen age=(rnormal()*15)+57 
gen age_t=(rt(_N)*15)+57
hist age, ///
   fcolor(orange%40) /// simulated normal 
   addplot(hist age_t, fcolor(midblue%50)) /// simulated t-distribution 
   normal /// theoretical normal
   legend(on ///
      lab(1 "Sampled from Normal") ///
	  lab(2 "Theoretical Normal") ///
	  lab(3 "Sampled from t-distribution") ///
	  )
graph export hist_age.png, replace 
<</dd_do>>
```
<<dd_graph>>

**Results**
Students found that the shapes of the graphs are different. Then, they made do-file which will be converted to html by `dyndoc`. They also got used to Greek symbols in the result section like "Distributkon of $\text{Age, years} \sim \mathcal{N}(\mu=57,\\sigma^{2}=225)$"
