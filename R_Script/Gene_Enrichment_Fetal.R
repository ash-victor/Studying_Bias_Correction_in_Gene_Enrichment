# Gene Enrichment for Fetal tissue data 

webshot::install_phantomjs()
webshot::install_phantomjs()
install.packages("magick")

library(webshot)

# Load libraries
library(missMethyl)
library(IlluminaHumanMethylation450kanno.ilmn12.hg19)
library(fs)
library(knitr)
library(kableExtra)



# Load data 
load("/Users/15713/Documents/Project/overlap-bkg-fdr5percent-precise.Rdata")

subverse <- names(tempC)
universe <- names(uni)


# perform gene enrichment test for all genomic regions for enriched GO terms with bias correction 
gst.go <- gometh(sig.cpg   = subverse, 
                 all.cpg    = universe, 
                 collection = "GO",
                 prior.prob = TRUE,
                 plot.bias  = FALSE)

kable(topGSA(gst.go, n = 10))


# Output your enrichment table from your *.R file
knitr::kable(topGSA(gst.go, n = 10),
             caption = "Table 1: Enriched GO terms from GOmeth analysis of differentially methylated CpGs in all genomic regions with bias correction",
             digits = 3,
             align  = c("c", "l", rep("r", 4))) %>% 
  kableExtra::save_kable(file = "Table_1_GO_default_bias_correction.png",
                         bs_theme = "paper")



subverse <- names(tempC)
universe <- names(uni)

# perform gene enrichment test for all genomic regions for enriched GO terms without bias correction 
gst.go <- gometh(sig.cpg   = subverse, 
                 all.cpg    = universe, 
                 collection = "GO",
                 prior.prob = FALSE,
                 plot.bias  = FALSE)

kable(topGSA(gst.go, n = 10))


# Output your enrichment table from your *.R file
knitr::kable(topGSA(gst.go, n = 10),
             caption = "Table 2: Enriched GO terms from GOmeth analysis of differentially methylated CpGs in all genomic regions without bias correction",
             digits = 3,
             align  = c("c", "l", rep("r", 4))) %>% 
  kableExtra::save_kable(file = "Table_2_GO_default_without_bias_correction.png",
                         bs_theme = "paper")


subverse <- names(tempC)
universe <- names(uni)

# perform gene enrichment test for all genomic regions for enriched KEGG with bias correction 
gst.go <- gometh(sig.cpg   = subverse, 
                 all.cpg    = universe, 
                 collection = "KEGG",
                 prior.prob = TRUE,
                 plot.bias  = FALSE)

kable(topGSA(gst.go, n = 10))


# Output your enrichment table from your *.R file
knitr::kable(topGSA(gst.go, n = 10),
             caption = "Table 3:Enriched KEGG pathways from GOmeth analysis of differentially methylated CpGs in all genomic regions with bias correction", 
             digits = 3,
             align  = c("c", "l", rep("r", 4))) %>% 
  kableExtra::save_kable(file = "Table_3_KEGG_default_with_bias_correction.png",
                         bs_theme = "paper")



subverse <- names(tempC)
universe <- names(uni)

# perform gene enrichment test for all genomic regions for enriched KEGG without bias correction 
gst.go <- gometh(sig.cpg   = subverse, 
                 all.cpg    = universe, 
                 collection = "KEGG",
                 prior.prob = FALSE,
                 plot.bias  = FALSE)

kable(topGSA(gst.go, n = 10))


# Output your enrichment table from your *.R file
knitr::kable(topGSA(gst.go, n = 10),
             caption = "Table 4: Enriched KEGG pathways from GOmeth analysis of differentially methylated CpGs in all genomic regions without bias correction",
             digits = 3,
             align  = c("c", "l", rep("r", 4))) %>% 
  kableExtra::save_kable(file = "Table_4_KEGG_default_without_bias_correction.png",
                         bs_theme = "paper")







# GENE ENRICHMENT TESTS FOR THE PROMOTER REGION 

# perform gene enrichment test for promoter regions for enriched GO terms with bias correction 
gst.go <- gometh(sig.cpg   = subverse, 
                 all.cpg    = universe, 
                 collection = "GO",
                 genomic.features = c("TSS200", "TSS1500", "1stExon"),
                 prior.prob = TRUE,
                 plot.bias  = FALSE)

kable(topGSA(gst.go, n = 10))


# Output your enrichment table from your *.R file
knitr::kable(topGSA(gst.go, n = 10),
             caption = "Table 5: Enriched GO terms from GOmeth analysis of differentially methylated CpGs in the promoter region with bias correction",
             digits = 3,
             align  = c("c", "l", rep("r", 4))) %>% 
  kableExtra::save_kable(file = "Table_5_GO_promoter_with_bias_correction.png",
                         bs_theme = "paper")



# perform gene enrichment test for promoter regions for enriched GO terms with bias correction 

subverse <- names(tempC)
universe <- names(uni)

gst.go <- gometh(sig.cpg   = subverse, 
                 all.cpg    = universe, 
                 collection = "GO",
                 genomic.features = c("TSS200", "TSS1500", "1stExon"),
                 prior.prob = FALSE,
                 plot.bias  = FALSE)

kable(topGSA(gst.go, n = 10))


# Output your enrichment table from your *.R file
knitr::kable(topGSA(gst.go, n = 10),
             caption = "Table 6: Enriched GO terms from GOmeth analysis of differentially methylated CpGs in the promoter region without bias correction",
             digits = 3,
             align  = c("c", "l", rep("r", 4))) %>% 
  kableExtra::save_kable(file = "Table_6_GO_promoter_without_bias_correction.png",
                         bs_theme = "paper")


subverse <- names(tempC)
universe <- names(uni)

# perform gene enrichment test for all genomic regions for enriched KEGG with bias correction 
gst.go <- gometh(sig.cpg   = subverse, 
                 all.cpg    = universe, 
                 collection = "KEGG",
                 genomic.features = c("TSS200", "TSS1500", "1stExon"),
                 prior.prob = TRUE,
                 plot.bias  = FALSE)

kable(topGSA(gst.go, n = 10))


# Output your enrichment table from your *.R file
knitr::kable(topGSA(gst.go, n = 10),
             caption = "Table 7:Enriched KEGG pathways from GOmeth analysis of differentially methylated CpGs in the promoter region with bias correction", 
             digits = 3,
             align  = c("c", "l", rep("r", 4))) %>% 
  kableExtra::save_kable(file = "Table_7_KEGG_promoter_with_bias_correction.png",
                         bs_theme = "paper")



subverse <- names(tempC)
universe <- names(uni)

# perform gene enrichment test for all genomic regions for enriched KEGG with bias correction 
gst.go <- gometh(sig.cpg   = subverse, 
                 all.cpg    = universe, 
                 collection = "KEGG",
                 genomic.features = c("TSS200", "TSS1500", "1stExon"),
                 prior.prob = FALSE,
                 plot.bias  = FALSE)

kable(topGSA(gst.go, n = 10))


# Output your enrichment table from your *.R file
knitr::kable(topGSA(gst.go, n = 10),
             caption = "Table 8:Enriched KEGG pathways from GOmeth analysis of differentially methylated CpGs in the promoter region without bias correction", 
             digits = 3,
             align  = c("c", "l", rep("r", 4))) %>% 
  kableExtra::save_kable(file = "Table_8_KEGG_promoter_without_bias_correction.png",
                         bs_theme = "paper")






# GENE ENRICHMENT TESTS FOR THE BODY REGION 

# perform gene enrichment test for the body for enriched GO terms with bias correction 
gst.go <- gometh(sig.cpg   = subverse, 
                 all.cpg    = universe, 
                 collection = "GO",
                 genomic.features = c("Body"),
                 prior.prob = TRUE,
                 plot.bias  = FALSE)

kable(topGSA(gst.go, n = 10))


# Output your enrichment table from your *.R file
knitr::kable(topGSA(gst.go, n = 10),
             caption = "Table 9: Enriched GO terms from GOmeth analysis of differentially methylated CpGs in the body region with bias correction",
             digits = 3,
             align  = c("c", "l", rep("r", 4))) %>% 
  kableExtra::save_kable(file = "Table_9_GO_body_with_bias_correction.png",
                         bs_theme = "paper")


# perform gene enrichment test for the body for enriched GO terms without bias correction 
gst.go <- gometh(sig.cpg   = subverse, 
                 all.cpg    = universe, 
                 collection = "GO",
                 genomic.features = c("Body"),
                 prior.prob = FALSE,
                 plot.bias  = FALSE)

kable(topGSA(gst.go, n = 10))


# Output your enrichment table from your *.R file
knitr::kable(topGSA(gst.go, n = 10),
             caption = "Table 10: Enriched GO terms from GOmeth analysis of differentially methylated CpGs in the body region without bias correction",
             digits = 3,
             align  = c("c", "l", rep("r", 4))) %>% 
  kableExtra::save_kable(file = "Table_10_GO_body_without_bias_correction.png",
                         bs_theme = "paper")



subverse <- names(tempC)
universe <- names(uni)
# perform gene enrichment test for the 5' UTR for enriched KEGG pathways with bias correction 
gst.go <- gometh(sig.cpg   = subverse, 
                 all.cpg    = universe, 
                 collection = "KEGG",
                 genomic.features = c("5'UTR"),
                 prior.prob = TRUE,
                 plot.bias  = FALSE)

kable(topGSA(gst.go, n = 10))


# Output your enrichment table from your *.R file
knitr::kable(topGSA(gst.go, n = 10),
             caption = "Table 11: Enriched KEGG pathways from GOmeth analysis of differentially methylated CpGs in the 5'UTR region with bias correction",
             digits = 3,
             align  = c("c", "l", rep("r", 4))) %>% 
  kableExtra::save_kable(file = "Table_11_KEGG_5_with_bias_correction.png",
                         bs_theme = "paper")



subverse <- names(tempC)
universe <- names(uni)
# perform gene enrichment test for the 5' UTR for enriched KEGG pathways with bias correction 
gst.go <- gometh(sig.cpg   = subverse, 
                 all.cpg    = universe, 
                 collection = "KEGG",
                 genomic.features = c("5'UTR"),
                 prior.prob = FALSE,
                 plot.bias  = FALSE)

kable(topGSA(gst.go, n = 10))


# Output your enrichment table from your *.R file
knitr::kable(topGSA(gst.go, n = 10),
             caption = "Table 12: Enriched KEGG pathways from GOmeth analysis of differentially methylated CpGs in the 5'UTR region without bias correction",
             digits = 3,
             align  = c("c", "l", rep("r", 4))) %>% 
  kableExtra::save_kable(file = "Table_12_KEGG_5_without_bias_correction.png",
                         bs_theme = "paper")


# SUPPLEMENTAL TABLES

subverse <- names(tempC)
universe <- names(uni)

# perform gene enrichment test for the body for enriched KEGG pathways with bias correction 
gst.go <- gometh(sig.cpg   = subverse, 
                 all.cpg    = universe, 
                 collection = "KEGG",
                 genomic.features = c("Body"),
                 prior.prob = TRUE,
                 plot.bias  = FALSE)

kable(topGSA(gst.go, n = 10))


# Output your enrichment table from your *.R file
knitr::kable(topGSA(gst.go, n = 10),
             caption = "Supplemental Table 1: Enriched KEGG pathways from GOmeth analysis of differentially methylated CpGs in the body region with bias correction",
             digits = 3,
             align  = c("c", "l", rep("r", 4))) %>% 
  kableExtra::save_kable(file = "STable_1_KEGG_body_with_bias_correction.png",
                         bs_theme = "paper")


subverse <- names(tempC)
universe <- names(uni)

# perform gene enrichment test for the body for enriched KEGG pathways without bias correction 
gst.go <- gometh(sig.cpg   = subverse, 
                 all.cpg    = universe, 
                 collection = "KEGG",
                 genomic.features = c("Body"),
                 prior.prob = FALSE,
                 plot.bias  = FALSE)

kable(topGSA(gst.go, n = 10))


# Output your enrichment table from your *.R file
knitr::kable(topGSA(gst.go, n = 10),
             caption = "Supplemental Table 2: Enriched KEGG pathways from GOmeth analysis of differentially methylated CpGs in the body region without bias correction",
             digits = 3,
             align  = c("c", "l", rep("r", 4))) %>% 
  kableExtra::save_kable(file = "STable_2_KEGG_body_without_bias_correction.png",
                         bs_theme = "paper")



subverse <- names(tempC)
universe <- names(uni)

# perform gene enrichment test for the body for enriched GO terms with bias correction 
gst.go <- gometh(sig.cpg   = subverse, 
                 all.cpg    = universe, 
                 collection = "GO",
                 genomic.features = c("5'UTR"),
                 prior.prob = TRUE,
                 plot.bias  = FALSE)

kable(topGSA(gst.go, n = 10))


# Output your enrichment table from your *.R file
knitr::kable(topGSA(gst.go, n = 10),
             caption = "Supplemental Table 3: Enriched GO Terms from GOmeth analysis of differentially methylated CpGs in the 5'UTR region with bias correction",
             digits = 3,
             align  = c("c", "l", rep("r", 4))) %>% 
  kableExtra::save_kable(file = "STable_3_GO_5_with_bias_correction.png",
                         bs_theme = "paper")


subverse <- names(tempC)
universe <- names(uni)

# perform gene enrichment test for the 5' UTR for enriched GO terms without bias correction 
gst.go <- gometh(sig.cpg   = subverse, 
                 all.cpg    = universe, 
                 collection = "GO",
                 genomic.features = c("5'UTR"),
                 prior.prob = FALSE,
                 plot.bias  = FALSE)

kable(topGSA(gst.go, n = 10))


# Output your enrichment table from your *.R file
knitr::kable(topGSA(gst.go, n = 10),
             caption = "Supplemental Table 4: Enriched GO Terms from GOmeth analysis of differentially methylated CpGs in the 5' region without bias correction",
             digits = 3,
             align  = c("c", "l", rep("r", 4))) %>% 
  kableExtra::save_kable(file = "STable_4_GO_5_without_bias_correction.png",
                         bs_theme = "paper")



subverse <- names(tempC)
universe <- names(uni)

# perform gene enrichment test for the TSS200 for enriched GO terms with bias correction 
gst.go <- gometh(sig.cpg   = subverse, 
                 all.cpg    = universe, 
                 collection = "GO",
                 genomic.features = c("TSS200"),
                 prior.prob = TRUE,
                 plot.bias  = FALSE)

kable(topGSA(gst.go, n = 10))


# Output your enrichment table from your *.R file
knitr::kable(topGSA(gst.go, n = 10),
             caption = "Supplemental Table 5: Enriched GO Terms from GOmeth analysis of differentially methylated CpGs in the TSS200 with bias correction",
             digits = 3,
             align  = c("c", "l", rep("r", 4))) %>% 
  kableExtra::save_kable(file = "STable_5_GO_TSS200_with_bias_correction.png",
                         bs_theme = "paper")




subverse <- names(tempC)
universe <- names(uni)

# perform gene enrichment test for the TSS200 for enriched GO terms without bias correction 
gst.go <- gometh(sig.cpg   = subverse, 
                 all.cpg    = universe, 
                 collection = "GO",
                 genomic.features = c("TSS200"),
                 prior.prob = FALSE,
                 plot.bias  = FALSE)

kable(topGSA(gst.go, n = 10))


# Output your enrichment table from your *.R file
knitr::kable(topGSA(gst.go, n = 10),
             caption = "Supplemental Table 6: Enriched GO Terms from GOmeth analysis of differentially methylated CpGs in the TSS200 without bias correction",
             digits = 3,
             align  = c("c", "l", rep("r", 4))) %>% 
  kableExtra::save_kable(file = "STable_6_GO_TSS200_without_bias_correction.png",
                         bs_theme = "paper")


subverse <- names(tempC)
universe <- names(uni)

# perform gene enrichment test for the TSS200 for enriched KEGG pathways with bias correction 
gst.go <- gometh(sig.cpg   = subverse, 
                 all.cpg    = universe, 
                 collection = "KEGG",
                 genomic.features = c("TSS200"),
                 prior.prob = TRUE,
                 plot.bias  = FALSE)

kable(topGSA(gst.go, n = 10))


# Output your enrichment table from your *.R file
knitr::kable(topGSA(gst.go, n = 10),
             caption = "Supplemental Table 7: Enriched KEGG pathways from GOmeth analysis of differentially methylated CpGs in the TSS200 with bias correction",
             digits = 3,
             align  = c("c", "l", rep("r", 4))) %>% 
  kableExtra::save_kable(file = "STable_7_KEGG_TSS200_with_bias_correction.png",
                         bs_theme = "paper")


subverse <- names(tempC)
universe <- names(uni)

# perform gene enrichment test for the TSS200 for enriched KEGG pathways without bias correction 
gst.go <- gometh(sig.cpg   = subverse, 
                 all.cpg    = universe, 
                 collection = "KEGG",
                 genomic.features = c("TSS200"),
                 prior.prob = FALSE,
                 plot.bias  = FALSE)

kable(topGSA(gst.go, n = 10))


# Output your enrichment table from your *.R file
knitr::kable(topGSA(gst.go, n = 10),
             caption = "Supplemental Table 8: Enriched KEGG pathways from GOmeth analysis of differentially methylated CpGs in the TSS200 without bias correction",
             digits = 3,
             align  = c("c", "l", rep("r", 4))) %>% 
  kableExtra::save_kable(file = "STable_8_KEGG_TSS200_without_bias_correction.png",
                         bs_theme = "paper")


subverse <- names(tempC)
universe <- names(uni)

# perform gene enrichment test for the 3'UTR for enriched GO terms with bias correction 
gst.go <- gometh(sig.cpg   = subverse, 
                 all.cpg    = universe, 
                 collection = "GO",
                 genomic.features = c("3'UTR"),
                 prior.prob = TRUE,
                 plot.bias  = FALSE)

kable(topGSA(gst.go, n = 10))


# Output your enrichment table from your *.R file
knitr::kable(topGSA(gst.go, n = 10),
             caption = "Supplemental Table 9: Enriched GO terms from GOmeth analysis of differentially methylated CpGs in the 3'UTR with bias correction",
             digits = 3,
             align  = c("c", "l", rep("r", 4))) %>% 
  kableExtra::save_kable(file = "STable_9_GO_3_with_bias_correction.png",
                         bs_theme = "paper")



subverse <- names(tempC)
universe <- names(uni)

# perform gene enrichment test for the 3'UTR for enriched GO terms without bias correction 
gst.go <- gometh(sig.cpg   = subverse, 
                 all.cpg    = universe, 
                 collection = "GO",
                 genomic.features = c("3'UTR"),
                 prior.prob = FALSE,
                 plot.bias  = FALSE)

kable(topGSA(gst.go, n = 10))


# Output your enrichment table from your *.R file
knitr::kable(topGSA(gst.go, n = 10),
             caption = "Supplemental Table 10: Enriched GO terms from GOmeth analysis of differentially methylated CpGs in the 3'UTR without bias correction",
             digits = 3,
             align  = c("c", "l", rep("r", 4))) %>% 
  kableExtra::save_kable(file = "STable_10_GO_3_without_bias_correction.png",
                         bs_theme = "paper")


subverse <- names(tempC)
universe <- names(uni)

# perform gene enrichment test for the 3'UTR for enriched KEGG pathways with bias correction 
gst.go <- gometh(sig.cpg   = subverse, 
                 all.cpg    = universe, 
                 collection = "KEGG",
                 genomic.features = c("3'UTR"),
                 prior.prob = TRUE,
                 plot.bias  = FALSE)

kable(topGSA(gst.go, n = 10))


# Output your enrichment table from your *.R file
knitr::kable(topGSA(gst.go, n = 10),
             caption = "Supplemental Table 11: Enriched KEGG pathways from GOmeth analysis of differentially methylated CpGs in the 3'UTR with bias correction",
             digits = 3,
             align  = c("c", "l", rep("r", 4))) %>% 
  kableExtra::save_kable(file = "STable_11_KEGG_3_with_bias_correction.png",
                         bs_theme = "paper")


subverse <- names(tempC)
universe <- names(uni)

# perform gene enrichment test for the 3'UTR for enriched KEGG pathways without bias correction 
gst.go <- gometh(sig.cpg   = subverse, 
                 all.cpg    = universe, 
                 collection = "KEGG",
                 genomic.features = c("3'UTR"),
                 prior.prob = FALSE,
                 plot.bias  = FALSE)

kable(topGSA(gst.go, n = 10))


# Output your enrichment table from your *.R file
knitr::kable(topGSA(gst.go, n = 10),
             caption = "Supplemental Table 12: Enriched KEGG pathways from GOmeth analysis of differentially methylated CpGs in the 3'UTR without bias correction",
             digits = 3,
             align  = c("c", "l", rep("r", 4))) %>% 
  kableExtra::save_kable(file = "STable_12_KEGG_3_without_bias_correction.png",
                         bs_theme = "paper")


subverse <- names(tempC)
universe <- names(uni)

# perform gene enrichment test for the first exon for enriched GO terms with bias correction 
gst.go <- gometh(sig.cpg   = subverse, 
                 all.cpg    = universe, 
                 collection = "GO",
                 genomic.features = c("1stExon"),
                 prior.prob = TRUE,
                 plot.bias  = FALSE)

kable(topGSA(gst.go, n = 10))


# Output your enrichment table from your *.R file
knitr::kable(topGSA(gst.go, n = 10),
             caption = "Supplemental Table 13: Enriched GO terms from GOmeth analysis of differentially methylated CpGs in the first exon with bias correction",
             digits = 3,
             align  = c("c", "l", rep("r", 4))) %>% 
  kableExtra::save_kable(file = "STable_13_GO_1Exon_with_bias_correction.png",
                         bs_theme = "paper")



subverse <- names(tempC)
universe <- names(uni)

# perform gene enrichment test for the first exon for enriched GO terms without bias correction 
gst.go <- gometh(sig.cpg   = subverse, 
                 all.cpg    = universe, 
                 collection = "GO",
                 genomic.features = c("1stExon"),
                 prior.prob = FALSE,
                 plot.bias  = FALSE)

kable(topGSA(gst.go, n = 10))


# Output your enrichment table from your *.R file
knitr::kable(topGSA(gst.go, n = 10),
             caption = "Supplemental Table 14: Enriched GO terms from GOmeth analysis of differentially methylated CpGs in the first exon without bias correction",
             digits = 3,
             align  = c("c", "l", rep("r", 4))) %>% 
  kableExtra::save_kable(file = "STable_14_GO_1Exon_without_bias_correction.png",
                         bs_theme = "paper")


subverse <- names(tempC)
universe <- names(uni)

# perform gene enrichment test for the first exon for enriched KEGG with bias correction 
gst.go <- gometh(sig.cpg   = subverse, 
                 all.cpg    = universe, 
                 collection = "KEGG",
                 genomic.features = c("1stExon"),
                 prior.prob = TRUE,
                 plot.bias  = FALSE)

kable(topGSA(gst.go, n = 10))


# Output your enrichment table from your *.R file
knitr::kable(topGSA(gst.go, n = 10),
             caption = "Supplemental Table 15: Enriched KEGG pathways from GOmeth analysis of differentially methylated CpGs in the first exon with bias correction",
             digits = 3,
             align  = c("c", "l", rep("r", 4))) %>% 
  kableExtra::save_kable(file = "STable_15_KEGG_1Exon_with_bias_correction.png",
                         bs_theme = "paper")


subverse <- names(tempC)
universe <- names(uni)

# perform gene enrichment test for the first exon for enriched KEGG without bias correction 
gst.go <- gometh(sig.cpg   = subverse, 
                 all.cpg    = universe, 
                 collection = "KEGG",
                 genomic.features = c("1stExon"),
                 prior.prob = FALSE,
                 plot.bias  = FALSE)

kable(topGSA(gst.go, n = 10))


# Output your enrichment table from your *.R file
knitr::kable(topGSA(gst.go, n = 10),
             caption = "Supplemental Table 16: Enriched KEGG pathways from GOmeth analysis of differentially methylated CpGs in the first exon without bias correction",
             digits = 3,
             align  = c("c", "l", rep("r", 4))) %>% 
  kableExtra::save_kable(file = "STable_16_KEGG_1Exon_without_bias_correction.png",
                         bs_theme = "paper")
