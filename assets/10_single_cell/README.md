## `hw` - homework material

## `lab` - in-class lab material

Local version at /Users/mdozmorov/Documents/Data/bioc2017singlecell


## References

### Overview

- Wang, Yong, and Nicholas E. Navin. “Advances and Applications of Single-Cell Sequencing Technologies.” Molecular Cell 58, no. 4 (May 21, 2015): 598–609. [https://doi.org/10.1016/j.molcel.2015.05.005](https://doi.org/10.1016/j.molcel.2015.05.005) - Single cell sequencing review, all technologies. Whole genome amplification.

- Zheng, Grace X. Y., Jessica M. Terry, Phillip Belgrader, Paul Ryvkin, Zachary W. Bent, Ryan Wilson, Solongo B. Ziraldo, et al. “Massively Parallel Digital Transcriptional Profiling of Single Cells.” Nature Communications 8 (January 16, 2017): 14049. [https://doi.org/10.1038/ncomms14049](https://doi.org/10.1038/ncomms14049) - 10X technology. Details of each wet-lab step, sequencing, and basic computational analysis.

- Bacher, Rhonda, and Christina Kendziorski. “Design and Computational Analysis of Single-Cell RNA-Sequencing Experiments.” Genome Biology 17 (April 7, 2016): 63. [https://genomebiology.biomedcentral.com/articles/10.1186/s13059-016-0927-y](https://genomebiology.biomedcentral.com/articles/10.1186/s13059-016-0927-y) - scRNA-seq analysis. Table 1 - categorized tools and description. Normalization, noise reduction, clustering, differential expression, pseudotime ordering. 

- Vallejos, Catalina A, Davide Risso, Antonio Scialdone, Sandrine Dudoit, and John C Marioni. “Normalizing Single-Cell RNA Sequencing Data: Challenges and Opportunities.” Nature Methods 14, no. 6 (May 15, 2017): 565–71. [https://doi.org/10.1038/nmeth.4292](https://doi.org/10.1038/nmeth.4292) - single-cell RNA-seq normalization methods. Noise, sparsity. Cell- and gene-specific effects. Bulk RNA-seq normalization methods don't work well. Overview of RPKM, TPM, TMM, DESeq normalizations. Spike-in based normalization methods.

- Camara, Pablo G. “Methods and Challenges in the Analysis of Single-Cell RNA-Sequencing Data.” Current Opinion in Systems Biology 7 (February 2018): 47–53. [https://doi.org/10.1016/j.coisb.2017.12.007](https://doi.org/10.1016/j.coisb.2017.12.007) - scRNA-seq conscise review of computational analysis steps.

- Dal Molin, Alessandra, and Barbara Di Camillo. “How to Design a Single-Cell RNA-Sequencing Experiment: Pitfalls, Challenges and Perspectives.” Briefings in Bioinformatics, January 31, 2018. [https://doi.org/10.1093/bib/bby007](https://doi.org/10.1093/bib/bby007) - single-cell RNA-seq review. From experimental to bioinformatics steps. Cell isolation (FACS, microfluidics, droplet-based), mRNA capture, RT and amplification (poly-A tails, template switching, IVT), quantitative standards (spike-ins, UMIs), transcript quantification, normalization, batch effect removal, visualization.

- Freytag, Saskia, Luyi Tian, Ingrid Lönnstedt, Milica Ng, and Melanie Bahlo. “Comparison of Clustering Tools in R for Medium-Sized 10x Genomics Single-Cell RNA-Sequencing Data.” F1000Research 7 (August 15, 2018): 1297. https://doi.org/10.12688/f1000research.15809.1. - Comparison of 12 scRNA-seq clustering tools on medium-size 10X genomics datasets. Adjusted Rand index, normalized mutual information, homogeneity score, stability by random sampling of samples or genes. Seurat and Cell Ranger outperform other methods.


### Statistics

- Brennecke, Philip, Simon Anders, Jong Kyoung Kim, Aleksandra A Kołodziejczyk, Xiuwei Zhang, Valentina Proserpio, Bianka Baying, et al. “Accounting for Technical Noise in Single-Cell RNA-Seq Experiments.” Nature Methods 10, no. 11 (September 22, 2013): 1093–95. [https://doi.org/10.1038/nmeth.2645](https://doi.org/10.1038/nmeth.2645) - Single-cell noise. Technical, biological. Use spike-ins to estimate noise. Can be approximated with Poisson distribution.

- Grün, Dominic, Lennart Kester, and Alexander van Oudenaarden. “Validation of Noise Models for Single-Cell Transcriptomics.” Nature Methods 11, no. 6 (June 2014): 637–40. [https://doi.org/10.1038/nmeth.2930](https://doi.org/10.1038/nmeth.2930) - Quantification of sampling noise and global cell-to-cell variation in sequencing efficiency. Three noise models. 4-bases-long UMIs are sufficient for transcript quantification, improve CV. Negative binomial component of expressed genes. Statistics of transcript counting from UMIs, negative binomial distribution, noise models

- Risso, Davide, Fanny Perraudeau, Svetlana Gribkova, Sandrine Dudoit, and Jean-Philippe Vert. “ZINB-WaVE: A General and Flexible Method for Signal Extraction from Single-Cell RNA-Seq Data.” BioRxiv, January 1, 2017. [https://doi.org/10.1101/125112](https://doi.org/10.1101/125112) - Zero-inflated negative binomial model for normalization, batch removal, and dimensionality reduction. Extends the RUV model with more careful definition of "unwanted" variation as it may be biological. Good statistical derivations in Methods. Refs to real and simulated scRNA-seq datasets

- Ding, Bo, Lina Zheng, Yun Zhu, Nan Li, Haiyang Jia, Rizi Ai, Andre Wildberg, and Wei Wang. “Normalization and Noise Reduction for Single Cell RNA-Seq Experiments.” Bioinformatics (Oxford, England) 31, no. 13 (July 1, 2015): 2225–27. [https://doi.org/10.1093/bioinformatics/btv122](https://doi.org/10.1093/bioinformatics/btv122) - Fitting gamma distribution to log2 read counts of known spike-in ERCC controls, predicting RNA concentration from it.

- Bacher, Rhonda, Li-Fang Chu, Ning Leng, Audrey P Gasch, James A Thomson, Ron M Stewart, Michael Newton, and Christina Kendziorski. “SCnorm: Robust Normalization of Single-Cell RNA-Seq Data.” Nature Methods 14, no. 6 (April 17, 2017): 584–86. [https://doi.org/10.1038/nmeth.4263](https://doi.org/10.1038/nmeth.4263) - SCnorm - normalization for single-cell data. Quantile regression to estimate the dependence of transcript expression on sequencing depth for every gene. Genes with similar dependence are then grouped, and a second quantile regression is used to estimate scale factors within each group. Within-group adjustment for sequencing depth is then performed using the estimated scale factors to provide normalized estimates of expression. Good statistical methods description

- Finak, Greg, Andrew McDavid, Masanao Yajima, Jingyuan Deng, Vivian Gersuk, Alex K. Shalek, Chloe K. Slichter, et al. “MAST: A Flexible Statistical Framework for Assessing Transcriptional Changes and Characterizing Heterogeneity in Single-Cell RNA Sequencing Data.” Genome Biology 16 (December 10, 2015): 278. [https://doi.org/10.1186/s13059-015-0844-5](https://doi.org/10.1186/s13059-015-0844-5) - MAST, scRNA-seq DEG analysis. CDR - the fraction of genes that are detectably expressed in each cell - added to the hurdle model that explicitly parameterizes distributions of expressed and non-expressed genes.


### Workflows and tools

- Poirion, Olivier B., Xun Zhu, Travers Ching, and Lana Garmire. “Single-Cell Transcriptomics Bioinformatics and Computational Challenges.” Frontiers in Genetics 7 (2016): 163. [https://doi.org/10.3389/fgene.2016.00163](https://doi.org/10.3389/fgene.2016.00163) - single-cell RNA-seq review. Workflow, table 1 - tools, table 2 - data. Workflow sections describe each tools. References to all tools.

- Lun, Aaron T. L., Davis J. McCarthy, and John C. Marioni. “A Step-by-Step Workflow for Low-Level Analysis of Single-Cell RNA-Seq Data with Bioconductor.” F1000Research 5 (2016): 2122. [https://doi.org/10.12688/f1000research.9501.2](https://doi.org/10.12688/f1000research.9501.2) - scRNA-seq analysis, from count matrix. Noise. Use of ERCCs and UMIs. QC metrics - library size, expression level, mitochondrial genes. Tests for batch effect. Finding highly variable genes, clustering. Several examples, with R code. [https://bioconductor.org/help/workflows/simpleSingleCell/](https://bioconductor.org/help/workflows/simpleSingleCell/), [https://bioconductor.org/packages/devel/bioc/html/scran.html](https://bioconductor.org/packages/devel/bioc/html/scran.html), [https://github.com/LTLA/SingleCellThoughts](https://github.com/LTLA/SingleCellThoughts)

- Perraudeau, Fanny, Davide Risso, Kelly Street, Elizabeth Purdom, and Sandrine Dudoit. “Bioconductor Workflow for Single-Cell RNA Sequencing: Normalization, Dimensionality Reduction, Clustering, and Lineage Inference.” F1000Research 6 (July 21, 2017): 1158. [https://doi.org/10.12688/f1000research.12122](https://doi.org/10.12688/f1000research.12122.) - single-cell RNA-seq pipeline. Post-processing analysis in R, uzinng SummarizedExperiment object, scone for QC, ZINB-WaVE for normalization and dim. reduction, clusterExperiment for clustering, slingshot for temporal inference, differential expression using generalized additive model

- McCarthy, Davis J., Kieran R. Campbell, Aaron T. L. Lun, and Quin F. Wills. “Scater: Pre-Processing, Quality Control, Normalization and Visualization of Single-Cell RNA-Seq Data in R.” Bioinformatics (Oxford, England) 33, no. 8 (April 15, 2017): 1179–86. [https://doi.org/10.1093/bioinformatics/btw777](https://doi.org/10.1093/bioinformatics/btw777) - McCarthy, Davis J., Kieran R. Campbell, Aaron T. L. Lun, and Quin F. Wills. “Scater: Pre-Processing, Quality Control, Normalization and Visualization of Single-Cell RNA-Seq Data in R.” Bioinformatics (Oxford, England) 33, no. 8 (April 15, 2017): 1179–86. 

- Zappia, Luke, Belinda Phipson, and Alicia Oshlack. “Exploring the Single-Cell RNA-Seq Analysis Landscape with the ScRNA-Tools Database.” BioRxiv, January 1, 2018. [https://doi.org/10.1101/206573](https://doi.org/10.1101/206573) - [www.scrna-tools.org](www.scrna-tools.org) - structured collection of scRNA-seq tools, from visualization, specialized tools, to full pipelines

- BioC 2017 workshop on analysis of single-cell RNA-seq data: Normalization, dimensionality reduction, clustering, and lineage inference. [https://github.com/fperraudeau/bioc2017singlecell](https://github.com/fperraudeau/bioc2017singlecell)

- Workshops on single cell analysis. Presentation, R code with instructions for running a Docker container on Amazon EC2. [https://github.com/broadinstitute/single_cell_analysis](https://github.com/broadinstitute/single_cell_analysis)


## scRNA-seq resources

- List of software packages for single-cell data analysis, including RNA-seq, ATAC-seq, etc. [https://github.com/seandavi/awesome-single-cell](https://github.com/seandavi/awesome-single-cell)

- Analysis of single cell RNA-seq data course, Cambridge University, UK. [https://github.com/hemberg-lab/scRNA.seq.course](https://github.com/hemberg-lab/scRNA.seq.course) and its bookdown version [https://hemberg-lab.github.io/scRNA.seq.course/](https://hemberg-lab.github.io/scRNA.seq.course/)

- Single cell data portal. [https://portals.broadinstitute.org/single_cell](https://portals.broadinstitute.org/single_cell)

- Conquer DB of scRNA-seq datasets: [http://imlspenticton.uzh.ch:3838/conquer/](http://imlspenticton.uzh.ch:3838/conquer/)

- `scATAC-seq-analysis-notes` - single-cell ATAC-seq notes by Ming Tang, https://github.com/crazyhottommy/scATAC-seq-analysis-notes


## `misc` - misc presentations and materials


- powsimR: power analysis for bulk and single cell RNA-seq experiments. https://academic.oup.com/bioinformatics/article-abstract/33/21/3486/3952669


## ToDo - todo list

- `scSeq.pdf` - Single-cell sequencing, http://www.haowulab.org/teaching/bioc/bioc.html

- `single-cell-pseudotime` - Single-cell RNA-seq pseudotime estimation algorithms, comprehensive collection of links to software and accompanying papers. https://github.com/agitter/single-cell-pseudotime - to read more

- "Getting started with Monocle", https://davetang.org/muse/2017/10/01/getting-started-monocle/

- powsimR: Power analysis for bulk and single cell RNA-seq experiments, https://github.com/bvieth/powsimR

- `lab/SingleCell_2018` - Repository for Single Cell Analysis Course in MDC

- Three broad categories of imputation: (i) Model-based imputation methods of technical zeros use probabilistic models to identify which observed zeros represent technical rather than biological zeros and aim to impute expression levels just for these technical zeros, leaving other observed expression levels untouched; or (ii) Data-smoothing methods define sets of “similar” cells (e.g. cells that are neighbours in a graph or occupy a small region in a latent space) and adjust expression values for each cell based on expression values in similar cells. These methods adjust all expression values, including technical zeros, biological zeros and observed non-zero values. (iii) Data-reconstruction methods typically aim to define a latent space representation of the cells. This is often done through matrix factorization (e.g. principal component analysis) or, increasingly, through machine learning approaches (e.g. variational autoencoders that exploit deep neural networks to capture non-linear relationships). 

## References

- Single-cell ATAC-seq: Buenrostro, Jason D., Beijing Wu, Ulrike M. Litzenburger, Dave Ruff, Michael L. Gonzales, Michael P. Snyder, Howard Y. Chang, and William J. Greenleaf. “Single-Cell Chromatin Accessibility Reveals Principles of Regulatory Variation.” Nature 523, no. 7561 (July 23, 2015): 486–90. https://doi.org/10.1038/nature14590.

- Hwang, Byungjin, Ji Hyun Lee, and Duhee Bang. “Single-Cell RNA Sequencing Technologies and Bioinformatics Pipelines.” Experimental & Molecular Medicine 50, no. 8 (August 2018). https://doi.org/10.1038/s12276-018-0071-8. - scRNA-seq technology and computational analysis review. Single cell isolation techniques, library preparation methods, computational analyses, R/FPKM/TPM, batch and cell cycle effect, cell type identification, clustering, network inference, trajectory inference. Figures for teaching.

- scRNA-seq technologies, including multi-omics, from the Discussion at https://www.nature.com/articles/s41467-018-07771-0
    - In recent years, other methods, such as DNase-seq32, MNase-seq33 and NOMe-seq34,35, have investigated chromatin status at the single cell level. However, due to its simplicity and reliability, ATAC-seq currently remains the most popular technique for chromatin profiling. Several recent studies have demonstrated the power of using scATAC-seq for investigating regulatory principles, e.g. brain development4,9, Mouse sci-ATAC-seq Atlas36 and pseudotime inference37. The combined multi-omics approaches also began to emerge, such as sci-CAR-seq38, scCAT-seq39 and piATAC-seq8.

