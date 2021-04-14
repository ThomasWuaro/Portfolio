<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use App\Entity\Skill;
use App\Entity\Formation;
use App\Entity\Experiences;

class HomeController extends AbstractController
{
    /**
     * @Route("/", name="home")
     */
    public function index(): Response
    {	
        //lol//
    	$em = $this->getDoctrine()->getManager();
    	$skills = $em->getRepository(Skill::class)->findAll();
        $formations = $em->getRepository(Formation::class)->findAll();
        $projects = $em->getRepository(Experiences::class)->findAll();

        return $this->render('home/index.html.twig', [
            'controller_name' => 'HomeController',
            'skills' => $skills,
            'formations' => $formations,
            'projects' => $projects,
        ]);
    }
}
