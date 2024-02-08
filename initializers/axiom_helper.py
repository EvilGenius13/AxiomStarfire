import axiom
import asyncio
import os
from dotenv import load_dotenv
load_dotenv()

if not os.getenv("AXIOM_KEY") or not os.getenv("AXIOM_DATASET"):
    raise Exception("AXIOM_KEY or AXIOM_DATASET are not set in environment variables")

AXIOM_DATASET = os.getenv("AXIOM_DATASET")

class AxiomHelper:
    def __init__(self):
        self.client = axiom.Client(os.getenv("AXIOM_KEY"), AXIOM_DATASET)

    
    async def send_event(self, event_data):
        await asyncio.to_thread(self.client.ingest_events, AXIOM_DATASET, event_data)
