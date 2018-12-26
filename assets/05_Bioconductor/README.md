- `01_Bioconductor` - introduction to Bioconductor, main genomic packages

- `biostrings.pdf` - Biostrings lecture. http://www.haowulab.org/teaching/bioc/biostrings.pdf
- `lab/biostrings.R` - R code

- `genomicRanges.pdf` - GenomicRanges and GenomicFeatures, IRanges/GRanges, TxDb, biomaRt. `lab/genomicRanges.R` - R code https://github.com/haowulab/haowulab.github.io/blob/master/teaching/bioc/genomicRanges.pdf

- `lab/annotation.R` - OrgDb, TxDb, biomaRt, AnnotationHub, ExperimentHub

- `lab/shortread.R` - basics of ShortRead package, read in FASTQ files, getting QC. Uses `fastq` data

- `lab/SummarizedExperiment.R` - SummarizedExperiment using 'airway' data.

- `02_Integrative.Rmd` - multi-omics data integration approaches, MultiAssayExperiment


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

- Rue-Albrecht, Kevin, Federico Marini, Charlotte Soneson, and Aaron T.L. Lun. “ISEE: Interactive SummarizedExperiment Explorer.” F1000Research 7 (June 14, 2018): 741. https://doi.org/10.12688/f1000research.14966.1. - iSEE - Shiny app for interactive visualization of SummarizedExperiment objects. https://github.com/csoneson/iSEE


### Integrative

- Bersanelli, Matteo, Ettore Mosca, Daniel Remondini, Enrico Giampieri, Claudia Sala, Gastone Castellani, and Luciano Milanesi. “Methods for the Integration of Multi-Omics Data: Mathematical Aspects.” BMC Bioinformatics 17, no. S2 (December 2016). https://doi.org/10.1186/s12859-015-0857-9. - Mathematical/statistical aspects of >23 tools for integrative omics analysis. Four classes of methods based on presence/absence of two criteria: Network-based and Bayesian. Further distinction: sequential and simultaneous analysis of multiple datasets. Selected methods: MCIA, PLS-based methods, iCluster, nuChart, SNF. Discussion of advantages and limitations of bayesian and non-parametric approaches.

- Rappoport, Nimrod, and Ron Shamir. “Multi-Omic and Multi-View Clustering Algorithms: Review and Cancer Benchmark,” July 19, 2018. https://doi.org/10.1101/371120. - Review of multi-omics integration methods, Table 1. Early integration - concatenate matrices into one, then cluster. Late integration - cluster each matrix separately, then integrate clustering solutions. Spectral clustering, dimensionality reduction, statistical approaches, deep learning methods. Details of each method. Benchmarking by survival differences and enrichment of clinical labels. rMKKL-LPP, MCCA, MultiNMF are among the best methods. Preprocessed multi-omics data at http://acgt.cs.tau.ac.il/multi_omic_benchmark/download.html, scripts at https://github.com/Shamir-Lab/Multi-Omics-Cancer-Benchmark

- Kristensen, Vessela N., Ole Christian Lingjærde, Hege G. Russnes, Hans Kristian M. Vollan, Arnoldo Frigessi, and Anne-Lise Børresen-Dale. “Principles and Methods of Integrative Genomic Analyses in Cancer.” Nature Reviews. Cancer 14, no. 5 (May 2014): 299–313. https://doi.org/10.1038/nrc3721. - Integrative, systematic analysis. Cancer-related databases, tools. TCGA, ENCODE, pathway enrichment, network analysis. Table 1 - tools and descriptions

- Nguyen, Tin, Rebecca Tagett, Diana Diaz, and Sorin Draghici. “A Novel Approach for Data Integration and Disease Subtyping.” Genome Research, October 24, 2017, gr.215129.116. https://doi.org/10.1101/gr.215129.116. - PINS - Perturbation clustering for data INtegration and disease Subtyping. Integrative analysis of multiple data types via clustering to detect subgroups differing in survival. Perturbing the data by Gaussian noise, recluster, find number of clusters least affected by perturbations. Rand index to assess clustering quality. Connectivity matrices for individual dataset types, combined into consensus matrix. Data and code at [http://www.cs.wayne.edu/tinnguyen/PINS/PINS.html](http://www.cs.wayne.edu/tinnguyen/PINS/PINS.html)

- Zhang, Shihua, Chun-Chi Liu, Wenyuan Li, Hui Shen, Peter W. Laird, and Xianghong Jasmine Zhou. “Discovery of Multi-Dimensional Modules by Integrative Analysis of Cancer Genomic Data.” Nucleic Acids Research 40, no. 19 (October 2012): 9379–91. https://doi.org/10.1093/nar/gks725. - Integrative analysis of gene expression, metnylation, miRNA expression. Using NMF. Good explanation of NMF. Tested on TCGA ovarian cancer data

- Shen, Ronglai, Adam B. Olshen, and Marc Ladanyi. “Integrative Clustering of Multiple Genomic Data Types Using a Joint Latent Variable Model with Application to Breast and Lung Cancer Subtype Analysis.” Bioinformatics (Oxford, England) 25, no. 22 (November 15, 2009): 2906–12. https://doi.org/10.1093/bioinformatics/btp543. - iCluster. Clustering of samples (patients), given mRNA/methylation datasets. Latent variable model, K-means clustering, PCA. Methods paper. https://www.mskcc.org/departments/epidemiology-biostatistics/biostatistics/icluster

- Peng, Jie, Ji Zhu, Anna Bergamaschi, Wonshik Han, Dong-Young Noh, Jonathan R. Pollack, and Pei Wang. “Regularized Multivariate Regression for Identifying Master Predictors with Application to Integrative Genomics Study of Breast Cancer.” The Annals of Applied Statistics 4, no. 1 (March 2010): 53–77. https://doi.org/10.1214/09-AOAS271SUPP. - `remMap` — REgularized Multivariate regression for identifying MAster Predictors for fitting multivariate response regression models under the high-dimension–low-sample-size setting. Dependence between two datasets, e.g., RNA levels and DNA copy numbers, is modeled through a multivariate response linear regression model

- Wang, Bo, Aziz M. Mezlini, Feyyaz Demir, Marc Fiume, Zhuowen Tu, Michael Brudno, Benjamin Haibe-Kains, and Anna Goldenberg. “Similarity Network Fusion for Aggregating Data Types on a Genomic Scale.” Nature Methods 11, no. 3 (March 2014): 333–37. https://doi.org/10.1038/nmeth.2810. - Fusing correlation matrices for each data type into one network. Constructing sample similarity for each data type, then merging them into a single similarity network using a nonlinear combination method based on message passing theory


# `misc`

- `GenomicCorrelation.pdf` - GenometriCorr, Kasper Hansen, http://www.biostat.jhsph.edu/~khansen/teaching/2014/140.668/GenomicCorrelation.pdf

- `GvizEuropeanBioc2012.pdf` - Gviz tutorial, mirrors main tutorial at https://bioconductor.org/packages/release/bioc/vignettes/Gviz/inst/doc/Gviz.pdf. https://www.bioconductor.org/help/course-materials/2012/BiocEurope2012/GvizEuropeanBioc2012.pdf

- `PINSPlus_1.0.0.tar.gz` - Tin Nguyen (03-05-2018) Regarding the package, I asked my students to upload the new package. We will submit it to CRAN soon after polishing the document. You can download the file PINSPlus_1.0.0.tar.gz from the following link: https://drive.google.com/file/d/1JCIb6eXxhSkl5izOcwyaEUNc3YU0nI14/view?usp=sharing. To install and run the package, please run the following commands on R console:
• Install dependencies: >   install.packages(c("entropy", "pbmcapply", "doParallel"))
• Install package: >   install.packages(path_to_downloaded_file, repos = NULL, type="source")
• Load the package: >   library(PINSPlus)
You can use PerturbationClustering to cluster single type data, and SubtypingOmicsData for integrated multi-type omics data. To open the help for those functions, run command : 
>   ?PerturbationClustering 
or 
>   ?SubtypingOmicsData



# ToDo

- Kishore, Kamal, Stefano de Pretis, Ryan Lister, Marco J. Morelli, Valerio Bianchi, Bruno Amati, Joseph R. Ecker, and Mattia Pelizzola. “MethylPipe and CompEpiTools: A Suite of R Packages for the Integrative Analysis of Epigenomics Data.” BMC Bioinformatics 16 (September 29, 2015): 313. https://doi.org/10.1186/s12859-015-0742-6. - methylPipe + compEpiTools. Integrative analysis of methylation and other omics data. Detailed description of each function. Table 1 lists comparison with other tools. https://bioconductor.org/packages/release/bioc/html/methylPipe.html, https://bioconductor.org/packages/release/bioc/html/compEpiTools.html, https://bioconductor.org/packages/release/data/experiment/html/ListerEtAlBSseq.html

- Gu, Zuguang, Roland Eils, Matthias Schlesner, and Naveed Ishaque. “EnrichedHeatmap: An R/Bioconductor Package for Comprehensive Visualization of Genomic Signal Associations.” BMC Genomics 19, no. 1 (April 2018): 234. https://doi.org/10.1186/s12864-018-4625-x. - EnrichedHeatmap - genomics data visualization, intro on other packages (deeptools, ngs.plot, genomation). https://bioconductor.org/packages/release/bioc/html/EnrichedHeatmap.html




