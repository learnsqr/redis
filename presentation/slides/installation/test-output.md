## Make Test

$ make test

cd src && make test
make[1]: Entering directory `/home/agustincl/redis-stable/src'

Cleanup: may take some time... OK
Starting test server at port 11111
[ready]: 23809
Testing unit/printver
[ready]: 23812
Testing unit/dump
[ready]: 23815
Testing unit/auth
[ready]: 23818
Testing unit/protocol
[ready]: 23821
Testing unit/basic
[ready]: 23824
Testing unit/scan
[ready]: 23827
Testing unit/type/list
[ready]: 23830
Testing unit/type/list-2
[ready]: 23833
Testing unit/type/list-3
[ready]: 23836
Testing unit/type/set
[ready]: 23839
Testing unit/type/zset
[ready]: 23842
Testing unit/type/hash
[ready]: 23845
Testing unit/sort
[ready]: 23848
Testing unit/expire
[ready]: 23851
Testing unit/other
[ready]: 23854
Testing unit/multi
[ok]: DUMP / RESTORE are able to serialize / unserialize a simple key
[ok]: RESTORE can set an arbitrary expire to the materialized key
[ok]: RESTORE can set an expire that overflows a 32 bit integer
[ok]: RESTORE returns an error of the key already exists
[ok]: RESTORE can overwrite an existing key with REPLACE
[ok]: RESTORE can detect a syntax error for unrecongized options
[ok]: DUMP of non existing key returns nil
[ok]: Handle an empty query
[ok]: DEL all keys to start with a clean DB
[ok]: SET and GET an item
[ok]: SET and GET an empty item
[ok]: DEL against a single item
[ok]: Vararg DEL
[ok]: KEYS with pattern
[ok]: KEYS to get all keys
[ok]: DBSIZE
[ok]: DEL all keys
[ok]: Negative multibulk length
[ok]: Out of range multibulk length
[ok]: Wrong multibulk payload header
[ok]: Negative multibulk payload length
[ok]: Out of range multibulk payload length
[ok]: Non-number multibulk payload length
[ok]: Multi bulk request not followed by bulk arguments
[ok]: Generic wrong number of args
[ok]: Unbalanced number of quotes
Testing Redis version 3.0.7 (00000000)
[ok]: SADD, SCARD, SISMEMBER, SMEMBERS basics - regular set
[ok]: AUTH fails if there is no password configured server side
[ok]: SADD, SCARD, SISMEMBER, SMEMBERS basics - intset
[ok]: SADD against non set
[ok]: LPUSH, RPUSH, LLENGTH, LINDEX, LPOP - ziplist
[ok]: SADD a non-integer against an intset
[ok]: SADD an integer larger than 64 bits
[ok]: LPUSH, RPUSH, LLENGTH, LINDEX, LPOP - regular list
[ok]: R/LPOP against empty list
[ok]: Protocol desync regression test #1
[ok]: Variadic RPUSH/LPUSH
[ok]: DEL a list - ziplist
[ok]: DEL a list - regular list
[ok]: BLPOP, BRPOP: single existing list - linkedlist
[ok]: EXPIRE - set timeouts multiple times
[ok]: EXPIRE - It should be still possible to read 'x'
[ok]: HSET/HLEN - Small hash creation
[ok]: Explicit regression for a list bug
[ok]: Is the small hash encoded with a ziplist?
[ok]: BLPOP, BRPOP: multiple existing lists - linkedlist
[ok]: Check encoding - ziplist
[ok]: BLPOP, BRPOP: second list has an entry - linkedlist
[ok]: ZSET basic ZADD and score update - ziplist
[ok]: ZSET element can't be set to NaN with ZADD - ziplist
[ok]: ZSET element can't be set to NaN with ZINCRBY
[ok]: Ziplist: SORT BY key
[ok]: ZADD with options syntax error with incomplete pair
[ok]: BRPOPLPUSH - linkedlist
[ok]: Ziplist: SORT BY key with limit
[ok]: SAVE - make sure there are all the types as values
[ok]: Ziplist: SORT BY hash field
[ok]: ZADD XX option without key - ziplist
[ok]: ZADD XX existing key - ziplist
[ok]: ZADD XX returns the number of elements actually added
[ok]: BLPOP, BRPOP: single existing list - ziplist
[ok]: ZADD XX updates existing elements score
[ok]: ZADD XX and NX are not compatible
[ok]: ZADD NX with non exisitng key
[ok]: MUTLI / EXEC basics
[ok]: BLPOP, BRPOP: multiple existing lists - ziplist
[ok]: ZADD NX only add new elements without updating old ones
[ok]: DISCARD
[ok]: ZADD INCR works like ZINCRBY
[ok]: Nested MULTI are not allowed
[ok]: ZADD INCR works with a single score-elemenet pair
[ok]: SCAN basic
[ok]: MULTI where commands alter argc/argv
[ok]: ZADD CH option changes return value to all changed elements
[ok]: BLPOP, BRPOP: second list has an entry - ziplist
[ok]: ZINCRBY calls leading to NaN result in error
[ok]: WATCH inside MULTI is not allowed
[ok]: ZADD - Variadic version base case
[ok]: ZADD - Return value is the number of actually added items
[ok]: EXEC fails if there are errors while queueing commands #1
[ok]: ZADD - Variadic version does not add nothing on single parsing err
[ok]: BRPOPLPUSH - ziplist
[ok]: ZADD - Variadic version will raise error on missing arg
[ok]: ZINCRBY does not work variadic even if shares ZADD implementation
[ok]: ZCARD basics - ziplist
[ok]: BLPOP, LPUSH + DEL should not awake blocked client
[ok]: ZREM removes key after last element is removed
[ok]: EXEC fails if there are errors while queueing commands #2
[ok]: ZREM variadic version
[ok]: If EXEC aborts, the client MULTI state is cleared
[ok]: ZREM variadic version -- remove elements after key deletion
[ok]: BLPOP, LPUSH + DEL + SET should not awake blocked client
[ok]: EXEC works on WATCHed key not modified
[ok]: EXEC fail on WATCHed key modified (1 key of 1 watched)
[ok]: BLPOP with same key multiple times should work (issue #801)
[ok]: EXEC fail on WATCHed key modified (1 key of 5 watched)
[ok]: EXEC fail on WATCHed key modified by SORT with STORE even if the result is empty
[ok]: ZRANGE basics - ziplist
[ok]: MULTI/EXEC is isolated from the point of view of BLPOP
[ok]: After successful EXEC key is no longer watched
[ok]: After failed EXEC key is no longer watched
[ok]: BLPOP with variadic LPUSH
[ok]: It is possible to UNWATCH
[ok]: ZREVRANGE basics - ziplist
[ok]: UNWATCH when there is nothing watched works as expected
[ok]: FLUSHALL is able to touch the watched keys
[ok]: ZRANK/ZREVRANK basics - ziplist
[ok]: FLUSHALL does not touch non affected keys
[ok]: ZRANK - after deletion - ziplist
[ok]: FLUSHDB is able to touch the watched keys
[ok]: ZINCRBY - can create a new sorted set - ziplist
[ok]: FLUSHDB does not touch non affected keys
[ok]: ZINCRBY - increment and decrement - ziplist
[ok]: WATCH is able to remember the DB a key belongs to
[ok]: WATCH will consider touched keys target of EXPIRE
[ok]: ZRANGEBYSCORE/ZREVRANGEBYSCORE/ZCOUNT basics
[ok]: ZRANGEBYSCORE with WITHSCORES
[ok]: ZRANGEBYSCORE with LIMIT
[ok]: ZRANGEBYSCORE with LIMIT and WITHSCORES
[ok]: ZRANGEBYSCORE with non-value min or max
[ok]: ZRANGEBYLEX/ZREVRANGEBYLEX/ZCOUNT basics
[ok]: ZRANGEBYSLEX with LIMIT
[ok]: ZRANGEBYLEX with invalid lex range specifiers
[ok]: SADD overflows the maximum allowed integers in an intset
[ok]: Variadic SADD
[ok]: SCAN COUNT
[ok]: ZREMRANGEBYSCORE basics
[ok]: ZREMRANGEBYSCORE with non-value min or max
[ok]: Protocol desync regression test #2
[ok]: ZREMRANGEBYRANK basics
[ok]: ZUNIONSTORE against non-existing key doesn't set destination - ziplist
[ok]: ZUNIONSTORE with empty set - ziplist
[ok]: SCAN MATCH
[ok]: ZUNIONSTORE basics - ziplist
[ok]: ZUNIONSTORE with weights - ziplist
[ok]: SSCAN with encoding intset
[ok]: ZUNIONSTORE with a regular set and weights - ziplist
[ok]: ZUNIONSTORE with AGGREGATE MIN - ziplist
[ok]: ZUNIONSTORE with AGGREGATE MAX - ziplist
[ok]: ZINTERSTORE basics - ziplist
[ok]: ZINTERSTORE with weights - ziplist
[ok]: ZINTERSTORE with a regular set and weights - ziplist
[ok]: ZINTERSTORE with AGGREGATE MIN - ziplist
[ok]: ZINTERSTORE with AGGREGATE MAX - ziplist
[ok]: SSCAN with encoding hashtable
[ok]: HSCAN with encoding ziplist
[ok]: ZUNIONSTORE with +inf/-inf scores - ziplist
[ok]: ZUNIONSTORE with NaN weights ziplist
[ok]: ZINTERSTORE with +inf/-inf scores - ziplist
[ok]: ZINTERSTORE with NaN weights ziplist
[ok]: Check encoding - skiplist
[ok]: ZSET basic ZADD and score update - skiplist
[ok]: ZSET element can't be set to NaN with ZADD - skiplist
[ok]: ZSET element can't be set to NaN with ZINCRBY
[ok]: ZADD with options syntax error with incomplete pair
[ok]: ZADD XX option without key - skiplist
[ok]: ZADD XX existing key - skiplist
[ok]: ZADD XX returns the number of elements actually added
[ok]: ZADD XX updates existing elements score
[ok]: ZADD XX and NX are not compatible
[ok]: ZADD NX with non exisitng key
[ok]: ZADD NX only add new elements without updating old ones
[ok]: ZADD INCR works like ZINCRBY
[ok]: ZADD INCR works with a single score-elemenet pair
[ok]: ZADD CH option changes return value to all changed elements
[ok]: ZINCRBY calls leading to NaN result in error
[ok]: ZADD - Variadic version base case
[ok]: ZADD - Return value is the number of actually added items
[ok]: ZADD - Variadic version does not add nothing on single parsing err
[ok]: ZADD - Variadic version will raise error on missing arg
[ok]: ZINCRBY does not work variadic even if shares ZADD implementation
[ok]: ZCARD basics - skiplist
[ok]: ZREM removes key after last element is removed
[ok]: ZREM variadic version
[ok]: ZREM variadic version -- remove elements after key deletion
[ok]: ZRANGE basics - skiplist
[ok]: ZREVRANGE basics - skiplist
[ok]: ZRANK/ZREVRANK basics - skiplist
[ok]: ZRANK - after deletion - skiplist
[ok]: ZINCRBY - can create a new sorted set - skiplist
[ok]: ZINCRBY - increment and decrement - skiplist
[ok]: ZRANGEBYSCORE/ZREVRANGEBYSCORE/ZCOUNT basics
[ok]: ZRANGEBYSCORE with WITHSCORES
[ok]: ZRANGEBYSCORE with LIMIT
[ok]: ZRANGEBYSCORE with LIMIT and WITHSCORES
[ok]: ZRANGEBYSCORE with non-value min or max
[ok]: ZRANGEBYLEX/ZREVRANGEBYLEX/ZCOUNT basics
[ok]: ZRANGEBYSLEX with LIMIT
[ok]: HSCAN with encoding hashtable
[ok]: ZRANGEBYLEX with invalid lex range specifiers
[ok]: ZSCAN with encoding ziplist
[ok]: BRPOPLPUSH with zero timeout should block indefinitely
[ok]: ZREMRANGEBYSCORE basics
[ok]: ZREMRANGEBYSCORE with non-value min or max
[ok]: ZREMRANGEBYRANK basics
[ok]: ZUNIONSTORE against non-existing key doesn't set destination - skiplist
[ok]: ZUNIONSTORE with empty set - skiplist
[ok]: ZUNIONSTORE basics - skiplist
[ok]: Protocol desync regression test #3
[ok]: ZUNIONSTORE with weights - skiplist
[ok]: ZUNIONSTORE with a regular set and weights - skiplist
[ok]: ZUNIONSTORE with AGGREGATE MIN - skiplist
[ok]: ZUNIONSTORE with AGGREGATE MAX - skiplist
[ok]: ZINTERSTORE basics - skiplist
[ok]: ZINTERSTORE with weights - skiplist
[ok]: ZINTERSTORE with a regular set and weights - skiplist
[ok]: ZINTERSTORE with AGGREGATE MIN - skiplist
[ok]: ZINTERSTORE with AGGREGATE MAX - skiplist
[ok]: WATCH will not consider touched expired keys
[ok]: DISCARD should clear the WATCH dirty flag on the client
[ok]: DISCARD should UNWATCH all the keys
[ok]: ZUNIONSTORE with +inf/-inf scores - skiplist
[ok]: ZUNIONSTORE with NaN weights skiplist
[ok]: ZINTERSTORE with +inf/-inf scores - skiplist
[ok]: ZINTERSTORE with NaN weights skiplist
[ok]: ZINTERSTORE regression with two sets, intset+hashtable
[ok]: ZUNIONSTORE regression, should not create NaN in scores
[ok]: ZINTERSTORE #516 regression, mixed sets and ziplist zsets
[ok]: HSET/HLEN - Big hash creation
[ok]: Is the big hash encoded with an hash table?
[ok]: HGET against the small hash
[ok]: ZSCAN with encoding skiplist
[ok]: MULTI / EXEC is propagated correctly (single write command)
[ok]: SCAN guarantees check under write load
[ok]: SSCAN with integer encoded object (issue #1345)
[ok]: SSCAN with PATTERN
[ok]: HSCAN with PATTERN
[ok]: ZSCAN with PATTERN
[ok]: ZUNIONSTORE result is sorted
[ok]: MULTI / EXEC is propagated correctly (empty transaction)
[ok]: EXPIRE - After 2.1 seconds the key should no longer be here
[ok]: EXPIRE - write on expire should work
[ok]: EXPIREAT - Check for EXPIRE alike behavior
[ok]: SETEX - Set + Expire combo operation. Check for TTL
[ok]: SETEX - Check value
[ok]: SETEX - Overwrite old key
[1/37 done]: unit/printver (4 seconds)
Testing unit/quit
[ok]: BRPOPLPUSH with a client BLPOPing the target list
[ok]: BRPOPLPUSH with wrong source type
[ok]: Set encoding after DEBUG RELOAD
[ok]: MULTI / EXEC is propagated correctly (read-only commands)
[ok]: SREM basics - regular set
[ok]: SREM basics - intset
[ok]: SREM with multiple arguments
[ok]: SREM variadic version with more args needed to destroy the key
[ok]: ZSCORE - ziplist
[ok]: ZSCAN scores: regression test for issue #2175
[ok]: ZSCORE after a DEBUG RELOAD - ziplist
[ok]: MULTI / EXEC is propagated correctly (write command, no effect)
[ok]: HGET against the big hash
[ok]: HGET against non existing key
[ok]: HSET in update and insert mode
[ok]: HSETNX target key missing - small hash
[ok]: HSETNX target key exists - small hash
[ok]: HSETNX target key missing - big hash
[ok]: HSETNX target key exists - big hash
[ok]: HMSET wrong number of args
[ok]: HMSET - small hash
[ok]: Generated sets must be encoded as hashtable
[ok]: SINTER with two sets - hashtable
[ok]: SINTERSTORE with two sets - hashtable
[ok]: SINTERSTORE with two sets, after a DEBUG RELOAD - hashtable
[ok]: Very big payload in GET/SET
[ok]: SETEX - Wait for the key to expire
[ok]: SETEX - Wrong time parameter
[ok]: PERSIST can undo an EXPIRE
[ok]: PERSIST returns 0 against non existing or non volatile keys
[ok]: SUNION with two sets - hashtable
[ok]: ZSET sorting stresser - ziplist
[ok]: HMSET - big hash
[ok]: HMGET against non existing key and fields
[ok]: HMGET against wrong type
[ok]: HMGET - small hash
[ok]: SUNIONSTORE with two sets - hashtable
[ok]: HMGET - big hash
[ok]: SINTER against three sets - hashtable
[ok]: SINTERSTORE with three sets - hashtable
[ok]: BRPOPLPUSH with wrong destination type
[ok]: BRPOPLPUSH maintains order of elements after failure
[ok]: BRPOPLPUSH with multiple blocked clients
[ok]: Linked BRPOPLPUSH
[ok]: SUNION with non existing keys - hashtable
[ok]: Circular BRPOPLPUSH
[ok]: Self-referential BRPOPLPUSH
[ok]: BRPOPLPUSH inside a transaction
[ok]: SDIFF with two sets - hashtable
[ok]: SDIFF with three sets - hashtable
[ok]: PUSH resulting from BRPOPLPUSH affect WATCH
[ok]: SDIFFSTORE with three sets - hashtable
[ok]: HKEYS - small hash
[ok]: BRPOPLPUSH does not affect WATCH while still blocked
[ok]: HKEYS - big hash
[ok]: Linked list: SORT BY key
[ok]: HVALS - small hash
[ok]: HVALS - big hash
[ok]: Linked list: SORT BY key with limit
[ok]: Linked list: SORT BY hash field
[ok]: HGETALL - small hash
[ok]: Generated sets must be encoded as intset
[ok]: SINTER with two sets - intset
[ok]: SINTERSTORE with two sets - intset
[ok]: SINTERSTORE with two sets, after a DEBUG RELOAD - intset
[ok]: SUNION with two sets - intset
[ok]: HGETALL - big hash
[ok]: SUNIONSTORE with two sets - intset
[ok]: MIGRATE is caching connections
[ok]: SINTER against three sets - intset
[ok]: HDEL and return value
[ok]: SINTERSTORE with three sets - intset
[ok]: HDEL - more than a single value
[ok]: HDEL - hash becomes empty before deleting all specified fields
[ok]: HEXISTS
[ok]: Is a ziplist encoded Hash promoted on big payload?
[ok]: HINCRBY against non existing database key
[ok]: HINCRBY against non existing hash key
[ok]: HINCRBY against hash key created by hincrby itself
[ok]: SUNION with non existing keys - intset
[ok]: HINCRBY against hash key originally set with HSET
[ok]: HINCRBY over 32bit value
[ok]: HINCRBY over 32bit value with over 32bit increment
[ok]: HINCRBY fails against hash value with spaces (left)
[ok]: HINCRBY fails against hash value with spaces (right)
[ok]: HINCRBY can detect overflows
[ok]: HINCRBYFLOAT against non existing database key
[ok]: HINCRBYFLOAT against non existing hash key
[ok]: SDIFF with two sets - intset
[ok]: SDIFF with three sets - intset
[ok]: HINCRBYFLOAT against hash key created by hincrby itself
[ok]: SDIFFSTORE with three sets - intset
[ok]: HINCRBYFLOAT against hash key originally set with HSET
[ok]: SDIFF with first set empty
[ok]: HINCRBYFLOAT over 32bit value
[ok]: SDIFF with same set two times
[ok]: HINCRBYFLOAT over 32bit value with over 32bit increment
[ok]: HINCRBYFLOAT fails against hash value with spaces (left)
[ok]: HINCRBYFLOAT fails against hash value with spaces (right)
[ok]: Hash ziplist regression test for large keys
[ok]: QUIT returns OK
[ok]: Pipelined commands after QUIT must not be executed
[ok]: Pipelined commands after QUIT that exceed read buffer size
[ok]: Hash fuzzing #1 - 10 fields
[ok]: AUTH fails when a wrong password is given
[ok]: Arbitrary command gives an error when AUTH is required
[ok]: AUTH succeeds when the right password is given
[ok]: Once AUTH succeeded we can actually send commands to the server
[2/37 done]: unit/scan (7 seconds)
Testing unit/aofrw
[ok]: Hash fuzzing #2 - 10 fields
[ok]: EXPIRE pricision is now the millisecond
[3/37 done]: unit/multi (7 seconds)
Testing integration/replication
[ok]: BRPOPLPUSH timeout
[ok]: BLPOP when new key is moved into place
[ok]: BLPOP when result key is created by SORT..STORE
[ok]: BLPOP: with single empty list argument
[ok]: BLPOP: with negative timeout
[ok]: BLPOP: with non-integer timeout
[ok]: Regression for a crash with blocking ops and pipelining
[ok]: BLPOP: with zero timeout should block indefinitely
[ok]: BLPOP: second argument is not a list
[4/37 done]: unit/quit (5 seconds)
Testing integration/replication-2
[ok]: PEXPIRE/PSETEX/PEXPIREAT can set sub-second expires
[ok]: TTL returns tiem to live in seconds
[ok]: PTTL returns time to live in milliseconds
[ok]: TTL / PTTL return -1 if key has no expire
[ok]: TTL / PTTL return -2 if key does not exit
[5/37 done]: unit/auth (9 seconds)
Testing integration/replication-3
[ok]: FUZZ stresser with data model binary
[ok]: Redis should actively expire keys incrementally
[6/37 done]: unit/protocol (10 seconds)
Testing integration/replication-4
[ok]: BLPOP: timeout
[ok]: BLPOP: arguments are empty
[ok]: BRPOP: with single empty list argument
[ok]: BRPOP: with negative timeout
[ok]: BRPOP: with non-integer timeout
[ok]: Redis should lazy expire keys
[ok]: BRPOP: with zero timeout should block indefinitely
[ok]: BRPOP: second argument is not a list
[ok]: EXPIRE should not resurrect keys (issue #1026)
[ok]: 5 keys in, 5 keys out
[ok]: BRPOP: timeout
[ok]: BRPOP: arguments are empty
[ok]: BLPOP inside a transaction
[ok]: LPUSHX, RPUSHX - generic
[ok]: LPUSHX, RPUSHX - linkedlist
[ok]: LINSERT - linkedlist
[ok]: LPUSHX, RPUSHX - ziplist
[ok]: LINSERT - ziplist
[ok]: LINSERT raise error on bad syntax
[ok]: Slave enters handshake
[ok]: LPUSHX, RPUSHX convert from ziplist to list
[ok]: ziplist implementation: value encoding and backlink
[7/37 done]: unit/expire (15 seconds)
Testing integration/replication-psync
[ok]: LINSERT convert from ziplist to list
[ok]: First server should have role slave after SLAVEOF
[ok]: LINDEX consistency test - ziplist
[ok]: If min-slaves-to-write is honored, write is accepted
[ok]: No write if min-slaves-to-write is < attached slaves
[ok]: If min-slaves-to-write is honored, write is accepted (again)
[ok]: First server should have role slave after SLAVEOF
[ok]: LINDEX random access - ziplist
[ok]: First server should have role slave after SLAVEOF
[ok]: Check if list is still ok after a DEBUG RELOAD - ziplist
[ok]: FUZZ stresser with data model alpha
[ok]: MIGRATE cached connections are released after some time
[ok]: No write if min-slaves-max-lag is > of the slave lag
[ok]: min-slaves-to-write is ignored by slaves
[ok]: LINDEX consistency test - linkedlist
[ok]: Slave is able to detect timeout during handshake
[ok]: Test replication with parallel clients writing in differnet DBs
[ok]: LINDEX random access - linkedlist
[ok]: Slave should be able to synchronize with the master
[ok]: Detect write load to master
[ok]: MIGRATE is able to migrate a key between two instances
[ok]: Test replication partial resync: no reconnection, just sync (diskless: no, reconnect: 0)
[ok]: Check if list is still ok after a DEBUG RELOAD - linkedlist
[ok]: LLEN against non-list value error
[ok]: LLEN against non existing key
[ok]: LINDEX against non-list value error
[ok]: LINDEX against non existing key
[ok]: LPUSH against non-list value error
[ok]: RPUSH against non-list value error
[ok]: RPOPLPUSH base case - linkedlist
[ok]: RPOPLPUSH with the same list as src and dst - linkedlist
[ok]: RPOPLPUSH with linkedlist source and existing target linkedlist
[ok]: RPOPLPUSH with linkedlist source and existing target ziplist
[ok]: RPOPLPUSH base case - ziplist
[ok]: RPOPLPUSH with the same list as src and dst - ziplist
[ok]: RPOPLPUSH with ziplist source and existing target linkedlist
[ok]: RPOPLPUSH with ziplist source and existing target ziplist
[ok]: RPOPLPUSH against non existing key
[ok]: RPOPLPUSH against non list src key
[ok]: RPOPLPUSH against non list dst key
[ok]: RPOPLPUSH against non existing src key
[ok]: Basic LPOP/RPOP - linkedlist
[ok]: Basic LPOP/RPOP - ziplist
[ok]: LPOP/RPOP against non list value
[ok]: Mass RPOP/LPOP - ziplist
[ok]: Very big payload random access
[ok]: FUZZ stresser with data model compr
[ok]: Mass RPOP/LPOP - linkedlist
[ok]: LRANGE basics - linkedlist
[ok]: LRANGE inverted indexes - linkedlist
[ok]: LRANGE out of range indexes including the full list - linkedlist
[ok]: LRANGE out of range negative end index - linkedlist
[ok]: LRANGE basics - ziplist
[ok]: LRANGE inverted indexes - ziplist
[ok]: LRANGE out of range indexes including the full list - ziplist
[ok]: LRANGE out of range negative end index - ziplist
[ok]: LRANGE against non existing key
[ok]: LTRIM basics - linkedlist
[ok]: LTRIM out of range negative end index - linkedlist
[ok]: BGSAVE
[ok]: SELECT an out of range DB
[ok]: LTRIM basics - ziplist
[ok]: LTRIM out of range negative end index - ziplist
[ok]: LSET - linkedlist
[ok]: LSET out of range index - linkedlist
[ok]: LSET - ziplist
[ok]: LSET out of range index - ziplist
[ok]: LSET against non existing key
[ok]: LSET against non list value
[ok]: LREM remove all the occurrences - linkedlist
[ok]: LREM remove the first occurrence - linkedlist
[ok]: LREM remove non existing element - linkedlist
[ok]: LREM starting from tail with negative count - linkedlist
[ok]: LREM starting from tail with negative count (2) - linkedlist
[ok]: LREM deleting objects that may be int encoded - linkedlist
[ok]: LREM remove all the occurrences - ziplist
[ok]: LREM remove the first occurrence - ziplist
[ok]: LREM remove non existing element - ziplist
[ok]: LREM starting from tail with negative count - ziplist
[ok]: LREM starting from tail with negative count (2) - ziplist
[ok]: LREM deleting objects that may be int encoded - ziplist
[ok]: MIGRATE is able to copy a key between two instances
[ok]: EXPIRES after a reload (snapshot + append only file rewrite)
[ok]: Regression for bug 593 - chaining BRPOPLPUSH with other blocking cmds
[ok]: Hash fuzzing #1 - 512 fields
[ok]: Set instance A as slave of B
[ok]: BRPOPLPUSH replication, when blocking against empty list
[8/37 done]: unit/type/list (37 seconds)
Testing integration/aof
[ok]: LTRIM stress testing - linkedlist
[ok]: EXPIRES after AOF reload (without rewrite)
[ok]: First server should have role slave after SLAVEOF
[ok]: With min-slaves-to-write (1,3): master should be writable
[ok]: With min-slaves-to-write (2,3): master should not be writable
[ok]: MIGRATE will not overwrite existing keys, unless REPLACE is used
[ok]: BRPOPLPUSH replication, list exists
[ok]: Unfinished MULTI: Server should start if load-truncated is yes
[ok]: BLPOP followed by role change, issue #2473
[ok]: Slave should be able to synchronize with the master
[ok]: Detect write load to master
[ok]: With min-slaves-to-write: master not writable with lagged slave
[ok]: MIGRATE propagates TTL correctly
[ok]: Short read: Server should start if load-truncated is yes
[ok]: Truncated AOF loaded: we expect foo to be equal to 5
[ok]: Append a new command after loading an incomplete AOF
[ok]: Test replication partial resync: ok psync (diskless: no, reconnect: 1)
[ok]: Short read + command: Server should start
[ok]: Truncated AOF loaded: we expect foo to be equal to 6 now
[ok]: AOF rewrite during write load
[ok]: Second server should have role master at first
[ok]: SLAVEOF should start with link status "down"
[ok]: The role should immediately be changed to "slave"
[ok]: Hash fuzzing #2 - 512 fields
[ok]: Sync should have transferred keys from master
[ok]: The link status should be up
[ok]: SET on the master should immediately propagate
[ok]: FLUSHALL should replicate
[ok]: ROLE in master reports master with a slave
[ok]: ROLE in slave reports slave in connected state
[ok]: ZRANGEBYSCORE fuzzy test, 100 ranges in 128 element sorted set - ziplist
[ok]: First server should have role slave after SLAVEOF
[ok]: Bad format: Server should have logged an error
[ok]: PIPELINING stresser (also a regression for the old epoll bug)
[ok]: APPEND basics
[ok]: APPEND basics, integer encoded values
[ok]: Unfinished MULTI: Server should have logged an error
[ok]: ZRANGEBYLEX fuzzy test, 100 ranges in 128 element sorted set - ziplist
[ok]: Turning off AOF kills the background writing child if any
[ok]: Big Linked list: SORT BY key
[ok]: Big Linked list: SORT BY key with limit
[ok]: APPEND fuzzing
[ok]: Short read: Server should have logged an error
[ok]: AOF rewrite of list with ziplist encoding, string data
[ok]: SET 10000 numeric keys and access all them in reverse order
[ok]: DBSIZE should be 10101 now
[ok]: INCR against non existing key
[ok]: INCR against key created by incr itself
[ok]: INCR against key originally set with SET
[ok]: INCR over 32bit value
[ok]: INCRBY over 32bit value with over 32bit increment
[ok]: INCR fails against key with spaces (left)
[ok]: INCR fails against key with spaces (right)
[ok]: INCR fails against key with spaces (both)
[ok]: INCR fails against a key holding a list
[ok]: DECRBY over 32bit value with over 32bit increment, negative res
[ok]: INCR uses shared objects in the 0-9999 range
[ok]: INCR can modify objects in-place
[ok]: INCRBYFLOAT against non existing key
[ok]: INCRBYFLOAT against key originally set with SET
[ok]: INCRBYFLOAT over 32bit value
[ok]: INCRBYFLOAT over 32bit value with over 32bit increment
[ok]: INCRBYFLOAT fails against key with spaces (left)
[ok]: INCRBYFLOAT fails against key with spaces (right)
[ok]: INCRBYFLOAT fails against key with spaces (both)
[ok]: INCRBYFLOAT fails against a key holding a list
[ok]: INCRBYFLOAT does not allow NaN or Infinity
[ok]: INCRBYFLOAT decrement
[ok]: SETNX target key missing
[ok]: SETNX target key exists
[ok]: SETNX against not-expired volatile key
[ok]: Short read: Utility should confirm the AOF is not valid
[ok]: Short read: Utility should be able to fix the AOF
[ok]: FLUSHDB
[ok]: Perform a final SAVE to leave a clean DB on disk
[ok]: ZREMRANGEBYLEX fuzzy test, 100 ranges in 128 element sorted set - ziplist
[ok]: ZSETs skiplist implementation backlink consistency test - ziplist
[ok]: AOF rewrite of list with linkedlist encoding, string data
[ok]: Slave should be able to synchronize with the master
[ok]: Detect write load to master
[ok]: AOF rewrite of list with ziplist encoding, int data
[ok]: Fixed AOF: Server should have been started
[ok]: Fixed AOF: Keyspace should contain values that were parseable
[9/37 done]: unit/other (67 seconds)
Testing integration/rdb
[ok]: MIGRATE can correctly transfer large values
[ok]: AOF rewrite of list with linkedlist encoding, int data
[ok]: AOF rewrite of set with intset encoding, string data
[ok]: RDB encoding loading test
[ok]: Big Linked list: SORT BY hash field
[ok]: Intset: SORT BY key
[ok]: Intset: SORT BY key with limit
[ok]: Intset: SORT BY hash field
[ok]: AOF+SPOP: Server should have been started
[ok]: AOF+SPOP: Set should have 1 member
[ok]: AOF rewrite of set with hashtable encoding, string data
[ok]: AOF rewrite of set with intset encoding, int data
[ok]: MIGRATE can correctly transfer hashes
[ok]: Test replication partial resync: no backlog (diskless: no, reconnect: 1)
[ok]: AOF rewrite of set with hashtable encoding, int data
[ok]: Hash table: SORT BY key
[ok]: Hash table: SORT BY key with limit
[ok]: Hash table: SORT BY hash field
[ok]: Server started empty with non-existing RDB file
[ok]: AOF rewrite of hash with ziplist encoding, string data
[ok]: AOF+EXPIRE: Server should have been started
[ok]: AOF+EXPIRE: List should be empty
[ok]: Stress test the hash ziplist -> hashtable encoding conversion
[ok]: LTRIM stress testing - ziplist
[ok]: ZSETs ZRANK augmented skip list stress testing - ziplist
[ok]: ZSCORE - skiplist
[ok]: MIGRATE timeout actually works
[ok]: SETNX against expired volatile key
[ok]: AOF rewrite of hash with hashtable encoding, string data
[ok]: ZSCORE after a DEBUG RELOAD - skiplist
[ok]: ZSET sorting stresser - skiplist
[10/37 done]: unit/type/hash (82 seconds)
Testing integration/convert-zipmap-hash-on-load
[ok]: DEL against expired key
[ok]: EXISTS
[ok]: Zero length value in key. SET/GET/EXISTS
[ok]: Commands pipelining
[ok]: Non existing command
[ok]: RENAME basic usage
[ok]: RENAME source key should no longer exist
[ok]: RENAME against already existing key
[ok]: RENAMENX basic usage
[ok]: RENAMENX against already existing key
[ok]: RENAMENX against already existing key (2)
[ok]: RENAME against non existing source key
[ok]: RENAME where source and dest key is the same
[11/37 done]: unit/type/list-2 (82 seconds)
Testing integration/logging
[ok]: RENAME with volatile key, should move the TTL as well
[ok]: RENAME with volatile key, should not inherit TTL of target key
[ok]: AOF rewrite of hash with ziplist encoding, int data
[ok]: Server started empty with empty RDB file
[ok]: MASTER and SLAVE consistency with expire
[ok]: Redis should not try to convert DEL into EXPIREAT for EXPIRE -1
[ok]: AOF rewrite of hash with hashtable encoding, int data
[ok]: SDIFF fuzzing
[ok]: SINTER against non-set should throw error
[ok]: SUNION against non-set should throw error
[ok]: SINTER should handle non existing key as empty
[ok]: SINTER with same integer elements but different encoding
[ok]: SINTERSTORE against non existing keys should delete dstkey
[ok]: SUNIONSTORE against non existing keys should delete dstkey
[ok]: SPOP basics - hashtable
[ok]: SRANDMEMBER - hashtable
[ok]: SPOP basics - intset
[ok]: SRANDMEMBER - intset
[ok]: SRANDMEMBER with <count> against non existing key
[ok]: RDB load zipmap hash: converts to ziplist
[ok]: MIGRATE can migrate multiple keys at once
[ok]: MIGRATE with multiple keys must have empty key arg
[ok]: SRANDMEMBER with <count> - hashtable
[ok]: AOF rewrite of zset with ziplist encoding, string data
[ok]: Server is able to generate a stack trace on selected systems
[ok]: SRANDMEMBER with <count> - intset
[ok]: SMOVE basics - from regular set to intset
[ok]: SMOVE basics - from intset to regular set
[ok]: SMOVE non existing key
[ok]: SMOVE non existing src set
[ok]: SMOVE from regular set to non existing destination set
[ok]: SMOVE from intset to non existing destination set
[ok]: SMOVE wrong src key type
[ok]: SMOVE wrong dst key type
[ok]: SMOVE with identical source and destination
[12/37 done]: integration/aof (50 seconds)
Testing unit/pubsub
[ok]: Server should not start if RDB file can't be open
[ok]: Slave should be able to synchronize with the master
[ok]: Detect write load to master
[ok]: AOF rewrite of zset with skiplist encoding, string data
[13/37 done]: integration/logging (8 seconds)
Testing unit/slowlog
[ok]: AOF rewrite of zset with ziplist encoding, int data
[ok]: Server should not start if RDB is corrupted
[ok]: Pub/Sub PING
[ok]: PUBLISH/SUBSCRIBE basics
[ok]: PUBLISH/SUBSCRIBE with two clients
[ok]: PUBLISH/SUBSCRIBE after UNSUBSCRIBE without arguments
[ok]: SUBSCRIBE to one channel more than once
[ok]: UNSUBSCRIBE from non-subscribed channels
[ok]: PUBLISH/PSUBSCRIBE basics
[ok]: PUBLISH/PSUBSCRIBE with two clients
[ok]: PUBLISH/PSUBSCRIBE after PUNSUBSCRIBE without arguments
[ok]: PUNSUBSCRIBE from non-subscribed channels
[ok]: NUMSUB returns numbers, not strings (#1561)
[ok]: Mix SUBSCRIBE and PSUBSCRIBE
[ok]: PUNSUBSCRIBE and UNSUBSCRIBE should always reply
[ok]: Keyspace notifications: we receive keyspace notifications
[ok]: Keyspace notifications: we receive keyevent notifications
[ok]: Keyspace notifications: we can receive both kind of events
[ok]: Keyspace notifications: we are able to mask events
[ok]: Keyspace notifications: general events test
[ok]: Keyspace notifications: list events test
[ok]: Keyspace notifications: set events test
[ok]: Keyspace notifications: zset events test
[ok]: Keyspace notifications: hash events test
[ok]: Keyspace notifications: expired events (triggered expire)
[14/37 done]: integration/rdb (24 seconds)
Testing unit/scripting
[ok]: Keyspace notifications: expired events (background expire)
[ok]: Keyspace notifications: evicted events
[ok]: Keyspace notifications: test CONFIG GET/SET of event flags
[ok]: MIGRATE with mutliple keys migrate just existing ones
[ok]: RDB load zipmap hash: converts to hash table when hash-max-ziplist-entries is exceeded
[ok]: SLOWLOG - check that it starts with an empty log
[ok]: SLOWLOG - only logs commands taking more time than specified
[ok]: SLOWLOG - max entries is correctly handled
[ok]: SLOWLOG - GET optional argument to limit output len works
[ok]: SLOWLOG - RESET subcommand works
[ok]: SLOWLOG - logged entry sanity check
[ok]: SLOWLOG - commands with too many arguments are trimmed
[ok]: SLOWLOG - too long arguments are trimmed
[ok]: AOF rewrite of zset with skiplist encoding, int data
[ok]: SLOWLOG - EXEC is not logged, just executed commands
[ok]: BGREWRITEAOF is delayed if BGSAVE is in progress
[ok]: BGREWRITEAOF is refused if already in progress
[ok]: EVAL - Does Lua interpreter replies to our requests?
[ok]: EVAL - Lua integer -> Redis protocol type conversion
[ok]: EVAL - Lua string -> Redis protocol type conversion
[ok]: EVAL - Lua true boolean -> Redis protocol type conversion
[ok]: EVAL - Lua false boolean -> Redis protocol type conversion
[ok]: EVAL - Lua status code reply -> Redis protocol type conversion
[ok]: EVAL - Lua error reply -> Redis protocol type conversion
[ok]: EVAL - Lua table -> Redis protocol type conversion
[ok]: EVAL - Are the KEYS and ARGV arrays populated correctly?
[ok]: EVAL - is Lua able to call Redis API?
[ok]: EVALSHA - Can we call a SHA1 if already defined?
[ok]: EVALSHA - Can we call a SHA1 in uppercase?
[ok]: EVALSHA - Do we get an error on invalid SHA1?
[ok]: EVALSHA - Do we get an error on non defined SHA1?
[ok]: EVAL - Redis integer -> Lua type conversion
[ok]: EVAL - Redis bulk -> Lua type conversion
[ok]: EVAL - Redis multi bulk -> Lua type conversion
[ok]: EVAL - Redis status reply -> Lua type conversion
[ok]: EVAL - Redis error reply -> Lua type conversion
[ok]: EVAL - Redis nil bulk reply -> Lua type conversion
[ok]: EVAL - Is the Lua client using the currently selected DB?
[ok]: EVAL - SELECT inside Lua should not affect the caller
[ok]: EVAL - Scripts can't run certain commands
[ok]: EVAL - Scripts can't run certain commands
[ok]: EVAL - No arguments to redis.call/pcall is considered an error
[ok]: EVAL - redis.call variant raises a Lua error on Redis cmd error (1)
[ok]: EVAL - redis.call variant raises a Lua error on Redis cmd error (1)
[ok]: EVAL - redis.call variant raises a Lua error on Redis cmd error (1)
[ok]: EVAL - JSON numeric decoding
[ok]: EVAL - JSON string decoding
[ok]: EVAL - cmsgpack can pack double?
[ok]: EVAL - cmsgpack can pack negative int64?
[ok]: EVAL - cmsgpack can pack and unpack circular references?
[ok]: EVAL - Numerical sanity check from bitop
[ok]: EVAL - Verify minimal bitop functionality
[ok]: EVAL - Able to parse trailing comments
[ok]: SCRIPTING FLUSH - is able to clear the scripts cache?
[ok]: SCRIPT EXISTS - can detect already defined scripts?
[ok]: SCRIPT LOAD - is able to register scripts in the scripting cache
[ok]: In the context of Lua the output of random commands gets ordered
[ok]: SORT is normally not alpha re-ordered for the scripting engine
[ok]: SORT BY <constant> output gets ordered for scripting
[ok]: SORT BY <constant> with GET gets ordered for scripting
[ok]: redis.sha1hex() implementation
[ok]: Globals protection reading an undeclared global variable
[ok]: Globals protection setting an undeclared global*
[ok]: Test an example script DECR_IF_GT
[ok]: Scripting engine resets PRNG at every script execution
[ok]: Scripting engine PRNG can be seeded correctly
[15/37 done]: unit/pubsub (8 seconds)
Testing unit/maxmemory
[16/37 done]: unit/slowlog (6 seconds)
Testing unit/introspection
[17/37 done]: unit/aofrw (90 seconds)
Testing unit/limits
[ok]: First server should have role slave after SLAVEOF
[ok]: Without maxmemory small integers are shared
[ok]: With maxmemory and non-LRU policy integers are still shared
[ok]: With maxmemory and LRU policy integers are not shared
[ok]: MIGRATE with multiple keys: stress command rewriting
[ok]: RDB load zipmap hash: converts to hash table when hash-max-ziplist-value is exceeded
[ok]: CLIENT LIST
[ok]: MONITOR can log executed commands
[ok]: MONITOR can log commands issued by the scripting engine
[ok]: CLIENT GETNAME should return NIL if name is not assigned
[ok]: CLIENT LIST shows empty fields for unassigned names
[ok]: CLIENT SETNAME does not accept spaces
[ok]: CLIENT SETNAME can assign a name to this connection
[ok]: CLIENT SETNAME can change the name of an existing connection
[ok]: After CLIENT SETNAME, connection can still be closed
[ok]: EVAL does not leak in the Lua stack
[ok]: Test replication partial resync: ok after delay (diskless: no, reconnect: 1)
[ok]: Check if maxclients works refusing connections
[ok]: EVAL processes writes from AOF in read-only slaves
[ok]: maxmemory - is the memory limit honoured? (policy allkeys-random)
[ok]: We can call scripts rewriting client->argv from Lua
[ok]: Call Redis command with many args from Lua (issue #1764)
[ok]: Number conversion precision test (issue #1118)
[ok]: String containing number precision test (regression of issue #1118)
[ok]: Verify negative arg count is error instead of crash (issue #1842)
[ok]: Correct handling of reused argv (issue #1939)
[18/37 done]: integration/convert-zipmap-hash-on-load (20 seconds)
Testing unit/obuf-limits
[19/37 done]: unit/introspection (6 seconds)
Testing unit/bitops
[20/37 done]: unit/limits (6 seconds)
Testing unit/memefficiency
[ok]: MIGRATE with multiple keys: delete just ack keys
[ok]: BITCOUNT returns 0 against non existing key
[ok]: BITCOUNT against test vector #1
[ok]: BITCOUNT against test vector #2
[ok]: BITCOUNT against test vector #3
[ok]: BITCOUNT against test vector #4
[ok]: BITCOUNT against test vector #5
[ok]: maxmemory - is the memory limit honoured? (policy allkeys-lru)
[21/37 done]: unit/dump (107 seconds)
Testing unit/hyperloglog
[ok]: Timedout read-only scripts can be killed by SCRIPT KILL
[ok]: maxmemory - is the memory limit honoured? (policy volatile-lru)
[ok]: Timedout script link is still usable after Lua returns
[ok]: BITCOUNT fuzzing without start/end
[ok]: Timedout scripts that modified data can't be killed by SCRIPT KILL
[ok]: SHUTDOWN NOSAVE can kill a timedout script anyway
[ok]: Memory efficiency with values in range 32
[ok]: maxmemory - is the memory limit honoured? (policy volatile-random)
[ok]: BITCOUNT fuzzing with start/end
[ok]: BITCOUNT with start, end
[ok]: BITCOUNT syntax error #1
[ok]: BITCOUNT regression test for github issue #582
[ok]: BITCOUNT misaligned prefix
[ok]: BITCOUNT misaligned prefix + full words + remainder
[ok]: BITOP NOT (empty string)
[ok]: BITOP NOT (known string)
[ok]: BITOP where dest and target are the same key
[ok]: BITOP AND|OR|XOR don't change the string with single input key
[ok]: BITOP missing key is considered a stream of zero
[ok]: BITOP shorter keys are zero-padded to the key with max length
[ok]: Slave should be able to synchronize with the master
[ok]: Detect write load to master
[ok]: Before the slave connects we issue two EVAL commands
[ok]: Connect a slave to the main instance
[ok]: Now use EVALSHA against the master, with both SHAs
[ok]: If EVALSHA was replicated as EVAL, 'x' should be '4'
[ok]: Replication of script multiple pushes to list with BLPOP
[ok]: EVALSHA replication when first call is readonly
[ok]: Lua scripts using SELECT are replicated correctly
[ok]: Memory efficiency with values in range 64
[ok]: maxmemory - is the memory limit honoured? (policy volatile-ttl)
[ok]: ZRANGEBYSCORE fuzzy test, 100 ranges in 100 element sorted set - skiplist
[ok]: BITOP and fuzzing
[ok]: Memory efficiency with values in range 128
[22/37 done]: unit/scripting (36 seconds)
[ok]: ZRANGEBYLEX fuzzy test, 100 ranges in 100 element sorted set - skiplist
[ok]: Test replication partial resync: backlog expired (diskless: no, reconnect: 1)
[ok]: maxmemory - only allkeys-* should remove non-volatile keys (allkeys-random)
[ok]: intsets implementation stress testing
[ok]: ZREMRANGEBYLEX fuzzy test, 100 ranges in 100 element sorted set - skiplist
[ok]: ZSETs skiplist implementation backlink consistency test - skiplist
[23/37 done]: unit/type/set (133 seconds)
[ok]: Connect multiple slaves at the same time (issue #141), diskless=no
[ok]: maxmemory - only allkeys-* should remove non-volatile keys (allkeys-lru)
[ok]: Memory efficiency with values in range 1024
[ok]: BITOP or fuzzing
[ok]: Big Hash table: SORT BY key
[ok]: Big Hash table: SORT BY key with limit
[ok]: maxmemory - only allkeys-* should remove non-volatile keys (volatile-lru)
[ok]: BITOP xor fuzzing
[ok]: MASTER and SLAVE dataset should be identical after complex ops
[ok]: BITOP NOT fuzzing
[ok]: BITOP with integer encoded source objects
[ok]: BITOP with non string source key
[ok]: BITOP with empty string after non empty string (issue #529)
[ok]: BITPOS bit=0 with empty key returns 0
[ok]: BITPOS bit=1 with empty key returns -1
[ok]: BITPOS bit=0 with string less than 1 word works
[ok]: BITPOS bit=1 with string less than 1 word works
[ok]: BITPOS bit=0 starting at unaligned address
[ok]: BITPOS bit=1 starting at unaligned address
[ok]: BITPOS bit=0 unaligned+full word+reminder
[ok]: BITPOS bit=1 unaligned+full word+reminder
[ok]: BITPOS bit=1 returns -1 if string is all 0 bits
[ok]: BITPOS bit=0 works with intervals
[ok]: BITPOS bit=1 works with intervals
[ok]: BITPOS bit=0 changes behavior if end is given
[ok]: HyperLogLog self test passes
[ok]: PFADD without arguments creates an HLL value
[ok]: Approximated cardinality after creation is zero
[ok]: PFADD returns 1 when at least 1 reg was modified
[ok]: PFADD returns 0 when no reg was modified
[ok]: PFADD works with empty string (regression)
[ok]: PFCOUNT returns approximated cardinality of set
[ok]: Slave should be able to synchronize with the master
[ok]: Detect write load to master
[ok]: Test replication partial resync: no reconnection, just sync (diskless: yes, reconnect: 0)
[ok]: DEL all keys again (DB 0)
[ok]: DEL all keys again (DB 1)
[ok]: MOVE basic usage
[ok]: MOVE against key existing in the target DB
[ok]: MOVE against non-integer DB (#1428)
[ok]: MOVE can move key expire metadata as well
[ok]: MOVE does not create an expire if it does not exist
[ok]: SET/GET keys in different DBs
[ok]: MGET
[ok]: MGET against non existing key
[ok]: MGET against non-string key
[ok]: BITPOS bit=1 fuzzy testing using SETBIT
[ok]: RANDOMKEY
[ok]: RANDOMKEY against empty DB
[ok]: RANDOMKEY regression 1
[ok]: GETSET (set new value)
[ok]: GETSET (replace old value)
[ok]: MSET base case
[ok]: MSET wrong number of args
[ok]: MSETNX with already existent key
[ok]: MSETNX with not existing keys
[ok]: STRLEN against non-existing key
[ok]: STRLEN against integer-encoded value
[ok]: STRLEN against plain string
[ok]: SETBIT against non-existing key
[ok]: SETBIT against string-encoded key
[ok]: SETBIT against integer-encoded key
[ok]: SETBIT against key with wrong type
[ok]: SETBIT with out of range bit offset
[ok]: SETBIT with non-bit argument
[ok]: Big Hash table: SORT BY hash field
[ok]: SORT GET #
[ok]: SORT GET <const>
[ok]: SORT GET (key and hash) with sanity check
[ok]: SORT BY key STORE
[ok]: SORT BY hash field STORE
[ok]: SORT extracts STORE correctly
[ok]: SORT extracts multiple STORE correctly
[ok]: SORT DESC
[ok]: SORT ALPHA against integer encoded strings
[ok]: SORT sorted set
[ok]: SORT sorted set BY nosort should retain ordering
[ok]: SORT sorted set BY nosort + LIMIT
[ok]: SORT sorted set BY nosort works as expected from scripts
[ok]: SORT sorted set: +inf and -inf handling
[ok]: SORT regression for issue #19, sorting floats
[ok]: SORT with STORE returns zero if result is empty (github issue 224)
[ok]: SORT with STORE does not create empty lists (github issue 224)
[ok]: SORT with STORE removes key if result is empty (github issue 227)
[ok]: SORT with BY <constant> and STORE should still order output
[ok]: SORT will complain with numerical sorting and bad doubles (1)
[ok]: SORT will complain with numerical sorting and bad doubles (2)
[ok]: SORT BY sub-sorts lexicographically if score is the same
[ok]: SORT GET with pattern ending with just -> does not get hash field
[ok]: SORT by nosort retains native order for lists
[ok]: SORT by nosort plus store retains native order for lists
[ok]: SORT by nosort with limit returns based on original list order
[ok]: ZSETs ZRANK augmented skip list stress testing - skiplist
[ok]: SORT speed, 100 element list BY key, 100 times
[ok]: maxmemory - only allkeys-* should remove non-volatile keys (volatile-random)
[ok]: SORT speed, 100 element list BY hash field, 100 times
[24/37 done]: integration/replication-2 (140 seconds)
[ok]: SORT speed, 100 element list directly, 100 times
[ok]: SORT speed, 100 element list BY <const>, 100 times
[ok]: BITPOS bit=0 fuzzy testing using SETBIT
[25/37 done]: unit/type/zset (151 seconds)
[26/37 done]: unit/sort (151 seconds)
[27/37 done]: unit/bitops (50 seconds)
[ok]: HyperLogLogs are promote from sparse to dense
[ok]: maxmemory - only allkeys-* should remove non-volatile keys (volatile-ttl)
[ok]: SETBIT fuzzing
[ok]: GETBIT against non-existing key
[ok]: GETBIT against string-encoded key
[ok]: GETBIT against integer-encoded key
[ok]: SETRANGE against non-existing key
[ok]: SETRANGE against string-encoded key
[ok]: SETRANGE against integer-encoded key
[ok]: SETRANGE against key with wrong type
[ok]: SETRANGE with out of range offset
[ok]: GETRANGE against non-existing key
[ok]: GETRANGE against string value
[ok]: GETRANGE against integer-encoded value
[ok]: Memory efficiency with values in range 16384
[ok]: maxmemory - policy volatile-lru should only remove volatile keys.
[ok]: Slave should be able to synchronize with the master
[ok]: Detect write load to master
[28/37 done]: unit/memefficiency (59 seconds)
[ok]: maxmemory - policy volatile-random should only remove volatile keys.
[ok]: Test replication partial resync: ok psync (diskless: yes, reconnect: 1)
[ok]: HyperLogLog sparse encoding stress test
[ok]: Corrupted sparse HyperLogLogs are detected: Additionl at tail
[ok]: Corrupted sparse HyperLogLogs are detected: Broken magic
[ok]: Corrupted sparse HyperLogLogs are detected: Invalid encoding
[ok]: Corrupted dense HyperLogLogs are detected: Wrong length
[ok]: PFADD, PFCOUNT, PFMERGE type checking works
[ok]: PFMERGE results on the cardinality of union of sets
[ok]: maxmemory - policy volatile-ttl should only remove volatile keys.
[ok]: GETRANGE fuzzing
[ok]: Extended SET can detect syntax errors
[ok]: Extended SET NX option
[ok]: Extended SET XX option
[ok]: Extended SET EX option
[ok]: Extended SET PX option
[ok]: Extended SET using multiple options at once
[ok]: KEYS * two times with long key, Github issue #1208
[ok]: GETRANGE with huge ranges, Github issue #1844
[29/37 done]: unit/maxmemory (75 seconds)
[30/37 done]: unit/basic (172 seconds)
[ok]: Slave should be able to synchronize with the master
[ok]: Detect write load to master
[ok]: ziplist implementation: encoding stress testing
[31/37 done]: unit/type/list-3 (187 seconds)
[ok]: Test replication partial resync: no backlog (diskless: yes, reconnect: 1)
[ok]: Slave should be able to synchronize with the master
[ok]: Detect write load to master
[ok]: Test replication partial resync: ok after delay (diskless: yes, reconnect: 1)
[ok]: Connect multiple slaves at the same time (issue #141), diskless=yes
[ok]: Slave should be able to synchronize with the master
[ok]: Detect write load to master
[ok]: Replication: commands with many arguments (issue #1221)
[ok]: PFCOUNT multiple-keys merge returns cardinality of union
[32/37 done]: integration/replication (219 seconds)
[ok]: Test replication partial resync: backlog expired (diskless: yes, reconnect: 1)
[33/37 done]: integration/replication-4 (218 seconds)
[34/37 done]: integration/replication-psync (215 seconds)
[ok]: PFDEBUG GETREG returns the HyperLogLog raw registers
[ok]: PFADD / PFCOUNT cache invalidation works
[35/37 done]: unit/hyperloglog (125 seconds)
[ok]: MASTER and SLAVE consistency with EVALSHA replication
[36/37 done]: integration/replication-3 (231 seconds)
[ok]: Client output buffer hard limit is enforced
[ok]: Client output buffer soft limit is not enforced if time is not overreached
[ok]: Client output buffer soft limit is enforced if time is overreached
[37/37 done]: unit/obuf-limits (182 seconds)

                   The End

Execution time of different units:
  4 seconds - unit/printver
  7 seconds - unit/scan
  7 seconds - unit/multi
  5 seconds - unit/quit
  9 seconds - unit/auth
  10 seconds - unit/protocol
  15 seconds - unit/expire
  37 seconds - unit/type/list
  67 seconds - unit/other
  82 seconds - unit/type/hash
  82 seconds - unit/type/list-2
  50 seconds - integration/aof
  8 seconds - integration/logging
  24 seconds - integration/rdb
  8 seconds - unit/pubsub
  6 seconds - unit/slowlog
  90 seconds - unit/aofrw
  20 seconds - integration/convert-zipmap-hash-on-load
  6 seconds - unit/introspection
  6 seconds - unit/limits
  107 seconds - unit/dump
  36 seconds - unit/scripting
  133 seconds - unit/type/set
  140 seconds - integration/replication-2
  151 seconds - unit/type/zset
  151 seconds - unit/sort
  50 seconds - unit/bitops
  59 seconds - unit/memefficiency
  75 seconds - unit/maxmemory
  172 seconds - unit/basic
  187 seconds - unit/type/list-3
  219 seconds - integration/replication
  218 seconds - integration/replication-4
  215 seconds - integration/replication-psync
  125 seconds - unit/hyperloglog
  231 seconds - integration/replication-3
  182 seconds - unit/obuf-limits

\o/ All tests passed without errors!

Cleanup: may take some time... OK
