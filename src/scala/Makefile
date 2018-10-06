check:
	which curl

install:
	if hash brew 2>/dev/null; then \
		brew install scala sbt scalastyle; \
	elif hash apt-get 2>/dev/null; then \
		echo "deb https://dl.bintray.com/sbt/debian /" | sudo tee /etc/apt/sources.list.d/sbt.list; \
		sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 2EE0EA64E40A89B84B2DF73499E82A75642AC823; \
		sudo apt-get update; \
		sudo apt-get install -y scala sbt; \
		cd /usr/share/scala/lib && sudo curl -O https://oss.sonatype.org/content/repositories/releases/org/scalastyle/scalastyle_2.12/1.0.0/scalastyle_2.12-1.0.0-batch.jar; \
		echo "#!/bin/sh\njava -jar /usr/share/scala/lib/scalastyle_*.jar \"\$$@\"" | sudo tee /usr/local/bin/scalastyle; \
		sudo chmod +x /usr/local/bin/scalastyle; \
	fi
	mkdir -p ~/.sbt/1.0/plugins/
	echo 'addSbtPlugin("org.ensime" % "sbt-ensime" % "2.5.1")' > ~/.sbt/1.0/plugins/plugins.sbt

uninstall:
	if hash brew 2>/dev/null; then \
		brew uninstall scala sbt scalastyle; \
	elif hash apt-get 2>/dev/null; then \
		sudo rm -f /usr/share/scala/lib/scalastyle_*.jar /usr/local/bin/scalastyle; \
		sudo apt-get purge scala sbt; \
	fi
