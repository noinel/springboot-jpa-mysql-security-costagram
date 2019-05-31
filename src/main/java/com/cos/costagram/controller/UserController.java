package com.cos.costagram.controller;

import java.time.LocalDate;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.cos.costagram.model.Follow;
import com.cos.costagram.model.Image;
import com.cos.costagram.model.Likes;
import com.cos.costagram.model.User;
import com.cos.costagram.repository.FollowRepository;
import com.cos.costagram.repository.ImageRepository;
import com.cos.costagram.repository.LikesRepository;
import com.cos.costagram.repository.UserRepository;
import com.cos.costagram.service.CustomUserDetails;

@Controller
public class UserController {

	@Autowired
	private BCryptPasswordEncoder passwordEncoder;

	@Autowired
	private UserRepository userRepository;

	@Autowired
	private ImageRepository imageRepository;

	@Autowired
	private LikesRepository likesRepository;

	@Autowired
	private FollowRepository followRepository;

	@GetMapping("/")
	public String home() {
		return "/auth/join";
	}

	@GetMapping("/auth/login")
	public String authLogin() {
		return "/auth/login";
	}

	@GetMapping("/auth/join")
	public String authJoin() {
		return "/auth/join";
	}

	@PostMapping("/auth/create")
	public String create(User user) {
		String rawPassword = user.getPassword();
		String encPassword = passwordEncoder.encode(rawPassword);
		user.setPassword(encPassword);
		userRepository.save(user);
		return "/auth/login";
	}

	@GetMapping("/user/{id}")
	public String userDetail(@PathVariable int id, @AuthenticationPrincipal CustomUserDetails userDetail, Model model) {
		// 유저디테일정보 user
		Optional<User> userO = userRepository.findById(userDetail.getUser().getId());
		User user = userO.get();
		// id의 유저 정보 imageUser
		Optional<User> imageUserO = userRepository.findById(id);

		User imageUser = imageUserO.get();

		// 이미지 리스트+ 이미지카운트 imageList, imageCount
		List<Image> imageList = imageRepository.findByUserIdOrderByCreateDateDesc(id);
		int imageCount = imageList.size();
		for (Image i : imageList) {
			List<Likes> likeList = likesRepository.findByImageId(i.getId());
			i.setLikeCount(likeList.size());
		}
		// 팔로우 카운트 followCount
		List<Follow> follows = followRepository.findByFromUserId(imageUser.getId());
		int followCount = follows.size();
		// 팔로워 카운트 followerCount
		List<Follow> followers = followRepository.findByToUserId(imageUser.getId());
		int followerCount = followers.size();
		boolean followCheck= false;
		for(Follow f: followers) {
			if(f.getFromUser().getId() == user.getId()) {
				followCheck=true;
			}
		}
		
//		int followCheck = followRepository.findByFromUserIdAndToUserId(user.getId(), id);
		
		model.addAttribute("user", user);
		model.addAttribute("imageUser", imageUser);
		model.addAttribute("imageList", imageList);
		model.addAttribute("imageCount", imageCount);
		model.addAttribute("followCheck", followCheck);
		model.addAttribute("followCount", followCount);
		model.addAttribute("followerCount", followerCount);

		return "/user/user";

	}

	

	@GetMapping("/explore")
	public String explore(@AuthenticationPrincipal CustomUserDetails userDetail, Model model) {
		
		Optional<User> userO = userRepository.findById(userDetail.getUser().getId());
		User user = userO.get();
		List<Image> imageList = imageRepository.findExploreByUserId(user.getId());
		model.addAttribute("user", user);
		model.addAttribute("imageList", imageList);
		
		return "user/explore";
	}
	@GetMapping("/user/edit")
	public String edit(@AuthenticationPrincipal CustomUserDetails userDetail, Model model) {
		Optional<User> userO = userRepository.findById(userDetail.getUser().getId());
		User user = userO.get();
		model.addAttribute("user", user);
		model.addAttribute("fail", "true");
		return "/user/edit";
	}
	
	@PostMapping("/user/editProc")
	public String editProc(@AuthenticationPrincipal CustomUserDetails userDetail, User user, Model model) {
		user.setUsername(userDetail.getUsername());
		user.setPassword(userDetail.getPassword());
		user.setCreateDate(userDetail.getUser().getCreateDate());
		user.setUpdateDate(LocalDate.now());
		user = userRepository.save(user);
		model.addAttribute("user", user);
		model.addAttribute("fail", "success");
		return "/user/edit";
	}
	
	
	@GetMapping("/user/settings")
	public String setting(@AuthenticationPrincipal CustomUserDetails userDetail, Model model) {
		Optional<User> userO = userRepository.findById(userDetail.getUser().getId());
		User user = userO.get();
		model.addAttribute("user", user);
		return "/user/settings";
	}
	@GetMapping("/user/change")
	public String change(@AuthenticationPrincipal CustomUserDetails userDetail, Model model) {
		Optional<User> userO = userRepository.findById(userDetail.getUser().getId());
		User user = userO.get();
		model.addAttribute("user", user);
		model.addAttribute("fail", "true");
		
		return "/user/change";
	}
	@PostMapping("/user/changeProc")
	public String changeProc(@AuthenticationPrincipal CustomUserDetails userDetail, String oldPassword, String newPassword, Model model) {
		Optional<User> userO = userRepository.findById(userDetail.getUser().getId());
		User user = userO.get();
		if(passwordEncoder.matches(oldPassword, user.getPassword())) {
		
		newPassword =passwordEncoder.encode(newPassword);
		
		user.setUpdateDate(LocalDate.now());
		user.setPassword(newPassword);
		userRepository.save(user);
		userDetail.getUser().setPassword(newPassword);
		model.addAttribute("fail", "success");
		}else {
			model.addAttribute("fail", "false");
		}
		model.addAttribute("user", user);
		return "/user/change";
	}
	@GetMapping("/user/contact_history")
	public String contact_history(@AuthenticationPrincipal CustomUserDetails userDetail, Model model) {
		Optional<User> userO = userRepository.findById(userDetail.getUser().getId());
		User user = userO.get();
		model.addAttribute("user", user);
		return "/user/contact_history";
	}
	@GetMapping("/user/manage_access")
	public String manage_access(@AuthenticationPrincipal CustomUserDetails userDetail, Model model) {
		Optional<User> userO = userRepository.findById(userDetail.getUser().getId());
		User user = userO.get();
		model.addAttribute("user", user);
		return "/user/manage_access";
	}
	@GetMapping("/user/privacy_and_security")
	public String privacy_and_security(@AuthenticationPrincipal CustomUserDetails userDetail, Model model) {
		Optional<User> userO = userRepository.findById(userDetail.getUser().getId());
		User user = userO.get();
		model.addAttribute("user", user);
		
		return "/user/privacy_and_security";
	}
}
