package com.example.sweater.domain.dto;

import com.fasterxml.jackson.annotation.JsonAlias;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import lombok.Getter;
import lombok.Setter;

import java.util.Set;

@Setter
@Getter
@JsonIgnoreProperties(ignoreUnknown = true)
public class CaptchaResponseDto {

    private boolean success;

    @JsonAlias("error-codes")
    private Set<String> errorCodes;

}
