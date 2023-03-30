# **PySpark-Baic-Key Words**
## 🚀 Key words in the spark UI  🤖
### Jobs
A job is **a sequence of tasks** that are submitted to Spark to be executed. A job is created when an action is called on an RDD or DataFrame.
### Stages
A stage is **a collection of tasks** that can be executed together. Stages are created based on the dependencies between RDDs or DataFrames.

> **The difference between Jobs and Stages 🤖**  
> 
> | Sequence of Tasks | Collection of Tasks |
> | --- | --- |
> | Tasks should be executed **one after the other** | Tasks can be **executed together** |
> | Tasks are created when there are no dependencies between RDDs or DataFrames | Tasks are created when there are dependencies between RDDs or DataFrames |
> | Executed in a single stage | Executed in multiple stages |
> | No shuffles involved | Shuffles involved |

### Tasks
A task is a unit of work that can be executed on an executor. Tasks are created based on the partitions of RDDs or DataFrames.
> **Here are some examples:**  
> 1. Reading data from a file or database `read.csv()` `read.json()`
> 1. `filter` `where` `groupBy` `join` `agg` `sort`

### Storage
Storage refers to the way data is stored in memory or disk in Spark

> **According to spark's documentation, each StorageLevel records:** 
> - Whether to use memory
> - Whether to drop the RDD to disk **if it falls out of memory**
> - Whether to keep the data in memory in a JAVA-specific serialized format
> - Whether to replicate the RDD partitions on multiple nodes


## 🚀 Accumulator
1. **Write**-only  
1. An variable that can be used with RDD and DataFrame to perform sum and counter operations similar to Map-reduce counters.  
1. This variable is shared by all executors to update and add information through aggregation or computative operations

## 🚀 Repartition vs Coalesce 🤖
| Feature | Repartition | Coalesce |
|---------|-------------|----------|
| Number of partitions | Can increase or decrease | Can only decrease |
| Data movement | Shuffles all data over the network | Reduces data movement between nodes |
| Performance | May be slower due to shuffling | May be faster due to less shuffling |
| Partition size | Tends to create equal sized partitions | May create unequal sized partitions |
| Usage situation | Suitable for increasing parallelism or after filtering a large dataset | Suitable for reducing the number of partitions in an efficient way |

### `persist()` 🤖
Suppose you have a PySpark DataFrame that is used multiple times in your PySpark session. Without caching or persisting, each time you use this DataFrame, PySpark will recompute it from scratch. This can be time-consuming and resource-intensive.

To avoid this, you can use `persist()` method to cache the DataFrame in memory. This way, when you use the DataFrame again, PySpark will reuse the cached version instead of recomputing it from scratch.



> **Reference**  
> Implement by 🤖 new Bing  
> 1.  Apache Spark: Repartition vs Coalesce - ashwin.cloud. https://ashwin.cloud/blog/spark-repartition-vs-coalesce/ Accessed 3/15/2023.
> 1.  distributed computing - Spark - repartition() vs coalesce() - Stack Overflow. https://stackoverflow.com/questions/31610971/spark-repartition-vs-coalesce Accessed 3/15/2023.
> 1.  Spark Repartition() vs Coalesce() - Spark By {Examples}. https://sparkbyexamples.com/spark/spark-repartition-vs-coalesce/ Accessed 3/15/2023.
> 1.  Spark: Repartition vs Coalesce, and when you should use which. https://medium.com/@vikaskumar.ran/spark-repartition-vs-coalesce-and-when-to-use-which-3f269b47a5dd Accessed 3/15/2023.
> 1. pyspark.StorageLevel. https://spark.apache.org/docs/latest/api/python/reference/api/pyspark.StorageLevel.html