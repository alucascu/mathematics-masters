$pdf_mode = 1;
$out_dir = 'output_files';
$bibtex_use = 1.5;
$view = 'none';
$ENV{'BIBINPUTS'} = '.:' . ($ENV{'BIBINPUTS'} // '');
$clean_ext = 'bbl run.xml synctex.gz';
