package net.sppan.blog.service;

import net.sppan.blog.entity.ResourceCategory;

import java.util.List;

public interface ResourceCategoryService {

    List<ResourceCategory> findAllResourceCategorys(int type);
}
