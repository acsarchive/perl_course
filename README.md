# Perl PL

* file structure
* data types (w/ debuggering: Dumper)
    * array
    * hash
    * reference

## Reference

Speaking of reference, we can use
```pl
my $hash_ref = {
  a => 1,
  b => 2,
};
```

We can also declare a *hash_ref* as this:
```pl
my $hash_ref_complex = {
  a => 1,
  b => 2,
  c => {
    new => 1,
    new2 => 2,
    deeply => [ 3, 4, 5 ],
  },
}
```

To declare a hash data type, when we want to access it, we can use 
```pl
print Dumper( $hash_ref );      # print the hash_ref
print Dumper( $hash_ref->{a} ); # to access the specific key
print Dumper( $hash_ref->%* );  # to access all the hash table
print Dumper( %$hash_ref );     # this works same
print Dumper( %{ $hash_ref } ); # this also works

# the hash_ref_complex is very interesting
# to access the deeply data
print Dumper( $hash_ref_complex->{c}->{deeply}->[2] ); # 5
```

To get all the keys/values correspondingly in *hash_ref*, we can use
```pl
print Dumper( keys $hash_ref->%* );
print Dumper( values $hash_ref->%* );
```

To delete a k/v pair, we can use
```pl
delete $hash_ref->{b};  # b is the key in $hash_ref
```

Similiar with hash data type, the array data type can be declared like this:
```pl
my $array_ref = [ 1, 2, 3, 4 ];
```

A complex version of array is:
```pl
my $array_ref_complex = [
  1,
  [qw/ a b c / ],
  {
    a => 1,
    b => {
      c => [
        {
          a => [ qw/find me/ ],
        },
      ]
    }
  },
];
```

To access the array, use the following methods:
```pl
print Dumper( $array_ref );       # print the array_ref
print Dumper( $array_ref->[1] );  # access the specific element
print Dumper( $array_ref->@* );   # access all the elements in the array
print Dumper( @$array_ref );      # same as above

# to access find me in complex version
print Dumper( $array_ref_complex->[2]->{b}->{c}->[0]->{a} );
```

We can use
```pl
print Dumper( ref( $array_ref ) );
print Dumper( ref( $hash_ref ) );
print Dumper( ref( [] ) );
```
to get the type of a data structure.
