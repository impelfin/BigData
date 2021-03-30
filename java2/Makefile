HADOOP = /home/centos/hadoop-2.9.0/bin/hadoop

APP = cctv
SRC = src/*.java 
OUT = out

$(APP): $(SRC) 
	mkdir -p $(OUT)
	javac -classpath `$(HADOOP) classpath` -d $(OUT) $(SRC) 
	jar -cvf $(APP).jar -C $(OUT) .

clean: 
	rm -rf $(OUT) *.jar  
