files=fse-dashboard

publish: public/$(files:=.html)

public/%.html: %.Rmd
	Rscript -e 'rmarkdown::render("$<", output_dir="$(dir $@)")'
