package com.cos.costagram.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.cos.costagram.model.Reply;

public interface ReplyRepository extends JpaRepository<Reply, Integer> {
	
}
