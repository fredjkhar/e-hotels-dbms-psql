import React, { useState } from "react";
import TextField from "@mui/material/TextField";
import { query, update } from "../../helpers/_fetchers";
import "./manager.css";

const Manager = () => {
  const [res, setRes] = useState("");
  const [sql, setSql] = useState("");

  const executeQuery = async () => {
    if (sql.toLowerCase().includes("select"))
      await query(sql, "/api/sql/select", setRes, true);
    else await update(sql, "/api/sql/update", true);
  };

  return (
    <div className="manager__container">
      <div className="manager__input">
        <TextField
          label="SQL"
          multiline
          fullWidth
          variant="filled"
          rows={24}
          size="large"
          value={sql}
          onChange={(e) => setSql(e.target.value)}
        />
        <div
          className="clear__button"
          onClick={() => {
            setRes("");
            executeQuery();
          }}
        >
          Execute
        </div>
        <div className="clear__button" onClick={() => setSql("")}>
          Clear
        </div>
      </div>
      <div className="manager__output">
        <TextField
          label="Response"
          multiline
          fullWidth
          disabled
          variant="filled"
          rows={24}
          size="large"
          value={res}
        />
        <div className="clear__button" onClick={() => setRes("")}>
          Clear
        </div>
      </div>
    </div>
  );
};

export default Manager;
