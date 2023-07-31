import aiohttp
import aiofiles
import asyncio
import os
import webbrowser
from urllib.parse import urlparse
import csv
import time
from plyer import notification

daff: list[str] = []

async def download_image(entry):
        global daff
        mediaid = entry['id']
        imageUrl = entry['imageUrl']
        extension = os.path.splitext(urlparse(imageUrl).path)[1]
        filename = f'images/{mediaid}{extension}'

        # Skip downloading if the file already exists
        if os.path.exists(filename):
            print(f'Skipping download for ID {mediaid}. File already exists.')
            return

    #try:
        async with aiohttp.ClientSession() as session:
            async with session.get(imageUrl) as response:
                async with aiofiles.open(filename, mode='wb') as f:
                    while True:
                        chunk = await response.content.read(1024)
                        if not chunk:
                            break
                        await f.write(chunk)

        if os.path.getsize(filename) <= 500:
            print(f'Skipping download for ID {mediaid}. File size is under expectation.')
            daff += [f"iwr {imageUrl} -OutFile ./{filename}"]
            return

        print(f'Download complete for ID {mediaid}.')
    #except Exception as e:
        #await asyncio.sleep(1)  # Sleep for 1 second after an error
        #webbrowser.open(imageUrl)
        #await check_manual_download(filename, mediaid)

async def check_manual_download(filename, mediaid):
    print(f'Paused download for ID {mediaid}. Script will automatically continue once the image is downloaded manually.')
    notification.notify(
        title="Manual Image Download",
        message=f"Please download the image for ID {mediaid} manually.",
        timeout=10
    )
    while True:
        if os.path.exists(filename):
            return True
        await asyncio.sleep(1)

async def main():
    with open('index.tsv', 'r', newline='') as csvfile:
        reader = csv.DictReader(csvfile, delimiter='\t')
        csv_data = list(reader)

    tasks = [await download_image(entry) for entry in csv_data]
    
    if len(daff) != 0:
        print("Please continue to download this on PowerShell!")
        for index in daff:
            print(index)

try:
    asyncio.run(main())
except KeyboardInterrupt:
    print("Script stopped by user")
