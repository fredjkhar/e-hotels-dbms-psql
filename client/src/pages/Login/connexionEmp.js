import React from 'react';
import "./connexion.css";
export default function Connexion() {
    return(
      
      
        <div className="connexion_box">
            
                <h1>'S'inscrire en  tant qu'employe'</h1>
                <div className='form-group'>
                    <label>Nom</label>
                    <input
                    type='text'
                    className='form-control'
                    placeholder='Enter Full Name'
                    />
                </div>
                <div className='form-group'>
                    <label>Prenom</label>
                    <input
                    type='text'
                    className='form-control'
                    placeholder='Enter Full Name'
                    />
                </div>
                <div className='form-group'>
                    <label>Age</label>
                    <input
                    type='text'
                    className='form-control'
                    placeholder='Enter Full Name'
                    />
                </div>
                <div className='form-group'>
                    <label>numero-rue</label>
                    <input
                    type='text'
                    className='form-control'
                    placeholder='Enter Full Name'
                    />
                </div>
                <div className='form-group'>
                    <label>rue</label>
                    <input
                    type='text'
                    className='form-control'
                    placeholder='Enter Full Name'
                    />
                </div>
                <div className='form-group'>
                    <label>ville</label>
                    <input
                    type='text'
                    className='form-control'
                    placeholder='Enter Full Name'
                    />
                </div>
                <div className='form-group'>
                    <label>province</label>
                    <input
                    type='text'
                    className='form-control'
                    placeholder='Enter Full Name'
                    />
                </div>
                <div className='form-group'>
                    <label>pays</label>
                    <input
                    type='text'
                    className='form-control'
                    placeholder='Enter Full Name'
                    />
                </div>
                <div className='form-group'>
                    <label>code_postal</label>
                    <input
                    type='text'
                    className='form-control'
                    placeholder='Enter Full Name'
                    />
                </div>
                <div className='form-group'>
                    <label>numero de telephone</label>
                    <input
                    type='text'
                    className='form-control'
                    placeholder='Enter Full Name'
                    />
                </div>
                <div className='form-group'>
                    <label>courriel</label>
                    <input
                    type='Courriel'
                    className='form-control'
                    placeholder='Enter votre courriel'
                    />
                </div>
                <div className='form-group'>
                    <label>NAS</label>
                    <input
                    type='NAS'
                    className='form-control'
                    placeholder='Enter votre NAS'
                    />
                </div>
                <div className='form-group'>
                    <label>mot de passe</label>
                    <input
                    type='password'
                    className='form-control'
                    placeholder='Entrer le mot de passe'
                    />
                </div>
                <div className='form-group'>
                    <label>Mot de passe</label>
                    <input
                    type='password'
                    className='form-control'
                    placeholder='Entrer le mot de passe'
                    />
                </div>
                <button type='envoyer' className='btn'>S'inscrire</button>
                
        </div>
       
    );
    
}