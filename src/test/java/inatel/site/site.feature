Feature: Testando site do Inatel

    Background:
        * configure driver = { type: 'geckodriver', showDriverLog: true }

    Scenario: Conheça o Inatel
        Given driver baseUrl + 'home'
        * maximize()
        When click('#contactar')
        And waitFor(".titulosInternas")
        Then match driver.url == baseUrl + 'home/quem-somos'

    Scenario: Educação
        Given driver baseUrl + "home/index.php#educacao"
        When click('.boxLink')
        And delay(1000)

    Scenario: Vestibular
        Given driver baseUrl + "vestibular/"
        When click("#menuCursos")
        And delay(1000)

    Scenario: Acesso Vestibular
        Given driver "https://siteseguro.inatel.br/Vestibular/acesso/seguranca/login?returnUrl=/Vestibular&_ga=2.79061143.228812587.1589829299-16898279.1579047373"
        And input('input[type=text]', '123456')
        And clear('input[type=text]')
        And input('input[type=text]', Key.ENTER)
        And delay(1000)
        And match driver.dialog == 'Digite o usuário.'
        And dialog(true)
        And delay(3000)