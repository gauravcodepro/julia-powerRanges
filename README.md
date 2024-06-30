# julia-powerRanges

- julia implementation of the recursive hash split instead of the nested list as in Geo Pertea as list takes and stores more memory.
- original powerRanges from Geo Pertea are here https://github.com/gpertea/PowerRangesR
- i coded using the recursive split so that it becomes even faster and a linked Dict{String, String}() type declaration for linking the gene to transcript.
- total time take in writing code - 40 minutes.
- samples files are the same used in Geo Pertea GTF GENCODE [Gencode](https://www.gencodegenes.org/human/release_43lift37.html)
- entire human genome annotation in less than 5 minutes parsed.

```
include julia-powerranges.jl
```

Gaurav \
Academic Staff Member \
Bioinformatics \
Institute for Biochemistry and Biology \
University of Potsdam \
Potsdam,Germany


