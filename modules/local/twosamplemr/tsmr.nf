process TWOSAMPLEMR {
  """
  Run TwoSampleMR on sumstats data
  """

  label 'process_medium'
  label 'ERRO'

  container "${ workflow.containerEngine == 'singularity' ? 'docker://juliaapolonio/julia_2smr:latest':
            'docker.io/julia_2smr:latest' }"

  input:
    each(exposure)
    path(outcome)
    path(reference)

  output:
    path("*md")         , emit: report
    path("*csv")        , emit: data
    path("figure")      , emit: figures
    path("*png")        , emit: effplot

  when:
  task.ext.when == null || task.ext.when

  script:
  """
  run_twosamplemr.R \\
    $exposure \\
    $outcome \\
    $reference
  """
}
