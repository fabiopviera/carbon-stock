###########################
#
#bamlss fit
#
###########################
bamlss_fit <- function(formula_obj, data_obj,
                           model_name = NULL,
                           n_iter = 50000,
                           burnin = 10000,
                           thin = 5,
                           n_chains = 3,
                           seed = NULL) {
  
  if (is.null(seed) && !is.null(model_name)) {
    seed <- sum(utf8ToInt(model_name))
  }
  
  if (!is.null(seed)) {
    set.seed(seed)
    message("Model: ", model_name)
    message("Seed used: ", seed)
  }
  
  fit <- bamlss(
    formula = formula_obj,
    family  = GA,
    data    = data_obj,
    n.iter  = n_iter,
    burnin  = burnin,
    thin    = thin,
    chain   = n_chains
  )
  
  attr(fit, "seed") <- seed
  attr(fit, "model_name") <- model_name
  
  return(fit)
}
