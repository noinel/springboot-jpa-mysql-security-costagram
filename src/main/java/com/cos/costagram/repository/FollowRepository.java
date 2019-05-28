package com.cos.costagram.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.cos.costagram.model.Follow;

public interface FollowRepository extends JpaRepository<Follow, Integer>{
	
	//팔로우 리스트
	public List<Follow> findByFromUserId(int fromUser);
	

	//팔로워 리스트

	public List<Follow> findByToUserId(int toUser);
}
