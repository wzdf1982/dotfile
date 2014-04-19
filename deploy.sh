cp -fr .vim ../
cp .bash_profile ../
cp .tmux.conf ../

mkdir ../.janus
cd ../.janus

git clone https://github.com/vim-scripts/DeleteTrailingWhitespace
git clone https://github.com/fholgado/minibufexpl.vim
git clone https://github.com/Townk/vim-autoclose
git clone https://github.com/thoughtbot/vim-rspec
