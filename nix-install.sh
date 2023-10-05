mkdir ~/bin
echo 'export PATH=$HOME/bin:$PATH' >> ~/.bashrc

mkdir tmp && pushd tmp

wget https://github.com/nix-community/nix-user-chroot/releases/download/1.2.2/nix-user-chroot-bin-1.2.2-x86_64-unknown-linux-musl
mv nix-user-chroot-bin-1.2.2-x86_64-unknown-linux-musl ~/bin/nix-user-chroot
chmod a+x ~/bin/nix-user-chroot

mkdir -m 0755 ~/.nix
nix-user-chroot ~/.nix bash -c "curl -L https://nixos.org/nix/install | bash"

popd

cp nix-bash.sh ~/bin/
