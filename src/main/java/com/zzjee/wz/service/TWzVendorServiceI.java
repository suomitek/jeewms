package com.zzjee.wz.service;
import com.zzjee.wz.entity.TWzVendorEntity;
import org.jeecgframework.core.common.service.CommonService;

import java.io.Serializable;

public interface TWzVendorServiceI extends CommonService{
	
 	public void delete(TWzVendorEntity entity) throws Exception;
 	
 	public Serializable save(TWzVendorEntity entity) throws Exception;
 	
 	public void saveOrUpdate(TWzVendorEntity entity) throws Exception;
 	
}
