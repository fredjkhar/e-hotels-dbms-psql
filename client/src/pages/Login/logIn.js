import React from 'react';
import "./connexion.css";
export default function Connexion() {
    return(
      
      
        <div className="connexion_box">
            
                <h1>'Se connecter'</h1>
                <div className='form-group'>
                    <label>Username</label>
                    <input
                    type='text'
                    className='form-control'
                    placeholder='Enter Full Name'
                    />
                </div>
                <div className='form-group'>
                    <label>Password</label>
                    <input
                    type='text'
                    className='form-control'
                    placeholder='Enter Full Name'
                    />
                </div>
                
                <button type='envoyer' className='btn'>Se connecter</button>
                
        </div>
       
    );
    
}
