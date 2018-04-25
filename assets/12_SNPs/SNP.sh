Simplest would be to use samtools and bcftools. Something like:

> wget http://hgdownload.cse.ucsc.edu/goldenPath/hg38/chro> mosomes/chr18.fa.gz

> zcat <chr18.fa.gz | sed 's/chr18/18/g’ > chr18.fa # Need to rename chromosome name

> samtools faidx chr18.fa

> samtools mpileup -u -f chr18.fa TCGA-CR-7382.sliced.bam | bcftools call -m -v -o sample001.raw.bcf

> bcftools view sample001.raw.bcf > sample001.filt.vcf

Most importantly, read about the settings for “bcftools call”. You also likely need filtering using “vcfutils”, also read about settings there, something like 

> bcftools view sample001.raw.bcf | vcfutils.pl varFilter -D10 > sample001.filt.vcf

So, basically, call SNPs for each sample, then merge VCFs. Hope that helps, ask more if needed. 

# Amy

samtools mpileup -g -l $REGIONS -f $REF -u -C 50 -q 20 -S $file | bcftools view -vcg - > $OUTDIR/$prefix.raw.vcf

Using ANNOVAR to annotate variants:
Downloaded ANNOVAR to Merlot
Downloaded the following databases using ANNOVAR interface:
>> annotate_variation.pl -buildver hg38 -downdb -webfrom annovar cosmic70 humandb/
>> annotate_variation.pl -buildver hg38 -downdb -webfrom annovar nci60 humandb/
>> annotate_variation.pl -buildver hg38 -downdb -webfrom annovar clinvar_20140902 humandb/
To RUN:
>> ~/bin/annovar/table_annovar.pl 51_S51_L006_paired.Aligned.sortedByCoord.out.raw.vcf ~/bin/annovar/humandb/ -buildver hg38 -out 51_S51_L006 -remove -protocol cosmic70,nci60,clinvar_20140902 -operation f,f,f -nastring . -vcfinput
