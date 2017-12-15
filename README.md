# bash-base
Base bash script setup with aliases and a simple shell script function

### New .bash_aliases
```shell
cd
touch .bash_aliases
```

### Include New .bash_aliases in .bash_profile
```shell
vim .bash_profile
```
paste this in .bash_profile
```shell
source ~/.bash_aliases
```

### Add Aliases to .bash_aliases
```shell
# Git alias commands
alias gushom='git push origin master'
alias gull='git pull'
alias gush='git push'
alias gadd='git add .'
alias gcm='git commit -m'
alias gca='git commit -a'
alias gb='git branch'
alias gs='git status'
alias gco='git checkout'

# Git alias Muli-commands
alias gaddcm='git add .;git commit -m'
alias gpp='git pull; git push'
```

### Add Function to .bash_aliases
```shell
newProject() {
	mkdir $1;
	cd $1; mkdir css js img;
	touch index.html; (echo '
<!DOCTYPE html>
<html>
<head>

	<title>'$1'</title>

	<!-- Current project CSS file -->
	<link rel="stylesheet" type="text/css" href="css/main.css">

</head>
<body>

	<!-- '$1' Content goes here -->
	
	<!-- Current project JS file -->
	<script type="text/javascript" src="js/main.js"></script>
</body>
</html>
	') >> index.html
	cd css; touch main.css; cd ../;
	cd js; touch main.js; cd ../;
}
```

### Run Function in .bash_aliases from Terminal
```shell
newProject whatever-the-project-name-is
```
