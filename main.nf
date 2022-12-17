nextflow.enable.dsl=2

include { gunzip_1 } from './modules/gunzip_1/module.nf'

workflow {
input1 = Channel.fromPath(params.gunzip_1.any_file)
gunzip_1(input1)
}
