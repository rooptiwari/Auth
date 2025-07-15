package com.InterviewPreperation.dto;


import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import lombok.*;

@Data

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder

public class LoginRequest {
    @Email
    @NotBlank
    private String email;

    @NotBlank
    private String password;
}