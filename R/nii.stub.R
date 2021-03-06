#' @title Grab nii file stubname
#' @description Quick helper function to strip of .nii or .nii.gz from filename
#' @return NULL
#' @param x character vector of filenames ending in .nii or .nii.gz
#' @export

nii.stub = function(x){
  stub = gsub("\\.gz$", "", x)
  stub = gsub("\\.nii$", "", stub)
  return(stub)
}


#' @title Set Max/Min for nifti object
#' @return object of type nifti
#' @param img nifti object
#' @description Rescales image @cal_max and @cal_min to be the max and min,
#' removing NA's, of the image
#' @name cal_img
#' @export
cal_img = function(img){
  cmax = max(img, na.rm=TRUE) 
  cmax = ifelse(is.finite(cmax), cmax, 0)
  cmin = min(img, na.rm=TRUE) 
  cmin = ifelse(is.finite(cmin), cmin, 0)  
  img@cal_max = cmax
  img@cal_min = cmin
  img
}

#' @title Change intercept to 0 and slope to 1
#' @return object of type nifti
#' @param img nifti object (or character of filename)
#' @description Forces image @scl_slope to 1 nad and @scl_inter to be 0
#' @name zero_trans
#' @export
zero_trans = function(img){
  img = check.nifti(img)
  img@scl_slope = 1
  img@scl_inter = 0
  return(img)
}