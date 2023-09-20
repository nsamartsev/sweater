package com.example.sweater.domain.util;

import com.example.sweater.domain.User;

import java.util.Objects;

public abstract class MessageHelper {

    public static String getAuthorName(User author) {
        return Objects.nonNull(author) ? author.getUsername() : "<none>";
    }

}
