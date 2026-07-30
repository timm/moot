# vim: ts=2 sw=2 sts=2 et :
APP    := fairnez
PKG    := python3 gawk neovim tmux

## propose ----------------------------------------------------

propose: ## scan CSVs, write proposals.txt of protected candidates
	@python3 protect.py propose

## apply ------------------------------------------------------

apply: ## read proposals.txt, add '~' suffix to approved cols (idempotent)
	@python3 protect.py apply

## protect ----------------------------------------------------

protect: ## propose then open proposals.txt for editing
	@python3 protect.py propose
	@printf '\nedit proposals.txt to approve/reject, then: make apply\n' 
