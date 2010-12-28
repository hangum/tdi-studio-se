# This file is auto-generated by the Perl DateTime Suite time zone
# code generator (0.07) This code generator comes with the
# DateTime::TimeZone module distribution in the tools/ directory

#
# Generated from /tmp/GaPAi6WTRf/northamerica.  Olson data version 2009c
#
# Do not edit this file directly.
#
package DateTime::TimeZone::America::Port_au_Prince;

use strict;

use Class::Singleton;
use DateTime::TimeZone;
use DateTime::TimeZone::OlsonDB;

@DateTime::TimeZone::America::Port_au_Prince::ISA = ( 'Class::Singleton', 'DateTime::TimeZone' );

my $spans =
[
    [
DateTime::TimeZone::NEG_INFINITY,
59611178960,
DateTime::TimeZone::NEG_INFINITY,
59611161600,
-17360,
0,
'LMT'
    ],
    [
59611178960,
60465199740,
59611161620,
60465182400,
-17340,
0,
'PPMT'
    ],
    [
60465199740,
62556901200,
60465181740,
62556883200,
-18000,
0,
'EST'
    ],
    [
62556901200,
62572017600,
62556886800,
62572003200,
-14400,
1,
'EDT'
    ],
    [
62572017600,
62587746000,
62571999600,
62587728000,
-18000,
0,
'EST'
    ],
    [
62587746000,
62603467200,
62587731600,
62603452800,
-14400,
1,
'EDT'
    ],
    [
62603467200,
62619195600,
62603449200,
62619177600,
-18000,
0,
'EST'
    ],
    [
62619195600,
62634916800,
62619181200,
62634902400,
-14400,
1,
'EDT'
    ],
    [
62634916800,
62650645200,
62634898800,
62650627200,
-18000,
0,
'EST'
    ],
    [
62650645200,
62666366400,
62650630800,
62666352000,
-14400,
1,
'EDT'
    ],
    [
62666366400,
62682094800,
62666348400,
62682076800,
-18000,
0,
'EST'
    ],
    [
62682094800,
62697816000,
62682080400,
62697801600,
-14400,
1,
'EDT'
    ],
    [
62697816000,
62711733600,
62697798000,
62711715600,
-18000,
0,
'EST'
    ],
    [
62711733600,
62729877600,
62711719200,
62729863200,
-14400,
1,
'EDT'
    ],
    [
62729877600,
62743183200,
62729859600,
62743165200,
-18000,
0,
'EST'
    ],
    [
62743183200,
62761327200,
62743168800,
62761312800,
-14400,
1,
'EDT'
    ],
    [
62761327200,
62774632800,
62761309200,
62774614800,
-18000,
0,
'EST'
    ],
    [
62774632800,
62792776800,
62774618400,
62792762400,
-14400,
1,
'EDT'
    ],
    [
62792776800,
62806687200,
62792758800,
62806669200,
-18000,
0,
'EST'
    ],
    [
62806687200,
62824226400,
62806672800,
62824212000,
-14400,
1,
'EDT'
    ],
    [
62824226400,
62838136800,
62824208400,
62838118800,
-18000,
0,
'EST'
    ],
    [
62838136800,
62855676000,
62838122400,
62855661600,
-14400,
1,
'EDT'
    ],
    [
62855676000,
62869586400,
62855658000,
62869568400,
-18000,
0,
'EST'
    ],
    [
62869586400,
62887730400,
62869572000,
62887716000,
-14400,
1,
'EDT'
    ],
    [
62887730400,
62901036000,
62887712400,
62901018000,
-18000,
0,
'EST'
    ],
    [
62901036000,
62919180000,
62901021600,
62919165600,
-14400,
1,
'EDT'
    ],
    [
62919180000,
62932485600,
62919162000,
62932467600,
-18000,
0,
'EST'
    ],
    [
62932485600,
62950629600,
62932471200,
62950615200,
-14400,
1,
'EDT'
    ],
    [
62950629600,
62964540000,
62950611600,
62964522000,
-18000,
0,
'EST'
    ],
    [
62964540000,
62982079200,
62964525600,
62982064800,
-14400,
1,
'EDT'
    ],
    [
62982079200,
62995989600,
62982061200,
62995971600,
-18000,
0,
'EST'
    ],
    [
62995989600,
63013528800,
62995975200,
63013514400,
-14400,
1,
'EDT'
    ],
    [
63013528800,
63248187600,
63013510800,
63248169600,
-18000,
0,
'EST'
    ],
    [
63248187600,
63266328000,
63248173200,
63266313600,
-14400,
1,
'EDT'
    ],
    [
63266328000,
63279637200,
63266310000,
63279619200,
-18000,
0,
'EST'
    ],
    [
63279637200,
63297777600,
63279622800,
63297763200,
-14400,
1,
'EDT'
    ],
    [
63297777600,
DateTime::TimeZone::INFINITY,
63297759600,
DateTime::TimeZone::INFINITY,
-18000,
0,
'EST'
    ],
];

sub olson_version { '2009c' }

sub has_dst_changes { 17 }

sub _max_year { 2019 }

sub _new_instance
{
    return shift->_init( @_, spans => $spans );
}



1;

