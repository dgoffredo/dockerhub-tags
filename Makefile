db.sqlite: table.sql fill_db.sh
	sqlite3 db.sqlite <table.sql
	sh fill_db.sh

fill_db.sh: versions insert.sh
	sed '/^\s*$$/r insert.sh' versions >fill_db.sh

tags: pages/
	cat pages/*.json | jq --raw-output '.results[] | .name' | sort --version-sort | uniq >$@

tags-specific: tags
	grep '^[0-9]\+\.[0-9]\+\.[0-9]\+' $^ >$@

.PHONY: clean
clean:
	rm -f fill_db.sh db.sqlite

