fbGetToken <-
  function(app_id = NULL){
    if(is.null(app_id)) stop("Enter your app id.")
    utils::browseURL(paste0("https://www.facebook.com/dialog/oauth?client_id=",app_id  ,"&display=popup&redirect_uri=https://selesnow.github.io/rfacebookstat/getToken/get_token.html&response_type=token&scope=ads_read,business_management,manage_pages,ads_management,instagram_basic,instagram_manage_insights"))
    token <- readline(prompt = "Enter your token: ")
    return(token)
  }
