---
categories:
 - weekly
title: "05 - Bioconductor"
slides: ""
tags:
 - assets
visible: 1
---

[Slides: Bioconductor for genomics]({{site.baseurl}}/assets/05_Bioconductor/01_Bioconductor.pdf)  
[Slides: Biostrings]({{site.baseurl}}/assets/05_Bioconductor/biostrings.pdf). [Source](http://www.haowulab.org/teaching/bioc/biostrings.pdf)  
[Exercise: `biostrings.R` - Biostrings]({{site.baseurl}}/assets/04_Alignment/lab/biostrings.R)  
[Slides: IRanges, GenomicRanges, GenomicFeatures]({{site.baseurl}}/assets/05_Bioconductor/genomicRanges.pdf). [Source](https://github.com/haowulab/haowulab.github.io/blob/master/teaching/bioc/genomicRanges.pdf)  
[Exercise: `genomicRanges.R` - Biostrings]({{site.baseurl}}/assets/04_Alignment/lab/genomicRanges.R)  
[Exercise: `annotation.R` - OrgDb, TxDb, biomaRt, AnnotationHub, ExperimentHub]({{site.baseurl}}/assets/04_Alignment/lab/annotation.R)  
[Exercise: `shortread.R` - basics of ShortRead package, read in FASTQ files, getting QC]({{site.baseurl}}/assets/04_Alignment/lab/shortread.R)  
[Exercise: `SummarizedExperiment.R` - SummarizedExperiment using 'airway' data]({{site.baseurl}}/assets/04_Alignment/lab/SummarizedExperiment.R)  


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
