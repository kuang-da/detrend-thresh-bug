library('autothresholdr')
path <- "data/GFP_GFP_10msec_image_00240.tif"
img <- ijtiff::read_tif(path, msg = TRUE)
autothresholdr::mean_stack_thresh(img, method="Huang")
