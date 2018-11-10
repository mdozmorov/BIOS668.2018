+ `01_Alignment_intro.Rmd` - Alignment introduction
+ `lab/naive_exact.R` - naive exact matching  
+ `02_Approximate_matching_Langmead.pdf` - Hamming/Edit distance, global/local alignment overview
+ `lab/naive_Hamming.R` - Hamming distance matching  
+ `lab/edDistRecursive.R` - edit distance, recursive
+ `lab/edDistDynamic.R` - edit distance, dynamic programming  

- `03_Needleman_Wunsch.Rmd` - Needleman-Wunsch global alignment basics
- `04_Smith-Waterman.pdf` - Smith-Waterman algorithm, after Ben Langmead http://www.biostat.jhsph.edu/~khansen/teaching/2014/140.668/seq_aln.pdf
- `05_BWT.pdf` - Short overview of BWT, from MIT7_91JS14_Lecture5.pdf, https://www.youtube.com/watch?v=P3ORBMon8aw&list=PLUl4u3cNGP63uK-oWiLgO7LLJV6ZCWXac&index=5

- `17 - Genome arithmetic with bedtools.pdf` - BEDtools tutorial. From https://github.com/quinlan-lab/applied-computational-genomics
- `18 - Real world analyses with bedtools..pdf` - BEDtools exercise, overlap of GWAS snps with enhancers, calculating significance of overlaps. From https://github.com/quinlan-lab/applied-computational-genomics


## `lab` - in-class lab material

- `kcmbt_mt` - KCMBT: A very fast k-mer counter. https://github.com/abdullah009/kcmbt_mt

- `KMC` - KMC is a disk-based programm for counting k-mers from (possibly gzipped) FASTQ/FASTA files. The homepage of the KMC project is http://sun.aei.polsl.pl/kmc. https://github.com/refresh-bio/KMC


## References

- Nagarajan, Niranjan, and Mihai Pop. “Sequence Assembly Demystified.” Nature Reviews. Genetics 14, no. 3 (March 2013): 157–67. doi:10.1038/nrg3367. - Gentle introduction into genome assembly. Technologies. Box2: Greedy, overlap-layout-consensus, De Bruijn. Problems

- Pevzner, P. A., H. Tang, and M. S. Waterman. “An Eulerian Path Approach to DNA Fragment Assembly.” Proceedings of the National Academy of Sciences 98, no. 17 (August 14, 2001): 9748–53. https://doi.org/10.1073/pnas.171285098. - First de Bruijn graph for genome assembly paper. Idea of breaking reads into fragments. Typical approach reads are vertices connected by edges if they overlap. Hamiltonian path problem - visit each vertex exactly once, NP-complete. de Bruijn graph - overlapping fragments are edges, and the problem is Eulerian path - visit each edge once. Error-correction algorithm.

- Primer: Compeau, Phillip E C, Pavel A Pevzner, and Glenn Tesler. “How to Apply de Bruijn Graphs to Genome Assembly.” Nature Biotechnology 29, no. 11 (November 8, 2011): 987–91. doi:10.1038/nbt.2023.  

- Chaisson, Mark J. P., Richard K. Wilson, and Evan E. Eichler. “Genetic Variation and the de Novo Assembly of Human Genomes.” Nature Reviews Genetics 16, no. 11 (October 7, 2015): 627–40. doi:10.1038/nrg3933. - Genome assembling strategies, problems. OLC, De Bruijn, string graphs. Types of gaps. 

- Miller, Jason R., Sergey Koren, and Granger Sutton. “Assembly Algorithms for Next-Generation Sequencing Data.” Genomics 95, no. 6 (June 2010): 315–27. doi:10.1016/j.ygeno.2010.03.001. - Assembly tools for overlap/layout/consensus and the de Bruijn graph approaches. de Bruin graph Issues with genome assembly, potential solutions.

- String Graph Assembler. Simpson, J. T., and R. Durbin. “Efficient de Novo Assembly of Large Genomes Using Compressed Data Structures.” Genome Research 22, no. 3 (March 1, 2012): 549–56. doi:10.1101/gr.126953.111. - SGA - String Graph Assembler. From an FM-index. Velvet, ABySS, SOAPdenovo de Bruijn graph assemblers. BWA and FM explanation

- Koren, Sergey, and Adam M. Phillippy. “One Chromosome, One Contig: Complete Microbial Genomes from Long-Read Sequencing and Assembly.” Current Opinion in Microbiology 23 (February 2015): 110–20. https://doi.org/10.1016/j.mib.2014.11.014. - Genome assembly overview focusing on long reads. Repeats (global and local) are problematic. Details on technologies: PacBio RS, Illumina's Moleculo, ONT MinION. Assembling approaches: OLC, hierarchical hybrid (long reads correction using another technology) and non-hybrid (self long reads alignment-correction). Assembly augmentation: gap filling, scaffolding, read threading. Table 1 - long read assembly tools and descriptions.

### Alignment algorithms and tools

- Needleman, S. B., and C. D. Wunsch. “A General Method Applicable to the Search for Similarities in the Amino Acid Sequence of Two Proteins.” Journal of Molecular Biology 48, no. 3 (March 1970): 443–53.
    - Online demo: http://experiments.mostafa.io/public/needleman-wunsch/
    - Wikipedia: https://en.wikipedia.org/wiki/Needleman%E2%80%93Wunsch_algorithm

- Smith, T. F., and M. S. Waterman. “Identification of Common Molecular Subsequences.” Journal of Molecular Biology 147, no. 1 (March 25, 1981): 195–97.

- Burrows, Michael, and David J Wheeler. “A Block-Sorting Lossless Data Compression Algorithm,” 1994. - BWT paper

- Ferragina, Paolo, and Giovanni Manzini. “Opportunistic Data Structures with Applications.” In Foundations of Computer Science, 2000. Proceedings. 41st Annual Symposium On, 390–98. IEEE, 2000. https://dl.acm.org/citation.cfm?id=796543. - FM index paper

- Li, Heng, and Richard Durbin. “Fast and Accurate Short Read Alignment with Burrows-Wheeler Transform.” Bioinformatics (Oxford, England) 25, no. 14 (July 15, 2009): 1754–60. https://doi.org/10.1093/bioinformatics/btp324. - BWA first paper

- Li, Heng, and Richard Durbin. “Fast and Accurate Long-Read Alignment with Burrows-Wheeler Transform.” Bioinformatics (Oxford, England) 26, no. 5 (March 1, 2010): 589–95. https://doi.org/10.1093/bioinformatics/btp698. - BWA second paper

- Li, Heng. “Aligning Sequence Reads, Clone Sequences and Assembly Contigs with BWA-MEM.” ArXiv Preprint ArXiv:1303.3997, 2013. - BWA-MEM (maximal exact matches). Automatically select end-to-end or gapped alignment.

- Langmead, Ben, and Steven L Salzberg. “Fast Gapped-Read Alignment with Bowtie 2.” Nature Methods 9, no. 4 (March 4, 2012): 357–59. https://doi.org/10.1038/nmeth.1923. - Bowtie2 gapped alignment

- Dobin, Alexander, Carrie A. Davis, Felix Schlesinger, Jorg Drenkow, Chris Zaleski, Sonali Jha, Philippe Batut, Mark Chaisson, and Thomas R. Gingeras. “STAR: Ultrafast Universal RNA-Seq Aligner.” Bioinformatics (Oxford, England) 29, no. 1 (January 1, 2013): 15–21. https://doi.org/10.1093/bioinformatics/bts635. - STAR gapped aligner. Algorithm, testing on simulated dataset.

- Kim, Daehwan, Ben Langmead, and Steven L. Salzberg. “HISAT: A Fast Spliced Aligner with Low Memory Requirements.” Nature Methods 12, no. 4 (April 2015): 357–60. https://doi.org/10.1038/nmeth.3317. - HISAT aligner. Two indexes - one large with many small

- "Sequence alignment" - global and local alignment explained, tools for alignment. [https://www.hiv.lanl.gov/content/sequence/HIV/REVIEWS/2006_7/ABECASIS/abecasis.html](https://www.hiv.lanl.gov/content/sequence/HIV/REVIEWS/2006_7/ABECASIS/abecasis.html)

- "Dynamic programming for sequence alignment" - building alignment table and tracing back. [https://www.ibm.com/developerworks/library/j-seqalign/](https://www.ibm.com/developerworks/library/j-seqalign/)

- The Freiburg RNA tools teaching material on RNA- and DNA-sequencing alignment (Needleman-Wunsch, Smith-Waterman, many more). [http://rna.informatik.uni-freiburg.de/Teaching/](http://rna.informatik.uni-freiburg.de/Teaching/)

- Fonseca, Nuno A., Johan Rung, Alvis Brazma, and John C. Marioni. “Tools for Mapping High-Throughput Sequencing Data.” Bioinformatics (Oxford, England) 28, no. 24 (December 15, 2012): 3169–77. https://doi.org/10.1093/bioinformatics/bts605. - Sequencing mappers, lists and characteristics of DNA, RNA, bisulfite aligners. https://www.ebi.ac.uk/~nf/hts_mappers/


### Videos

- The [Bioinformatics algoriths](http://bioinformaticsalgorithms.com/index.htm) web site
    - "How Do We Assemble Genomes?" - genome assembly algorithms, [https://youtu.be/vjB6nhOu3BY?list=PLQ-85lQlPqFNGdaeGpV8dPEeSm3AChb6L](https://youtu.be/vjB6nhOu3BY?list=PLQ-85lQlPqFNGdaeGpV8dPEeSm3AChb6L)
    - "How Do We Compare Biological Sequences? (Dynamic Programming)" - global and local alignment using dynamic programming, [https://www.youtube.com/watch?list=PLQ-85lQlPqFNmbPEsMoxb5dM5qtRaVShn&v=slUaVeNvuTk](https://www.youtube.com/watch?list=PLQ-85lQlPqFNmbPEsMoxb5dM5qtRaVShn&v=slUaVeNvuTk)

- Ben Langmead's Slides for Algorithms for DNA Sequencing Coursera class. [https://github.com/BenLangmead/ads1-slides.git](https://github.com/BenLangmead/ads1-slides.git). The complete class is at [http://www.langmead-lab.org/teaching-materials/](http://www.langmead-lab.org/teaching-materials/)


## `misc`

- `02_Approximate_matching_Langmead_full.pdf` - Hamming/Edit distance, global/local alignment overview, extended version

- `MIT7_91JS14_Lecture6.pdf` - Gifford. overlap/consensus/layout, shortest common superstring, greedy algorithm, de Bruijn graph. https://www.youtube.com/watch?v=ZYW2AeDE6wU&list=PLUl4u3cNGP63uK-oWiLgO7LLJV6ZCWXac&index=6. For `01_Alignment_intro.Rmd`

- `MIT7_91JS14_Lecture5.pdf` - Gifford. Negative Binomial, BWT, FM index, https://www.youtube.com/watch?v=P3ORBMon8aw&list=PLUl4u3cNGP63uK-oWiLgO7LLJV6ZCWXac&index=5. For `01_Alignment_intro.Rmd`

- `MIT7_91JS14_Lecture3.pdf` - Gifford. Global/local alignment, NW/SW algorithms, dynamic programming, from video https://www.youtube.com/watch?v=PdyARRNwi7I&list=PLUl4u3cNGP63uK-oWiLgO7LLJV6ZCWXac&index=3. For `01_Alignment_intro.Rmd`

- `02_Approximate_matching_Langmead.pdf`
    - "Approximate matching, Hamming and edit distance", `lab/naive_Hamming.R` https://www.youtube.com/watch?v=MCvHeW13DsE&index=30&list=PL2mpR0RYFQsBiCWVJSvVAO3OJ2t7DzoHA
    - "Solving the edit distance problem", `lab/edDistRecursive.R`, https://www.youtube.com/watch?v=8Q2IEIY2pDU&index=33&list=PL2mpR0RYFQsBiCWVJSvVAO3OJ2t7DzoHA
    - "Using dynamic programming for edit distance", `lab/edDistDynamic.R` https://www.youtube.com/watch?v=0KzWq118UNI&index=34&list=PL2mpR0RYFQsBiCWVJSvVAO3OJ2t7DzoHA
    - "Edit distance for approximate matching", https://www.youtube.com/watch?v=NjfNZzJiu8o&list=PL2mpR0RYFQsBiCWVJSvVAO3OJ2t7DzoHA&index=36
    - "Meet the family: global and local alignment", https://www.youtube.com/watch?v=-bjSPP2v6_Q&index=37&list=PL2mpR0RYFQsBiCWVJSvVAO3OJ2t7DzoHA

- `assembly_dbg.pdf` - To use. Langmead. de Brujin graph lecture, https://www.cs.jhu.edu/~langmea/resources/lecture_notes/assembly_dbg.pdf

- `Basics_of_alignment_lecture1.pdf` - Skiena. Excerpt from http://www.algorist.com/computational_biology/pdf/lecture1.pdf, video https://www.youtube.com/watch?v=pJAIalWDgY0&list=PLA48145CC64FE7990

- `lecture4.pdf` - Skiena. Mapping, suffix tries, trees, arrays, searching. http://www.algorist.com/computational_biology/pdf/lecture4.pdf

- `seq_aln.pdf` - Sequencing technology, alignment, Spith-Waterman algorithm. Kasper Hansen, http://www.biostat.jhsph.edu/~khansen/teaching/2014/140.668/seq_aln.pdf


## ToDo


