Add-Type -AssemblyName System.Windows.Forms

while ($true) {
    # Get the current cursor position
    $currentPosition = [System.Windows.Forms.Cursor]::Position

    # Extract the X and Y coordinates
    $currentX = $currentPosition.X
    $currentY = $currentPosition.Y

    # Generate a small random offset of -1, 0, or 1 for both x and y
    $offsetX = (Get-Random -Minimum -1 -Maximum 2)
    $offsetY = (Get-Random -Minimum -1 -Maximum 2)

    # Calculate the new position with the offset
    $newX = $currentX + $offsetX
    $newY = $currentY + $offsetY

    # Create a new Point object with the new coordinates
    $newPosition = New-Object System.Drawing.Point($newX, $newY)

    # Set the cursor to the new position
    [System.Windows.Forms.Cursor]::Position = $newPosition

    # Sleep for a short duration before the next move
    Start-Sleep -Milliseconds 50
}

# powershell.exe -ep Bypass -file [script]
