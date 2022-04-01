
sqlite3 db.sqlite <<END_SQL
insert into Version(
	DockerTag,
	ANSI_COLOR,
	BUG_REPORT_URL,
	HOME_URL,
	ID,
	NAME,
	PRETTY_NAME,
	SUPPORT_URL,
	VERSION,
	VERSION_CODENAME,
	VERSION_ID)
values(
	'$DockerTag',
	'$ANSI_COLOR',
	'$BUG_REPORT_URL',
	'$HOME_URL',
	'$ID',
	'$NAME',
	'$PRETTY_NAME',
	'$SUPPORT_URL',
	'$VERSION',
	'$VERSION_CODENAME',
	'$VERSION_ID');
END_SQL

unset DockerTag
unset ANSI_COLOR
unset BUG_REPORT_URL
unset HOME_URL
unset ID
unset NAME
unset PRETTY_NAME
unset SUPPORT_URL
unset VERSION
unset VERSION_CODENAME
unset VERSION_ID

