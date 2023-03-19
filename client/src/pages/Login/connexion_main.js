import React from 'react';
import "./connexion_main.css";
import { Link } from "react-router-dom";
import Button from '@mui/material/Button';

export default function Connexion() {
    return(
      
        <div className="connexion_box2">
                {/* <button type='logIn' className='btn'>Se connecter</button>
                <button type='ESignUp' className='btn'>S'inscrire en tant qu'employe</button>
                <button type='CSignUp' className='btn'>S'inscrire en tant que client</button> */}

                <Link to='/button1' >
                    <button className='btn'>Se connecter</button>
                </Link>
                <Link to='/button2' >
                    <button className='btn'>S'inscrire en tant qu'employe</button>
                </Link>
                <Link to='/button3' >
                    <button className='btn'>S'inscrire en tant que client</button>
                </Link>


        </div>
        
       
    );
    
}
