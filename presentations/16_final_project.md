---
layout: default
title: BIOS 668, Final project
---

**General description**: The purpose of the final project is for you to gain familiarity with the main methods learned in class, applied to the real-life sequencing data. Additionally, the project should help solidify your statistical and practical understanding of such methods.

For your project, you are required to complete two parts - 1) processing and analysis of raw RNA-seq data and 2) performing integrative analysis of two types of processed TCGA data, e.g., gene expression and methylation.

## 1. Processing and analysis of raw RNA-seq data

You must select an RNA-seq dataset to analyze. Prerequisites for a dataset: 

- at least two experimental conditions;
- at least five samples per condition;
- human data, but model organism data are also acceptable;
- mRNA (gene expression) is preferred, but short RNA-seq (e.g., miRNAs) is acceptable;
- your data permitted after discussion with the instructor;

Choose experimental condition of interest (e.g., a particular cancer type, environmental exposure, immunologic or neurologic disease). See the ["Genomic resources" slides]({{site.baseurl}}/assets/03_Genomic_resources/02_Genomic_Resources.pdf) for resources where to find an interesting RNA-seq dataset. Alternatively, search the NCBI Gene Expression Omnibus (GEO) database, <http://www.ncbi.nlm.nih.gov/geo/>, using keywords of interest, e.g., "obesity exercise RNA-seq." Read the paper describing the dataset, and aim to develop new and/or re-create the published results.

## 2. Integrative analysis of two types of processed TCGA data

Use Breast Cancer (BRCA) TCGA data summarized as MultiAssayExperiment, available at [http://tinyurl.com/MAEOurls](http://tinyurl.com/MAEOurls). Download BRCA sample annotation data from [https://xenabrowser.net/datapages/?dataset=TCGA.BRCA.sampleMap/BRCA_clinicalMatrix&host=https://tcga.xenahubs.net](https://xenabrowser.net/datapages/?dataset=TCGA.BRCA.sampleMap/BRCA_clinicalMatrix&host=https://tcga.xenahubs.net). Extract "PAM50Call_RNAseq" sample annotation from Xena file, add it to the MultiAssayExperiment object (Critical - check the order and overlap of the sample IDs). Perform the following analyses, explain your observations in each.

- Perform exploratory data analysis on gene expression - number of samples (total, and in each PAM50 subtype), number of genes, gene expression type (counts, RPKM/FPKM, TPM) and scale (raw or $log_2$), was the data normalized. Make a PCA plot (and/or, MDS, tSNE plots) colored by PAM50 subtypes
    - Repeat for methylation data
- Select samples for two breast cancer subtypes from the "PAM50Call_RNAseq" annotation, e.g., "Basal" and "LumA." Perform differential expression analysis between the two conditions using `edgeR` and `DESeq2`. Compare the results, explain the discrepancies
    - Repeat for methylation data
- Perform functional enrichment analysis of differentially expressed genes (use KEGG, Gene Ontology). See ["Functional enrichment analysis" section](https://mdozmorov.github.io/BIOS567.2017/syllabus/)
    - Repeat for differentially methylated genes
- Plot gene expression (X-axis) vs. methylation (Y-axis) levels for the differentially expressed genes. Select genes with concordant changes, i.e., upregulated genes with decreased methylation level, perform 

# Reporting requirements

Your project report should be written in R/Markdown format and compiled as a PDF document. Follow the IMRaD format, <http://sokogskriv.no/en/writing/structure/the-imrad-format/>, when describing your project and results. Be as concise as possible when describing the results. Embed figures, small tables, and references in the report. Make supplementary figures/tables for large results output. For each part, address the following points:

1. A simple and clear description of the dataset you will be using and the research question you are addressing. This should be written in the form of a **Introduction/Background** section(s).
2. A **Methods** section
3. A **Results** section providing a thorough description of your results. Tables and figures should be numbered and captioned.
4. A **Discussion/Conclusion** section. Either your Introduction or Discussion section should describe how your analysis of the dataset differs from what the authors reported in their published paper.
5. **References**.
6. **Computational component**: code chunks, as well as any data that can't be recreated with the code, must be provided to the instructor so it can be tested. Make sure your code is readable (use `formatR::tidy_app()`) and commented.

### Final grading

Review grading policy at [https://mdozmorov.github.io/BIOS668.2018/policies/](https://mdozmorov.github.io/BIOS668.2018/policies/)

- Your final project in the form of your GitHub repository is due on or before Saturday, May 5, 2018, at 9:00 pm EDT.

<!--
- Following the submission, you will be assigned to grade one of your peer's project.  
    - The peer-to-peer assignment will be sent through Blackboard.
    - Clone your peer's repository on your computer and knit the final project document.
    - Learn from the code and critically assess each section of the final project (Introduction, each Method/Results subsections, etc.).
    - Critically assess each section as "pass," "fail," "marginal," briefly noting the rationale for the assessment.
    - The goal of your assessment is to learn from the work of others.  
- Your assessment is due to be submitted through Blackboard on or before Monday, December 18th, 9:00 am.
- The instructor will formally grade each project, taking your assessment into consideration. 
-->

<!--
- Your final project will be graded on or before Monday, December 18th, 9:00 am

- The final grades will be entered into the system on or before Tuesday, December 19th, 4:00 pm.
-->