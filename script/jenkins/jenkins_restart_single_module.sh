JAR_PATH=/opt/jenkins/package/spring-boot-001-hello-world/target

JAR_FILE=spring-boot-001-hello-world-0.0.1-SNAPSHOT.jar

ps -ef | grep $JAR_FILE | grep -v grep | awk '{print $2}' | xargs kill -9

java -jar $JAR_PATH/$JAR_FILE > $JAR_PATH/out.log &
if [ $? = 0 ];then
        #sleep 30
        #tail -n 50 out.log
        echo  $JAR_FILE" restart success!!! process id:"`ps -ef | grep $JAR_FILE | grep -v grep | awk '{print $2}'`
fi