package com.lxp.config.redis;

import java.util.List;
import java.util.Map;
import java.util.Set;

import org.springframework.data.redis.connection.DataType;

/**
 * @author lxp
 * @date 2018年10月19日 下午4:36:47
 * @parameter
 * @return
 */

public interface BaseRedisDao<K, V> {

	/**
	 * 获取所有的key
	 * 
	 * @return
	 */
	Set<K> getAllKeys();

	/**
	 * 判断key是否存在
	 * 
	 * @param key
	 * @return
	 */
	boolean exists(K key);

	/**
	 * 获取key的类型
	 * 
	 * @param key
	 * @return
	 */
	DataType getType(K key);

	/**
	 * 设置一个key的过期时间（单位：秒），0时为永久有效
	 * 
	 * @param key
	 * @param expireTime
	 * @return
	 */
	boolean setExpireTime(K key, Long expireTime);

	/**
	 * 处理事务时锁定key
	 * 
	 * @param key
	 */
	void watch(String key);

	//////////////////////// String操作 /////////////////////////////////
	/**
	 * 添加key-value,若存在Key则value被替换
	 * 
	 * @param key
	 * @param str
	 */
	void addString(K key, String str);

	/**
	 * 根据Key获取value
	 * 
	 * @param key
	 * @return
	 */
	String getString(K key);

	/**
	 * 根据Key删除
	 * 
	 * @param key
	 */
	void deleteKey(K key);

	/**
	 * 获取所有的key-value
	 * 
	 * @return
	 */
	Map<K, V> getAllString();

	//////////////////////// List 操作 ////////////////////////////////

	/**
	 * 添加list，若Key不存在添加一个Key-list，存在则会添加到list中，可能重复
	 * 
	 * @param key
	 * @param objectList
	 */
	void addList(K key, List<V> list);

	/**
	 * 向list中增加值
	 * 
	 * @param key
	 * @param obj
	 * @return 返回在list中的下标
	 */
	long addValueToList(K key, V obj);

	/**
	 * 向list中增加值
	 * 
	 * @param key
	 * @param obj
	 *            数组形式
	 * @return 返回在list中的下标
	 */
	long addValuesToList(K key, V... obj);

	/**
	 *
	 * 获取list
	 * 
	 * @param key
	 *            List的key
	 * @param s
	 *            开始下标
	 * @param e
	 *            结束的下标
	 * @return
	 */
	List<V> getList(K key, long s, long e);

	/**
	 * 获取完整的list
	 * 
	 * @param key
	 */
	List<V> getAllListByKey(K key);

	/**
	 * 获取list集合中元素的个数
	 * 
	 * @param key
	 * @return
	 */
	long getListSize(K key);

	/**
	 * 移除list中某值 移除list中 count个value为object的值,并且返回移除的数量,
	 * 如果count为0,或者大于list中为value为object数量的总和, 那么移除所有value为object的值,并且返回移除数量
	 * 
	 * @param key
	 * @param object
	 * @return 返回移除数量
	 */
	long removeListValue(K key, V obj);

	/**
	 * 移除list中某值
	 * 
	 * @param key
	 * @param object
	 * @return 返回移除数量
	 */
	long removeListValues(K key, V... obj);

	/**
	 * 获取所有的List -key-value
	 * 
	 * @return
	 */
	Map<K, List<V>> getAllList();

	//////////////////////// Map 操作 /////////////////////////////////
	/**
	 * 添加Key-Map,若map不存在，添加一个key-map,存在则向Map中添加值，key值不重复，value会被覆盖。
	 * 
	 * @param key
	 * @param map
	 */
	void addMap(K key, Map<K, V> map);

	/**
	 * 向key对应的map中添加对象,field对象的值会被覆盖
	 * 
	 * @param key
	 *            cache对象key
	 * @param field
	 *            map对应的key
	 * @param value
	 *            值
	 */
	void addValueToMap(K key, K field, Object value);

	/**
	 * 获取map对象
	 * 
	 * @param key
	 *            map对应的key
	 * @return
	 */
	Map<K, V> getMap(K key);

	/**
	 * 判断map中对应key的key是否存在
	 * 
	 * @param key
	 *            map对应的key
	 * @return
	 */
	Boolean hasMapKey(K key, K field);

	/**
	 * 获取map对应key的value
	 * 
	 * @param key
	 *            map对应的key
	 * @return
	 */
	List<V> getMapFieldValue(K key);

	/**
	 * 获取map的key
	 * 
	 * @param key
	 *            map对应的key
	 * @return
	 */
	Set<V> getMapFieldKey(K key);

	/**
	 * 删除map中的某个对象
	 * 
	 * @param key
	 *            map对应的key
	 * @param field
	 *            map中该对象的key
	 */
	void removeMapField(K key, V... field);

	/**
	 * 获取map对象
	 * 
	 * @param key
	 *            map对应的key
	 * @return
	 */
	Long getMapSize(K key);

	/**
	 * 获取所有的Map -key-value
	 * 
	 * @return
	 */
	Map<K, Map<K, V>> getAllMap();

	//////////////////////// Set 操作 /////////////////////////////////
	/**
	 * 添加key-Set<String>
	 * 
	 * @param key
	 * @param V
	 */
	void addSet(K key, V... obj);

	/**
	 * 根据key获取Set集合
	 * 
	 * @param key
	 * @return
	 */
	Set<V> getSet(K key);

	/**
	 * 根据Key删除
	 * 
	 * @param key
	 */
	void removeSet(K key);

	/**
	 * 判断set中是否存在这个值
	 * 
	 * @param key
	 *            对象key
	 */
	Boolean hasSetValue(K key, V obj);

	/**
	 * 移除set中的某些值
	 * 
	 * @param key
	 *            对象key
	 * @param obj
	 *            值
	 */
	long removeSetValue(K key, V obj);

	/**
	 * 移除set中的某些值
	 * 
	 * @param key
	 *            对象key
	 * @param obj
	 *            值
	 */
	long removeSetValues(K key, V... obj);

	/**
	 * 获得set 并集
	 * 
	 * @param key
	 * @param otherKey
	 * @return
	 */
	Set<V> getSetUnion(K key, K otherKey);

	/**
	 * 获得set 交集
	 * 
	 * @param key
	 * @param otherKey
	 * @return
	 */
	Set<V> getSetIntersect(K key, K otherKey);

	/**
	 * 获取set的对象数
	 * 
	 * @param key
	 *            对象key
	 */
	long getSetSize(K key);

	/**
	 * 获取所有的Set -key-value
	 * 
	 * @return
	 */
	Map<K, Set<V>> getAllSet();

}
