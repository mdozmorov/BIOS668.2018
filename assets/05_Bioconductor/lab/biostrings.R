#####################################################
## Biostrings
#####################################################

library(Biostrings)

## BString basic operations
a=BString("I am a string!")
a
length(a)
a[1:4]
subseq(a,1,4)
subseq(a, end=4)
rev(a)

a == "I am a string!"
a[1:4] == "I am"
toString(a)
class(a)
class(toString(a))

## DNA/RNAString
IUPAC_CODE_MAP
DNA_ALPHABET
DNA_BASES
RNA_ALPHABET
RNA_BASES

a = DNAString("I am a string")
a = DNAString("ATTGCC")
a
b = RNAString("ATTGCC")
b = RNAString("AUUGCC")
b = RNAString(a)
b

methods(class="DNAStringSet")
?"DNAStringSet"
browseVignettes(package="Biostrings")


b
a
length(a)
a[1:3]

## frequencies
alphabetFrequency(a)
alphabetFrequency(a, baseOnly=TRUE)

letterFrequency(a,"C")
letterFrequency(a,"CG")
letterFrequencyInSlidingView(a, view.width = 3, letters = "GC")
dinucleotideFrequency(a)

## complements
a
complement(a)
reverseComplement(a)

######## String matching
a = DNAString("ACGTACGTACGC")
b = DNAString("ACCTACGTAGGG")
c = DNAString("AAACCCTTTGGG")
abc <- DNAStringSet(c(a, b, c), start = c(1, 13, 25), end = c(12, 24, 36))
abc
sdist <- stringDist(abc, method = "levenshtein")
sdist
clust <- hclust(sdist, method = "average")
plot(clust)

a = DNAString("TAGCTTATCAGACTGATGTTGACAGATCGGAAGAGCACACGTCTGAACTCC")
b = DNAString("AAGATCGGAAGAGCACACGTCT")
?matchPattern
matchPattern(b, a, max.mismatch = 1)

a  
matchPattern("CGT", a)
matchPattern("CGT", a, max.mismatch=1)

m = matchPattern("CGT", a, max.mismatch=1)
m
start(m)
end(m)
length(m)
countPattern("CGT", a, max.mismatch=1)

## multiple matching
a = DNAString("ACGTACGTACGC")
dict0 = PDict(c("CGT", "ACG"))
mm = matchPDict(dict0, a)
mm
mm[[1]]
mm[[2]]

## matching using PWM
motif = matrix(c(0.97, 0.01, 0.01, 0.01, 0.1, 0.5, 0.39, 0.01, 0.01, 0.05, 0.5, 0.44), nrow=4)
rownames(motif)=c("A","C","G","T")
motif

a = DNAString("ACGTACGTACTC")
matchPWM(motif, a)
countPWM(motif, a)
PWMscoreStartingAt(motif, a, 1:10)

######### multiple strings: XStringViews
a = DNAString("ACGTACGTACTC")
a2 = Views(a, start=c(1,5,8), end=c(3,8,12))
a2
subject(a2)
length(a2)
start(a2)
end(a2)
alphabetFrequency(a2, baseOnly=TRUE)
a2
a2 == DNAString("ACGT")
toString(a2)

## DNAStringSet
a = DNAString("ACGTACGTACTC")
a2 = DNAStringSet(a, start=c(1,5,9), end=c(4,8,12))
a2
a2[[1]]
alphabetFrequency(a2, baseOnly=TRUE)

###### Operations only allowed for StringSet but not StringViews
a = DNAString("ACGTACGTACTC")
a1 = DNAStringSet(a, start=c(1,5,9), end=c(4,8,12))
a1
unique(a1)
a2 = Views(a, start=c(1,5,9), end=c(4,8,12))
a2
unique(a2) # For Sets only

a1 = Views(a, start=c(1,9), end=c(4,12))
a1
a2 = Views(a, start=c(1), end=c(4))
a2
setdiff(a1, a2) ## this will generate error
union(a1, a2)

### set operations are allowed for StringSet
a1 = DNAStringSet(a, start=c(1,9), end=c(4,12))
a1
a2 = DNAStringSet(a, start=c(1), end=c(4))
a2
setdiff(a1, a2)
union(a1, a2)


####### matching for multiple strings
a = DNAString("ACGTACGTACTC")
a2 = DNAStringSet(a, start=c(1,5,9), end=c(4,8,12))
a2
vv = vmatchPattern("CG", a2)
vv
vv[[1]]

## doesn't work for Views
a2 = Views(a, start=c(1,5,9), end=c(4,8,12))
a2
vv = vmatchPattern("CG", a2)


#####################################################
## Now show BSgenome and data packages
#####################################################
library(BSgenome)
available.genomes()
library(BSgenome.Hsapiens.UCSC.hg38)
ls("package:BSgenome.Hsapiens.UCSC.hg38")
Hsapiens
Hsapiens$chr1

seqnames(Hsapiens)
seqlengths(Hsapiens)[1:25]

Hsapiens$chr1[100000000:100000010]
alphabetFrequency(Hsapiens$chr1, baseOnly=TRUE)
alphabetFrequency(Hsapiens$chr1, baseOnly=TRUE) / length(Hsapiens$chr1)
mm = matchPattern("CG", Hsapiens$chr1)
length(mm)
mm

### masking
library(BSgenome.Hsapiens.UCSC.hg38.masked)
Hsapiens[["chr1"]]
Hsapiens$chr1



## SNPs
available.SNPs()
installed.SNPs()
# SnpHsapiens <- injectSNPs(Hsapiens, "SNPlocs.Hsapiens.dbSNP.20120608")
# SnpHsapiens

snpcount(SnpHsapiens)
head(snplocs(SnpHsapiens, "chr1"))
IUPAC_CODE_MAP



# Find reads supporting the junction identified above, at position
# 19653707 + 66M = 19653773 of chromosome 14

library(GenomicRanges)
library(GenomicAlignments)
library(Rsamtools)

## our 'region of interest'
IRanges(start = 19653773, width=1)
roi <- GRanges("chr14", IRanges(start = 19653773, width=1)) 
roi
## sample data
library('RNAseqData.HNRNPC.bam.chr14')
bf <- BamFile(RNAseqData.HNRNPC.bam.chr14_BAMFILES[[1]], asMates=TRUE)
bf
## alignments, junctions, overlapping our roi
?readGAlignmentsList
paln <- readGAlignmentsList(bf)
paln
?summarizeJunctions
j <- summarizeJunctions(paln, with.revmap=TRUE)
j_overlap <- j[j %over% roi]
j_overlap

## supporting reads
paln[j_overlap$revmap[[1]]]


# Read variants from a VCF file, and annotate with respect to a known gene model

## input variants
library(VariantAnnotation)
fl <- system.file("extdata", "chr22.vcf.gz", package="VariantAnnotation")
vcf <- readVcf(fl, "hg19")
seqlevels(vcf) <- "chr22"
## known gene model
library(TxDb.Hsapiens.UCSC.hg19.knownGene)
coding <- locateVariants(rowRanges(vcf),
                         TxDb.Hsapiens.UCSC.hg19.knownGene,
                         CodingVariants())
head(coding)


