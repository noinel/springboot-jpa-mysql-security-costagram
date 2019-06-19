package com.cos.costagram.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.cos.costagram.model.Image;
import com.cos.costagram.model.Reply;
import com.cos.costagram.model.User;
import com.cos.costagram.repository.ImageRepository;
import com.cos.costagram.repository.ReplyRepository;
import com.cos.costagram.repository.UserRepository;
import com.cos.costagram.service.CustomUserDetails;

@RestController
@RequestMapping("/reply")
public class ReplyController {
	
	@Autowired
	ReplyRepository replyRepository;
	
	@Autowired
	UserRepository userRepository;
	
	@Autowired
	ImageRepository imageRepository;
	
	
	@PostMapping("/create")
	public @ResponseBody User create(@AuthenticationPrincipal CustomUserDetails userDetail, @RequestBody Reply reply) {
		Optional<User> userO= userRepository.findById(userDetail.getUser().getId());
		User user = new User();
		if(userO.isPresent()) {
			user=userO.get();
		}
		Optional<Image> imageO = imageRepository.findById(reply.getImage().getId());
		Image image = new Image();
		if(imageO.isPresent()) {
			image=imageO.get();
		}
		reply.setUser(user);
		reply.setImage(image);
		
		
		
		replyRepository.save(reply);
			return null;
	}

}
