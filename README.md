This is an unofficial distribution of Apache JMeter v.5 based on openjdk image. You can use it in headless mode pretty much the same way you do it usually. EXAMPLE: considering variable $YOUR_PATH is defined and $YOUR_PATH/testPlan1.jmx is a valid JMeter test plan:

docker run --rm -v $YOUR_PATH:/files skolchanov/jmeter5 -n -t /files/testPlan1.jmx -l /files/testPlan1.csv -e

$YOUR_PATH/testPlan1.csv would contain test results.

