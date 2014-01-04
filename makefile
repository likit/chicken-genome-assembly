quality-trim:
	cd short_reads; \
	for f1 in *_1.fastq; do \
		f2=$$(echo "$$f1" | sed s/_1/_2/); \
		qsub -v left="$$f1",right="$$f2" ../protocol/condetri.sh; \
	done

interleave:
	qsub protocol/interleave.sh

normalize-pe:
	#qsub -v input="SRR105788_1_pe_trim.fastq",savetable="ins356.kh",loadtable="" protocol/normalize_pe.sh
	#qsub -v input="SRR105789_1_pe_trim.fastq",savetable="ins356.kh",loadtable="ins356.kh" protocol/normalize_pe.sh
	#qsub -v input="SRR105792_1_pe_trim.fastq",savetable="ins356.kh",loadtable="ins356.kh" protocol/normalize_pe.sh
	#qsub -v input="SRR105794_1_pe_trim.fastq",savetable="ins356.kh",loadtable="ins356.kh" protocol/normalize_pe.sh
	#qsub -v input="SRR197985_1_pe_trim.fastq",savetable="ins356.kh",loadtable="ins356.kh" protocol/normalize_pe.sh
	#qsub -v input="SRR197986_1_pe_trim.fastq",savetable="ins356.kh",loadtable="ins356.kh" protocol/normalize_pe.sh

	#qsub -v input="SRR197983_1_pe_trim.fastq",savetable="ins206.kh",loadtable="" protocol/normalize_pe.sh

normalize-se:
	qsub -v input="SRR105788_1_trim_unpaired.fastq",savetable="ins356.kh",loadtable="ins356.kh" protocol/normalize_se.sh
	#qsub -v input="SRR105789_1_trim_unpaired.fastq",savetable="ins356.kh",loadtable="ins356.kh" protocol/normalize_se.sh
	#qsub -v input="SRR105792_1_trim_unpaired.fastq",savetable="ins356.kh",loadtable="ins356.kh" protocol/normalize_se.sh
	#qsub -v input="SRR105794_1_trim_unpaired.fastq",savetable="ins356.kh",loadtable="ins356.kh" protocol/normalize_se.sh
	#qsub -v input="SRR197985_1_trim_unpaired.fastq",savetable="ins356.kh",loadtable="ins356.kh" protocol/normalize_se.sh
	#qsub -v input="SRR197986_1_trim_unpaired.fastq",savetable="ins356.kh",loadtable="ins356.kh" protocol/normalize_se.sh
