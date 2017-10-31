
# grab and store all current variables
varnames <- ls(all.names = TRUE)

#create empty list
results <- list()



for(i in 1:length(varnames)){
  # store the string variable name as an r object
  varname <- eval(as.name(varnames[i]))
  
  # add plusses between api calls
  now_with_plus <- paste0(varname, collapse= " + ")
  
  # add parenthesis 
  finalexpression <- paste0("(", now_with_plus, ")")
  
  #store in list
  results[[i]] <- finalexpression
}

data <- data.frame()

#Store results in dataframe
for(i in 1:length(varnames)){
  data[i,1]<- varnames[[i]]
  data[i,2]<- results[[i]]
}

#remove all the individual variables
rm(list =varnames)
rm(varnames, results, a, i, finalexpression, now_with_plus, varname)

#split out varname into variable name and subject
data <- 
  data %>% 
  separate(V1, into=c("var_name","var","var_type", "extra"))

# write out as a csv to be manually massaged
write_csv(data, 'acsr_formulas.csv')


