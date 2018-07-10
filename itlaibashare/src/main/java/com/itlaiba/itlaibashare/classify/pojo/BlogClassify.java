package com.itlaiba.itlaibashare.classify.pojo;

public class BlogClassify {
    private Integer classId;

    private String classIfy;

    private Integer blogId;

    public Integer getClassId() {
        return classId;
    }

    public void setClassId(Integer classId) {
        this.classId = classId;
    }

    public String getClassIfy() {
        return classIfy;
    }

    public void setClassIfy(String classIfy) {
        this.classIfy = classIfy == null ? null : classIfy.trim();
    }

    public Integer getBlogId() {
        return blogId;
    }

    public void setBlogId(Integer blogId) {
        this.blogId = blogId;
    }
}