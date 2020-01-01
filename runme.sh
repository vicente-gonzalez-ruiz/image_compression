export BIBINPUTS=":.:/home/vruiz/bibs/:"
make clean
make index.pdf
rm -f citations
grep citation ~/LOCO/index.aux >> citations
grep citation ~/JPEG/index.aux >> citations
grep citation ~/JPEG2000/index.aux >> citations
grep citation ~/PNG/index.aux >> citations
cat citations >> index.aux
bibtex index
make index.html

