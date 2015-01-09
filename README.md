Welcome to Benjamin Herson's Count My Word site, using the 
defined method: frequency. This is a Ruby method, 
running on a website built by Sinatra. MIT license.

Please feel free to try and break my method. I'm happy to have feedback.
As of now, I've tried to include defenses against obvious tricks.
(e.g.: If your keyword isn't in the sentence you provide, The Count will know.)

Only one known bug, really. On the results page (the_count.erb), if there had
only been 1 instance counted, the count still uses the plural to refer to it.
I'm thinking of either writing an additional method just to deteremine that,
or maybe I'll make it a quick if statement in the app.rb file itself. Just
a little too new at this to know how's best to proceed.

Thanks!
