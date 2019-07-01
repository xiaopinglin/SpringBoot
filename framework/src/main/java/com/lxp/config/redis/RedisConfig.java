package com.lxp.config.redis;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.redis.connection.jedis.JedisConnectionFactory;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.serializer.Jackson2JsonRedisSerializer;
import org.springframework.data.redis.serializer.StringRedisSerializer;

import redis.clients.jedis.JedisPoolConfig;

/**
 * @author lxp
 * @date 2018年10月19日 下午3:22:18
 * @parameter
 * @return
 */
@Configuration
public class RedisConfig {

	@Value("${spring.redis.database}")
	private Integer database;

	@Value("${spring.redis.hostName}")
	private String hostName;

	@Value("${spring.redis.port}")
	private Integer port;

	@Value("${spring.redis.password}")
	private String password;

	@Value("${spring.redis.pool.max-active}")
	private Integer maxActive;

	@Value("${spring.redis.pool.max-wait}")
	private Long maxWait;

	@Value("${spring.redis.pool.max-idle}")
	private Integer maxIdle;

	@Value("${spring.redis.pool.min-idle}")
	private Integer minIdle;

	@Value("${spring.redis.timeout}")
	private Long timeout;

	/**
	 * 1.创建JedisPoolConfig对象。在该对象中完成一些链接池配置
	 *
	 * @return
	 */

	@Bean
	public JedisPoolConfig jedusPoolConfig() {
		JedisPoolConfig config = new JedisPoolConfig();

		config.setMaxTotal(maxActive);
		config.setMaxWaitMillis(maxWait);
		config.setMaxIdle(maxIdle);
		config.setMinIdle(minIdle);

		return config;
	}

	/**
	 * 2.创建JedisConnectionFactory：配置redis链接信息
	 *
	 * @param config
	 * @return
	 */
	@Bean
	public JedisConnectionFactory jedisConnectionFactory(JedisPoolConfig jedusPoolConfig) {
		JedisConnectionFactory factory = new JedisConnectionFactory();
		factory.setPoolConfig(jedusPoolConfig);
		factory.setDatabase(database);
		factory.setHostName(hostName);
		factory.setPort(port);
		factory.setPassword(password);

		return factory;
	}

	/**
	 * 3.创建RedisTemplate:用于执行Redis操作的方法
	 *
	 * @param factory
	 * @return
	 */
	@Bean
	public RedisTemplate<String, Object> redisTemplate(JedisConnectionFactory factory) {
		RedisTemplate<String, Object> template = new RedisTemplate<String, Object>();
		// 关联
		template.setConnectionFactory(factory);
		// 为key设置序列化器
		template.setKeySerializer(new StringRedisSerializer());
		// 为value设置序列化器
		template.setValueSerializer(new StringRedisSerializer());

		// 为Hash的Key设置序列化器
		template.setHashKeySerializer(new StringRedisSerializer());

		// 为Hash的value设置序列化器
		template.setHashValueSerializer(new Jackson2JsonRedisSerializer<>(Object.class));

		return template;
	}

}
