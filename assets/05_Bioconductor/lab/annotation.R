library(org.Hs.eg.db)
library(TxDb.Hsapiens.UCSC.hg38.knownGene)
library(biomaRt)
library(KEGGREST)
library(AnnotationHub)
library(GenomicRanges)
library(ExperimentHub)
library(SummarizedExperiment)
library(dplyr)

# Annotation resources
?org.Hs.eg.db
columns(org.Hs.eg.db)
mapIds(org.Hs.eg.db, keys = c("BRCA1", "BRCA2"), column = "ENSEMBL", keytype="SYMBOL")

# Extract genomic features from an object
exons(TxDb.Hsapiens.UCSC.hg38.knownGene)
?exonsBy
exonsBy(TxDb.Hsapiens.UCSC.hg38.knownGene, by = "gene")

# Annotations using BiomaRt
## Discover and then selected mart
ensembl <- useMart("ensembl", dataset="hsapiens_gene_ensembl")

## Gene symbols associated with GO-annotated MAP kinase
## activity (GO id GO:0004704)
getBM(attributes = c('entrezgene','hgnc_symbol'), 
      filters = 'go', 
      values = 'GO:0004707',
      mart = ensembl)

head(listMarts(), 7)                      ## list the marts
head(listDatasets(useMart("ensembl")), 7) ## mart datasets
ensembl <-                                ## fully specified mart
  useMart("ensembl", dataset = "hsapiens_gene_ensembl")

head(listFilters(ensembl), 7)             ## filters
listFilters(ensembl)[grep("entrez", listFilters(ensembl)[, "description"], ignore.case = TRUE), ]

myFilter <- "chromosome_name"
substr(filterOptions(myFilter, ensembl), 1, 50) ## return values
myValues <- c("21", "22")
head(listAttributes(ensembl), 3)          ## attributes
myAttributes <- c("ensembl_gene_id","chromosome_name")

## assemble and query the mart
res <- getBM(attributes =  myAttributes, filters =  myFilter,
             values =  myValues, mart = ensembl)
res

# AnnotationHub
ah <- AnnotationHub()
ah
unique(ah$dataprovider)
# Subsetting
ah <- subset(ah, species == "Homo sapiens")
ah
query(ah, "grasp2")    # see library(grasp2db)
res <- ah[["AH21414"]] # download actual data
ah_query = query(ah, c("ucsc", "hg19") )
ah_query
mcols(ah_query) %>% View()
hist <- display(ah)
hist
# Quick look at the specific fields
ah_query$title
ah_query$genome
ah_query$tags
# File types available
ah_query$description %>% table %>% sort(., decreasing = TRUE) %>% head
# [75] "GRanges object from UCSC track 'CpG Islands'"
cpg_granges <- ah_query[[75]]
cpg_granges
summary(width(cpg_granges))
summary(width(reduce(cpg_granges)))
# 
ucsc_selected <- mcols(ah_query)
ucsc_selected
ucsc_selected <- ucsc_selected[ grepl("GRanges object from UCSC track", ucsc_selected$description) & !grepl("Chain", ucsc_selected$description), ]
ucsc_selected
chromosome_bands <- ah_query[["AH5012"]]
chromosome_bands
metadata(chromosome_bands)
chromosome_bands@elementMetadata
query(AnnotationHub(), c("release-88", "homo"))

library(ExperimentHub)
ExperimentHub()
query(ExperimentHub(), "TCGA")

