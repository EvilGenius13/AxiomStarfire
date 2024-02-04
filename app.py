from fastapi import FastAPI, HTTPException
from pydantic import BaseModel
from typing import List, Dict, Union
from initializers.axiom_helper import AxiomHelper

app = FastAPI()
axiom_helper = AxiomHelper()

class EventData(BaseModel):
  data: Union[Dict, List[Dict]]

@app.post("/ingest/event")
async def ingest_event(event_data: EventData):
  try:
    data_to_send = event_data.data if isinstance(event_data.data, list) else [event_data.data]
    await axiom_helper.send_event(data_to_send)
    return {"message": "Data ingested successfully!"}
  except Exception as e:
    raise HTTPException(status_code=500, detail=str(e))
