#!/bin/bash
#
# NAME:
#	rpmlist.sh
#
# DESCRIPTION:
#	Create RPM Packages List (Format : CSV)
#
# USAGE:
#   ./rpmlist.sh
#
# CHANGELOG:
#
#	2007-08-02  Kouhei <mkouhei at palmtb.net>
#       * Version 1.1
#       * added "LICENSE".
#       * "no package requires hoge" is undisplayed.
#
#	2007-02-01  Kouhei <mkouhei at palmtb.net>
#       * Version 1.0
#============================================================================

unset LANG

TMPFILE1=tmp1
TMPFILE2=tmp2
RPMLIST=rpm-list-${HOSTNAME}.csv

rpm -qa --qf "%{GROUP}@%{NAME}@%{LICENSE}@%{VERSION}-%{RELEASE}@%{BUILDTIME:date}@%{INSTALLTIME:date}@%{SOURCERPM}@%{SUMMARY}\n" |\
 sed 's/,/ /g' | sed 's/@/,/g' > $TMPFILE1

awk -F"," '{ print $2 }' $TMPFILE1 | while read i
do
	rpm -q --whatrequires $i 2>/dev/null | tr -s '\n' ','
	echo
done > $TMPFILE2

echo "Group,Name,License,Version-Release,Build Time,Install Time,SourceRPM,Summary,Dependency" > $RPMLIST
paste -d "," $TMPFILE1 $TMPFILE2 | sort  >> $RPMLIST

rm -f $TMPFILE1 $TMPFILE2

exit 0
