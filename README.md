# star_recognizer
The C++ "star-recognizer" automatically determines stars in an astro-image and calculates centoid, HFD and FWHM.	


## Introduction
For some time now I am looking into the field of night sky image processing. It is a huge topic and there are already a lot of different approaches and solutions to many of the existing problems.

One of the results is the "star_recognizer" which I initially implemented to have a good "vehicle" to play around with centroiding, HFD and FWHM calculations and pixel clustering. I documented the different components in a separate git repository: https://github.com/carsten0x51h/star_recognizer_code_snippets

Meanwhile the project turned out to be somehow useful. Therefore I decided to take the different parts and put them together into a "real" application. The code so far was just for educational purposes and therefore only was written for the "good case". In order to make it usable some additional checking code for the "not so good" cases makes sense.

For the sake of simplicity the code currently still lives in a single source file. Depending on how this project develops this might change in the future. 



## Supported input formats

In short, I successfully tested: FITS, JPEG and PNG

The program now supports the reading of FITS files as well the "standard" formats which are offered by CImg. NOTE: That in turn depends on the availability of additional libraries for the respective image formats (see https://stackoverflow.com/questions/46055720/cannot-load-any-image-with-cimg). I tested the star_recognizer successfully with FITS, JPEG and PNG files so far. Other formats may also work. Be aware that the color depth for non-FITS files is currently limited to 8 bit. Generally a 16 bit image holds more information than an 8 bit image. In a first test it turned out that the star_recognizer was able to detect ~10% more stars in an 16 bit FITS image compared to the corresponding 8 bit image. 


## Required libraries

In order build the binaries the following libraries are required

 * CImg-devel.x86_64
 * CCfits-devel.x86_64
 * cfitsio-devel.x86_64
 * gsl-devel.x86_64
 * boost-program-options.x86_64
 * boost-devel.x86_64

Please also consult the Makefile to see a complete list of the dependencies.


## Build
To build the project, just run

```make all```


## Program execution

 * ```./star_recognizer test_data/test.fits```


## More info
More information about this project can be found here: https://www.lost-infinity.com/night-sky-image-processing-part-7-automatic-star-recognizer/
