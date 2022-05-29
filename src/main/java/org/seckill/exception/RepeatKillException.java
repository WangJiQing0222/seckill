package org.seckill.exception;

/**
 * 重复秒杀异常(运行期异常)
 * @author 小飞侠NO.1
 * @startTime 22:17:24
 */
public class RepeatKillException extends SeckillException{

    public RepeatKillException(String message) {
        super(message);
    }

    public RepeatKillException(String message, Throwable cause) {
        super(message, cause);
    }
}
