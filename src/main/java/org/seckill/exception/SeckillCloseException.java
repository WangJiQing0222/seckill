package org.seckill.exception;

/**
 * 秒杀关闭异常
 * @author 小飞侠NO.1
 * @startTime 22:19:40
 */
public class SeckillCloseException extends SeckillException{
    public SeckillCloseException(String message) {
        super(message);
    }

    public SeckillCloseException(String message, Throwable cause) {
        super(message, cause);
    }
}
