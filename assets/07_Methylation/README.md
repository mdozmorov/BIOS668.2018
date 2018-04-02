## `hw` - homework material

## `lab` - in-class lab material

- minfi.Rmd - from https://kasperdanielhansen.github.io/genbioconductor/

## References

- Bock, Christoph, Eleni M Tomazou, Arie B Brinkman, Fabian Müller, Femke Simmer, Hongcang Gu, Natalie Jäger, Andreas Gnirke, Hendrik G Stunnenberg, and Alexander Meissner. “Quantitative Comparison of Genome-Wide DNA Methylation Mapping Technologies.” Nature Biotechnology 28, no. 10 (October 2010): 1106–14. [https://doi.org/10.1038/nbt.1681](https://doi.org/10.1038/nbt.1681). - Methylation intro, technology. Software tools, tables. Quality control and problems. Differential analysis. Public repositories.

- Krueger, Felix, Benjamin Kreck, Andre Franke, and Simon R Andrews. “DNA Methylome Analysis Using Short Bisulfite Sequencing Data.” Nature Methods 9, no. 2 (January 30, 2012): 145–51. [https://www.nature.com/articles/nmeth.1828](https://www.nature.com/articles/nmeth.1828). - Methylation intro, technologies to measure. Alignment problems, QC considerations, processing workflow. Theoretical, references.

- Wreczycka, Katarzyna, Alexander Gosdschan, Dilmurat Yusuf, Bjoern Gruening, Yassen Assenov, and Altuna Akalin. “Strategies for Analyzing Bisulfite Sequencing Data,” August 9, 2017. [https://www.sciencedirect.com/science/article/pii/S0168165617315936](https://www.sciencedirect.com/science/article/pii/S0168165617315936). - Bisufite sequencing data analysis steps. Intro into methylation. Refs to packages. 

- Robinson, Mark D., Abdullah Kahraman, Charity W. Law, Helen Lindsay, Malgorzata Nowicka, Lukas M. Weber, and Xiaobei Zhou. “Statistical Methods for Detecting Differentially Methylated Loci and Regions.” Frontiers in Genetics 5 (2014): 324. [https://doi.org/10.3389/fgene.2014.00324](https://doi.org/10.3389/fgene.2014.00324). - Methylation review, technology, databases, experimental design, statistics and tools for differential methylation detection, beta-binomial distribution, cell type deconvolution.

- Krueger, Felix, and Simon R. Andrews. “Bismark: A Flexible Aligner and Methylation Caller for Bisulfite-Seq Applications.” Bioinformatics (Oxford, England) 27, no. 11 (June 1, 2011): 1571–72. [https://doi.org/10.1093/bioinformatics/btr167](https://doi.org/10.1093/bioinformatics/btr167). - Bismark paper. stranded and unstranded BS sequencing. Conversion of reads, genomes, best alignment strategy. https://www.bioinformatics.babraham.ac.uk/projects/bismark/

- Xi, Yuanxin, and Wei Li. “BSMAP: Whole Genome Bisulfite Sequence MAPping Program.” BMC Bioinformatics 10, no. 1 (2009): 232. [https://doi.org/10.1186/1471-2105-10-232](https://doi.org/10.1186/1471-2105-10-232). - BSMAP paper. Bisulphite conversion technology introduction, problems. BSMAP algorithm. Very good figures explaining all steps. [https://code.google.com/archive/p/bsmap/](https://code.google.com/archive/p/bsmap/)

- Chen, Yunshun, Bhupinder Pal, Jane E. Visvader, and Gordon K. Smyth. “Differential Methylation Analysis of Reduced Representation Bisulfite Sequencing Experiments Using EdgeR.” F1000Research 6 (November 28, 2017): 2055. [https://doi.org/10.12688/f1000research.13196.1](https://doi.org/10.12688/f1000research.13196.1). - RRBS differential methylation analysis. Methylation intro. R code tutorial. 

- Venet, D., F. Pecasse, C. Maenhaut, and H. Bersini. “Separation of Samples into Their Constituents Using Gene Expression Data.” Bioinformatics (Oxford, England) 17 Suppl 1 (2001): S279-287 [https://academic.oup.com/bioinformatics/article/17/suppl_1/S279/262438](https://academic.oup.com/bioinformatics/article/17/suppl_1/S279/262438). - Statistical derivation of deconvolution. 

- Teschendorff, Andrew E., and Caroline L. Relton. “Statistical and Integrative System-Level Analysis of DNA Methylation Data.” Nature Reviews Genetics, November 13, 2017. [https://doi.org/10.1038/nrg.2017.86](https://doi.org/10.1038/nrg.2017.86). - Deconvolution of methylation profiles. Reference-based, reference-free, semi-reference-free. Table 1 - tools

### Misc

- R annotation ana analysis packages for Illumina methylation arrays, [http://www.hansenlab.org/software.html](http://www.hansenlab.org/software.html)

- Fast and accurante alignment of BS-Seq reads. [https://github.com/brentp/bwa-meth/](https://github.com/brentp/bwa-meth/)


## ToDo - todo list

- `Hicks.pdf` - Deconvolution, lecture slides, https://www.bioconductor.org/help/course-materials/2017/BioC2017/Day1/InvitedSpeakers/Hicks.pdf


- https://github.com/crazyhottommy/DNA-methylation-analysis - notes on DNA methylation analysis (arrays and sequencing data)

- Hansen, Kasper D, Benjamin Langmead, and Rafael A Irizarry. “BSmooth: From Whole Genome Bisulfite Sequencing Reads to Differentially Methylated Regions.” Genome Biology 13, no. 10 (2012): R83. https://doi.org/10.1186/gb-2012-13-10-r83.

- oxBS-seq, Tab-seq - sequencing technologies for 5hmc profiling