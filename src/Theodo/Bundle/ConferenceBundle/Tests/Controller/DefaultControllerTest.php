<?php

namespace Theodo\Bundle\ConferenceBundle\Tests\Controller;

use Symfony\Bundle\FrameworkBundle\Test\WebTestCase;

class DefaultControllerTest extends WebTestCase
{
    public function testIndex()
    {
        $client = static::createClient();

        $crawler = $client->request('GET', '/');

        $this->assertTrue($crawler->filter('html:contains("Welcome!")')->count() > 0);
        $this->assertTrue($crawler->filter('a:contains("Forum PHP")')->count() > 0);
    }
}
