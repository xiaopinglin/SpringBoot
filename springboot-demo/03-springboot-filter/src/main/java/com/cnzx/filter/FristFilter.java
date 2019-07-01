package com.cnzx.filter;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import java.io.IOException;

@WebFilter(filterName = "FristFilter", urlPatterns = "/frist")
public class FristFilter implements Filter {

    @Override
    public void init(FilterConfig arg0) throws ServletException { }

    @Override
    public void doFilter(ServletRequest arg0, ServletResponse arg1, FilterChain arg2) throws IOException, ServletException {
        System.out.println("进入FristFilter.......");
        arg2.doFilter(arg0, arg1);
        System.out.println("离开FristFilter.......");
    }

    @Override
    public void destroy() { }
}
