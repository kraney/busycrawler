from creepy import Crawler

crawler = Crawler()
crawler.set_follow_mode(Crawler.F_ANY)
crawler.crawl('http://finance.yahoo.com/')
