package com.example.demo;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Random;
import java.util.stream.Collectors;
import java.util.stream.LongStream;

@RestController
@RequestMapping("/primes")
public class PrimesController {

    private final Random random = new Random();

    @GetMapping("/random/{upperbound}")
    @ResponseBody
    public List<Long> upperbound(@PathVariable int upperbound) {
        int to = 2 + random.nextInt(upperbound - 2);
        int from = 1 + random.nextInt(to - 1);
        return primeSequence(from, to);
    }

    private List<Long> primeSequence(long min, long max) {
        return LongStream.range(min, max)
                .filter(this::isPrime)
                .boxed()
                .collect(Collectors.toList());
    }

    private boolean isPrime(long n) {
        return LongStream.rangeClosed(2, (long) Math.sqrt(n))
                .allMatch(i -> n % i != 0);
    }
}
