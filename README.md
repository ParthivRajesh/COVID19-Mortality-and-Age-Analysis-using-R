# COVID19-Mortality-and-Age-Analysis-using-R
This project analyzes an openly available COVID-19 line-list dataset from Kaggle to statistically evaluate the commonly circulated claim that individuals aged 50 and above were more likely to die from COVID-19 during early outbreaks.

Dataset source:  
https://www.kaggle.com/datasets/sudalairajkumar/novel-corona-virus-2019-dataset

## Objective
To statistically verify whether the mean age of individuals who died from COVID-19 is significantly higher than that of those who survived.

## Dataset Summary
- Total observations: 1085  
- Total variables: 27  
- Missing values:  
  - Gender: 183 missing entries  
- Death variable issues:  
  - 14 inconsistent labels found  
  - Cleaned by converting into a binary variable (`death_dummy`: 0 = alive, 1 = dead)

## Methodology
1. Loaded and inspected the dataset using descriptive summary tools.  
2. Cleaned the death column and created a binary outcome variable.  
3. Computed the overall death rate.  
4. Split the dataset into two groups (alive vs. dead).  
5. Calculated the mean age for both groups.  
6. Performed a Welch Two Sample t-test at a 99% confidence level to evaluate statistical significance.

## Results

### Mean Age Comparison
| Group | Mean Age |
|-------|-----------|
| Alive | 48.07     |
| Dead  | 68.59     |

The deceased group is, on average, approximately 20 years older than the survivors.

### Welch Two Sample t-test

t = -10.839
df = 72.234
p-value < 2.2e-16
99% Confidence Interval: -25.52 to -15.51


## Observation
- The p-value is far below 0.05.  
- Null hypothesis is rejected.  
- There is a statistically significant age difference between survivors and non-survivors.  
- Individuals who died were typically 15–25 years older.

## Conclusion
The statistical results strongly support the claim that older individuals faced a significantly higher mortality risk from COVID-19. The mean age difference between survivors and deaths is substantial and statistically significant, confirming that age was a major factor in early COVID-19 fatality patterns.

