export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
export PATH=$JAVA_HOME/bin:$PATH

echo "Set JAVA_HOME to: $JAVA_HOME"
echo "And added JAVA_HOME/bin to PATH"

export JAVA_CPPFLAGS="-I$JAVA_HOME/include -I$JAVA_HOME/include/linux"
export JAVA_LIBS="-L$JAVA_HOME/jre/lib/amd64/server -ljvm"

echo "Set JAVA_CPPFLAGS and JAVA_LIBS used by R"
echo
echo "Away to run: R CMD javareconf -e"

R CMD javareconf -e


