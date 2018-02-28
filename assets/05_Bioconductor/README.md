- `01_Bioconductor` - introduction to Bioconductor, main genomic packages

- `biostrings.pdf` - Biostrings lecture. http://www.haowulab.org/teaching/bioc/biostrings.pdf
- `lab/biostrings.R` - R code

- `genomicRanges.pdf` - GenomicRanges and GenomicFeatures, IRanges/GRanges, TxDb, biomaRt. `lab/genomicRanges.R` - R code https://github.com/haowulab/haowulab.github.io/blob/master/teaching/bioc/genomicRanges.pdf

- `lab/annotation.R` - OrgDb, TxDb, biomaRt, AnnotationHub, ExperimentHub

- `lab/shortread.R` - basics of ShortRead package, read in FASTQ files, getting QC. Uses `fastq` data

- `lab/SummarizedExperiment.R` - SummarizedExperiment using 'airway' data.


## `lab` - in-class lab material

- `ranges.Rmd` - IRanges/GRanges, ensembldb, gene length distribution, overlap on GRanges

- `GRL.Rmd` - lists of GRanges, EnsDb.Hsapiens.v86, Gviz visualization
- `ensembl_gviz_rtracklayer.R` - Gviz visualization

- `SE.Rmd` - SummarizedExperiment demo by Michael Love, manual construction


## References

- Lawrence, Michael, Wolfgang Huber, Hervé Pagès, Patrick Aboyoun, Marc Carlson, Robert Gentleman, Martin T. Morgan, and Vincent J. Carey. “Software for Computing and Annotating Genomic Ranges.” PLoS Computational Biology 9, no. 8 (2013): e1003118. doi:10.1371/journal.pcbi.1003118. - IRanges, GenomicRanges, GenomicFeatures packages.

### Bioconductor resources

- "Materials for Genomics Data Science: Introduction to Bioconductor" course by Kasper Hansen. Includes videos, code examples and lecture material. Web-site, [https://kasperdanielhansen.github.io/genbioconductor/](https://kasperdanielhansen.github.io/genbioconductor/), and GitHub repo, [https://github.com/kasperdanielhansen/genbioconductor](https://github.com/kasperdanielhansen/genbioconductor)
 
- Tutorial on biostrings, GRanges, summarizedExperiment, Annotation resources, getting files into Bioconductor, [https://www.bioconductor.org/help/course-materials/2017/OMRF/B2_Common_Operations.html](https://www.bioconductor.org/help/course-materials/2017/OMRF/B2_Common_Operations.html)

- IRanges, GRanges, seqinfo, AnnotationHub, Biostrings, BSgenome, rtracklayer, [https://kasperdanielhansen.github.io/genbioconductor/](https://kasperdanielhansen.github.io/genbioconductor/)

- Annotation tutorial (`AnnoDb`, `TxDb`, `GRanges(List)`, `OrganismDb`, `AnnotationHub`, `biomaRt`).   [https://github.com/jmacdon/BiocAnno2016](https://github.com/jmacdon/BiocAnno2016)

- MultiAssayExperiment tutorial, GRanges, UpSetR diagrams. [https://github.com/waldronlab/MultiAssayExperimentWorkshop](https://github.com/waldronlab/MultiAssayExperimentWorkshop)

### Integrative

- Kristensen, Vessela N., Ole Christian Lingjærde, Hege G. Russnes, Hans Kristian M. Vollan, Arnoldo Frigessi, and Anne-Lise Børresen-Dale. “Principles and Methods of Integrative Genomic Analyses in Cancer.” Nature Reviews. Cancer 14, no. 5 (May 2014): 299–313. https://doi.org/10.1038/nrc3721. - Integrative, systematic analysis. Cancer-related databases, tools. TCGA, ENCODE, pathway enrichment, network analysis. Table 1 - tools and descriptions

- Nguyen, Tin, Rebecca Tagett, Diana Diaz, and Sorin Draghici. “A Novel Approach for Data Integration and Disease Subtyping.” Genome Research, October 24, 2017, gr.215129.116. https://doi.org/10.1101/gr.215129.116. - PINS - Perturbation clustering for data INtegration and disease Subtyping. Integrative analysis of multiple data types via clustering to detect subgroups differing in survival. Perturbing the data by Gaussian noise, recluster, find number of clusters least affected by perturbations. Rand index to assess clustering quality. Connectivity matrices for individual dataset types, combined into consensus matrix. Data and code at [http://www.cs.wayne.edu/tinnguyen/PINS/PINS.html](http://www.cs.wayne.edu/tinnguyen/PINS/PINS.html)

- Zhang, Shihua, Chun-Chi Liu, Wenyuan Li, Hui Shen, Peter W. Laird, and Xianghong Jasmine Zhou. “Discovery of Multi-Dimensional Modules by Integrative Analysis of Cancer Genomic Data.” Nucleic Acids Research 40, no. 19 (October 2012): 9379–91. https://doi.org/10.1093/nar/gks725. - Integrative analysis of gene expression, metnylation, miRNA expression. Using NMF. Good explanation of NMF. Tested on TCGA ovarian cancer data


# `misc`

- `GenomicCorrelation.pdf` - GenometriCorr, Kasper Hansen, http://www.biostat.jhsph.edu/~khansen/teaching/2014/140.668/GenomicCorrelation.pdf

- `GvizEuropeanBioc2012.pdf` - Gviz tutorial, mirrors main tutorial at https://bioconductor.org/packages/release/bioc/vignettes/Gviz/inst/doc/Gviz.pdf. https://www.bioconductor.org/help/course-materials/2012/BiocEurope2012/GvizEuropeanBioc2012.pdf



# ToDo

- Kishore, Kamal, Stefano de Pretis, Ryan Lister, Marco J. Morelli, Valerio Bianchi, Bruno Amati, Joseph R. Ecker, and Mattia Pelizzola. “MethylPipe and CompEpiTools: A Suite of R Packages for the Integrative Analysis of Epigenomics Data.” BMC Bioinformatics 16 (September 29, 2015): 313. https://doi.org/10.1186/s12859-015-0742-6. - methylPipe + compEpiTools. Integrative analysis of methylation and other omics data. Detailed description of each function. Table 1 lists comparison with other tools. https://bioconductor.org/packages/release/bioc/html/methylPipe.html, https://bioconductor.org/packages/release/bioc/html/compEpiTools.html, https://bioconductor.org/packages/release/data/experiment/html/ListerEtAlBSseq.html


