

public/index.html: fse-dashboard.Rmd
	Rscript -e 'rmarkdown::render("$<", output_dir="$(dir $@)", output_file="$(notdir $@)")'
