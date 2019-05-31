package com.cos.costagram.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.cos.costagram.model.Image;

public interface ImageRepository extends JpaRepository<Image, Integer>{
	
	public List<Image> findByUserIdOrderByCreateDateDesc(int userId);
	
	@Query(value = "select id, caption, createDate, fileName, filePath, location, mimeType, updateDate, userId from (select *, row_number() over (partition by (userid) order by userid) as 'rank' from image where 'rank' < 3 and userId in( select id from user where id != ?1 and id not in (select toUser from follow where fromUser = ?1))) as tab order by id desc limit 20", nativeQuery = true)
	public List<Image> findExploreByUserId(int userid);
}
