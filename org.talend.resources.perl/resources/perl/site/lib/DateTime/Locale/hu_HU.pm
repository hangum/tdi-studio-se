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
# This file was generated from the source file hu_HU.xml
# The source file version number was 1.46, generated on
# 2008/05/28 15:49:32.
#
# Do not edit this file directly.
#
###########################################################################

package DateTime::Locale::hu_HU;

use strict;
use warnings;
use utf8;

use base 'DateTime::Locale::hu';

sub cldr_version { return "1\.6\.1" }

{
    my $first_day_of_week = 1;
    sub first_day_of_week { return $first_day_of_week }
}

1;

__END__


=pod

=encoding utf8

=head1 NAME

DateTime::Locale::hu_HU

=head1 SYNOPSIS

  use DateTime;

  my $dt = DateTime->now( locale => 'hu_HU' );
  print $dt->month_name();

=head1 DESCRIPTION

This is the DateTime locale package for Hungarian Hungary.

=head1 DATA

This locale inherits from the L<DateTime::Locale::hu> locale.

It contains the following data.

=head2 Days

=head3 Wide (format)

  hétfő
  kedd
  szerda
  csütörtök
  péntek
  szombat
  vasárnap

=head3 Abbreviated (format)

  H
  K
  Sze
  Cs
  P
  Szo
  V

=head3 Narrow (format)

  H
  K
  S
  C
  P
  S
  V

=head3 Wide (stand-alone)

  hétfő
  kedd
  szerda
  csütörtök
  péntek
  szombat
  vasárnap

=head3 Abbreviated (stand-alone)

  H
  K
  Sze
  Cs
  P
  Szo
  V

=head3 Narrow (stand-alone)

  H
  K
  S
  C
  P
  S
  V

=head2 Months

=head3 Wide (format)

  január
  február
  március
  április
  május
  június
  július
  augusztus
  szeptember
  október
  november
  december

=head3 Abbreviated (format)

  jan.
  febr.
  márc.
  ápr.
  máj.
  jún.
  júl.
  aug.
  szept.
  okt.
  nov.
  dec.

=head3 Narrow (format)

  J
  F
  M
  Á
  M
  J
  J
  A
  S
  O
  N
  D

=head3 Wide (stand-alone)

  január
  február
  március
  április
  május
  június
  július
  augusztus
  szeptember
  október
  november
  december

=head3 Abbreviated (stand-alone)

  jan.
  febr.
  márc.
  ápr.
  máj.
  jún.
  júl.
  aug.
  szept.
  okt.
  nov.
  dec.

=head3 Narrow (stand-alone)

  J
  F
  M
  Á
  M
  J
  J
  A
  S
  O
  N
  D

=head2 Quarters

=head3 Wide (format)

  I. negyedév
  II. negyedév
  III. negyedév
  IV. negyedév

=head3 Abbreviated (format)

  N1
  N2
  N3
  N4

=head3 Narrow (format)

  1
  2
  3
  4

=head3 Wide (stand-alone)

  I. negyedév
  II. negyedév
  III. negyedév
  IV. negyedév

=head3 Abbreviated (stand-alone)

  N1
  N2
  N3
  N4

=head3 Narrow (stand-alone)

  1
  2
  3
  4

=head2 Eras

=head3 Wide

  időszámításunk előtt
  időszámításunk szerint

=head3 Abbreviated

  i. e.
  i. sz.

=head3 Narrow

  i. e.
  i. sz.

=head2 Date Formats

=head3 Full

   2008-02-05T12:30:30 = 2008. február 5.
   1995-12-22T09:05:02 = 1995. december 22.
  -0010-09-15T04:44:23 = -010. szeptember 15.

=head3 Long

   2008-02-05T12:30:30 = 2008. február 5.
   1995-12-22T09:05:02 = 1995. december 22.
  -0010-09-15T04:44:23 = -010. szeptember 15.

=head3 Medium

   2008-02-05T12:30:30 = 2008.02.05.
   1995-12-22T09:05:02 = 1995.12.22.
  -0010-09-15T04:44:23 = -010.09.15.

=head3 Short

   2008-02-05T12:30:30 = 2008.02.05.
   1995-12-22T09:05:02 = 1995.12.22.
  -0010-09-15T04:44:23 = -010.09.15.

=head3 Default

   2008-02-05T12:30:30 = 2008.02.05.
   1995-12-22T09:05:02 = 1995.12.22.
  -0010-09-15T04:44:23 = -010.09.15.

=head2 Time Formats

=head3 Full

   2008-02-05T12:30:30 = 12:30:30 UTC
   1995-12-22T09:05:02 = 9:05:02 UTC
  -0010-09-15T04:44:23 = 4:44:23 UTC

=head3 Long

   2008-02-05T12:30:30 = 12:30:30 UTC
   1995-12-22T09:05:02 = 9:05:02 UTC
  -0010-09-15T04:44:23 = 4:44:23 UTC

=head3 Medium

   2008-02-05T12:30:30 = 12:30:30
   1995-12-22T09:05:02 = 9:05:02
  -0010-09-15T04:44:23 = 4:44:23

=head3 Short

   2008-02-05T12:30:30 = 12:30
   1995-12-22T09:05:02 = 9:05
  -0010-09-15T04:44:23 = 4:44

=head3 Default

   2008-02-05T12:30:30 = 12:30:30
   1995-12-22T09:05:02 = 9:05:02
  -0010-09-15T04:44:23 = 4:44:23

=head2 Datetime Formats

=head3 Full

   2008-02-05T12:30:30 = 2008. február 5. 12:30:30 UTC
   1995-12-22T09:05:02 = 1995. december 22. 9:05:02 UTC
  -0010-09-15T04:44:23 = -010. szeptember 15. 4:44:23 UTC

=head3 Long

   2008-02-05T12:30:30 = 2008. február 5. 12:30:30 UTC
   1995-12-22T09:05:02 = 1995. december 22. 9:05:02 UTC
  -0010-09-15T04:44:23 = -010. szeptember 15. 4:44:23 UTC

=head3 Medium

   2008-02-05T12:30:30 = 2008.02.05. 12:30:30
   1995-12-22T09:05:02 = 1995.12.22. 9:05:02
  -0010-09-15T04:44:23 = -010.09.15. 4:44:23

=head3 Short

   2008-02-05T12:30:30 = 2008.02.05. 12:30
   1995-12-22T09:05:02 = 1995.12.22. 9:05
  -0010-09-15T04:44:23 = -010.09.15. 4:44

=head3 Default

   2008-02-05T12:30:30 = 2008.02.05. 12:30:30
   1995-12-22T09:05:02 = 1995.12.22. 9:05:02
  -0010-09-15T04:44:23 = -010.09.15. 4:44:23

=head2 Available Formats

=head3 Hm (HH:mm)

   2008-02-05T12:30:30 = 12:30
   1995-12-22T09:05:02 = 09:05
  -0010-09-15T04:44:23 = 04:44

=head3 M (L)

   2008-02-05T12:30:30 = 2
   1995-12-22T09:05:02 = 12
  -0010-09-15T04:44:23 = 9

=head3 MEd (M. d., E)

   2008-02-05T12:30:30 = 2. 5., K
   1995-12-22T09:05:02 = 12. 22., P
  -0010-09-15T04:44:23 = 9. 15., Szo

=head3 MMM (LLL)

   2008-02-05T12:30:30 = febr.
   1995-12-22T09:05:02 = dec.
  -0010-09-15T04:44:23 = szept.

=head3 MMMEd (E MMM d)

   2008-02-05T12:30:30 = K febr. 5
   1995-12-22T09:05:02 = P dec. 22
  -0010-09-15T04:44:23 = Szo szept. 15

=head3 MMMMEd (E MMMM d)

   2008-02-05T12:30:30 = K február 5
   1995-12-22T09:05:02 = P december 22
  -0010-09-15T04:44:23 = Szo szeptember 15

=head3 MMMMd (MMMM d.)

   2008-02-05T12:30:30 = február 5.
   1995-12-22T09:05:02 = december 22.
  -0010-09-15T04:44:23 = szeptember 15.

=head3 MMMd (MMM d)

   2008-02-05T12:30:30 = febr. 5
   1995-12-22T09:05:02 = dec. 22
  -0010-09-15T04:44:23 = szept. 15

=head3 MMdd (MM.dd.)

   2008-02-05T12:30:30 = 02.05.
   1995-12-22T09:05:02 = 12.22.
  -0010-09-15T04:44:23 = 09.15.

=head3 Md (M. d.)

   2008-02-05T12:30:30 = 2. 5.
   1995-12-22T09:05:02 = 12. 22.
  -0010-09-15T04:44:23 = 9. 15.

=head3 d (d)

   2008-02-05T12:30:30 = 5
   1995-12-22T09:05:02 = 22
  -0010-09-15T04:44:23 = 15

=head3 mmss (mm:ss)

   2008-02-05T12:30:30 = 30:30
   1995-12-22T09:05:02 = 05:02
  -0010-09-15T04:44:23 = 44:23

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

   2008-02-05T12:30:30 = K, 2008-2-5
   1995-12-22T09:05:02 = P, 1995-12-22
  -0010-09-15T04:44:23 = Szo, -010-9-15

=head3 yMMM (yyyy MMM)

   2008-02-05T12:30:30 = 2008 febr.
   1995-12-22T09:05:02 = 1995 dec.
  -0010-09-15T04:44:23 = -010 szept.

=head3 yMMMEd (EEE, yyyy MMM d)

   2008-02-05T12:30:30 = K, 2008 febr. 5
   1995-12-22T09:05:02 = P, 1995 dec. 22
  -0010-09-15T04:44:23 = Szo, -010 szept. 15

=head3 yMMMM (yyyy MMMM)

   2008-02-05T12:30:30 = 2008 február
   1995-12-22T09:05:02 = 1995 december
  -0010-09-15T04:44:23 = -010 szeptember

=head3 yQ (yyyy Q)

   2008-02-05T12:30:30 = 2008 1
   1995-12-22T09:05:02 = 1995 4
  -0010-09-15T04:44:23 = -010 3

=head3 yQQQ (yyyy QQQ)

   2008-02-05T12:30:30 = 2008 N1
   1995-12-22T09:05:02 = 1995 N4
  -0010-09-15T04:44:23 = -010 N3

=head3 yyQ (Q yy)

   2008-02-05T12:30:30 = 1 8
   1995-12-22T09:05:02 = 4 95
  -0010-09-15T04:44:23 = 3 10

=head3 yyyyMM (yyyy.MM)

   2008-02-05T12:30:30 = 2008.02
   1995-12-22T09:05:02 = 1995.12
  -0010-09-15T04:44:23 = -010.09

=head3 yyyyMMMM (yyyy. MMMM)

   2008-02-05T12:30:30 = 2008. február
   1995-12-22T09:05:02 = 1995. december
  -0010-09-15T04:44:23 = -010. szeptember

=head2 Miscellaneous

=head3 Prefers 24 hour time?

Yes

=head3 Local first day of the week

hétfő


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
