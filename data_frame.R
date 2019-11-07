#Program generates a dataframe and updates it to
#include new pieces of data

#Initial data stored in vectors
Name = c('Sydney', 'Conor', 'Deric', 'Emily', 'Steven', 'Edward')
Age = c(21, 27, 25, 30, 19, 41)
Gender = c('Female', 'Male', 'Male', 'Female', 'Male', 'Male')
Job = c('Agroecologist', 'Data Scientist', 
        'Biologist', 'Biologist', 'Chemist', 'Mechanic')
#Data frame created
df = data.frame(Name, Age, Gender, Job)
df

#New column of data added
Height = c(163, 177, 164, 162, 165, 170)
df$Height = Height
df

#New row of data added
fred = data.frame(Name = 'Fred', Age = 35, Gender = 'Male',
                  Job = 'Realtor', Height = 180)
rbind(df, fred)
df

#Sort df by Name
df[order(df$Name), ]

