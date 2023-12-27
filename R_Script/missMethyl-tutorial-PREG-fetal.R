




library(missMethyl)
library(IlluminaHumanMethylation450kanno.ilmn12.hg19)
library(fs)




preg.folder <- "/Users/tpyork/Dropbox/projects/fetal-preg"


# from 10.0_fetal-overlap-enrichment.R
load(path(preg.folder, "data/overlap-bkg-fdr5percent-precise.Rdata"))


# get significant CpGs and CpG universe
subverse <- names(tempC)

universe <- names(uni)


check <- getMappedEntrezIDs(sig.cpg    = subverse, 
                            all.cpg    = universe,
                            array.type = "450K")

names(check)   # see ?getMappedEntrezIDs
length(check$sig.eg)
length(check$universe)
check$freq
skimr::skim(check$freq)
check$equiv

# bias correction applied; check first CpG site
check$freq[1]
check$equiv[1]


# perform gene enrichment test
gst.go <- gometh(sig.cpg   = subverse, 
                all.cpg    = universe, 
                collection = "GO",
                prior.prob = FALSE,
                plot.bias  = TRUE)

topGSA(gst.go, n = 10)




# perform KEGG enrichmend test
gst.kegg <- gometh(sig.cpg    = subverse, 
                   all.cpg    = universe, 
                   collection = "KEGG",
                   plot.bias  = TRUE)

topGSA(gst.kegg, n = 10)



