



## `data`

- 3 patient bam slices from the 3’ end of BCL2.

## `hw` - homework material

## `lab` - in-class lab material

- "CBW HT-seq Module 4 - Single Nucleotide Variant Calling" using GATK, filtering, effect estimation, annotation - https://bioinformaticsdotca.github.io/htseq_2017_module4_lab

- "CBW HT-seq Module 5 - Structural Variant Calling" using delly, LUMPY - https://bioinformaticsdotca.github.io/htseq_2017_module5_lab

- Mutation calling Snakemake pipeline by Tommy Tang, https://gitlab.com/tangming2005/snakemake_DNAseq_pipeline/tree/multiRG


## References

### DNA sequencing

- 1000 Genomes Project Consortium, Adam Auton, Lisa D. Brooks, Richard M. Durbin, Erik P. Garrison, Hyun Min Kang, Jan O. Korbel, et al. “A Global Reference for Human Genetic Variation.” Nature 526, no. 7571 (October 1, 2015): 68–74. [https://www.nature.com/nature/journal/v526/n7571/full/nature15393.html](https://www.nature.com/nature/journal/v526/n7571/full/nature15393.html)

- Bamshad, Michael J., Sarah B. Ng, Abigail W. Bigham, Holly K. Tabor, Mary J. Emond, Deborah A. Nickerson, and Jay Shendure. “Exome Sequencing as a Tool for Mendelian Disease Gene Discovery.” Nature Reviews. Genetics 12, no. 11 (September 27, 2011): 745–55. [https://www.nature.com/articles/nrg3031](https://www.nature.com/articles/nrg3031) - Exome sequencing technology, limitations, use for diagnostics, family studies.

- McCarthy, Davis J, Peter Humburg, Alexander Kanapin, Manuel A Rivas, Kyle Gaulton, asds, Jean-Baptiste Cazier, and Peter Donnelly. “Choice of Transcripts and Software Has a Large Effect on Variant Annotation.” Genome Medicine 6, no. 3 (2014): 26. [https://genomemedicine.biomedcentral.com/articles/10.1186/gm543](https://genomemedicine.biomedcentral.com/articles/10.1186/gm543) - SNP annotation depends on transcripts and software. Types of SNPs. Ambigious annotations

- Pabinger, S., A. Dander, M. Fischer, R. Snajder, M. Sperk, M. Efremova, B. Krabichler, M. R. Speicher, J. Zschocke, and Z. Trajanoski. “A Survey of Tools for Variant Analysis of Next-Generation Genome Sequencing Data.” Briefings in Bioinformatics 15, no. 2 (March 1, 2014): 256–78. [https://doi.org/10.1093/bib/bbs086](https://doi.org/10.1093/bib/bbs086) - SNP calling and analysis tools overview. Germline, somatic, CNV, SV detection.  Variant annotation tools.

- MacArthur, D. G., T. A. Manolio, D. P. Dimmock, H. L. Rehm, J. Shendure, G. R. Abecasis, D. R. Adams, et al. “Guidelines for Investigating Causality of Sequence Variants in Human Disease.” Nature 508, no. 7497 (April 24, 2014): 469–76. [https://doi.org/10.1038/nature13127](https://doi.org/10.1038/nature13127) - Definitions and guidelines to define pathogenicity of SNPs

- Bush, William S., and Jason H. Moore. “Chapter 11: Genome-Wide Association Studies.” Edited by Fran Lewitter and Maricel Kann. PLoS Computational Biology 8, no. 12 (December 27, 2012): e1002822. https://doi.org/10.1371/journal.pcbi.1002822. - GWAS key concepts review. Examples of GWAS findings. Definitions of allele frequency, linkage disequilibrium and D' and r^2 definitions, technology, study design, association tests using GLM, ANOVA, logistic regression frameworks, population stratification, meta-analysis considerations, data phasing, imputation. Tools.


### Structural and Copy Number Variants

- Quinlan, Aaron R., and Ira M. Hall. “Characterizing Complex Structural Variation in Germline and Somatic Genomes.” Trends in Genetics: TIG 28, no. 1 (January 2012): 43–53. [https://www.sciencedirect.com/science/article/pii/S0168952511001685](https://www.sciencedirect.com/science/article/pii/S0168952511001685) - SV review, types, how generated, technologies for detection (Box 1. depth, paired-end, split-read)

- Alkan, Can, Bradley P. Coe, and Evan E. Eichler. “Genome Structural Variation Discovery and Genotyping.” Nature Reviews Genetics 12, no. 5 (May 2011): 363–76. [https://www.nature.com/articles/nrg2958](https://www.nature.com/articles/nrg2958) - CNV, structural detection review

- Zhang, Feng, Wenli Gu, Matthew E. Hurles, and James R. Lupski. “Copy Number Variation in Human Health, Disease, and Evolution.” Annual Review of Genomics and Human Genetics 10 (2009): 451–81. [https://doi.org/10.1146/annurev.genom.9.081307.164217](https://doi.org/10.1146/annurev.genom.9.081307.164217) - CNV review, mechanisms, analytical difficulties, roles in individual diseases

- Trost, Brett, Susan Walker, Zhuozhi Wang, Bhooma Thiruvahindrapuram, Jeffrey R. MacDonald, Wilson W. L. Sung, Sergio L. Pereira, et al. “A Comprehensive Workflow for Read Depth-Based Identification of Copy-Number Variation from Whole-Genome Sequence Data.” American Journal of Human Genetics 102, no. 1 (January 4, 2018): 142–55. [https://doi.org/10.1016/j.ajhg.2017.12.007](https://doi.org/10.1016/j.ajhg.2017.12.007) - CNV (>1kb) read-depth detection workflow, from experimental considerations to computational analysis. HuRef (NA12878) genome, supplemental files contain CNV genomic coordinates. CNVnator and ERDS perform optimally. Tools comparison, links to resources.


### Tools

- Xu, Chang. “A Review of Somatic Single Nucleotide Variant Calling Algorithms for Next-Generation Sequencing Data.” Computational and Structural Biotechnology Journal 16 (2018): 15–24. https://doi.org/10.1016/j.csbj.2018.01.003. - Overview of 46 somatic Single Nucleotide Variant (SNV) caller tools. Pre-processing, variant evaluation, and post-filtering steps. Four categories of algorithms, description of each, and the corresponding tools: matched tumor-normal (position-, haplotype-, mathine learning-based methods, Table 1), single-sample (Table 1, 2, some offer somatic-germline classification), UMI-based (UMI technology, Figure 1, Table 3), and RNA-seq (Technology, issues, Table 4) variant calling. Benchmarking using tools for generating synthetic reads, spike-ins, GiAB, melanoma-normal samples, performance evaluation metrics. Issues in representing complex variants and tools for variant normalization. Deep neural network-based algorithms perform best.

- Pirooznia, Mehdi, Melissa Kramer, Jennifer Parla, Fernando S. Goes, James B. Potash, W. Richard McCombie, and Peter P. Zandi. “Validation and Assessment of Variant Calling Pipelines for Next-Generation Sequencing.” Human Genomics 8 (July 30, 2014): 14. [https://humgenomics.biomedcentral.com/articles/10.1186/1479-7364-8-14](https://humgenomics.biomedcentral.com/articles/10.1186/1479-7364-8-14) - SNP pipeline benchmarking, GATK vs. samtools. GATK is the best. Supplementary - actual commands to run. [http://metamoodics.org/wiki/index.php?title=Whole_Exome_Sequencing_Analysis_Pipeline](http://metamoodics.org/wiki/index.php?title=Whole_Exome_Sequencing_Analysis_Pipeline)

- Purcell, Shaun, Benjamin Neale, Kathe Todd-Brown, Lori Thomas, Manuel A. R. Ferreira, David Bender, Julian Maller, et al. “PLINK: A Tool Set for Whole-Genome Association and Population-Based Linkage Analyses.” American Journal of Human Genetics 81, no. 3 (September 2007): 559–75. [https://doi.org/10.1086/519795](https://doi.org/10.1086/519795) - PLINK - a tool for whole-genome association studies data management, summary statistics, population stratification, association analysis, and identity-by-descent estimation. Details of each task. gPLINK - graphical user interface integrated with HaploView. [http://zzz.bwh.harvard.edu/plink/](http://zzz.bwh.harvard.edu/plink/)

- Shabalin, Andrey A. “Matrix EQTL: Ultra Fast EQTL Analysis via Large Matrix Operations.” Bioinformatics (Oxford, England) 28, no. 10 (May 15, 2012): 1353–58. [https://doi.org/10.1093/bioinformatics/bts163](https://doi.org/10.1093/bioinformatics/bts163) - eQTL detection using linear regression/ANOVA models. Genotype by gene expression matrix multiplication to calculate model statistics. Handling of covariates, correlation structure, FDR correction, handling of cis/trans qtls. [http://www.bios.unc.edu/research/genomic_software/Matrix_eQTL/](http://www.bios.unc.edu/research/genomic_software/Matrix_eQTL/)


### Workflows and tools

- Van der Auwera, Geraldine A., Mauricio O. Carneiro, Chris Hartl, Ryan Poplin, Guillermo Del Angel, Ami Levy-Moonshine, Tadeusz Jordan, et al. “From FastQ Data to High Confidence Variant Calls: The Genome Analysis Toolkit Best Practices Pipeline.” Current Protocols in Bioinformatics 43 (2013): 11.10.1-33. [https://doi.org/10.1002/0471250953.bi1110s43](https://doi.org/10.1002/0471250953.bi1110s43)

- Reed, Eric, Sara Nunez, David Kulp, Jing Qian, Muredach P. Reilly, and Andrea S. Foulkes. “A Guide to Genome-Wide Association Analysis and Post-Analytic Interrogation.” Statistics in Medicine 34, no. 28 (December 10, 2015): 3769–92. [https://doi.org/10.1002/sim.6605](https://doi.org/10.1002/sim.6605) - GWAS R tutorial. Workflow details, file types, filtering steps, PCA, post-analysis visualization. Data from [https://www.mtholyoke.edu/courses/afoulkes/Data/GWAStutorial/](https://www.mtholyoke.edu/courses/afoulkes/Data/GWAStutorial/). Support site [http://www.stat-gen.org/](http://www.stat-gen.org/)

- Notes on whole exome and whole genome sequencing analysis. [https://github.com/crazyhottommy/DNA-seq-analysis](https://github.com/crazyhottommy/DNA-seq-analysis)

- Thousand Variant Callers Project Github Repo, links and short descriptions of different genomic variant callers. [https://github.com/deaconjs/ThousandVariantCallersRepo](https://github.com/deaconjs/ThousandVariantCallersRepo)

- "Wrangling genomics" SNP calling pipeline. [https://github.com/datacarpentry/wrangling-genomics](https://github.com/datacarpentry/wrangling-genomics)

- "Variant Annotation Workshop with FunciVAR, StateHub and MotifBreakR", [https://www.simoncoetzee.com/bioc2017.html](https://www.simoncoetzee.com/bioc2017.html)

- "GWAS tutorial", [https://poissonisfish.wordpress.com/2017/10/09/genome-wide-association-studies-in-r/](https://poissonisfish.wordpress.com/2017/10/09/genome-wide-association-studies-in-r/), [https://github.com/monogenea/GWAStutorial](https://github.com/monogenea/GWAStutorial)

- Off-label workflow to simply call differences in two samples. [https://gatkforums.broadinstitute.org/gatk/discussion/11315/off-label-workflow-to-simply-call-differences-in-two-samples](https://gatkforums.broadinstitute.org/gatk/discussion/11315/off-label-workflow-to-simply-call-differences-in-two-samples)

- Basic walk-throughs for alignment and variant calling from NGS sequencing data, by Erik Garrison. [https://github.com/ekg/alignment-and-variant-calling-tutorial](https://github.com/ekg/alignment-and-variant-calling-tutorial)



## `misc` - misc presentations and materials

- `502 GWAS_2018.ppt` - Brien Riley's GWAS lecture for HGEN 502 

- `GTEx_ASHG_workshop_101817_final.pdf` - GTEx Workshop at ASHG 2017, https://www.gtexportal.org/home/workshop.html

- `Bioinformatics 102 Variation 2017.pdf` - https://docs.google.com/presentation/d/1X4UKAaZEZiBZMEPGMDBZB0Gusi3NxtXfG9mPaChMM20/edit?usp=sharing

- `HTS_2014_variantCallingCourse_sept2014_Part1.pdf` - Variant	Calling	(using	High-throughput	Sequencing	Data) https://wiki.uio.no/projects/clsi/images/6/6b/HTS_2014_variantCallingCourse_sept2014_Part1.pdf	

## ToDo - todo list

- `journal.pcbi.1002822.s001.DOCX` - GWAS questions and answers from http://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1002822#s11

- for eQTL lecture, read Peng, Jie, Ji Zhu, Anna Bergamaschi, Wonshik Han, Dong-Young Noh, Jonathan R. Pollack, and Pei Wang. “Regularized Multivariate Regression for Identifying Master Predictors with Application to Integrative Genomics Study of Breast Cancer.” The Annals of Applied Statistics 4, no. 1 (March 2010): 53–77. https://doi.org/10.1214/09-AOAS271SUPP.
- and watch http://www.birs.ca/events/2013/5-day-workshops/13w5083/videos/watch/201308130908-Wang.html

- https://github.com/OpenGene/MutScan - Detect and visualize target mutations by scanning FastQ files directly

https://github.com/quinlan-lab/applied-computational-genomics
- `09 - SNP and INDEL Discovery (Part 1).pptx` - Homo-heterozygote SNPs, visual explanation, binomial distribution exercise

- QTL statistics, lecture 19, https://ocw.mit.edu/courses/biology/7-91j-foundations-of-computational-and-systems-biology-spring-2014/lecture-slides/

- SNPs to genes, network-assisted enrichment analysis, Jia, Peilin, and Zhongming Zhao. “Network.assisted Analysis to Prioritize GWAS Results: Principles, Methods and Perspectives.” Human Genetics 133, no. 2 (February 2014): 125–38. doi:10.1007/s00439-013-1377-1.

lumpy

gemini

freebayes

