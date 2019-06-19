package com.cos.costagram.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.cos.costagram.model.ProfileImage;
import com.cos.costagram.model.User;

public interface ProfileImageRepository extends JpaRepository<ProfileImage, Integer>{
	
	public Optional<ProfileImage>findByUser(User user);
}
