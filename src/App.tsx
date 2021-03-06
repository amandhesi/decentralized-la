import React from 'react';
import './App.css';
import { PopupButton } from '@typeform/embed-react'

const MyComponent = () => {
  return (
    <PopupButton id="zxB5hTC5" style={{ fontSize: 20 }} className="my-button">
      click to open form in popup
    </PopupButton>
  )
}

function App() {
  return (
    <div className="App">
      <div className="About">
        Decentralized LA is a community of Cryptoasset and Web3.0 builders, entrepreneurs and investors in Los Angeles. We organize curated, invite-only events every month.

        Apply to be part of the community by filling out the form below.
      </div>
      <MyComponent />
    </div>
  );
}

export default App;
