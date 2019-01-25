package com.msp.security;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.web.DefaultRedirectStrategy;
import org.springframework.security.web.RedirectStrategy;
import org.springframework.security.web.WebAttributes;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Collection;

/*
 * This implementation is going to determine the URL to REDIRECT the user to AFTER LOGIN based on the ROLE of the user
 * */
public class SimpleUrlAuthenticationSuccessHandlerImpl implements AuthenticationSuccessHandler {

    /*Encapsulates the redirection logic for all classes in the framework which perform redirects.*/
    private RedirectStrategy redirectStrategy = new DefaultRedirectStrategy();

    @Override
    public void onAuthenticationSuccess(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Authentication authentication) throws IOException, ServletException {
        handle(httpServletRequest, httpServletResponse, authentication);
        clearAuthenticationAttributes(httpServletRequest);
    }

    protected void handle(HttpServletRequest request, HttpServletResponse response, Authentication auth) {
//        String targetUrl = determineTargetUrl(auth);
        String targetUrl = "/home";

        if (response.isCommitted()) {
            /*Print log*/
            return;
        }

        try {
            redirectStrategy.sendRedirect(request, response, targetUrl);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    protected String determineTargetUrl(Authentication auth) {
        boolean isUser = false;
        boolean isAdmin = false;
        String authority = null;

        Collection<? extends GrantedAuthority> authorities = auth.getAuthorities();

        for (GrantedAuthority ga : authorities) {
            authority = ga.getAuthority();

            if ("ROLE_ADMIN".equals(ga.toString())) {
                isAdmin = true;
                break;
            } else {
                isUser = true;
                break;
            }
        }

        if (isUser) {
            return "/user";
        } else if (isAdmin) {
            return "/admin";
        } else {
            throw new IllegalStateException();
        }
    }

    protected void clearAuthenticationAttributes(HttpServletRequest request) {
        /*
         * TRUE to create a new session for this request if necessary
         * FALSE to return NULL if there's no current session
         * */
        HttpSession session = request.getSession(false);

        if (session == null) {
            return;
        }
        /*
         * WebAttributes: keys which are used to store Spring Security information in request or scope
         * AUTHENTICATION_EXCEPTION: Used to cache an authentication-failure exception in the session.
         * */
        session.removeAttribute(WebAttributes.AUTHENTICATION_EXCEPTION);
    }

    public void setRedirectStrategy(RedirectStrategy redirectStrategy) {
        this.redirectStrategy = redirectStrategy;
    }

    protected RedirectStrategy getRedirectStrategy() {
        return redirectStrategy;
    }
}

/*
 * Besides the AuthenticationSuccessHandler interface, Spring
 * also provides a sensible default for this strategy component – the AbstractAuthenticationTargetUrlRequestHandler and a
 * simple implementation – the SimpleUrlAuthenticationSuccessHandler
 * Typically these implementations will determine the URL after form and perform a redirect to that URL.
 *
 * While somewhat flexible, the mechanism to determine this target URL does not allow the determination to be done programmatically
 * so we’re going to implement the interface and provide a custom implementation of the success handler.
 * */