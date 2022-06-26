package by.bsuir.webapp.utils;

import java.util.stream.IntStream;

public class StringUtils {

	public static boolean isPalindrome(String text) {
		String temp = text.replaceAll("\\s+", "").toLowerCase();
	    return IntStream.range(0, temp.length() / 2)
	    		.noneMatch(i -> temp.charAt(i) != temp.charAt(temp.length() - i - 1));
	}
}
