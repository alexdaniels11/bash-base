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

# New project
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