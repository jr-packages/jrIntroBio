combine:
	Rscript -e 'rmarkdown::render("vignettes/practical1.Rmd")'
	Rscript -e 'rmarkdown::render("vignettes/practical2.Rmd")'
	Rscript -e 'rmarkdown::render("vignettes/practical3.Rmd")'
	Rscript -e 'rmarkdown::render("vignettes/practical4.Rmd")'
	cd vignettes && \
		pdftk practical1.pdf practical2.pdf practical3.pdf practical4.pdf output introbio_practicals.pdf

clean:
	cd vignettes && rm -fv practical?.pdf introbio_practicals.pdf practical?.tex
