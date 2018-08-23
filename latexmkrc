#!/usr/bin/env perl
$latex            = 'platex -interaction=nonstopmode -synctex=1';
$latex_silent     = 'platex -interaction=nonstopmode -synctex=1 -interaction=batchmode';
$bibtex           = 'pbibtex';
$dvipdf           = 'dvipdfmx %O -o %D %S';
$makeindex        = 'touch %D'; #'mendex %O -o %D %S';
$max_repeat       = 5;
$pdf_mode	  = 3; # generates pdf via dvipdfmx

# Prevent latexmk from removing PDF after typeset.
# This enables Skim to chase the update in PDF automatically.
$pvc_view_file_via_temporary = 0;

# Use Skim as a previewer
$pdf_previewer    = "open -ga /Applications/Skim.app";


$cleanup_includes_cusdep_generated = 1;

add_cus_dep('jdx', 'jnd', 0, 'mendexj');
sub mendexj {
  system( "mendex -o \"$_[0].jnd\" \"$_[0].jdx\"" );
}
add_cus_dep('edx', 'end', 0, 'mendexe');
sub mendexe {
  system( "mendex -o \"$_[0].end\" \"$_[0].edx\"" );
}
