# Lilypond Music Engraving : Songs and Snippets #

<http://lilypond.org/>

Lot's of ways to run lilypond.  On OS X I use docker with a shell funciton so I don't have to remember
the details...

    function ly () {
        FILE=$1
        docker run --rm -v $(pwd):/app -w /app gpit2286/lilypond lilypond $FILE
    }
