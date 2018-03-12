dataDir <- "/Users/mdozmorov/Documents/Work/Teaching/BIOS668.2018/assets/data"
dataDir 
fastqDir <- file.path(dataDir, "fastq")
fastqDir

library(ShortRead)

files <- list.files(fastqDir, "fastq$", full=TRUE)
files
names(files) <- sub(".fastq", "", basename(files))
files
readLines(files[1], 8)
?readFastq
fqdata <- readFastq(fastqDir, basename(files), pattern = "*.fastq")
fqdata
str(fqdata)
## access reads using sread function
?sread
reads <- sread(fqdata)
class(reads)
str(reads)

?quality
qualities <- quality(fqdata)
qualities
class(qualities)

id(fqdata)

?qa
qa.reads <- qa(fastqDir, "fastq", BPPARAM=SerialParam())
class(qa.reads)
str(qa.reads)
qa.reads
qa.reads[["readCounts"]]
qa.reads[["baseCalls"]]
qa.reads[["readQualityScore"]][1:8,]
?report
outputDir <- file.path(dataDir, "output")
report(qa.reads, dest = outputDir)
