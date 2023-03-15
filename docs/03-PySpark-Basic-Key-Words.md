# **PySpark-Baic-Key Words**

## 🔑 Accumulator
1. **Write**-only  
1. An variable that can be used with RDD and DataFrame to perform sum and counter operations similar to Map-reduce counters.  
1. This variable is shared by all executors to update and add information through aggregation or computative operations

## 🔑 Repartition vs Coalesce
| Feature | Repartition | Coalesce |
|---------|-------------|----------|
| Number of partitions | Can increase or decrease | Can only decrease |
| Data movement | Shuffles all data over the network | Reduces data movement between nodes |
| Performance | May be slower due to shuffling | May be faster due to less shuffling |
| Partition size | Tends to create equal sized partitions | May create unequal sized partitions |
| Usage situation | Suitable for increasing parallelism or after filtering a large dataset | Suitable for reducing the number of partitions in an efficient way |


> **Reference**  
> Implement by new Bing  
> 1.  Apache Spark: Repartition vs Coalesce - ashwin.cloud. https://ashwin.cloud/blog/spark-repartition-vs-coalesce/ Accessed 3/15/2023.
> 1.  distributed computing - Spark - repartition() vs coalesce() - Stack Overflow. https://stackoverflow.com/questions/31610971/spark-repartition-vs-coalesce Accessed 3/15/2023.
> 1.  Spark Repartition() vs Coalesce() - Spark By {Examples}. https://sparkbyexamples.com/spark/spark-repartition-vs-coalesce/ Accessed 3/15/2023.
> 1.  Spark: Repartition vs Coalesce, and when you should use which. https://medium.com/@vikaskumar.ran/spark-repartition-vs-coalesce-and-when-to-use-which-3f269b47a5dd Accessed 3/15/2023.