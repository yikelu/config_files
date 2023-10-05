for pkg in $(cat nix-packages.txt)
do
	echo "nix-env -i $pkg"
	nix-env -i $pkg
done
