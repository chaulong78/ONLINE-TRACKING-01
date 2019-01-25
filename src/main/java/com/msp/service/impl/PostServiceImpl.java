package com.msp.service.impl;

import com.msp.dao.PostRepository;
import com.msp.entity.Post;
import com.msp.service.IPostService;
import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;
import java.util.Optional;

@Service
public class PostServiceImpl implements IPostService {

    @Autowired
    private PostRepository postRepository;

    @Override
    public List<Post> findAll() {
        return postRepository.findAll();
    }

    @Override
    public Post findById(int id) {
        Optional<Post> result = postRepository.findById(id);

        Post post = null;

        if (result.isPresent()){
            post = result.get();
        } else {
            throw new RuntimeException("Post id not found - " + id);
        }

        return post;
    }

    @Override
    public Post save(Post post) {
        postRepository.save(post);

        return post;
    }

    @Override
    public void deleteById(int id) {
        postRepository.deleteById(id);
    }
}
