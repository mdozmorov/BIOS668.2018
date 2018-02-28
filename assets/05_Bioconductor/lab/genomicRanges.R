#####################################################
## first on IRanges
#####################################################

library(IRanges)

r <- IRanges(start=c(1,3,12, 10), end=c(4, 5, 25, 19))
r

r <- IRanges(start=c(1,3,12, 10), width=c(4,  3, 14, 10))
r

length(r)
start(r)
end(r)
width(r)
r[1:2]

# A small visualization function
plotRanges <- function(x, xlim = x, main = deparse(substitute(x)), col = "black", sep = 0.5, ...) {
  height <- 1
  if (is(xlim, "Ranges"))
    xlim <- c(min(start(xlim)), max(end(xlim)))
  bins <- disjointBins(IRanges(start(x), end(x)+1))
  plot.new()
  plot.window(xlim, c(0, max(bins)*(height+sep)))
  ybottom <- bins * (sep +height) - height
  rect(start(x)-0.5, ybottom, end(x)+0.5, ybottom+ height, col = col, ...)
  title(main)
  axis(1)
}

par(mar = c(2.5, 2.5, 2.6, 1.1), mgp = c(5.5, 1.5, 0), mfrow=c(2,1))
plotRanges(r, xlim=c(0,25), col="grey")
plotRanges(reduce(r), xlim=c(0,25), col="grey")

par(mar = c(2.5, 2.5, 2.6, 1.1), mgp = c(5.5, 1.5, 0), mfrow=c(2,1))
plotRanges(r, xlim=c(0,25), col="grey")
plotRanges(disjoin(r), xlim=c(0,25), col="grey")


par(mar = c(2.5, 2.5, 2.6, 1.1), mgp = c(5.5, 1.5, 0), mfrow=c(3,1))
plotRanges(r, xlim=c(-2,27), col="grey")
plotRanges(flank(r, 1, both=TRUE, start=TRUE), xlim=c(-2,27), col="grey")
plotRanges(flank(r, 1, both=TRUE, start=FALSE), xlim=c(-2,27), col="grey")

par(mar = c(2.5, 2.5, 2.6, 1.1), mgp = c(5.5, 1.5, 0), mfrow=c(1,1))
plotRanges(r, xlim=c(-2,27), col="grey")
lines(coverage(r), lwd=4, col="red")

##### two ranges
r2=IRanges(start=c(8, 9, 15), end=c(10, 15, 17))
r2
par(mar = c(2.5, 2.5, 2.6, 1.1), mgp = c(5.5, 1.5, 0), mfrow=c(5,1))
plotRanges(r, xlim=c(-2,27), col="grey")
plotRanges(r2, xlim=c(-2,27), col="grey")
plotRanges(union(r, r2), xlim=c(-2,27), col="grey")
plotRanges(intersect(r, r2), xlim=c(-2,27), col="grey")
plotRanges(setdiff(r, r2), xlim=c(-2,27), col="grey")

par(mar = c(2.5, 2.5, 2.6, 1.1), mgp = c(5.5, 1.5, 0), mfrow=c(2,1))
plotRanges(r, xlim=c(-2,27), col="grey")
plotRanges(r2, xlim=c(-2,27), col="grey")

countOverlaps(r, r2)
r %over% r2
findOverlaps(r, r2)

###### show Rle
x <- Rle(c(1,1,2,2,2))
x
x <- Rle(values=c(1,2), lengths=c(2,3))
x

x <- Rle(values=c("a","b","c"), lengths=c(2,3,4))
x
as.character(x)

x <- Rle(c(1,1,2,2,2))
length(x)
start(x)
end(x)
width(x)
nrun(x)
runLength(x)

#####################################################
## GenomicRanges
#####################################################
# Intra-range operations
# - e.g., `shift()`, `narrow()`, `flank()`
# Inter-range operations
# - e.g., `reduce()`, `coverage()`, `gaps()`, `disjoin()`
# Between-range operations
# - e.g., `countOverlaps()`, `findOverlaps()`, `summarizeOverlaps()`
# 
library(GenomicRanges)
library(ggbio)
gr <- GRanges(seqnames = Rle(c("chr1", "chr2"), c(2, 3)),
              ranges = IRanges(start=1:5, end = 6:10),
              strand = Rle(strand(c("-", "+", "+","-")), c(1,1,2,1)),
              score = 1:5, GC = seq(1, 0, length = 5))
gr
autoplot(gr)

## operate GRanges object
length(gr)
seqnames(gr)
ranges(gr)
strand(gr)
elementMetadata(gr)

## subsetting and combining
gr[1:2]
c(gr[1], gr[3])

## other useful functions
coverage(gr)
reduce(gr) %>% autoplot
disjoin(gr) %>% autoplot
flank(gr, width = 3)  %>% autoplot
gaps(gr) %>% autoplot

## set operations
gr1 <- GRanges(seqnames = Rle("chr1", 2),
               ranges=IRanges(start=c(1,10), end = c(5,15)))
gr2 <- GRanges(seqnames = Rle("chr1", 1),
               ranges = IRanges(start=3, end = 12))
autoplot(c(gr1, gr2))
union(gr1, gr2)  %>% autoplot
intersect(gr1, gr2)
setdiff(gr1, gr2) %>% autoplot

## find overlaps
findOverlaps(gr1, gr2)
gr1 %over% gr2

##### GRangesList
glist=GRangesList(gr1, gr2)
glist
glist[[1]]
glist[[2]]

lapply(glist, length)
sapply(glist, length)


#####################################################
## GenomicFeatures
#####################################################
library(GenomicFeatures)
## from UCSC
supportedUCSCtables()
txdb=makeTxDbFromUCSC(genome="hg19",tablename="knownGene")
txdb

## save and load
dataDir <- "/Users/mdozmorov/Documents/Work/Teaching/BIOS668.2018/assets/data"
saveDb(txdb, file=paste0(dataDir, "/hg19_knownGenes.sqlite")) # Takes a few minutes
txdb=loadDb(paste0(dataDir, "/hg19_knownGenes.sqlite"))
txdb

## make TxDb package - this gives a package directory in current folder
# makeTxDbPackageFromUCSC(maintainer="Hao Wu <hao.wu@emory.edu>", author="Hao Wu",
#                         version="1.0", genome="hg19",tablename="knownGene")


## retrieve basic features
transcripts(txdb)
transcripts(txdb, filter=list(tx_chrom="chr1"))
exons(txdb)

transcriptsBy(txdb, by="gene")
exonsBy(txdb, by="gene")
intronsByTranscript(txdb)
fiveUTRsByTranscript(txdb)
threeUTRsByTranscript(txdb)

## by overlap
gr=GRanges(seqnames = Rle("chr1", 2),
  ranges=IRanges(start=c(100000,500000), end = c(200000,600000)))
gr
transcriptsByOverlaps(txdb, gr)

