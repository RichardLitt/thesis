Notes:

- Check all footnotes for date accessed
- Add footnotes into the Table refs for the two tables that come from websites
- Look for _any_ paper on Syllabics or Cree languages and open source
  - There's a few. There's a new chapter on Cree fonts. But there's not really a lot.
- Talk about property rights and intellectual rights, Demsetz 1969
- Use a citation style that has DOIs

### Final checks

```sh
# Remove all contractions
ag " it's "
# Check all URLs have last accessed
ag -o "}{(http.+?)}}" | ag -v "accessed"
# Check all left-handed single quotes
ag " '"  
# Clear all images  
# https://tex.stackexchange.com/questions/125612/warning-pdflatex-libpng-warning-iccp-known-incorrect-srgb-profile
cd img  
for f in $(find . -type f -name "*.png")
do
echo "Processing $f ..."
convert $f -strip $f
done  
cd ..
```