package com.cos.costagram.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.cos.costagram.model.Tag;

public interface TagRepository extends JpaRepository<Tag, Integer>{
	
	public List<Tag> findByNameContaining(String search);
	
}
