# julia-powerranges

<div align = "justify">
  
- julia implementation of the recursive hash split instead of the nested list as in Geo Pertea as list takes and stores more memory.
- Original powerRanges from Geo Pertea are here https://github.com/gpertea/PowerRangesR and samples files are the same used in Geo Pertea GTF GENCODE [Gencode](https://www.gencodegenes.org/human/release_43lift37.html)
- i coded using the recursive split so that it becomes even faster and type declaration for linking the gene to transcript. Entire human genome annotation parsed in less than 5 minutes. visualGTF, which will give you the files with the Int64 parsed length estimated for the annotations and Makie plots. 
- to use this powerrange. 
```
include julia-powerranges.jl
```

Gaurav 

