#echo "NOTE: For reinstalling/updating, duplicate entries will exist unless you should first all Adept* entries from ~/.vimrc"

mkdir -p ~/.vim/ftdetect
mkdir -p ~/.vim/syntax
cp ./ftdetect/adept.vim ~/.vim/ftdetect/adept.vim
cp ./syntax/adept.vim ~/.vim/syntax/adept.vim

#echo "highlight AdeptPolymorph ctermfg=green guifg=#00FA9A" >> ~/.vimrc
#echo "highlight AdeptPolycount ctermfg=green guifg=#FF69B4" >> ~/.vimrc

