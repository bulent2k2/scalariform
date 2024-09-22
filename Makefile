# this is sufficient for Kojo
jar:
	sbt packageBin

# copy it over to the local kojo clone & rename it
OBJ=scalariform.jar
TGT=~/src/my-local-kojo-clone/lib
JAR=./scalariform/target/scala-2.13/scalariform_2.13-0.2.10.jar
cp:
	echo "Copying/overriding ${OBJ} in ${TGT} with ${JAR}"
	cp ${JAR} ${TGT}/${OBJ}

# this is for testing below
all: build tests clean
FULLJAR=./cli/target/scala-2.13/cli-assembly-0.2.10.jar
build:
	sbt "project cli" "assembly"

tests: test1 test2 test3

test1 test2 test3:
	java -jar ${FULLJAR} -f -q -indentSpaces=4 +compactControlReadability +alignParameters +alignSingleLineCaseStatements +doubleIndentConstructorArguments +rewriteArrowSymbols +preserveSpaceBeforeArguments --stdout tests/$@.scala > tests/$@_out.scala
	diff tests/$@_out.scala tests/$@_out_golden.scala

clean:
	rm -f tests/*_out.scala
