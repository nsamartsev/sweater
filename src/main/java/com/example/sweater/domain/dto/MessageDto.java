package com.example.sweater.domain.dto;

import com.example.sweater.domain.Message;
import com.example.sweater.domain.User;
import lombok.Getter;
import lombok.ToString;

@Getter
@ToString(of = {"id", "author", "likes", "meLiked"})
public class MessageDto {

    private final Long id;

    private final String text;

    private final String tag;

    private final User author;

    private final String filename;

    private final Long likes;

    private final Boolean meLiked;

    public MessageDto(Message message, Long likes, Boolean meLiked) {
        this.id = message.getId();
        this.text = message.getText();
        this.tag = message.getTag();
        this.author = message.getAuthor();
        this.filename = message.getFilename();
        this.likes = likes;
        this.meLiked = meLiked;
    }

}
