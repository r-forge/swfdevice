#!/usr/bin/env Rscript

file.remove('swfs.html')
download.file('http://r-forge.r-project.org/plugins/scmsvn/viewcvs.php/*checkout*/pkg/inst/tests/testSwfDevice.R?root=swfdevice',
	'testSwfDevice.R')
source('testSwfDevice.R')
swfs <- list.files(,".swf")
pngs <- list.files(,".png")
file.create('swfs.html')

for(i in 1:length(swfs)){
	system(paste('swfdump --xhtml',swfs[i],'>> swfs.html'))
	cat('<img src=\'',pngs[i],'\'/>\n',file='swfs.html',append=T,sep='')
	cat('<br/>\n',file='swfs.html',append=T)
}
