#!/usr/bin/env perl

use strict;
use warnings;

## file structure
# my $test = 'random';

# print "Hello world!\n";
# print $test . "Hello world!\n";

## data types
# my $test = 1;
# my $string = 'hello';
# my $decimal = 1.22;
# my $string2 = "hello2 $string";

# print $string2;
# print $test / $decimal . "\n";
# my $number = 1;
# my $string = 'hello';
# print $string . $number . "\n";
# print "hello \$number\n";

## Debuggering
use Data::Dumper;

# my $a = 'hello';
# my $b = 22.32;
# print Dumper( $a, $b );

## Data types - array

# my @test = (
#     22,
#     'hello',
#     1.22
# );

# my @test = qw/ one two three my four /;
# my @test = ( 11 .. 30 );
# my @test = ( 'g' .. 'z' );
# my @test = ( 1, 2, 3, 4 );
# my @test =  qw/ h o p m l a b c /;
# my @test = ( 4, 2, 10, 22, 30 );
# @test = sort { $a <=> $b } @test;
# @test = sort { $b <=> $a } @test;

# $test[-1] = 'override';
# my $size = @test;
# my $last_index = $#test;

# print Dumper( @test );

# # push
# push @test, 20;
# # pop
# pop @test;
# # shift
# shift @test;
# # unshift
# unshift @test, 10;

# @test = sort @test;


# print Dumper( @test[ 2 .. 3 ] );
# print Dumper( @test );

## Data types - hash
# my %map = (
#     a => 20,
#     b => 'hello',
#     c => 11.22,
#     d => undef,
# );

# my %map2 = (
#     hello => 1,
#     %map,
#     c => 'new',
# );

# my @array = keys %map;
# my $size = keys %map;
# my $exists = exists $map{d} ? 'yes' : 'no';
# delete $map{c};

# print Dumper( %map );
# print Dumper( %map2 );
# print Dumper( @map{ 'a', 'c' } );
# print Dumper( @array . ' ' . $size );
# print Dumper( $exists );
# print Dumper( %map );
# print Dumper( $map{d} );

## Data types - reference
# my %hash = ( a => 1, b => 2 );
# my @array = qw/ string1 string2 /;
# my $scalar = 32;

# print %hash;
# print \@array . "\n";
# my $ref1 = \@array;
# my $ref2 = \@array;

# push $ref1->@*, 'new';
# push $ref2->@*, 'new2';

# print Dumper( @array );
# print Dumper( \@array );
# print Dumper( \%hash );

# my $hash_ref = {
#     hello => 1,
#     world => 2,
# };

# print Dumper( $hash_ref );

my $hash_ref = {
    a => 1,
    b => 2,
    c => {
        new => 1,
        new2 => 2,
        deeply => [ 3, 4, 5 ],
    },
};
# my $array_ref = [ 1, 2, 3, 4 ];
my $array_ref = [
    1,
    [ qw/ a b c / ],
    {
        a => 1,
        b => {
            c => [
                {
                    a => [ qw/find me/ ],
                }
            ]
        }
    }
];

# print Dumper( $hash_ref->{a} ); # dereference here is a must
# print Dumper( $array_ref->[1] ); # dereference here
# print Dumper( $hash_ref->%* ); # dereference here
# print Dumper( $array_ref->@* ); # dereference here
# print Dumper( @$array_ref ); # dereference here
# print Dumper( @{ $array_ref } ); # dereference here
# print Dumper( %$hash_ref ); # dereference here
# print Dumper( $hash_ref ); # dereference here
# print Dumper( $hash_ref->{c}->{deeply}->[2] ); # dereference here is a must
# print Dumper( $array_ref->[2]->{b}->{c}->[0]->{a} );
# print Dumper( ref( $array_ref ) );
# print Dumper( ref( $hash_ref ) );
delete $hash_ref->{b};
print Dumper( keys $hash_ref->%* );
print Dumper( values $hash_ref->%* );

1;