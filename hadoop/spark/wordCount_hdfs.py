import sys
 
from pyspark import SparkContext, SparkConf
 
if __name__ == "__main__":
 
  conf = SparkConf().setAppName("Word Count - Python").set("spark.hadoop.yarn.resourcemanager.address", "192.168.0.104:8032")
  sc = SparkContext(conf=conf)
 
  words = sc.textFile("/input/spark/purplecow.txt").flatMap(lambda line: line.split(" "))
 
  wordCounts = words.map(lambda word: (word, 1)).reduceByKey(lambda a,b:a +b)
 
  wordCounts.saveAsTextFile("/output/spark/wordCount")
