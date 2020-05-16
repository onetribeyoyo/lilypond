# Lilypond Music Engraving #

<http://lilypond.org/>

<http://lilypond.org/doc/v2.20/Documentation/notation/index.html>

Lot's of ways to run lilypond.  On OS X I use docker with a shell funciton so I don't have to remember
the details...

    function ly () {
        FILE=$1
        docker run --rm -v $(pwd):/app -w /app gpit2286/lilypond lilypond $FILE
    }
