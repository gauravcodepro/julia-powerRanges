#! /usr/bin/env julia
# Author Gaurav
# Universitat Potsdam
# Date 2026-6-30
# total time take in writing code - 40 minutes.
# a faster GTF annotation linker by implmenting the recursive hash split instead of the nested contaminated list algorithm
# list stores and uses more memory than the recurisve iteration.
function powerGTF(gtfannotationfile)
    geneLocus = String[]
    geneName = String[]
    geneStart = String[]
    geneEnd = String[]
    geneScore = String[]
    geneStrand = String[]
    genePhase = String[]
    geneID = String[]
    geneName = String[]
    for i in readlines(gtfannotationfile)
      if split(line, r";|\t|\"")[3] == "gene"
        push!(geneLocus, split(line, r";|\t|\"")[1])
        push!(geneName, split(line, r";|\t|\"")[2])
        push!(geneStart, split(line, r";|\t|\"")[4])
        push!(geneEnd, split(line, r";|\t|\"")[5])
        push!(geneScore, split(line, r";|\t|\"")[6])
        push!(geneStrand, split(line, r";|\t|\"")[7])
        push!(genePhase, split(line, r";|\t|\"")[8])
        push!(geneID, split(line, r";|\t|\"")[10])
        push!(geneName, split(line, r";|\t|\"")[16])
      end
    end
    @assert length(geneLocus) == length(geneName) == length(geneStart) == length(geneEnd) == length(geneScore) \
                                     == length(geneStrand) == length(genePhase) == length(geneID) == length(geneName)
    for i in 1:length(geneLocus)
      write("gffPower, geneLocus[i], "\t", geneName[i], "\t", geneStart[i], geneEnd[i], "\t", geneScore[i],\
                                   "\t", geneStrand[i], "\t", genePhase[i], "\t", geneID[i], "\t", geneName[i], "\n")
    end
end

function powerexonGTF(gtfannotationfile)
    exonLocus = String[]
    exonName = String[]
    exonStart = String[]
    exonEnd = String[]
    exonScore = String[]
    exonStrand = String[]
    exonPhase = String[]
    geneID = String[]
    transcriptID = String[]
    geneName = String[]
    for i in readlines(gtfannotationfile)
      if split(line, r";|\t|\"")[3] == "exon"
        push!(exonLocus, split(line, r";|\t|\"")[1])
        push!(exonName, split(line, r";|\t|\"")[2])
        push!(exonStart, split(line, r";|\t|\"")[4])
        push!(exonEnd, split(line, r";|\t|\"")[5])
        push!(exonScore, split(line, r";|\t|\"")[6])
        push!(exonStrand, split(line, r";|\t|\"")[7])
        push!(exonPhase, split(line, r";|\t|\"")[8])
        push!(geneID, split(line, r";|\t|\"")[10])
        push!(transcriptID, split(line, r";|\t|\"")[13])
        push!(geneName, split(line, r";|\t|\"")[16])
      end
    end
    @assert length(exonLocus) == length(exonName) == length(exonStart) == length(exonEnd) \
                     == length(exonScore) == length(exonStrand) == length(exonPhase) == length(exonID) == length(exonName)
    for i in 1:length(exonLocus)
      write("gffPowerexon, exonLocus[i], "\t", exonName[i], "\t", exonStart[i], exonEnd[i], "\t", exonScore[i], \
                             "\t", exonStrand[i], "\t", exonPhase[i], "\t", geneID[i], "\t", transcriptID, "\t", geneName[i], "\n")
    end
end
        
function powerCDSGTF(gtfannotationfile)
    cdsLocus = String[]
    cdsName = String[]
    cdsStart = String[]
    cdsEnd = String[]
    cdsScore = String[]
    cdsStrand = String[]
    cdsPhase = String[]
    geneID = String[]
    transcriptID = String[]
    geneName = String[]
    for i in readlines(gtfannotationfile)
      if split(line, r";|\t|\"")[3] == "CDS"
        push!(cdsLocus, split(line, r";|\t|\"")[1])
        push!(cdsName, split(line, r";|\t|\"")[2])
        push!(cdsStart, split(line, r";|\t|\"")[4])
        push!(cdsEnd, split(line, r";|\t|\"")[5])
        push!(cdsScore, split(line, r";|\t|\"")[6])
        push!(cdsStrand, split(line, r";|\t|\"")[7])
        push!(cdsPhase, split(line, r";|\t|\"")[8])
        push!(cdsID, split(line, r";|\t|\"")[10])
        push!(transcriptID, split(line, r";|\t|\"")[13])
        push!(geneName, split(line, r";|\t|\"")[16])
      end
    end
    @assert length(cdsLocus) == length(cdsName) == length(cdsStart) == length(cdsEnd) == length(cdsScore) \
                                              == length(cdsStrand) == length(cdsPhase) == length(cdsID) == length(cdsName)
    for i in 1:length(cdsLocus)
      write("gffPowerCDS, cdsLocus[i], "\t", cdsName[i], "\t", cdsStart[i], cdsEnd[i], "\t", cdsScore[i], \
                                  "\t", cdsStrand[i], "\t", cdsPhase[i], "\t", geneID[i], "\t", transcriptID, "\t", geneName[i], "\n")
    end
end

        
function powerUTRGTF(gtfannotationfile)
    UTRLocus = String[]
    UTRName = String[]
    UTRStart = String[]
    UTREnd = String[]
    UTRScore = String[]
    UTRStrand = String[]
    UTRPhase = String[]
    geneID = String[]
    transcriptID = String[]
    geneName = String[]
    for i in readlines(gtfannotationfile)
      if split(line, r";|\t|\"")[3] == "UTR"
        push!(UTRLocus, split(line, r";|\t|\"")[1])
        push!(UTRName, split(line, r";|\t|\"")[2])
        push!(UTRStart, split(line, r";|\t|\"")[4])
        push!(UTREnd, split(line, r";|\t|\"")[5])
        push!(UTRScore, split(line, r";|\t|\"")[6])
        push!(UTRStrand, split(line, r";|\t|\"")[7])
        push!(UTRPhase, split(line, r";|\t|\"")[8])
        push!(geneID, split(line, r";|\t|\"")[10])
        push!(transcriptID, split(line, r";|\t|\"")[13])
        push!(geneName, split(line, r";|\t|\"")[16])
      end
    end
    @assert length(UTRLocus) == length(UTRName) == length(UTRStart) == length(UTREnd) == length(UTRScore) \
                                       == length(UTRStrand) == length(UTRPhase) == length(UTRID) == length(UTRName)
    for i in 1:length(UTRLocus)
      write("gffPowerUTR, UTRLocus[i], "\t", UTRName[i], "\t", UTRStart[i], UTREnd[i], "\t", UTRScore[i], \
                                      "\t", UTRStrand[i], "\t", UTRPhase[i], "\t", UTRID[i], "\t", transcriptID, "\t", geneName[i], "\n")
    end
end
        
function linkgeneTranscript(gtfannotationfile)
  geneTranscriptID = Dict(String, String)()
  for i in readlines(gtfannotationfile)
    if split(line, r";|\t|\"")[3] == "UTR"
      geneTranscriptID[split(line, r";|\t|\"")[10]] = split(line, r";|\t|\"")[13]
    end
end
end
