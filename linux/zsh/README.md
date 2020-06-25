# Install zsh

sudo apt install zsh

# Install oh-my-zsh

#### via curl

```shell
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```
or

#### via wget

```shell
sh -c "$(wget -O- https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

# Install some plugins

- zsh-syntax-highlighting
```
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting 
```

- zsh-autosuggestions
```
git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
```

- fzf
```
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && ~/.fzf/install
```

# Set the plugins

config file: `~/.zshrc`

```
plugins=(
	git
	dnf
	helm
	docker
	kubectl
	minikube
	git-auto-fetch
	docker-compose
	zsh-autosuggestions
	zsh-syntax-highlighting
)
```
