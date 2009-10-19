#!/usr/bin/env Rscript

download.file('http://r-forge.r-project.org/plugins/scmsvn/viewcvs.php/*checkout*/pkg/inst/tests/testSwfDevice.R?root=swfdevice',
	'testSwfDevice.R')
source('testSwfDevice.R')
swfs <- list.files(,".swf")
file.create('swfs.html')

for(i in 1:length(swfs))
	system(paste('swfdump --xhtml',swfs[i],'>> swfs.html'))
