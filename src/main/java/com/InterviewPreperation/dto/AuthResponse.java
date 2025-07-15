package com.InterviewPreperation.dto;

import lombok.*;

@Data

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class AuthResponse {
    private String token;

}