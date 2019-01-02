dataSource { 
	pooled = true 
	driverClassName = "org.postgresql.Driver" 
	username = "postgres" 
	password = "root" 
}
hibernate { 
    cache.use_second_level_cache=true 
    cache.use_query_cache=true 
    cache.provider_class='com.opensymphony.oscache.hibernate.OSCacheProvider' 
} 
environments { 
	development { 
		dataSource { 
			dbCreate = "update" 
			url = "jdbc:postgresql://localhost:5432/jcloudbpmn" 
		} 
	} 
	test { 
		dataSource { 
			dbCreate = "update" 
			url = "jdbc:hsqldb:mem:piramide" 
		} 
	} 
	production { 
		dataSource { 
			dbCreate = "update" 
			url = "jdbc:hsqldb:file:prodDb;shutdown=true" 
		} 
	} 
} 
