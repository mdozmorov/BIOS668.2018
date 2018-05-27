

## `lab` - in-class lab material

- `sgseq` - Lab 4: Handling second generation sequencing data, RNA- and ChIP-seq analyses. http://www.haowulab.org/teaching/bioc/bioc.html

- `lab7.*` - additional ChIP-seq analysis


## References

### Technology

- Park, Peter J. “ChIP–seq: Advantages and Challenges of a Maturing Technology.” Nature Reviews Genetics 10, no. 10 (October 2009): 669–80. [https://doi.org/10.1038/nrg2641](https://doi.org/10.1038/nrg2641) - ChIP-seq review, basics of technology, alignment, peak calling, downstream analysis.

- Bailey, Timothy, Pawel Krajewski, Istvan Ladunga, Celine Lefebvre, Qunhua Li, Tao Liu, Pedro Madrigal, Cenny Taslim, and Jie Zhang. “Practical Guidelines for the Comprehensive Analysis of ChIP-Seq Data.” Edited by Fran Lewitter. PLoS Computational Biology 9, no. 11 (November 14, 2013): e1003326. [http://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1003326](http://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1003326) - ChIP-seq computational workflow - sequencing depth, alignment, QC, peak calling, reproducibility (IDR), narrow/broad peaks, differential binding analysis, annotation, normalization.

- Furey, Terrence S. “ChIP–seq and beyond: New and Improved Methodologies to Detect and Characterize Protein–DNA Interactions.” Nature Reviews Genetics 13, no. 12 (October 23, 2012): 840–52. [https://www.nature.com/articles/nrg3306](https://www.nature.com/articles/nrg3306) - ChIP-seq technologies, narrow and broad peaks, DNAse- and FAIRE-seq, cromatin conformation capture, Gentle technology and terms introduction. 

- Buenrostro, Jason D, Paul G Giresi, Lisa C Zaba, Howard Y Chang, and William J Greenleaf. “Transposition of Native Chromatin for Fast and Sensitive Epigenomic Profiling of Open Chromatin, DNA-Binding Proteins and Nucleosome Position.” Nature Methods 10, no. 12 (December 2013): 1213–18. [https://doi.org/10.1038/nmeth.2688](https://doi.org/10.1038/nmeth.2688) - ATAC-seq technology, corespondence to DNAse-seq.

### Peak calling

- Zhang, Yong, Tao Liu, Clifford A. Meyer, Jérôme Eeckhoute, David S. Johnson, Bradley E. Bernstein, Chad Nusbaum, et al. “Model-Based Analysis of ChIP-Seq (MACS).” Genome Biology 9, no. 9 (2008): R137. [https://doi.org/10.1186/gb-2008-9-9-r137](https://doi.org/10.1186/gb-2008-9-9-r137) - MACS paper

- Kharchenko, Peter V, Michael Y Tolstorukov, and Peter J Park. “Design and Analysis of ChIP-Seq Experiments for DNA-Binding Proteins.” Nature Biotechnology 26, no. 12 (December 2008): 1351–59. [https://doi.org/10.1038/nbt.1508](https://doi.org/10.1038/nbt.1508) - SPP - R package for analysis of ChIP-seq and other functional sequencing data. ChIP-seq technology, picture of strand-specific tag distribution. Strand cross-correlation as a method to decide whether tags should be included. Three types of anomalous tags. [https://github.com/hms-dbmi/spp](https://github.com/hms-dbmi/spp). [http://compbio.med.harvard.edu/Supplements/ChIP-seq/](http://compbio.med.harvard.edu/Supplements/ChIP-seq/)

- Rozowsky, Joel, Ghia Euskirchen, Raymond K Auerbach, Zhengdong D Zhang, Theodore Gibson, Robert Bjornson, Nicholas Carriero, Michael Snyder, and Mark B Gerstein. “PeakSeq Enables Systematic Scoring of ChIP-Seq Experiments Relative to Controls.” Nature Biotechnology 27, no. 1 (January 2009): 66–75. [https://doi.org/10.1038/nbt.1518](https://doi.org/10.1038/nbt.1518) - PeakSeq paper. [https://github.com/gersteinlab/PeakSeq])https://github.com/gersteinlab/PeakSeq

- Zhang, Xuekui, Gordon Robertson, Martin Krzywinski, Kaida Ning, Arnaud Droit, Steven Jones, and Raphael Gottardo. “PICS: Probabilistic Inference for ChIP-Seq.” Biometrics 67, no. 1 (March 2011): 151–63. [https://doi.org/10.1111/j.1541-0420.2010.01441.x](https://doi.org/10.1111/j.1541-0420.2010.01441.x) - PICS paper. [https://bioconductor.org/packages/release/bioc/html/PICS.html](https://bioconductor.org/packages/release/bioc/html/PICS.html)

- Zang, Chongzhi, Dustin E. Schones, Chen Zeng, Kairong Cui, Keji Zhao, and Weiqun Peng. “A Clustering Approach for Identification of Enriched Domains from Histone Modification ChIP-Seq Data.” Bioinformatics 25, no. 15 (August 1, 2009): 1952–58. [https://doi.org/10.1093/bioinformatics/btp340](https://doi.org/10.1093/bioinformatics/btp340) - SICER paper. Cut genome into non-overlapping windows and compute a score for each window based on a Poisson model. Identify "islands" vs "non-islands" by thresholding the scores and clustering windows with significant scores. For each island, compute the probability of observing the island with a given score. Constructing score distribution is involved. Excellent statistical description.

### Motif detection

- D’haeseleer, Patrik. “What Are DNA Sequence Motifs?” Nature Biotechnology 24, no. 4 (April 2006): 423–25. [https://doi.org/10.1038/nbt0406-423](https://doi.org/10.1038/nbt0406-423)

- D’haeseleer, Patrik. “How Does DNA Sequence Motif Discovery Work?” Nature Biotechnology 24, no. 8 (August 2006): 959–61. [https://doi.org/10.1038/nbt0806-959](https://doi.org/10.1038/nbt0806-959)

- Lawrence, C. E., S. F. Altschul, M. S. Boguski, J. S. Liu, A. F. Neuwald, and J. C. Wootton. “Detecting Subtle Sequence Signals: A Gibbs Sampling Strategy for Multiple Alignment.” Science (New York, N.Y.) 262, no. 5131 (October 8, 1993): 208–14. [http://science.sciencemag.org/content/262/5131/208.long](http://science.sciencemag.org/content/262/5131/208.long) - Gibbs sampling for alignment of multiple sequences. Statistical definitions.

- Bailey, T. L., and C. Elkan. “Fitting a Mixture Model by Expectation Maximization to Discover Motifs in Biopolymers.” Proceedings. International Conference on Intelligent Systems for Molecular Biology 2 (1994): 28–36. [https://www.sdsc.edu/~tbailey/papers/memeplus.tech.pdf](https://www.sdsc.edu/~tbailey/papers/memeplus.tech.pdf) - MM MEME algorithm to find multiple motifs of width W in a set of sequences. Background and motif models of position frequencies of letters. EM algorithm to learn motifs that maximize likelihood of the data. After the first model is found, the procedure is repeated to find other motifs.

### ChIP-seq statistics

- Pei Fen Kuan et al., “A Statistical Framework for the Analysis of ChIP-Seq Data,” Journal of the American Statistical Association 106, no. 495 (September 2011): 891–903, [https://doi.org/10.1198/jasa.2011.ap09706](https://doi.org/10.1198/jasa.2011.ap09706) - MOSAiCS (MOdel-based one and two Sample Analysis and Inference for ChIP-Seq) - regression framework that explicitly models mappability and GC biases for one- and two-sample. Evaluated on non-crosslinked, non-IP DNA. Negative Binomial is better fit for tag counts. [https://bioconductor.org/packages/release/bioc/html/mosaics.html](https://bioconductor.org/packages/release/bioc/html/mosaics.html)

- Li, Qunhua, James B. Brown, Haiyan Huang, and Peter J. Bickel. “Measuring Reproducibility of High-Throughput Experiments.” The Annals of Applied Statistics 5, no. 3 (September 2011): 1752–79. [https://doi.org/10.1214/11-AOAS466](https://doi.org/10.1214/11-AOAS466) - IDR - irreproducible discovery rate theoretical paper.

- Gibbs sampling theory and R tutorial, [http://appsilondatascience.com/blog/rstats/2017/10/09/gibbs-sampling.html](http://appsilondatascience.com/blog/rstats/2017/10/09/gibbs-sampling.html)

### ChIP-seq resources

- ChIP-seq pipeline by Tommy Tang, [https://github.com/crazyhottommy/ChIP-seq-analysis](https://github.com/crazyhottommy/ChIP-seq-analysis)

- ChIP-seq workflow and analysis in R, [https://www.bioconductor.org/help/course-materials/2017/OMRF/B4_ChIPSeq.html](https://www.bioconductor.org/help/course-materials/2017/OMRF/B4_ChIPSeq.html)

- ATAC-seq pipeline by Tommy Tang, [https://gitlab.com/tangming2005/snakemake_ATACseq_pipeline/tree/shark](https://gitlab.com/tangming2005/snakemake_ATACseq_pipeline/tree/shark)

- ATAC_seq Workshop. [https://github.com/ThomasCarroll/ATAC_Workshop](https://github.com/ThomasCarroll/ATAC_Workshop)

- "Analyzing ChIP-seq data with SICER", SICER workshop with data. [http://cistrome.org/~czang/chipseqdata.htm](http://cistrome.org/~czang/chipseqdata.htm)

- Wei, Zheng, Wei Zhang, Huan Fang, Yanda Li, and Xiaowo Wang. “EsATAC: An Easy-to-Use Systematic Pipeline for ATAC-Seq Data Analysis.” Bioinformatics (Oxford, England), March 7, 2018. [https://doi.org/10.1093/bioinformatics/bty141](https://doi.org/10.1093/bioinformatics/bty141) - esATAC R package for full ATAC-seq data processing and analysis. [https://www.bioconductor.org/packages/release/bioc/html/esATAC.html](https://www.bioconductor.org/packages/release/bioc/html/esATAC.html)


## `misc` - misc presentations and materials

- `biostar_handbook_chapter.pdf` - ChIP-seq tutorial by Tommy Tang for Biostar handbook. https://drive.google.com/file/d/1UxB0uhsoWlPvymukP3em8v4vBDI-CKwK/view. Potentially, to ask 

- `GeneRegulation.pdf` - ChIP-seq. http://www.biostat.jhsph.edu/~khansen/teaching/2014/140.668/GeneRegulation.pdf

- `lecture1.pdf` and `Lecture1-Notebook` - Introduction & Regulation by the sequence, http://membres-timc.imag.fr/Daniel.Jost/DJ-TIMC/Teaching.html

- `MIT7_91JS14_Lecture9.pdf` - Motif finding, https://www.youtube.com/watch?v=1EMonM7qAU8


## ToDo - todo list

-  Lun, Aaron T. L., and Gordon K. Smyth. “De Novo Detection of Differentially Bound Regions for ChIP-Seq Data Using Peaks and Windows: Controlling Error Rates Correctly.” Nucleic Acids Research 42, no. 11 (June 2014): e95. doi:10.1093/nar/gku351.
  - ChIP-seq differential binding analysis methods. Peaks and windows.
  - For peak-based analysis, peaks should be first defined from pooled libraries.
  - For windows-based approaches, Simes method to combine p-values. the overall p-value of $n$ merged regions will be calculated as $p_{Simes}=min\{n*p_r/r\}$, where $r=1,2,..,n$.


- Lun, Aaron T. L., and Gordon K. Smyth. “From Reads to Regions: A Bioconductor Workflow to Detect Differential Binding in ChIP-Seq Data.” F1000Research 4 (January 11, 2016): 1080. https://doi.org/10.12688/f1000research.7016.2. - ChIP-seq differential binding analysis tutorial using csaw, edgeR. Filtering (blacklisted regions), normalization (MA), differential analysis using the Quasi Likelihood F-test. detailRanges function for finding nearest genes. ChIPpeakAnno for peak annotation. Visualization.


https://math.stackexchange.com/questions/1050184/difference-between-poisson-and-binomial-distributions

The difference between the Binomial and Poisson distributions is that while both measure the number of certain random events (or "successes") within a certain frame, the Binomial is based on discrete events, while the Poisson is based on continuous events. That is, with a binomial distribution you have a certain number, $n$, of "attempts," each of which has probability of success $p$. With a Poisson distribution, you essentially have infinite attempts, with infinitesimal chance of success. That is, given a Binomial distribution with some $n,p$, if you let $n \rightarrow \infty$ and $p \rightarrow 0$ in such a way that $np \rightarrow \lambda$, then that distribution approaches a Poisson distribution with parameter $\lambda$.

Because of this limiting effect, Poisson distributions are used to model occurences of events that could happen a very large number of times, but happen rarely. That is, they are used in situations that would be more properly represented by a Binomial distribution with a very large $n$ and small $p$, especially when the exact values of n and p are unknown. (Historically, the number of wrongful criminal convictions in a country)

