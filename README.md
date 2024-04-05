# fastqc-minerva-smk

A snakemake workflow for running fastqc on Minerva.

### quick start

Clone and install snakemake (with conda environment)

```bash
conda env create --file environment.yaml
```

Edit the `config/samples.tsv` file to point to your fastq files:

```
sample	group	R1_fastq	R2_fastq
"<sample-1>"	"<sample-group>"	"<path-to-R1-fastq>"	"<path-to-R2-fastq>"
"<sample-1>"	"<sample-group>"	"<path-to-R1-fastq>"	"<path-to-R2-fastq>"
```

Preview and run snakemake (see [documentation](https://snakemake.readthedocs.io/en/stable/) for full list of options)

```bash
# preview
snakemake --dry-run

# run on cluster using --profile with conda envs
snakemake \
  --jobs <n> \
  --use-conda \
  --profile <cluster-profile> \
  --keep-going \
  --conda-prefix <path-to-conda-envs-dir>
```

See [this](https://github.com/Snakemake-Profiles/doc) page for further documentation on Snakemake profiles. 
