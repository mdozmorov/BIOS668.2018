---
categories:
 - weekly
title: "07 - Methylation"
slides: ""
tags:
 - assets
visible: 1
---

[Slides: Methylation introduction]({{site.baseurl}}/assets/07_Methylation/01_Methylation_intro.pdf)  
[Slides: Methylation Illumina arrays]({{site.baseurl}}/assets/07_Methylation/02_Methylation_microarrays.pdf)  
[Slides: Methylation minfi tutorial]({{site.baseurl}}/assets/07_Methylation/03_Methylation_minfi.pdf)  
[Slides: Methylation bisulfite sequencing]({{site.baseurl}}/assets/07_Methylation/04_Methylation_bisulfite.pdf)  
[Slides: Cell type deconvolution]({{site.baseurl}}/assets/07_Methylation/05_Methylation_deconvolution.pdf)  

## References

- Pidsley, R., et. al., and Susan J. Clark. "**Critical Evaluation of the Illumina MethylationEPIC BeadChip Microarray for Whole-Genome DNA Methylation Profiling.**" Genome Biology 2016 [https://genomebiology.biomedcentral.com/articles/10.1186/s13059-016-1066-1](https://genomebiology.biomedcentral.com/articles/10.1186/s13059-016-1066-1)

- Pan D., et. al. "**Comparison of Beta-value and M-value methods for quantifying methylation levels by microarray analysis.**" BMC Bioinformatics, 2010 [https://bmcbioinformatics.biomedcentral.com/articles/10.1186/1471-2105-11-587](https://bmcbioinformatics.biomedcentral.com/articles/10.1186/1471-2105-11-587)

- Bock, Christoph, Eleni M Tomazou, Arie B Brinkman, Fabian Müller, Femke Simmer, Hongcang Gu, Natalie Jäger, Andreas Gnirke, Hendrik G Stunnenberg, and Alexander Meissner. “Quantitative Comparison of Genome-Wide DNA Methylation Mapping Technologies.” Nature Biotechnology 28, no. 10 (October 2010): 1106–14. [https://doi.org/10.1038/nbt.1681](https://doi.org/10.1038/nbt.1681). - Methylation intro, technology. Software tools, tables. Quality control and problems. Differential analysis. Public repositories.

- Krueger, Felix, Benjamin Kreck, Andre Franke, and Simon R Andrews. “DNA Methylome Analysis Using Short Bisulfite Sequencing Data.” Nature Methods 9, no. 2 (January 30, 2012): 145–51. [https://www.nature.com/articles/nmeth.1828](https://www.nature.com/articles/nmeth.1828). - Methylation intro, technologies to measure. Alignment problems, QC considerations, processing workflow. Theoretical, references.

- Wreczycka, Katarzyna, Alexander Gosdschan, Dilmurat Yusuf, Bjoern Gruening, Yassen Assenov, and Altuna Akalin. “Strategies for Analyzing Bisulfite Sequencing Data,” August 9, 2017. [https://www.sciencedirect.com/science/article/pii/S0168165617315936](https://www.sciencedirect.com/science/article/pii/S0168165617315936). - Bisufite sequencing data analysis steps. Intro into methylation. Refs to packages. 

- Feng, Hao, Karen N. Conneely, and Hao Wu. “A Bayesian Hierarchical Model to Detect Differentially Methylated Loci from Single Nucleotide Resolution Sequencing Data.” Nucleic Acids Research 42, no. 8 (April 2014): e69–e69. [https://doi.org/10.1093/nar/gku154](https://doi.org/10.1093/nar/gku154) [https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4005660/](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4005660/)

- Robinson, Mark D., Abdullah Kahraman, Charity W. Law, Helen Lindsay, Malgorzata Nowicka, Lukas M. Weber, and Xiaobei Zhou. “Statistical Methods for Detecting Differentially Methylated Loci and Regions.” Frontiers in Genetics 5 (2014): 324. [https://doi.org/10.3389/fgene.2014.00324](https://doi.org/10.3389/fgene.2014.00324). - Methylation review, technology, databases, experimental design, statistics and tools for differential methylation detection, beta-binomial distribution, cell type deconvolution.

- Krueger, Felix, and Simon R. Andrews. “Bismark: A Flexible Aligner and Methylation Caller for Bisulfite-Seq Applications.” Bioinformatics (Oxford, England) 27, no. 11 (June 1, 2011): 1571–72. [https://doi.org/10.1093/bioinformatics/btr167](https://doi.org/10.1093/bioinformatics/btr167). - Bismark paper. stranded and unstranded BS sequencing. Conversion of reads, genomes, best alignment strategy. https://www.bioinformatics.babraham.ac.uk/projects/bismark/

- Xi, Yuanxin, and Wei Li. “BSMAP: Whole Genome Bisulfite Sequence MAPping Program.” BMC Bioinformatics 10, no. 1 (2009): 232. [https://doi.org/10.1186/1471-2105-10-232](https://doi.org/10.1186/1471-2105-10-232). - BSMAP paper. Bisulphite conversion technology introduction, problems. BSMAP algorithm. Very good figures explaining all steps. [https://code.google.com/archive/p/bsmap/](https://code.google.com/archive/p/bsmap/)

- Chen, Yunshun, Bhupinder Pal, Jane E. Visvader, and Gordon K. Smyth. “Differential Methylation Analysis of Reduced Representation Bisulfite Sequencing Experiments Using EdgeR.” F1000Research 6 (November 28, 2017): 2055. [https://doi.org/10.12688/f1000research.13196.1](https://doi.org/10.12688/f1000research.13196.1). - RRBS differential methylation analysis. Methylation intro. R code tutorial. 

- Venet, D., F. Pecasse, C. Maenhaut, and H. Bersini. “Separation of Samples into Their Constituents Using Gene Expression Data.” Bioinformatics (Oxford, England) 17 Suppl 1 (2001): S279-287 [https://academic.oup.com/bioinformatics/article/17/suppl_1/S279/262438](https://academic.oup.com/bioinformatics/article/17/suppl_1/S279/262438). - Statistical derivation of deconvolution. 

- Teschendorff, Andrew E., and Caroline L. Relton. “Statistical and Integrative System-Level Analysis of DNA Methylation Data.” Nature Reviews Genetics, November 13, 2017. [https://doi.org/10.1038/nrg.2017.86](https://doi.org/10.1038/nrg.2017.86). - Deconvolution of methylation profiles. Reference-based, reference-free, semi-reference-free. Table 1 - tools

- Methylation statistics packages: Table 2 in Liu, Hongbo, Song Li, Xinyu Wang, Jiang Zhu, Yanjun Wei, Yihan Wang, Yanhua Wen, et al. “**DNA Methylation Dynamics: Identification and Functional Annotation.**” Briefings in Functional Genomics, 2016. [https://www.ncbi.nlm.nih.gov/pubmed/27515490](https://www.ncbi.nlm.nih.gov/pubmed/27515490)

### Misc

- R annotation ana analysis packages for Illumina methylation arrays, [http://www.hansenlab.org/software.html](http://www.hansenlab.org/software.html)

- Fast and accurante alignment of BS-Seq reads. [https://github.com/brentp/bwa-meth/](https://github.com/brentp/bwa-meth/)

- https://github.com/crazyhottommy/DNA-methylation-analysis - notes on DNA methylation analysis (arrays and sequencing data)
