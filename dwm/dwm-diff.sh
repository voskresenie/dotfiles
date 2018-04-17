ln -s ../dwm/src/dwm-6.1/ a
ln -s ../dwm-grid/src/dwm-6.1/ b
diff -aur a/ b/ > dwm-grid-6.1.diff
diff -aur a/ b/ > ~/dotfiles/dwm/dwm-grid-6.1.diff
rm b

ln -s ../dwm-svarog/src/dwm-6.1/ b
diff -aur a/ b/ -x 'config.h' -x 'dwm' > dwm-svarog-6.1.diff
diff -aur a/ b/ -x 'config.h' -x 'dwm' > ~/dotfiles/dwm/dwm-svarog-6.1.diff
rm a b

updpkgsums
makepkg -fi
