.PHONY: build update cleanup unlink

build: cleanup update unlink
	ansible-galaxy collection build

update:
	ansible-galaxy role install -r roles/requirements.yml --force

unlink:
	find roles/ -mindepth 2 -path "*/roles/*" -type l -delete

cleanup:
	rm -f *.tar.gz
