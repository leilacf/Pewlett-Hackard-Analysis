# Pewlett-Hackard-Analysis
## Overview of Analysis
The purpose of this analysis was to aid Pewlett Hackard in analyzing their retirement data. With the potential for a large quantity of eligible employees retiring soon, they need to shift their focus towards the effect that these open vacancies will have on the company in the near future. This analysis required for us to conduct employee research to determine the number of retiring employees per title, while also identifying the employees who were eligible to participate in a mentorship program. In applying our data modeling and analysis skills, we worked with 6 individual CSV files to create an employee database in SQL.

## Results
To organize the data and create the employee database, we had to merge various tables. In the first retirmenet titles table, it shows that there were 133,777 eligible staff for retirement; however, this was not the most accurate table as there were duplicate titles. Due to the data that we merged, this table reflected the accumulated amount of titles for all individuals throughout their years at Pewlett Hackard. Therefore, in order to obtain a table with unique values demonstarting the most recent title of an eligible retiree, we created the unique titles table.
- The data in this table highlighted that there are 72,458 eligible staff for retirement
- From this point, we created the retiring titles table which breaks down the 72,458 individuals and groups them by position type:
![This is an image](https://github.com/leilacf/Pewlett-Hackard-Analysis/blob/main/Final%20Data/retiring%20tables%20%23.png)

- Based off of this table, there are 7 primary position types that will have vacancies: Senior Engineer, Senior Staff, Engineer, Staff, Technique Leader, Assistant Engineer, and Manager. The retirement gap will be felt most strongly with the Senior Engineering positions at Pewlett Hackard as they will have the most available openings. 

Once we finalized the retirement data, we focused on the creation of the mentorship program by calculating the employees who were eligible for this. As new vacancies become available, this table showed that there were 1,550 eligible individuals who can mentor incoming staff--the eligibility was determined by those who were approaching retirement age but were not yet eligible for it.

## Summary
In conclusion, as the "silver tsunami" makes its way through, there will be 72,458 roles that will need to be filled (at this moment, which does not take into account those who extend their time at Pewlet Hackard or the potential for grouping certain roles and responsabilities to reduce this number). Moreover, there is a large gap between the amount of individuals who are eligible for retirement and the amount who are eligible to mentor incoming staff. This can create a distressing environment for those working at Pewlet Hackard as the pace in which new staff integrate, will be faster than that of which current staff can mentor. This may lead to a lack of prepardness for these new roles, over-time, and general frustrations. In keeping in mind this large number corresponding with the "silver tsunami", Pewlett Hackard must make a proactive mentorship plan in preparation for this new wave.






