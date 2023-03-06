# **PySpark Basic Operations**

## **The difference between `SparkSession` and `SparkContext`**

<!-- > `SparkSession` is a new entry point to Spark functionality that replaces the old `SQLContext` and `HiveContext`. It provides a single point of entry to interact with Spark, and **it includes all of the SparkContext's functionality.** -->

||SparkSession|SparkContext|
|:---|:---|:---|
|Brief intro.|Spark 2.0 entry point, programming with DataFrame and Dataset|Earlier versions of Pyspark entry point|
|Core||1. Connection to a Spark cluster<br> 2. Create RDDs<br>3. Accumulators<br>4. Broadcasting variables on that cluster|

> **Reference**
> 1. [SparkSession vs SparkContext](https://www.sparkcodehub.com/sparksession-vs-sparkcontext)
> 1. [【Spark】 SparkSession与SparkContext](https://blog.csdn.net/qq_35495339/article/details/98119422)
> 1. [SparkSession vs SparkContext](https://sparkbyexamples.com/spark/sparksession-vs-sparkcontext/)
> 1. [org.apache.spark.SparkContext](https://spark.apache.org/docs/latest/api/java/org/apache/spark/SparkContext.html)