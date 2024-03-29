- `01_Metagenomics.Rmd` - Overfiew of metagenomics analysis, from 16S sequencing, OTU clustering to shotgun sequencing and analysis statistics


## `lab` - in-class lab material

- RDP - Ribosomal Database Project. Assignment generator to generate sequences to play with tools. http://rdp.cme.msu.edu/index.jsp

- `/Users/mdozmorov/Documents/Data/Teaching/microbiome_mothur` - data used in mothur paper, Microbial diversity in the deep sea and the underexplored "rare biosphere" (2006); PNAS, 103(32):12115-20. From http://jbpc.mbl.edu/research_supplements/g454/20060412-private/

- `F1000_workflow` - Microbiome workflow. RSV instead of OTU. Data preprocessing from raw reads. DADA2 pipeline, ASV summary tables using RDP (Greengenes and SILVA are available), phylogenetic tree reconstruction (pangorn). phyloseq downstream analysis, from filtering to agglomeration, transformation, various ordination visualizations (from PCoA, DPCoA, rank PCA, to CCA), supervised learning, graph-based visualization and testing, multi-omics analyses. https://github.com/spholmes/F1000_workflow
    - Callahan, Ben J., Kris Sankaran, Julia A. Fukuyama, Paul J. McMurdie, and Susan P. Holmes. “Bioconductor Workflow for Microbiome Data Analysis: From Raw Reads to Community Analyses.” F1000Research 5 (2016): 1492. https://doi.org/10.12688/f1000research.8986.2.


## References

- Franzosa, Eric A., Tiffany Hsu, Alexandra Sirota-Madi, Afrah Shafquat, Galeb Abu-Ali, Xochitl C. Morgan, and Curtis Huttenhower. “Sequencing and beyond: Integrating Molecular ‘omics’ for Microbial Community Profiling.” Nature Reviews Microbiology 13, no. 6 (June 2015): 360–72. https://doi.org/10.1038/nrmicro3451. - Metagenomics technology, methods and analysis review. Multi-omics integrative analyses, statistical considerations. Well-written, references.

- Ghodsi, Mohammadreza, Bo Liu, and Mihai Pop. “DNACLUST: Accurate and Efficient Clustering of Phylogenetic Marker Genes.” BMC Bioinformatics 12 (June 30, 2011): 271. [https://bmcbioinformatics.biomedcentral.com/articles/10.1186/1471-2105-12-271](https://bmcbioinformatics.biomedcentral.com/articles/10.1186/1471-2105-12-271) DNACLUST - metagenomics clustering of 16S sequencing. Comparison with CD-HIT and UCLUST. Recruit sequences within the radius around cluster seed. Explanation of distance, Needleman-Wunsch algorithm.

- Grice, Elizabeth A., and Julia A. Segre. “The Human Microbiome: Our Second Genome.” Annual Review of Genomics and Human Genetics 13, no. 1 (September 22, 2012): 151–70. [https://www.annualreviews.org/doi/abs/10.1146/annurev-genom-090711-163814](https://www.annualreviews.org/doi/abs/10.1146/annurev-genom-090711-163814) - Review on microbiome, 16S RNA, tools, human microbiome project.

- Kong, Heidi H. “Skin Microbiome: Genomics-Based Insights into the Diversity and Role of Skin Microbes.” Trends in Molecular Medicine 17, no. 6 (June 2011): 320–28. https://doi.org/10.1016/j.molmed.2011.01.013. - Skin microbiome review. Introduction about microbiome sequencing (culture and direct), 16S sequencing, other markers. Definitions. Skin-specific findings.

- McDonald, Daniel, Zhenjiang Xu, Embriette R. Hyde, and Rob Knight. “Ribosomal RNA, the Lens into Life.” RNA 21, no. 4 (April 2015): 692–94. [http://rnajournal.cshlp.org/content/21/4/692.full](http://rnajournal.cshlp.org/content/21/4/692.full) - Short review of 16S rRNA history, databases (RDP< Greengenes, SILVA), QIIME

- Huson, D. H., A. F. Auch, J. Qi, and S. C. Schuster. “MEGAN Analysis of Metagenomic Data.” Genome Research 17, no. 3 (February 6, 2007): 377–86. [https://genome.cshlp.org/content/17/3/377.abstract](https://genome.cshlp.org/content/17/3/377.abstract) - MEGAN paper. Intro into metagenomics, sequencing, alignment analysis. LCA (lowest common ancestor) algorithm.

- Kuczynski, Justin, Christian L. Lauber, William A. Walters, Laura Wegener Parfrey, José C. Clemente, Dirk Gevers, and Rob Knight. “Experimental and Analytical Tools for Studying the Human Microbiome.” Nature Reviews Genetics 13, no. 1 (December 16, 2011): 47–58. [https://www.nature.com/articles/nrg3129](https://www.nature.com/articles/nrg3129)

- Hamady, Micah, and Rob Knight. “Microbial Community Profiling for Human Microbiome Projects: Tools, Techniques, and Challenges.” Genome Research 19, no. 7 (July 2009): 1141–52. [http://genome.cshlp.org/cgi/pmidlookup?view=long&pmid=19383763](http://genome.cshlp.org/cgi/pmidlookup?view=long&pmid=19383763) - Introduction, background of metagenomics. 16S vs. sequencing, experimental questions like read length, sampling depth, how to analyze.

- Schloss, P. D., S. L. Westcott, T. Ryabin, J. R. Hall, M. Hartmann, E. B. Hollister, R. A. Lesniewski, et al. “Introducing Mothur: Open-Source, Platform-Independent, Community-Supported Software for Describing and Comparing Microbial Communities.” Applied and Environmental Microbiology 75, no. 23 (December 1, 2009): 7537–41. [https://doi.org/10.1128/AEM.01541-09](https://doi.org/10.1128/AEM.01541-09) - mothur paper. [https://www.mothur.org/](https://www.mothur.org/)

- Wang, Q., G. M. Garrity, J. M. Tiedje, and J. R. Cole. “Naive Bayesian Classifier for Rapid Assignment of RRNA Sequences into the New Bacterial Taxonomy.” Applied and Environmental Microbiology 73, no. 16 (August 15, 2007): 5261–67. [https://doi.org/10.1128/AEM.00062-07](https://doi.org/10.1128/AEM.00062-07) - Naive Bayes classifier used in Ribosome Database Project (RDP). Good methods statistical description.

- Sczyrba, Alexander, Peter Hofmann, Peter Belmann, David Koslicki, Stefan Janssen, Johannes Dröge, Ivan Gregor, et al. “Critical Assessment of Metagenome Interpretation-a Benchmark of Metagenomics Software.” Nature Methods 14, no. 11 (November 2017): 1063–71. [https://doi.org/10.1038/nmeth.4458](https://doi.org/10.1038/nmeth.4458) - Critical Assessment of Metagenome Interpretation (CAMI) paper. Assessment of microbial genome assemblers, effect of sequencing depth, strain diversity, taxonomic binning, etc., recommendations on software and best practices.

### Metagenomic resources

- List of software packages (and the people developing these methods) for microbiome (16S), metagenomics (WGS, Shot-gun sequencing), and pathogen identification/detection/characterization. [https://github.com/stevetsa/awesome-microbes](https://github.com/stevetsa/awesome-microbes)

- "Analysis of Metagenomic Data (2016)" course. [https://bioinformatics-ca.github.io/analysis_of_metagenomic_data_2016/](https://bioinformatics-ca.github.io/analysis_of_metagenomic_data_2016/)

- Metagenomic Assembly Workshop, [https://2014-5-metagenomics-workshop.readthedocs.io/en/latest/index.html](https://2014-5-metagenomics-workshop.readthedocs.io/en/latest/index.html)

- Schiffer, Lucas, Rimsha Azhar, Lori Shepherd, Marcel Ramos, Ludwig Geistlinger, Curtis Huttenhower, Jennifer B Dowd, Nicola Segata, and Levi Waldron. “HMP16SData: Efficient Access to the Human Microbiome Project through Bioconductor,” August 29, 2018. https://doi.org/10.1101/299115. - HMP16SData - SummarizedExperiment of 16S sequencing data (counts) for V13 and V35 variable regions with clinical annotations (visit number, sex, run center, body site, and body subsite) and an option to attach controlled access clinical annotations. Compatible with phylosec. https://bioconductor.org/packages/release/data/experiment/html/HMP16SData.html

- Microbiome Helper - wrapper scripts and tutorials for metagenomics analysis. https://github.com/LangilleLab/microbiome_helper/wiki. Main paper: Comeau, André M., Gavin M. Douglas, and Morgan G. I. Langille. “Microbiome Helper: A Custom and Streamlined Workflow for Microbiome Research.” Edited by Jonathan Eisen. MSystems 2, no. 1 (February 28, 2017). https://doi.org/10.1128/mSystems.00127-16.


## ToDo

- Bray-Curtis dissimilarity metric, https://en.wikipedia.org/wiki/Bray%E2%80%93Curtis_dissimilarity

- Microbiome data analysis by the Waldron lab, https://github.com/waldronlab/MicrobiomeWorkshop/tree/BiocNYC-2017-12-15

- `HMP16SData` - 16S rRNA Microbiome Data from the Human Microbiome Project, https://bioconductor.org/packages/devel/data/experiment/html/HMP16SData.html

- McMurdie, Paul J., and Susan Holmes. “Waste Not, Want Not: Why Rarefying Microbiome Data Is Inadmissible.” Edited by Alice Carolyn McHardy. PLoS Computational Biology 10, no. 4 (April 3, 2014): e1003531. https://doi.org/10.1371/journal.pcbi.1003531. - Rarefying microbiome data or using proportions is wrong, statistical arguments. Variance stabilization (DESeq) and upper-quartile log-fold change normalization (edgeR) perform well to normalize the data. Negative binomial and zero-inflated Gaussian mixture models are recommended to test for differential abundance, differential abundance test in metagenomeSeq package also performs well. Rarefying lead to high proportion of false positives. Importance of filtering.

- Morgan, Xochitl C., and Curtis Huttenhower. “Chapter 12: Human Microbiome Analysis.” Edited by Fran Lewitter and Maricel Kann. PLoS Computational Biology 8, no. 12 (December 27, 2012): e1002808. https://doi.org/10.1371/journal.pcbi.1002808. - Human Microbiome Analysis review. History, technologies, 16S, OTUs, alpha diversity (Shannon index), beta-diversity (Bray-Curtis dissimilarity) formulas. Well-written, includes exercises.


## `misc`
