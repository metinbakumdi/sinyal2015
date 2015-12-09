function f = frek( nota , oktav )


switch nota
    case 'C'
        notaHz = 16.35;
    case 'C#'
        notaHz = 17.32;
    case 'D'
        notaHz = 18.35;
    case 'Eb'
        notaHz = 19.45;
    case 'E'
        notaHz = 20.60;
    case 'F'
        notaHz = 21.83;
    case 'F#'
        notaHz = 23.12;
    case 'G'
        notaHz = 24.50;
    case 'G#'
        notaHz = 25.96;
    case 'A'
        notaHz = 27.50;
    case 'Bb'
        notaHz = 29.14;
    case 'B'
        notaHz = 30.87;
end

f = notaHz * 2^oktav;

end

