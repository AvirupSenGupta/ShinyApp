Probfunction = function(disp, wt) 
{
	data(mtcars)
	model = glm(formula= vs ~ wt + disp, data=mtcars, family=binomial)
	newdata = data.frame(wt = wt, disp = disp)
	prob = predict(model, newdata, type="response")
	return(prob)
}
