/*
$ grep '^[A-Z_]\+=' versions | sed 's,=.*,,' | sort | uniq
ANSI_COLOR
BUG_REPORT_URL
HOME_URL
ID
NAME
PRETTY_NAME
SUPPORT_URL
VERSION
VERSION_CODENAME
VERSION_ID
*/

create table if not exists Version(
	DockerTag text,
	ANSI_COLOR text,
	BUG_REPORT_URL text,
	HOME_URL text,
	ID text,
	NAME text,
	PRETTY_NAME text,
	SUPPORT_URL text,
	VERSION text,
	VERSION_CODENAME text,
	VERSION_ID text);
