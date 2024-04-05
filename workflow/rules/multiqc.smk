rule multiqc:
    input:
        expand("results/fastqc/{sample}_{read}.html", sample=samples.index, read = ["R1", "R2"])
    output:
        "results/multiqc/multiqc-report.html"
    conda: 
        "../envs/multiqc.yaml"
    shell:
        """
        multiqc \
        --no-data-dir \
        --filename {output} \
        results/
        """