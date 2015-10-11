all: arc phenix typeD typeB typeA codesend RFSniffer homeeasy brennen Send17X Send3XX Send45X blyss

arc: RCSwitch.o arc.o
	$(CXX) $(CXXFLAGS) $(LDFLAGS) $+ -o $@ -lwiringPi

homeeasy: RCSwitch.o homeeasy.o
	$(CXX) $(CXXFLAGS) $(LDFLAGS) $+ -o $@ -lwiringPi

brennen: RCSwitch.o brennen.o
	$(CXX) $(CXXFLAGS) $(LDFLAGS) $+ -o $@ -lwiringPi

phenix: RCSwitch.o phenix.o
	$(CXX) $(CXXFLAGS) $(LDFLAGS) $+ -o $@ -lwiringPi
	
typeD: RCSwitch.o typeD.o
	$(CXX) $(CXXFLAGS) $(LDFLAGS) $+ -o $@ -lwiringPi

typeA: RCSwitch.o typeA.o
	$(CXX) $(CXXFLAGS) $(LDFLAGS) $+ -o $@ -lwiringPi

typeB: RCSwitch.o typeB.o
	$(CXX) $(CXXFLAGS) $(LDFLAGS) $+ -o $@ -lwiringPi
	
codesend: RCSwitch.o codesend.o
	$(CXX) $(CXXFLAGS) $(LDFLAGS) $+ -o $@ -lwiringPi

Send17X: RCSwitch.o Send17X.o
	$(CXX) $(CXXFLAGS) $(LDFLAGS) $+ -o $@ -lwiringPi

Send3XX: RCSwitch.o Send3XX.o
	$(CXX) $(CXXFLAGS) $(LDFLAGS) $+ -o $@ -lwiringPi

Send45X: RCSwitch.o Send45X.o
	$(CXX) $(CXXFLAGS) $(LDFLAGS) $+ -o $@ -lwiringPi

blyss: BlyssController.o blyss.o
	$(CXX) $(CXXFLAGS) $(LDFLAGS) $+ -o $@ -lwiringPi
	
RFSniffer: RCSwitch.o RFSniffer.o
	$(CXX) $(CXXFLAGS) $(LDFLAGS) $+ -o $@ -lwiringPi

	

clean:
	$(RM) *.o arc phenix typeD typeB typeA codesend servo RFSniffer homeeasy brennen Send17X Send3XX Send45X blyss