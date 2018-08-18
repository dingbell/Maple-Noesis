# Maple-Noesis
This project is a recruiting app.

In this web project, I first built a dictionary type table and a dictionary value table in MySQL to make the website reusable and changeable.

dictionary_type
checkbox    sequence order    code           name                  description
                    1         salary         salary_range          0-15000
                    2         time           work_time             full/half/both
                    3         degree         academic_degree
                    4         echnique       technique_skill    
dictionary_value
checkbox    id(UUID-32bits)            dicValue    value          order     typeCode(foreign key)       
2b29f270-a0a9-11e8-98d0-529269fb       level1       0-5000         1         salary
2b29f72a-a0a9-11e8-98d0-529269fb       level2       5000-6000      2         salary
                    -                  level3       6000-7000      3         salary
                    -                  level4       7000-8000      4         salary
                    -                  level5       8000-10000     5         salary
                    -                  level6       10000-15000    6         salary
                    -                  full         full-time      1         time
                    -                  half         half-time      2         time  
                    -                  both         both           3         time 
Selection based on the these dictionary values(skills and academic degrees of the applicants).

I designed a schema named people-ware in the MySQL. There is a MySQL script in the branch to create the tables and some samples.
