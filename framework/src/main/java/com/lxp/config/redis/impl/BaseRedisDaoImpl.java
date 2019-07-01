package com.lxp.config.redis.impl;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.TimeUnit;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.connection.DataType;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;

import com.lxp.config.redis.BaseRedisDao;

/**
 * @author lxp
 * @date 2018年10月19日 下午4:46:19
 * @parameter
 * @return
 */
@Service
public class BaseRedisDaoImpl implements BaseRedisDao<String, Object> {

	@Autowired
	private RedisTemplate<String, Object> redisTemplate;

	@Override
	public Set<String> getAllKeys() {
		return redisTemplate.keys("*");
	}

	@Override
	public boolean exists(String key) {
		return redisTemplate.hasKey(key);
	}

	@Override
	public DataType getType(String key) {
		return redisTemplate.type(key);
	}

	@Override
	public boolean setExpireTime(String key, Long expireTime) {
		return redisTemplate.expire(key, expireTime, TimeUnit.SECONDS);
	}

	@Override
	public void watch(String key) {
		redisTemplate.watch(key);

	}

	//////////////////////// String操作 /////////////////////////////////

	@Override
	public void addString(String key, String str) {
		redisTemplate.opsForValue().set(key, str);
	}

	@Override
	public String getString(String key) {
		return (String) redisTemplate.opsForValue().get(key);

	}

	@Override
	public void deleteKey(String key) {
		redisTemplate.delete(key);
	}

	@Override
	public Map<String, Object> getAllString() {
		Set<String> stringSet = getAllKeys();
		Map<String, Object> map = new HashMap<String, Object>();
		Iterator<String> iterator = stringSet.iterator();
		while (iterator.hasNext()) {
			String key = iterator.next();
			if (redisTemplate.type(key) == DataType.STRING) {
				map.put(key, redisTemplate.opsForValue().get(key));
			}
		}
		return map;
	}

	//////////////////////// List 操作 ////////////////////////////////
	@Override
	public void addList(String key, List<Object> list) {
		for (Object obj : list) {
			redisTemplate.opsForList().rightPush(key, obj);
		}
	}

	@Override
	public long addValueToList(String key, Object obj) {
		return redisTemplate.opsForList().rightPush(key, obj);
	}

	@Override
	public long addValuesToList(String key, Object... obj) {
		return redisTemplate.opsForList().rightPushAll(key, obj);
	}

	@Override
	public List<Object> getList(String key, long s, long e) {
		return redisTemplate.opsForList().range(key, s, e);
	}

	@Override
	public List<Object> getAllListByKey(String key) {
		return redisTemplate.opsForList().range(key, 0, redisTemplate.opsForList().size(key));
	}

	@Override
	public long getListSize(String key) {
		return redisTemplate.opsForList().size(key);
	}

	@Override
	public long removeListValue(String key, Object obj) {
		return redisTemplate.opsForList().remove(key, 0, obj);
	}

	@Override
	public long removeListValues(String key, Object... objs) {
		long r = 0;
		for (Object obj : objs) {
			r += redisTemplate.opsForList().remove(key, 0, obj);
		}
		return r;
	}

	@Override
	public Map<String, List<Object>> getAllList() {
		Set<String> stringSet = getAllKeys();
		Map<String, List<Object>> map = new HashMap<String, List<Object>>();
		Iterator<String> iterator = stringSet.iterator();
		while (iterator.hasNext()) {
			String k = iterator.next();
			if (redisTemplate.type(k) == DataType.LIST) {
				map.put(k, redisTemplate.opsForList().range(k, 0, redisTemplate.opsForList().size(k)));
			}
		}
		return map;
	}

	//////////////////////// Map 操作 /////////////////////////////////
	@Override
	public void addMap(String key, Map<String, Object> map) {
		redisTemplate.opsForHash().putAll(key, map);
	}

	@Override
	public void addValueToMap(String key, String field, Object value) {
		redisTemplate.opsForHash().put(key, field, value);
	}

	@Override
	public Map<String, Object> getMap(String key) {
		Map<Object, Object> map1 = redisTemplate.opsForHash().entries(key);
		Map<String, Object> map2 = new HashMap<String, Object>();
		if (map1.size() > 0) {
			for (Object k : map1.keySet()) {
				map2.put(k.toString(), map1.get(k));
			}
		}
		return map2;
	}

	@Override
	public Boolean hasMapKey(String key, String field) {
		return redisTemplate.opsForHash().hasKey(key, field);
	}

	@Override
	public List<Object> getMapFieldValue(String key) {
		return redisTemplate.opsForHash().values(key);
	}

	@Override
	public Set<Object> getMapFieldKey(String key) {
		return redisTemplate.opsForHash().keys(key);
	}

	@Override
	public void removeMapField(String key, Object... field) {
		redisTemplate.opsForHash().delete(key, field);

	}

	@Override
	public Long getMapSize(String key) {
		return redisTemplate.opsForHash().size(key);
	}

	@Override
	public Map<String, Map<String, Object>> getAllMap() {
		Set<String> stringSet = getAllKeys();
		Map<String, Map<String, Object>> map = new HashMap<String, Map<String, Object>>();
		Iterator<String> iterator = stringSet.iterator();
		while (iterator.hasNext()) {
			String k = iterator.next();
			if (redisTemplate.type(k) == DataType.HASH) {
				Map<Object, Object> map1 = new HashMap<Object, Object>();
				Map<String, Object> map2 = new HashMap<String, Object>();
				map1 = redisTemplate.opsForHash().entries(k);
				if (map1.size() > 0) {
					for (Object key : map1.keySet()) {
						map2.put(key.toString(), map1.get(key));
					}
				}
				map.put(k, map2);
			}
		}
		return map;
	}

	//////////////////////// Set 操作 /////////////////////////////////
	@Override
	public void addSet(String key, Object... obj) {
		redisTemplate.opsForSet().add(key, obj);
	}

	@Override
	public Set<Object> getSet(String key) {
		return redisTemplate.opsForSet().members(key);
	}

	@Override
	public void removeSet(String key) {
		redisTemplate.delete(key);
	}

	@Override
	public long removeSetValue(String key, Object obj) {
		return redisTemplate.boundSetOps(key).remove(obj);
	}

	@Override
	public long removeSetValues(String key, Object... objs) {
		if (objs != null && objs.length > 0) {
			return redisTemplate.boundSetOps(key).remove(objs);
		}
		return 0L;
	}

	@Override
	public long getSetSize(String key) {
		return redisTemplate.boundSetOps(key).size();
	}

	@Override
	public Boolean hasSetValue(String key, Object obj) {
		return redisTemplate.boundSetOps(key).isMember(obj);
	}

	@Override
	public Set<Object> getSetUnion(String key, String otherKey) {
		return redisTemplate.boundSetOps(key).union(otherKey);
	}

	@Override
	public Set<Object> getSetIntersect(String key, String otherKey) {
		return redisTemplate.boundSetOps(key).intersect(otherKey);
	}

	@Override
	public Map<String, Set<Object>> getAllSet() {
		Set<String> stringSet = getAllKeys();
		Map<String, Set<Object>> map = new HashMap<String, Set<Object>>();
		Iterator<String> iterator = stringSet.iterator();
		while (iterator.hasNext()) {
			String k = iterator.next();
			if (redisTemplate.type(k) == DataType.SET) {
				map.put(k, redisTemplate.opsForSet().members(k));
			}
		}
		return map;
	}

}
