use Test::More;
use Test::Mojo;

my $t = new Test::Mojo;

$t->get_ok("https://hackeriet.no", "can load website")
  ->status_is(200)
  ->element_exists("div.flag.progress-pride", "rainbows, all over!")
  ->element_count_is("img.thumbnail", 3);

done_testing();
