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
to declare a hash data type, when we want to access it, we can use 
```pl
print Dumper( $hash_ref->{a} ); # to access the specific key
print Dumper( $hash_ref->%* );  # to access all the hash table
print Dumper( %$hash_ref );  # this works same
print Dumper( %{ $hash_ref } ); # this also works
```

similiar with hash data type, the array data type can be declared like this:
```pl
my $array_ref = [ 1, 2, 3, 4 ];
```
to access the array, use the following methods:
```pl
print Dumper( $array_ref->[1] );  # access the specific element
print Dumper( $array_ref->@* );   # access all the elements in the array
print Dumper( @$array_ref );      # same as above
```
