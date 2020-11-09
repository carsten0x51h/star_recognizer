all:
	g++ star_recognizer.cpp -o star_recognizer -std=c++1z -lX11 -lpthread -lCCfits -lcfitsio -lgsl -lgslcblas -lstdc++fs -lboost_program_options

clean:
	-rm star_recognizer
