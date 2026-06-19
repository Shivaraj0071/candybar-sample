Add-Type -AssemblyName System.Drawing
$width = 192
$height = 192
$bmp = New-Object System.Drawing.Bitmap $width, $height
$g = [System.Drawing.Graphics]::FromImage($bmp)
$g.Clear([System.Drawing.Color]::Transparent)

$brush = New-Object System.Drawing.SolidBrush([System.Drawing.Color]::FromArgb(255, 18, 18, 18))
$pen = New-Object System.Drawing.Pen([System.Drawing.Color]::FromArgb(255, 255, 215, 0), 4)

$g.FillEllipse($brush, 32, 64, 128, 128)
$g.DrawEllipse($pen, 32, 64, 128, 128)

$points1 = [System.Drawing.Point[]](
    (New-Object System.Drawing.Point 64, 80),
    (New-Object System.Drawing.Point 32, 16),
    (New-Object System.Drawing.Point 80, 64)
)
$g.FillPolygon($brush, $points1)
$g.DrawPolygon($pen, $points1)

$points2 = [System.Drawing.Point[]](
    (New-Object System.Drawing.Point 128, 80),
    (New-Object System.Drawing.Point 160, 16),
    (New-Object System.Drawing.Point 112, 64)
)
$g.FillPolygon($brush, $points2)
$g.DrawPolygon($pen, $points2)

$points3 = [System.Drawing.Point[]](
    (New-Object System.Drawing.Point 144, 144),
    (New-Object System.Drawing.Point 176, 144),
    (New-Object System.Drawing.Point 160, 128),
    (New-Object System.Drawing.Point 184, 128),
    (New-Object System.Drawing.Point 168, 104),
    (New-Object System.Drawing.Point 192, 96),
    (New-Object System.Drawing.Point 144, 120)
)
$g.FillPolygon($brush, $points3)
$g.DrawPolygon($pen, $points3)

$bmp.Save("app\src\main\res\drawable-nodpi\iconback.png", [System.Drawing.Imaging.ImageFormat]::Png)
$g.Dispose()
$bmp.Dispose()
