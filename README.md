# Identification of GO and KEGG Differences between Enrichment Methods with and without Bias Correction for CpG Sites Associated with Gestational Age at Birth

The research aimed to build upon the Pregnancy, Race, Environment and Genes (PREG) study of DNA methylation levels in fetal tissue and gestational age at birth. The current study utilized the missMethyl R package that took multi-probe bias into account and enriched CpGs of specific genomic regions. A fundamental aspect of the study was to understand the differences between how current enrichment methods address multi-probe bias correction and employ one of these methods on the DNAm data from the PREG study. 

## Methods
A total of  2372 CpG loci were previously identified to be associated with gestational age at birth from a previous study of DNA methylation patterns measured in human umbilical cord blood. Within gometh function of missMethyl, gene ontology terms and KEGG pathways were determined for the enriched CpG sites for overall genomic regions and specific genomic regions. The specific genomic regions studied were: Promoter region, TSS200, first exon, 3’ UTR,  5’UTR, and body. The gene ontology terms and KEGG pathways were determined using with and without bias correction and these results were compared with the PREG study results. 

## Key Findings
Discussion

Interpretation of GO terms for DMR for all genomic regions

When accounting for the multi-probe bias in our enrichment analysis of the differentially methylated CpG across all genomic regions, the Gene Ontology terms with a FDR value less than 0.05 were inflammatory response, immune system response, and immune response (Table 2). It is of interest to note the significant GO terms that were produced from a similar enrichment analysis with the exception of bias correction: cytoplasm, regulation of response to stimulus and localization (Table 1). It is evident the differences in significant GO terms were attributed to the multi-probe bias effect, which has shown to confound gene enrichment results for DNAm studies since the number of CpG probes has been shown to correlate with gene size. The York et. al.Â study that provided a framework for the current research yielded a similar set of GO terms for all genomic regions: inflammatory activation and immune response.

Interpretation of KEGG pathways for DMR for all genomic regions

The KEGG pathway analysis for the DMR across all genomic regions reproduced similar results to that of the York. et. al project. The KEGG pathways accounting for multi-probe bias were enriched for Lipid atherosclerosis, Th17 cell differentiation and hematopoietic cell lineage (Table 4). However, the KEGG pathways did not have an FDR value less than 0.05. The enriched KEGG pathways with multi-probe bias correction were axon guidance, lipid atherosclerosis, Yersinia infection, and Th17 cell differentiation (Table 3). It is interesting to note that the York et. al.Â study shows that the enriched KEGG pathways were Th17 cell differentiation and axon guidance.

Analyzing the Gene Ontology and KEGG pathways for the promoter region

In addition to performing enrichment studies for the overall genomic region, it is of interest to specifically analyze the CpGs in the promoter region. The enriched GO terms accounting for bias correction were similar to that of the overall genomic region: regulation of immune system process (Table 6). This finding supports the York et. al.Â study that utilizes an enrichment method without bias correction that yielded GO terms relating to the immune system. The current study highlighted a similar enriched KEGG pathway as the prior study, which is the Th17 cell differentiation (Table 8). Given that the GO terms and KEGG pathways enriched for the CpGs in the promoter region are similar to the significant enriched terms and pathways for the overall genomic region, it can be concluded that the promoter region was the driving component for enrichment.

Analyzing the enriched GO and KEGG pathways for the Body

The current study aligned with the York et. al.Â findings of an overall GO category of molecular function and GO terms of GTPase regulator activity, nucleoside-triphosphatase regular activity and GTPase activator activity (Table 17). However, the current study specifically utilized âBodyâ as the genomic region, while the York. et. al.Â study utilized all genomic regions to yield the GO term relating to GTPase activity. This difference could be attributed to the variation in enrichment methods and whether the method accounted for bias correction.

Analyzing the enriched KEGG pathways for the 5â UTR

The enriched KEGG pathway considering with and without bias correction was Glycosphingolipid biosynthesis (Table 11 and Table 12). The Glycosphingolipid biosynthesis pathway is not apparent in the PREG study. Upon literature review, it is studied that Glycosphingolipids are involved in immune processes, including cell differentiation and immune recognition (Zhang et. al., 2019). The current enrichment test for enriched GO terms for all genomic regions revealed terms relating to immune and inflammatory response (Table 2). It can be speculated that the Glycosphingolipid biosynthesis KEGG pathway is associated with enriched CpGs in the 5â UTR genomic region.

Comparing overall GO categories

It is of importance to note that utilization of bias correction produced similar overall GO categories (BP for biological process, MF for molecular function and CC for cellular component) to enrichment methods without bias correction. The difference in results between the two methods lies in the specific GO terms and KEGG pathways. The baseline study reported gene ontology terms that belonged to the biological processes and cellular competent categories.

Strengths and Limitations of the Study

The strengths of this study are that the data supports the previous findings indicated in the York et. al.Â study, which highlights that in addition to the clusterProfiler package, the missMethyl package is an effective method that can perform enrichment analysis with and without bias correction for overall and specific genomic regions. Given that the missMethyl package allowed passing specific genomic regions as parameters, the results showed what component could be driving the enrichment. Overall, the current study, which accounted for the multi-probe bias correction, provided consistent results with the clusterProfiler package that did not use bias correction methods. Although there were no major differences in enriched GO terms and KEGG pathways between the current and PREG studies, it is important to note that fetal umbilical cord data was used. There may be differences in results utilizing bias correction with different data sets. Another point to take into consideration is that GO terms and KEGG pathways are limited and do not provide the whole picture of biological relevance of the enriched CpGs.

Future prospects

This research can serve as a baseline for future studies that want to compare the differences in enriched gene ontology terms and KEGG pathways utilizing enrichment methods with and without bias correction. Researchers could expand on the findings of this study to explore other measures besides DNA methylation to understand the effects of early gestation age.

Additional Links

Supplemental Tables: https://osf.io/5j89d/?view_only=7fcf8a761e47479ba1da715a162dae35 Full R Script: https://mfr.osf.io/render?url=https://osf.io/brfqs/?direct%26mode=render%26action=download%26mode=render

References

Dong, D., Tian, Y., Zheng, S. C., & Teschendorff, A. E. (2019). ebGSEA: An Improved Gene Set Enrichment Analysis method for Epigenome-Wide-Association Studies, Bioinformatics, 35(18), 3514â3516. https://doi.org/10.1093/bioinformatics/btz073

Maksimovic, J., Oshlack, A. & Phipson, B. (2021). Gene Set Enrichment Analysis for Genome-wide DNA Methylation Data. Genome Biology, 22, 173. doi:10.1186/s13059-021-02388-x

Ren, X., Kuan, P. F. (2022, May 1). methylGSA: Gene Set Analysis for DNA Methylation Datasets. METHYLGSA: Gene set analysis for DNA methylation datasets. Retrieved May 11, 2022, from https://bioconductor.org/packages/devel/bioc/vignettes/methylGSA/inst/doc/methylGSA-vignette.html

York, T.P., Latendresse, S. J., Jackson-Cook, C., Lapato, D.M., Moyer, S., Wolen, A. R., Roberson-Nay, R., Do, E. K., Murphy, S.K., Hoyo, C. , Fuemmeler, B.F. & Strauss, J.F. (2020). Replicated Umbilical Cord Blood DNA Methylation Loci Associated with Gestational Age at Birth, Epigenetics, 15(11), 1243-1258. doi: 10.1080/15592294.2020.1767277

Zhang, T., de Waard, A. A., Wuhrer, M., Spaapen, R. M. (1, January 1). The role of glycosphingolipids in immune cell functions. Frontiers. Retrieved May 11, 2022, from https://www.frontiersin.org/articles/10.3389/fimmu.2019.00090/full

