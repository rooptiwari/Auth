package com.InterviewPreperation.dto;

import lombok.*;

@Data

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class RegisterRequest {
    private String email;
    private String password;
    private String role;
}
