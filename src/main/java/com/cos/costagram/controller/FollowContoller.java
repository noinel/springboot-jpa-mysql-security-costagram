package com.cos.costagram.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import com.cos.costagram.model.Follow;
import com.cos.costagram.model.User;
import com.cos.costagram.repository.FollowRepository;
import com.cos.costagram.repository.UserRepository;
import com.cos.costagram.service.CustomUserDetails;

@RestController

public class FollowContoller {
	
	@Autowired
	private FollowRepository followRepository;
	
	@Autowired
	private UserRepository userRepository;
	
	@PostMapping("/follow/{id}")
	public String follow(@PathVariable Integer id, @AuthenticationPrincipal CustomUserDetails userDetail) {
	
		
		Optional<User> optionalToUser = userRepository.findById(id);
		User fromUser = userDetail.getUser();
		User toUser = optionalToUser.get();
		
		Follow follow = new Follow();
		follow.setFromUser(fromUser);
		follow.setToUser(toUser);
		
		followRepository.save(follow);
		//세션에서 현재 유저정보 가져오기
		return "ok";
	}
	@PostMapping("/unfollow/{id}")
	public String unFollow(@PathVariable Integer id, @AuthenticationPrincipal CustomUserDetails userDetail) {
	
		
		Optional<User> optionalToUser = userRepository.findById(id);
		User fromUser = userDetail.getUser();
		User toUser = optionalToUser.get();
		
		
		System.out.println("삭제");
		System.out.println(fromUser.getId() +":"+ toUser.getId());
		followRepository.deleteByFromUserIdAndToUserId(fromUser.getId(), toUser.getId());
		//세션에서 현재 유저정보 가져오기
		return "ok";
	}
	@GetMapping("/followlist/{id}")
	public List<Follow> followlist(@PathVariable Integer id)
	{
		List<Follow> followlist=followRepository.findByFromUserId(id);
		
		
		return followlist;
		
	}
	@GetMapping("/followerlist/{id}")
	public List<Follow> followerlist(@PathVariable Integer id)
	{
		List<Follow> followerlist=followRepository.findByToUserId(id);
		for(Follow f: followerlist) {
			boolean doFollowing =false;
			int point=followRepository.findByFromUserIdAndToUserId(id, f.getFromUser().getId());
			if(point == 0) {
				doFollowing= true;
			}
			f.setDoFollowing(doFollowing);
		}
		
		return followerlist;
		
	}
}
