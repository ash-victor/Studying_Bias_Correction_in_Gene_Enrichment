# gene_enrichment_project

The research aimed to build upon the Pregnancy, Race, Environment and Genes (PREG) study of DNA methylation levels in fetal tissue and gestational age at birth. The current study utilized the missMethyl R package that took multi-probe bias into account and enriched CpGs of specific genomic regions. A fundamental aspect of the study was to understand the differences between how current enrichment methods address multi-probe bias correction and employ one of these methods on the DNAm data from the PREG study. 

## Methods
A total of  2372 CpG loci were previously identified to be associated with gestational age at birth from a previous study of DNA methylation patterns measured in human umbilical cord blood. Within gometh function of missMethyl, gene ontology terms and KEGG pathways were determined for the enriched CpG sites for overall genomic regions and specific genomic regions. The specific genomic regions studied were: Promoter region, TSS200, first exon, 3’ UTR,  5’UTR, and body. The gene ontology terms and KEGG pathways were determined using with and without bias correction and these results were compared with the PREG study results. 

