
{ ... }:

{
	programs = {
		light.enable = true;
		bash.promptInit = ''export PS1="\[\e]0;\w\a\]\[\e[32m\]\u@\h \[\e[33m\]\w\[\e[0m\]\n[\$?] "'';
	};
}
