package com.msp.service;

import com.msp.entity.Post;

import java.util.List;

public interface IPostService {

    public List<Post> findAll();

    public Post findById(int id);

    public Post save(Post post);

    public void deleteById(int id);
}
