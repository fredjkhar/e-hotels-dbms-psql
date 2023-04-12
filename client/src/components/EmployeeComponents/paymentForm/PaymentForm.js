import React, {useState} from "react";
import "./PaymentForm.css";

const PaymentForm = () => {

    const [showMessage, setShowMessage] = useState(false);

  return (
    <div className="form__background room__wrapper">
      <div className="payment__form">
        <h1> Credit card information </h1>
        <div className="payment__box">
          <div className="input__box">
            <label htmlFor="first_name">First Name:</label>
            <input type="text" id="first_name" name="first_name" />
          </div>
          <div className="input__box">
            <label htmlFor="last_name">Last Name:</label>
            <input type="text" id="last_name" name="last_name" />
          </div>
        </div>

        <div className="payment__box">
          <div className="input__box">
            <label htmlFor="card_number">Card Number:</label>
            <input type="text" id="card_number" name="card_number" />
          </div>
          <div className="input__box">
            <label htmlFor="exp_date">Expiration Date:</label>
            <input type="text" id="exp_date" name="exp_date" />
          </div>
          <div className="input__box">
            <label htmlFor="ccv">CCV:</label>
            <input type="text" id="ccv" name="ccv" />
          </div>
        </div>
        <button onClick={() => setShowMessage(!showMessage)}> Submit </button>
        {showMessage && (
            <div className="confirmation__message">
              {"payment submitted"}
            </div>
          )}
      </div>
    </div>
  );
};

export default PaymentForm;
