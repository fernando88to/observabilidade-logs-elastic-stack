package logger

import org.apache.commons.lang.math.RandomUtils

class IndexController {

    RandomUtils randomUtils = new RandomUtils()

    def index() {
        log.debug('{\"valor\":{}, \"idade\":15}', randomUtils.nextInt())
        render "foi"
    }

}
