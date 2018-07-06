

## `lab` - in-class lab material

- `rnaseqGene_CSAMA2017.Rmd` - "RNA-seq workflow: gene-level exploratory analysis and differential expression," https://www.bioconductor.org/help/course-materials/2017/CSAMA/labs/2-tuesday/lab-03-rnaseq/rnaseqGene_CSAMA2017.html

## `read` - reading assignment

### Overview

- Conesa, Ana, Pedro Madrigal, Sonia Tarazona, David Gomez-Cabrero, Alejandra Cervera, Andrew McPherson, Michał Wojciech Szcześniak, et al. “A Survey of Best Practices for RNA-Seq Data Analysis.” Genome Biology 17, no. 1 (December 2016). [https://doi.org/10.1186/s13059-016-0881-8](https://doi.org/10.1186/s13059-016-0881-8). - RNA-seq analysis roadmap, QC. Differential detection. TPM. Tools for alternative splicing detection and visualization. small RNA analysis. single cell. Integrative analysis, with methylation.

- Garber, Manuel, Manfred G. Grabherr, Mitchell Guttman, and Cole Trapnell. “Computational Methods for Transcriptome Annotation and Quantification Using RNA-Seq.” Nature Methods 8, no. 6 (June 2011): 469–77. [https://doi.org/10.1038/nmeth.1613](https://doi.org/10.1038/nmeth.1613). - RNA-seq alignment and quantification. Table of tools. Transcriptome reconstruction. Alternative splicing

- Wang, Zhong, Mark Gerstein, and Michael Snyder. “RNA-Seq: A Revolutionary Tool for Transcriptomics.” Nature Reviews. Genetics 10, no. 1 (January 2009): 57–63. [doi:10.1038/nrg2484](doi:10.1038/nrg2484). - RNA-seq review. 

- Williams, Alexander G., Sean Thomas, Stacia K. Wyman, and Alisha K. Holloway. “RNA-Seq Data: Challenges in and Recommendations for Experimental Design and Analysis: RNA-Seq Data: Experimental Design and Analysis.” In Current Protocols in Human Genetics, edited by Jonathan L. Haines, Bruce R. Korf, Cynthia C. Morton, Christine E. Seidman, J.G. Seidman, and Douglas R. Smith, 11.13.1-11.13.20. Hoboken, NJ, USA: John Wiley & Sons, Inc., 2014. [https://doi.org/10.1002/0471142905.hg1113s83](https://doi.org/10.1002/0471142905.hg1113s83). - RNA-seq basics, tools, simulations

- Martin, Jeffrey A., and Zhong Wang. “Next-Generation Transcriptome Assembly.” Nature Reviews. Genetics 12, no. 10 (September 7, 2011): 671–82. [https://doi.org/10.1038/nrg3068](https://doi.org/10.1038/nrg3068) . - Transcriptome assembly. Sequencing technologies overview. Reference-based and de novo assembly, combined approach idea. Splice graph, De Bruijn graph.

- Marioni, John C., Christopher E. Mason, Shrikant M. Mane, Matthew Stephens, and Yoav Gilad. “RNA-Seq: An Assessment of Technical Reproducibility and Comparison with Gene Expression Arrays.” Genome Research 18, no. 9 (September 2008): 1509–17. [doi:10.1101/gr.079558.108](doi:10.1101/gr.079558.108). - Illumina sequencing - microarray comparison. Good agreement. Assessing lane effect with hypergeometric distribution. Likelihood ratio test for differential expression. Chi-squared goodness-of-fit test.

- Peixoto, Lucia, Davide Risso, Shane G. Poplawski, Mathieu E. Wimmer, Terence P. Speed, Marcelo A. Wood, and Ted Abel. “How Data Analysis Affects Power, Reproducibility and Biological Insight of RNA-Seq Studies in Complex Datasets.” Nucleic Acids Research 43, no. 16 (September 18, 2015): 7664–74. https://doi.org/10.1093/nar/gkv736. - The importance of RNA-seq normalization and batch effect removal. RUVseq increases power, but the choice of the number of latent variables is important. Steps in RNA-seq data processing, normalization, exploratory data analysis. https://github.com/drisso/peixoto2015_tutorial

- Wang, Eric T., Rickard Sandberg, Shujun Luo, Irina Khrebtukova, Lu Zhang, Christine Mayr, Stephen F. Kingsmore, Gary P. Schroth, and Christopher B. Burge. “Alternative Isoform Regulation in Human Tissue Transcriptomes.” Nature 456, no. 7221 (November 27, 2008): 470–76. [https://doi.org/10.1038/nature07509](https://doi.org/10.1038/nature07509). - Alternative splicing comparison between tissues. ~94% of genes are alternatively transcribed. Variation in alternative splicing is much more between tissues than between individuals.

- Park, Eddie, Zhicheng Pan, Zijun Zhang, Lan Lin, and Yi Xing. “The Expanding Landscape of Alternative Splicing Variation in Human Populations.” The American Journal of Human Genetics 102, no. 1 (January 2018): 11–26. [https://doi.org/10.1016/j.ajhg.2017.11.002](https://doi.org/10.1016/j.ajhg.2017.11.002) . - Alternative splicing, detailed overview

### Statistics

- Pachter, Lior. “Models for Transcript Quantification from RNA-Seq.” ArXiv Preprint ArXiv:1104.3889, 2011. - RNA-seq quantification statistics, expectation-maximization algorithm. [https://arxiv.org/abs/1104.3889](https://arxiv.org/abs/1104.3889)

- Robinson, Mark D., and Alicia Oshlack. “A Scaling Normalization Method for Differential Expression Analysis of RNA-Seq Data.” Genome Biology 11, no. 3 (2010): R25. [https://doi.org/10.1186/gb-2010-11-3-r25](https://doi.org/10.1186/gb-2010-11-3-r25) - TMM normalization method. Problems with library scaling normalization. Well-written intuitive motivating example. MA plot, trimming outliers, weighted (inverse of the variance) M average after discarding 30% of M outliers and lowest 5% of A values.

- "How not to perform a differential expression analysis (or science)" blog post by Lior Pachter, about Salmon-kallisto similarities and differences, general references. [https://liorpachter.wordpress.com/2017/08/02/how-not-to-perform-a-differential-expression-analysis-or-science/](https://liorpachter.wordpress.com/2017/08/02/how-not-to-perform-a-differential-expression-analysis-or-science/)

- Robinson, Mark D., and Gordon K. Smyth. “Small-Sample Estimation of Negative Binomial Dispersion, with Applications to SAGE Data.” Biostatistics (Oxford, England) 9, no. 2 (April 2008): 321–32. [doi:10.1093/biostatistics/kxm030](doi:10.1093/biostatistics/kxm030) - Negative Binomial distribution instead of Poisson. Previous models: binomial, Poisson.

- Lun, Aaron T. L., and Gordon K. Smyth. “No Counts, No Variance: Allowing for Loss of Degrees of Freedom When Assessing Biological Variability from RNA-Seq Data.” Statistical Applications in Genetics and Molecular Biology 16, no. 2 (April 25, 2017): 83–93. [https://doi.org/10.1515/sagmb-2017-0010](https://doi.org/10.1515/sagmb-2017-0010) - Negative impact of genes with zero counts on GLM framework for RNA-seq differential expression analysis. Overdispersion, GLM, quasi-likelihood F-test, adjusting degrees of freedom for zero-count genes.

- Law, Charity W, Yunshun Chen, Wei Shi, and Gordon K Smyth. “Voom: Precision Weights Unlock Linear Model Analysis Tools for RNA-Seq Read Counts.” Genome Biology 15, no. 2 (2014): R29. [https://doi.org/10.1186/gb-2014-15-2-r29](https://doi.org/10.1186/gb-2014-15-2-r29). - voom paper

- Love, Michael I, Wolfgang Huber, and Simon Anders. “Moderated Estimation of Fold Change and Dispersion for RNA-Seq Data with DESeq2.” Genome Biology 15, no. 12 (December 2014). [doi:10.1186/s13059-014-0550-8](doi:10.1186/s13059-014-0550-8). - DESeq2 paper. Problems with fold-change ranking of genes - proposed solution using shrinkage of FCs. Generalized linear model using Negative Binomial distribution. Borrowing information - genes of similar avarage expression have similar dispersion. rlog-transformation. Look at the original DESeq publication, [https://www.ncbi.nlm.nih.gov/pubmed/20979621](https://www.ncbi.nlm.nih.gov/pubmed/20979621), and the comments to the PubMed entry.

- Witten, Daniela M. “Classification and Clustering of Sequencing Data Using a Poisson Model.” The Annals of Applied Statistics 5, no. 4 (December 2011): 2493–2518. [doi:10.1214/11-AOAS493](doi:10.1214/11-AOAS493) - RNA-seq modeling with Poisson distribution. samples X genes matrix. Derivation of Poisson, negative binomial, using Poisson for linear discriminant analysis and clustering (Poisson dissimilarity).

- Patro, Rob, Geet Duggal, Michael I Love, Rafael A Irizarry, and Carl Kingsford. “Salmon Provides Fast and Bias-Aware Quantification of Transcript Expression.” Nature Methods 14, no. 4 (March 6, 2017): 417–19. [https://doi.org/10.1038/nmeth.4197](https://doi.org/10.1038/nmeth.4197) - Salmon paper. Pseudo-alignment, or using precomputed alignment to tramscriptome. Dual-phase statistical inference procedure and sample-specific bias models that account for sequence-specific, fragment, GC content, and positional biases. Comparison with kallisto and sailfish. Tests on simulated (Polyester, RSEM-sim) and real (GEUVADIS, SEQC) data. Detailed Methods description. [https://github.com/COMBINE-lab/Salmon](https://github.com/COMBINE-lab/Salmon)

- Jiang, Hui, and Wing Hung Wong. “Statistical Inferences for Isoform Expression in RNA-Seq.” Bioinformatics 25, no. 8 (April 15, 2009): 1026–32. [doi:10.1093/bioinformatics/btp113](doi:10.1093/bioinformatics/btp113) - Alternative splicing statistics - Poisson modeling. Problem - most reads are shared by more than one isoform. How to quantify isoform expression from exon counts. Detailed statistical derivations

### Workflows and tools

- Love, Michael I., Simon Anders, Vladislav Kim, and Wolfgang Huber. “RNA-Seq Workflow: Gene-Level Exploratory Analysis and Differential Expression.” F1000Research 4 (November 17, 2016): 1070. [doi:10.12688/f1000research.7035.2](doi:10.12688/f1000research.7035.2) - RNA-seq workflow. From count import, including tximport, through EDA, DESeq2, batch removal, time course analysis, visualization.

- Griffith, Malachi, Jason R. Walker, Nicholas C. Spies, Benjamin J. Ainscough, and Obi L. Griffith. “Informatics for RNA Sequencing: A Web Resource for Analysis on the Cloud.” PLoS Computational Biology 11, no. 8 (August 2015): e1004393. [https://doi.org/10.1371/journal.pcbi.1004393](https://doi.org/10.1371/journal.pcbi.1004393) - RNA-seq technology and analysis introduction. Very interesting are supplementary tables [http://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1004393#sec009](http://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1004393#sec009). The full tutorials are at [https://github.com/griffithlab/rnaseq_tutorial/wiki](https://github.com/griffithlab/rnaseq_tutorial/wiki)

- Sahraeian, Sayed Mohammad Ebrahim, Marghoob Mohiyuddin, Robert Sebra, Hagen Tilgner, Pegah T. Afshar, Kin Fai Au, Narges Bani Asadi, et al. “Gaining Comprehensive Biological Insight into the Transcriptome by Performing a Broad-Spectrum RNA-Seq Analysis.” Nature Communications 8, no. 1 (December 2017). [doi:10.1038/s41467-017-00050-4](doi:10.1038/s41467-017-00050-4) - RNAcocktail - RNA-seq tools benchmarking. All aspects of RNA-seq analysis, structured, Fig 1. Recommended tools Fig 8. [https://bioinform.github.io/rnacocktail/](https://bioinform.github.io/rnacocktail/), [http://www.rna-seqblog.com/unleash-the-power-within-rna-seq/](http://www.rna-seqblog.com/unleash-the-power-within-rna-seq/)

- Law, Charity W., Monther Alhamdoosh, Shian Su, Gordon K. Smyth, and Matthew E. Ritchie. “RNA-Seq Analysis Is Easy as 1-2-3 with Limma, Glimma and EdgeR.” F1000Research 5 (2016): 1408. [https://doi.org/10.12688/f1000research.9005.2](https://doi.org/10.12688/f1000research.9005.2) - Latest Rsubread-limma plus pipeline [https://f1000research.com/articles/5-1408/v2](https://f1000research.com/articles/5-1408/v2). The complete R code for RNA-seq analysis tutorial [https://www.bioconductor.org/help/workflows/RNAseq123/](https://www.bioconductor.org/help/workflows/RNAseq123/)

- Pertea, Mihaela, Daehwan Kim, Geo M. Pertea, Jeffrey T. Leek, and Steven L. Salzberg. “Transcript-Level Expression Analysis of RNA-Seq Experiments with HISAT, StringTie and Ballgown.” Nature Protocols 11, no. 9 (September 2016): 1650–67. [https://doi.org/10.1038/nprot.2016.095](https://doi.org/10.1038/nprot.2016.095). [http://www.nature.com/nprot/journal/v11/n9/full/nprot.2016.095.html](http://www.nature.com/nprot/journal/v11/n9/full/nprot.2016.095.html) - New Tuxedo suite. Protocol.

- "RNA-Seq Methods and Algorithms" short video course by Harold Pimentel, pseudoalignment, kallisto, sleuth, practical. [https://www.youtube.com/watch?v=96yBPM8lEt8&list=PLfFNmoa-yUIb5cYG2R1zf5rtrQQKZvKwG](https://www.youtube.com/watch?v=96yBPM8lEt8&list=PLfFNmoa-yUIb5cYG2R1zf5rtrQQKZvKwG)

- Zhao, Qi, Yubin Xie, Peng Nie, Rucheng Diao, Licheng Sun, Zhixiang Zuo, and Jian Ren. “IDEA: A Web Server for Interactive Differential Expression Analysis with R Packages,” July 3, 2018. [https://doi.org/10.1101/360461](https://doi.org/10.1101/360461) - Differential expression analysis from a matrix of FPKMs and a design matrix. Several methods to detect DEGs (DESeq2, edgeR, NOISeq, PoissonSeq, SAMseq), plots (MA, volcano, heatmap). [http://renlab.org:3838/IDEA/](http://renlab.org:3838/IDEA/)


### RNA-seq resources

- Tools for RNA-seq data analysis, [http://journals.plos.org/ploscompbiol/article/file?type=supplementary&id=info:doi/10.1371/journal.pcbi.1004393.s004](http://journals.plos.org/ploscompbiol/article/file?type=supplementary&id=info:doi/10.1371/journal.pcbi.1004393.s004)
- RNAseq analysis notes from Tommy Tang, [https://github.com/crazyhottommy/RNA-seq-analysis](https://github.com/crazyhottommy/RNA-seq-analysis)
- University of Oregon's RNA-seqlopedia, [http://rnaseq.uoregon.edu/](http://rnaseq.uoregon.edu/), a comprehensive guide to RNA-seq starting with experimental design, going through library prep, sequencing, and data analysis.
- RNA-seq blog, [http://www.rna-seqblog.com/](http://www.rna-seqblog.com/), Several blog posts per week on new methods and tools for RNA-seq analysis.
- SEQAnswers, RNA-seq, [http://seqanswers.com/forums/forumdisplay.php?f=26](http://seqanswers.com/forums/forumdisplay.php?f=26), and more general bioinformatics, [http://seqanswers.com/forums/forumdisplay.php?f=18](http://seqanswers.com/forums/forumdisplay.php?f=18), forums are a great place to search for answers.
- Biostars RNA-seq, [https://www.biostars.org/t/RNA-Seq/](https://www.biostars.org/t/RNA-Seq/), Q&A section.
- Informatics for RNA-seq, by Griffith lab, [https://github.com/griffithlab/rnaseq_tutorial](https://github.com/griffithlab/rnaseq_tutorial)
- 33-pages RNA-seq introduction. [https://www.princeton.edu/genomics/sequencing/instructions/rna-seq-workshop/RNA-seq-introduction-v2.pdf](https://www.princeton.edu/genomics/sequencing/instructions/rna-seq-workshop/RNA-seq-introduction-v2.pdf)

### Practicals

- "RNA-seq workflow: gene-level exploratory analysis and differential expression" - Full pipeline, DEG analysis using DESeq2, visualziation, PCS, MDS, clustering, annotation. [https://www.bioconductor.org/help/course-materials/2017/CSAMA/labs/2-tuesday/lab-03-rnaseq/rnaseqGene_CSAMA2017.html](https://www.bioconductor.org/help/course-materials/2017/CSAMA/labs/2-tuesday/lab-03-rnaseq/rnaseqGene_CSAMA2017.html)

- "RNA-seq workflow: gene-level exploratory analysis and differential expression", [https://www.bioconductor.org/help/workflows/rnaseqGene/](https://www.bioconductor.org/help/workflows/rnaseqGene/)

- "An RNA-seq Work Flow" - [https://www.bioconductor.org/help/course-materials/2017/OSU/B3_RNASeq_Workflow.html](https://www.bioconductor.org/help/course-materials/2017/OSU/B3_RNASeq_Workflow.html)

- RNA-seq pipeline by Tommy Tang, [https://gitlab.com/tangming2005/STAR_htseq_RNAseq_pipeline/tree/shark](https://gitlab.com/tangming2005/STAR_htseq_RNAseq_pipeline/tree/shark)

- RNA-seq analysis exercise using Galaxy, [https://usegalaxy.org/u/jeremy/p/galaxy-rna-seq-analysis-exercise](https://usegalaxy.org/u/jeremy/p/galaxy-rna-seq-analysis-exercise), an example analysis using the Tophat+Cufflinks workflow.

- "bcbio-nextgen" - Validated, scalable, community developed variant calling, RNA-seq and small RNA analysis [https://github.com/chapmanb/bcbio-nextgen](https://github.com/chapmanb/bcbio-nextgen), [https://bcbio-nextgen.readthedocs.org](https://bcbio-nextgen.readthedocs.org)

- "Tutorial: RNA-seq differential expression & pathway analysis with Sailfish, DESeq2, GAGE, and Pathview" by Stephen Turner, [http://www.gettinggeneticsdone.com/2015/12/tutorial-rna-seq-differential.html](http://www.gettinggeneticsdone.com/2015/12/tutorial-rna-seq-differential.html)

- Getting started with HISAT, StringTie, and Ballgown, [https://davetang.org/muse/2017/10/25/getting-started-hisat-stringtie-ballgown/](https://davetang.org/muse/2017/10/25/getting-started-hisat-stringtie-ballgown/)

- "enrichOmics" - Functional enrichment analysis of high-throughput omics data. From basic ExpressionSet differential and functional enrichment analysis to genomic region enrichment analysis and MultiAssayExperiment demo. Uses versatile `EnrichmentBrowser` package. [https://github.com/waldronlab/enrichOmics](https://github.com/waldronlab/enrichOmics)

- ENCODE RNA-, ChIP-, DNAse-, ATAC- and other seq pipelines, [https://github.com/ENCODE-DCC/](https://github.com/ENCODE-DCC/)

- https://github.com/mdozmorov/dcaf/tree/master/ngs.rna-seq - an example of a pipeline


## `misc` - misc presentations and materials

- Video (12 min) "StatQuest: DESeq2, part 1, Library Normalization", https://youtu.be/UFB993xufUU. Problems with library normalization due to library complexity, DESeq2 processing to obtain scaling factors. 

- Video (21 min) "StatQuest: edgeR and DESeq2, part 2 - Independent Filtering", https://youtu.be/Gi0JdrxRq5s. FDR and issues with too many null tests, edgeR filtering by hard cutoff CPM, DESeq2 filtering by quantile CPM plot. Code to calculate DESeq2-like CPM cutoff for edgeR, https://statquest.org/2017/05/16/statquest-filtering-genes-with-low-read-counts/

- Video Naomi Altman, RNA-seq, differential analysis, https://www.youtube.com/watch?v=IWsP-008W0Q&feature=youtu.be

- `kingsford-regulatory-genomics-salmon.pdf` - Accurate, Fast, and Model-Aware Transcript Expression Quantification with Salmon. https://www.youtube.com/watch?v=TMLIxwDP7sk&list=PLgKuh-lKre10fYXnD-8ghi9b9xl83CKet&index=3


## ToDo 

- `RNA-seq_workflow.pdf` - SummarizedExperiment and RNA-seq data manipulation in Bioconductor, https://www.bioconductor.org/help/course-materials/2017/OMRF/B3_RNASeq_Workflow.html


- RNA-seq differential expression with Bioconductor by Davide Risso, https://github.com/drisso/rnaseq_meetup

- DiffSplice, rMATS (shen), EBSeq