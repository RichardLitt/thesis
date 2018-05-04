Notes:

- Add footnotes into the Table refs for the two tables that come from websites
- Look for _any_ paper on Syllabics or Cree languages and open source
  - There's a few. There's a new chapter on Cree fonts. But there's not really a lot.
- Talk about property rights and intellectual rights, Demsetz 1969
- Use a citation style that has DOIs

### Final checks

Use these with Atom to show what is replaced easier.

```sh
# Check that all citations are used
checkcites --unused *.aux
# Remove smart quotes
ag "’"
# Decap section headers
ag "section{.*}" *.tex
# Decapitalize acronyms in references
# TODO but probably not worth doing all of these
ag "[A-Z][A-Z]" references.bib | ag -v "(title|CCURL|ACM|CoRR|IEEE|UNESCO|USA|FOSE|WPEL|III|NEALT|IATED|CA|DS)"
# Check its and it's
ag "it's" *.tex
# Remove negative contractions
ag "n't" *.tex
ag "I'(m|ll)" *.tex
ag "[a-zA-Z]'ve"
ag "we " # Lots of false positives in quotes
ag "etc." # Should be &c.
# Check all URLs have last accessed
ag -o "}{(http.+?)}}" | ag -v "last"
# Check all left-handed single quotes
ag " '[a-zA-Z]"
# Clear all images
# https://tex.stackexchange.com/questions/125612/warning-pdflatex-libpng-warning-iccp-known-incorrect-srgb-profile
cd img
for f in $(find . -type f -name "*.png")
do
echo "Processing $f ..."
convert $f -strip $f
done
cd ..
# Check for any words which need the diaeresis
ag "(aioli|Bootes|Bronte|cacoepistic|caique|caiquejee|Citroen|continuum|cooccurr|cooccurrence|coop|cooped|cooperate|cooperation|cooperative|cooperator|coops|coopt|coopted|coopting|cooption|coordinate|coordinated|coordinateing|coordination|coordinator|coordinators|coossify|Creusa|dais|demosaicking|faience|faroelite|haliæetos|hyperoodon|intraatomic|langue d'oil|Laocoon|Moet|monoideism|mosaic|naif|naive|naiveté|Noel|noone|oocyte|oology|opium|palaeooceanography|paleooceanography|panzooty|preeminent|preeminently|preempt|preemption|preemptive|prooxidant|reelect|reelected|reelecting|reemergence|reenact|reenter|reentered|reentering|reestablish|reestablished|reestablishing|reexamine|reinvent|residuum|Thais|vacuum|Zaire|Zoe|zoological|zoology)"
# All footnotes should go after periods and commas, not before, unless in a list
# Meaning that it goes before semicolons. This should only bring up \nolinkurl false positives, which are removed.
ag '}}(?![;\\\) \n])' *.tex | ag -v "(nolinkurl)"
# Make sure you didn't forget an n
ag ' a [aeiou]'
```