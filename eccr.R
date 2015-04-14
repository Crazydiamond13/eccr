umoll = 1;
mgdl = 2;
male = 1;
female = 2;

eccr <- function(age, weight, sex, creat, units) {
        
        if(units == umoll){
                if(sex == male){
                        eccr = round((140 - age) * weight * 1.23 / (creat),0)
                }
                else{
                        eccr = round((140 - age) * weight * 1.04 / (creat),0)
                }
        }
        else{
                if(sex == male){
                        eccr = round((140 - age) * weight / (72 * creat),0)
                }
                else{
                        eccr = round((140 - age) * weight * 0.85 / (72 * creat),0)
                }
        }
        
        return (eccr)
}