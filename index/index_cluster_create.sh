#!/bin/sh

#
# cluster all tables
#

cd `dirname $0` && . ./Configuration

cat - <<EOSQL | ${PG_DBUTILS}/bin/doisql.csh $0

CLUSTER snp.SNP_Accession USING SNP_Accession_idx_clustered;
CLUSTER snp.SNP_ConsensusSnp_Marker USING SNP_ConsensusSnp_Marker_idx_clustered;
CLUSTER snp.SNP_ConsensusSnp_StrainAllele USING SNP_ConsensusSnp_StrainAllele_idx_clustered;
CLUSTER snp.SNP_Coord_Cache USING SNP_Coord_Cache_idx_clustered;
CLUSTER snp.SNP_Flank USING SNP_Flank_idx_clustered;
CLUSTER snp.SNP_Strain USING SNP_Strain_idx_clustered;
CLUSTER snp.SNP_SubSnp_StrainAllele USING SNP_SubSnp_StrainAllele_idx_clustered;
CLUSTER snp.SNP_SubSnp USING SNP_SubSnp_idx_clustered;
CLUSTER snp.SNP_Transcript_Protein USING SNP_Transcript_Protein_idx_clustered;

EOSQL
