###########################################################################
#
# This file is auto-generated by the Perl DateTime Suite locale
# generator (0.05).  This code generator comes with the
# DateTime::Locale distribution in the tools/ directory, and is called
# generate-from-cldr.
#
# This file as generated from the CLDR XML locale data.  See the
# LICENSE.cldr file included in this distribution for license details.
#
# This file was generated from the source file mk.xml
# The source file version number was 1.74, generated on
# 2008/06/05 01:32:22.
#
# Do not edit this file directly.
#
###########################################################################

package DateTime::Locale::mk;

use strict;
use warnings;
use utf8;

use base 'DateTime::Locale::root';

sub cldr_version { return "1\.6\.1" }

{
    my $am_pm_abbreviated = [ "AM", "PM" ];
    sub am_pm_abbreviated { return $am_pm_abbreviated }
}
{
    my $date_format_full = "EEEE\,\ dd\ MMMM\ yyyy";
    sub date_format_full { return $date_format_full }
}

{
    my $date_format_long = "dd\ MMMM\ yyyy";
    sub date_format_long { return $date_format_long }
}

{
    my $date_format_medium = "dd\.M\.yyyy";
    sub date_format_medium { return $date_format_medium }
}

{
    my $date_format_short = "dd\.M\.yy";
    sub date_format_short { return $date_format_short }
}

{
    my $datetime_format = "\{1\}\ \{0\}";
    sub datetime_format { return $datetime_format }
}

{
    my $day_format_abbreviated = [ "пон\.", "вт\.", "сре\.", "чет\.", "пет\.", "саб\.", "нед\." ];
    sub day_format_abbreviated { return $day_format_abbreviated }
}

sub day_format_narrow { $_[0]->day_stand_alone_narrow() }

{
    my $day_format_wide = [ "понеделник", "вторник", "среда", "четврток", "петок", "сабота", "недела" ];
    sub day_format_wide { return $day_format_wide }
}

sub day_stand_alone_abbreviated { $_[0]->day_format_abbreviated() }

{
    my $day_stand_alone_narrow = [ "п", "в", "с", "ч", "п", "с", "н" ];
    sub day_stand_alone_narrow { return $day_stand_alone_narrow }
}

sub day_stand_alone_wide { $_[0]->day_format_wide() }

{
    my $era_abbreviated = [ "пр\.н\.е\.", "ае\." ];
    sub era_abbreviated { return $era_abbreviated }
}

sub era_narrow { $_[0]->era_abbreviated() }

{
    my $first_day_of_week = 1;
    sub first_day_of_week { return $first_day_of_week }
}

{
    my $month_format_abbreviated = [ "јан\.", "фев\.", "мар\.", "апр\.", "мај", "јун\.", "јул\.", "авг\.", "септ\.", "окт\.", "ноем\.", "декем\." ];
    sub month_format_abbreviated { return $month_format_abbreviated }
}

sub month_format_narrow { $_[0]->month_stand_alone_narrow() }

{
    my $month_format_wide = [ "јануари", "февруари", "март", "април", "мај", "јуни", "јули", "август", "септември", "октомври", "ноември", "декември" ];
    sub month_format_wide { return $month_format_wide }
}

sub month_stand_alone_abbreviated { $_[0]->month_format_abbreviated() }

{
    my $month_stand_alone_narrow = [ "ј", "ф", "м", "а", "м", "ј", "ј", "а", "с", "о", "н", "д" ];
    sub month_stand_alone_narrow { return $month_stand_alone_narrow }
}

sub month_stand_alone_wide { $_[0]->month_format_wide() }

{
    my $quarter_format_abbreviated = [ "Q1", "Q2", "Q3", "Q4" ];
    sub quarter_format_abbreviated { return $quarter_format_abbreviated }
}
{
    my $quarter_format_wide = [ "Q1", "Q2", "Q3", "Q4" ];
    sub quarter_format_wide { return $quarter_format_wide }
}

sub quarter_stand_alone_abbreviated { $_[0]->quarter_format_abbreviated() }


sub quarter_stand_alone_wide { $_[0]->quarter_format_wide() }

{
    my $time_format_full = "HH\:mm\:ss\ v";
    sub time_format_full { return $time_format_full }
}

{
    my $time_format_long = "HH\:mm\:ss\ z";
    sub time_format_long { return $time_format_long }
}

{
    my $time_format_medium = "HH\:mm\:ss";
    sub time_format_medium { return $time_format_medium }
}

{
    my $time_format_short = "HH\:mm";
    sub time_format_short { return $time_format_short }
}

{
    my $_format_for_MMMMdd = "dd\ MMMM";
    sub _format_for_MMMMdd { return $_format_for_MMMMdd }
}

{
    my $_format_for_Mdd = "dd\.M";
    sub _format_for_Mdd { return $_format_for_Mdd }
}

{
    my $_format_for_yyQ = "Q\ yy";
    sub _format_for_yyQ { return $_format_for_yyQ }
}

{
    my $_format_for_yyyyM = "M\.yyyy";
    sub _format_for_yyyyM { return $_format_for_yyyyM }
}

{
    my $_format_for_yyyyMMMM = "MMMM\ yyyy";
    sub _format_for_yyyyMMMM { return $_format_for_yyyyMMMM }
}

{
    my $_available_formats =
        {
          "MMMMdd" => "dd\ MMMM",
          "Mdd" => "dd\.M",
          "yyQ" => "Q\ yy",
          "yyyyM" => "M\.yyyy",
          "yyyyMMMM" => "MMMM\ yyyy"
        };
    sub _available_formats { return $_available_formats }
}

1;

__END__


=pod

=encoding utf8

=head1 NAME

DateTime::Locale::mk

=head1 SYNOPSIS

  use DateTime;

  my $dt = DateTime->now( locale => 'mk' );
  print $dt->month_name();

=head1 DESCRIPTION

This is the DateTime locale package for Macedonian.

=head1 DATA

This locale inherits from the L<DateTime::Locale::root> locale.

It contains the following data.

=head2 Days

=head3 Wide (format)

  понеделник
  вторник
  среда
  четврток
  петок
  сабота
  недела

=head3 Abbreviated (format)

  пон.
  вт.
  сре.
  чет.
  пет.
  саб.
  нед.

=head3 Narrow (format)

  п
  в
  с
  ч
  п
  с
  н

=head3 Wide (stand-alone)

  понеделник
  вторник
  среда
  четврток
  петок
  сабота
  недела

=head3 Abbreviated (stand-alone)

  пон.
  вт.
  сре.
  чет.
  пет.
  саб.
  нед.

=head3 Narrow (stand-alone)

  п
  в
  с
  ч
  п
  с
  н

=head2 Months

=head3 Wide (format)

  јануари
  февруари
  март
  април
  мај
  јуни
  јули
  август
  септември
  октомври
  ноември
  декември

=head3 Abbreviated (format)

  јан.
  фев.
  мар.
  апр.
  мај
  јун.
  јул.
  авг.
  септ.
  окт.
  ноем.
  декем.

=head3 Narrow (format)

  ј
  ф
  м
  а
  м
  ј
  ј
  а
  с
  о
  н
  д

=head3 Wide (stand-alone)

  јануари
  февруари
  март
  април
  мај
  јуни
  јули
  август
  септември
  октомври
  ноември
  декември

=head3 Abbreviated (stand-alone)

  јан.
  фев.
  мар.
  апр.
  мај
  јун.
  јул.
  авг.
  септ.
  окт.
  ноем.
  декем.

=head3 Narrow (stand-alone)

  ј
  ф
  м
  а
  м
  ј
  ј
  а
  с
  о
  н
  д

=head2 Quarters

=head3 Wide (format)

  Q1
  Q2
  Q3
  Q4

=head3 Abbreviated (format)

  Q1
  Q2
  Q3
  Q4

=head3 Narrow (format)

  1
  2
  3
  4

=head3 Wide (stand-alone)

  Q1
  Q2
  Q3
  Q4

=head3 Abbreviated (stand-alone)

  Q1
  Q2
  Q3
  Q4

=head3 Narrow (stand-alone)

  1
  2
  3
  4

=head2 Eras

=head3 Wide

  BCE
  CE

=head3 Abbreviated

  пр.н.е.
  ае.

=head3 Narrow

  пр.н.е.
  ае.

=head2 Date Formats

=head3 Full

   2008-02-05T12:30:30 = вторник, 05 февруари 2008
   1995-12-22T09:05:02 = петок, 22 декември 1995
  -0010-09-15T04:44:23 = сабота, 15 септември -010

=head3 Long

   2008-02-05T12:30:30 = 05 февруари 2008
   1995-12-22T09:05:02 = 22 декември 1995
  -0010-09-15T04:44:23 = 15 септември -010

=head3 Medium

   2008-02-05T12:30:30 = 05.2.2008
   1995-12-22T09:05:02 = 22.12.1995
  -0010-09-15T04:44:23 = 15.9.-010

=head3 Short

   2008-02-05T12:30:30 = 05.2.8
   1995-12-22T09:05:02 = 22.12.95
  -0010-09-15T04:44:23 = 15.9.10

=head3 Default

   2008-02-05T12:30:30 = 05.2.2008
   1995-12-22T09:05:02 = 22.12.1995
  -0010-09-15T04:44:23 = 15.9.-010

=head2 Time Formats

=head3 Full

   2008-02-05T12:30:30 = 12:30:30 UTC
   1995-12-22T09:05:02 = 09:05:02 UTC
  -0010-09-15T04:44:23 = 04:44:23 UTC

=head3 Long

   2008-02-05T12:30:30 = 12:30:30 UTC
   1995-12-22T09:05:02 = 09:05:02 UTC
  -0010-09-15T04:44:23 = 04:44:23 UTC

=head3 Medium

   2008-02-05T12:30:30 = 12:30:30
   1995-12-22T09:05:02 = 09:05:02
  -0010-09-15T04:44:23 = 04:44:23

=head3 Short

   2008-02-05T12:30:30 = 12:30
   1995-12-22T09:05:02 = 09:05
  -0010-09-15T04:44:23 = 04:44

=head3 Default

   2008-02-05T12:30:30 = 12:30:30
   1995-12-22T09:05:02 = 09:05:02
  -0010-09-15T04:44:23 = 04:44:23

=head2 Datetime Formats

=head3 Full

   2008-02-05T12:30:30 = вторник, 05 февруари 2008 12:30:30 UTC
   1995-12-22T09:05:02 = петок, 22 декември 1995 09:05:02 UTC
  -0010-09-15T04:44:23 = сабота, 15 септември -010 04:44:23 UTC

=head3 Long

   2008-02-05T12:30:30 = 05 февруари 2008 12:30:30 UTC
   1995-12-22T09:05:02 = 22 декември 1995 09:05:02 UTC
  -0010-09-15T04:44:23 = 15 септември -010 04:44:23 UTC

=head3 Medium

   2008-02-05T12:30:30 = 05.2.2008 12:30:30
   1995-12-22T09:05:02 = 22.12.1995 09:05:02
  -0010-09-15T04:44:23 = 15.9.-010 04:44:23

=head3 Short

   2008-02-05T12:30:30 = 05.2.8 12:30
   1995-12-22T09:05:02 = 22.12.95 09:05
  -0010-09-15T04:44:23 = 15.9.10 04:44

=head3 Default

   2008-02-05T12:30:30 = 05.2.2008 12:30:30
   1995-12-22T09:05:02 = 22.12.1995 09:05:02
  -0010-09-15T04:44:23 = 15.9.-010 04:44:23

=head2 Available Formats

=head3 Hm (H:mm)

   2008-02-05T12:30:30 = 12:30
   1995-12-22T09:05:02 = 9:05
  -0010-09-15T04:44:23 = 4:44

=head3 M (L)

   2008-02-05T12:30:30 = 2
   1995-12-22T09:05:02 = 12
  -0010-09-15T04:44:23 = 9

=head3 MEd (E, M-d)

   2008-02-05T12:30:30 = вт., 2-5
   1995-12-22T09:05:02 = пет., 12-22
  -0010-09-15T04:44:23 = саб., 9-15

=head3 MMM (LLL)

   2008-02-05T12:30:30 = фев.
   1995-12-22T09:05:02 = декем.
  -0010-09-15T04:44:23 = септ.

=head3 MMMEd (E MMM d)

   2008-02-05T12:30:30 = вт. фев. 5
   1995-12-22T09:05:02 = пет. декем. 22
  -0010-09-15T04:44:23 = саб. септ. 15

=head3 MMMMEd (E MMMM d)

   2008-02-05T12:30:30 = вт. февруари 5
   1995-12-22T09:05:02 = пет. декември 22
  -0010-09-15T04:44:23 = саб. септември 15

=head3 MMMMd (MMMM d)

   2008-02-05T12:30:30 = февруари 5
   1995-12-22T09:05:02 = декември 22
  -0010-09-15T04:44:23 = септември 15

=head3 MMMMdd (dd MMMM)

   2008-02-05T12:30:30 = 05 февруари
   1995-12-22T09:05:02 = 22 декември
  -0010-09-15T04:44:23 = 15 септември

=head3 MMMd (MMM d)

   2008-02-05T12:30:30 = фев. 5
   1995-12-22T09:05:02 = декем. 22
  -0010-09-15T04:44:23 = септ. 15

=head3 Md (M-d)

   2008-02-05T12:30:30 = 2-5
   1995-12-22T09:05:02 = 12-22
  -0010-09-15T04:44:23 = 9-15

=head3 Mdd (dd.M)

   2008-02-05T12:30:30 = 05.2
   1995-12-22T09:05:02 = 22.12
  -0010-09-15T04:44:23 = 15.9

=head3 d (d)

   2008-02-05T12:30:30 = 5
   1995-12-22T09:05:02 = 22
  -0010-09-15T04:44:23 = 15

=head3 ms (mm:ss)

   2008-02-05T12:30:30 = 30:30
   1995-12-22T09:05:02 = 05:02
  -0010-09-15T04:44:23 = 44:23

=head3 y (yyyy)

   2008-02-05T12:30:30 = 2008
   1995-12-22T09:05:02 = 1995
  -0010-09-15T04:44:23 = -010

=head3 yM (yyyy-M)

   2008-02-05T12:30:30 = 2008-2
   1995-12-22T09:05:02 = 1995-12
  -0010-09-15T04:44:23 = -010-9

=head3 yMEd (EEE, yyyy-M-d)

   2008-02-05T12:30:30 = вт., 2008-2-5
   1995-12-22T09:05:02 = пет., 1995-12-22
  -0010-09-15T04:44:23 = саб., -010-9-15

=head3 yMMM (yyyy MMM)

   2008-02-05T12:30:30 = 2008 фев.
   1995-12-22T09:05:02 = 1995 декем.
  -0010-09-15T04:44:23 = -010 септ.

=head3 yMMMEd (EEE, yyyy MMM d)

   2008-02-05T12:30:30 = вт., 2008 фев. 5
   1995-12-22T09:05:02 = пет., 1995 декем. 22
  -0010-09-15T04:44:23 = саб., -010 септ. 15

=head3 yMMMM (yyyy MMMM)

   2008-02-05T12:30:30 = 2008 февруари
   1995-12-22T09:05:02 = 1995 декември
  -0010-09-15T04:44:23 = -010 септември

=head3 yQ (yyyy Q)

   2008-02-05T12:30:30 = 2008 1
   1995-12-22T09:05:02 = 1995 4
  -0010-09-15T04:44:23 = -010 3

=head3 yQQQ (yyyy QQQ)

   2008-02-05T12:30:30 = 2008 Q1
   1995-12-22T09:05:02 = 1995 Q4
  -0010-09-15T04:44:23 = -010 Q3

=head3 yyQ (Q yy)

   2008-02-05T12:30:30 = 1 8
   1995-12-22T09:05:02 = 4 95
  -0010-09-15T04:44:23 = 3 10

=head3 yyyyM (M.yyyy)

   2008-02-05T12:30:30 = 2.2008
   1995-12-22T09:05:02 = 12.1995
  -0010-09-15T04:44:23 = 9.-010

=head3 yyyyMMMM (MMMM yyyy)

   2008-02-05T12:30:30 = февруари 2008
   1995-12-22T09:05:02 = декември 1995
  -0010-09-15T04:44:23 = септември -010

=head2 Miscellaneous

=head3 Prefers 24 hour time?

Yes

=head3 Local first day of the week

понеделник


=head1 SUPPORT

See L<DateTime::Locale>.

=head1 AUTHOR

Dave Rolsky <autarch@urth.org>

=head1 COPYRIGHT

Copyright (c) 2008 David Rolsky. All rights reserved. This program is
free software; you can redistribute it and/or modify it under the same
terms as Perl itself.

This module was generated from data provided by the CLDR project, see
the LICENSE.cldr in this distribution for details on the CLDR data's
license.

=cut
