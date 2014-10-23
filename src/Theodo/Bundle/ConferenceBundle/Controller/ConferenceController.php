<?php

namespace Theodo\Bundle\ConferenceBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;

class ConferenceController extends Controller
{
    /**
     * @Route("/forum-php")
     * @Template()
     */
    public function indexAction()
    {
        return array();
    }
}
