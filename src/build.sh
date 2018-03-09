# Cleanup folder
rm _assets\\ebook\\ebook.css
rm _assets\\ebook\\epub.css
rm _assets\\ebook\\mobi.css
rm _assets\\ebook\\pdf.css

rm _assets\\website\\gitbook.js
rm _assets\\website\\theme.js
rm _assets\\website\\style.css


# Compile JS
browserify src/js/core/index.js | uglifyjs -mc > _assets/website/gitbook.js 
browserify src/js/theme/index.js | uglifyjs -mc > _assets/website/theme.js

# Compile Website CSS
lessc  src\\less\\website.less _assets\\website\\style.css > lessc.txt 2> lesscerr.txt

# Compile eBook CSS
lessc  src\\less\\ebook.less _assets\\ebook\\ebook.css
lessc  src\\less\\pdf.less _assets\\ebook\\pdf.css
lessc  src\\less\\mobi.less _assets\\ebook\\mobi.css
lessc  src\\less\\epub.less _assets\\ebook\\epub.css