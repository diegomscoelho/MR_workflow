/*
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    CONFIG FILES
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
*/

//data = "/home/jamorim/scratch/data/meta_brain"
//outcome = "/storages/acari/julia.amorim/qtls/SDEP_rsID.txt"
psam_url = "www.dropbox.com/s/6ppo144ikdzery5/phase3_corrected.psam"
pgen_url = "www.dropbox.com/s/y6ytfoybz48dc0u/all_phase3.pgen.zst"
pvar_url = "www.dropbox.com/s/odlexvo8fummcvt/all_phase3.pvar.zst"

/*
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    IMPORT NF-CORE MODULES/SUBWORKFLOWS
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
*/


//include { TWOSAMPLEMR } from "./modules/local/twosamplemr/tsmr.nf"
//include { COLOC } from "./modules/local/coloc/coloc.nf"
//include { GCTA_GSMR } from "./modules/local/gsmr/gsmr.nf"
//include { RESULT } from "./modules/local/merge_results/results.nf"
//include { PREPROCESS } from "./modules/local/preprocess_fstats/preprocess.nf"
include { PROCESS_REF } from "./modules/local/process_ref/process_ref.nf"
//include { PARSE_2SMR } from "./modules/local/parse_2smr/parse_2smr.nf"
//include { GSMR_FILTER } from "./modules/local/gsmr_filter/gsmr_filter.nf"
//include { GENE_LIST } from "./modules/local/gene_list/gene_list.nf"


/*
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    RUN MAIN WORKFLOW
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
*/


workflow {

    PROCESS_REF (
	    psam_url,
	    pgen_url,
	    pvar_url
	    )

//    PREPROCESS (
//	    data
//	    )
//
//    GCTA_GSMR (
//	    PREPROCESS.out.preprocess_out,
//            ref_folder,
//	    outcome
//	    )
//
//    GSMR_FILTER (
//	    GCTA_GSMR.out.gsmr_res.collect{}
//concatena os arquivos, da como entrada pra script R
//cria novo modulo que pega a lista de genes e manda para uma nova pasta
//	    )
//
//    GENE_LIST (
//	    GSMR_FILTER.out.genelist
//	    )
//
//    TWOSAMPLEMR (
//            data_filter,
//            outcome,
//            ref_folder
//            )
//
//    COLOC (
//	    data_filter,
//	    outcome
//	    )
//
//    PARSE_2SMR (
//	    TWOSAMPLEMR.out.results_2smr
//	    )
//
//    RESULT (
//	    GCTA_GSMR.out.results_gsmr,
//	    COLOC.out.results_coloc,
//	    PARSE_2SMR.out.results_steiger,
//	    PARSE_2SMR.out.results_pleiotropy,
//	    PARSE_2SMR.out.results_metrics,
//	    PARSE_2SMR.out.results_heterogeneity
//	    )
	    

}